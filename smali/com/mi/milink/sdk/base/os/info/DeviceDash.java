package com.mi.milink.sdk.base.os.info;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.miui.deviceid.IdentifierManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class DeviceDash
  implements NetworkStateListener
{
  private static final DeviceDash instance = new DeviceDash();
  private String mDeviceId = null;
  private String mDeviceInfo = null;
  private String mDeviceSimplifiedInfo = null;
  
  public DeviceDash()
  {
    NetworkDash.addListener(this);
  }
  
  public static DeviceDash getInstance()
  {
    return instance;
  }
  
  private static String getMacDefault(Context paramContext)
  {
    if (paramContext == null) {
      paramContext = "02:00:00:00:00:00";
    }
    String str;
    do
    {
      return paramContext;
      paramContext = (WifiManager)paramContext.getApplicationContext().getSystemService("wifi");
      if (paramContext == null) {
        return "02:00:00:00:00:00";
      }
      try
      {
        paramContext = paramContext.getConnectionInfo();
        if (paramContext == null) {
          return null;
        }
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          paramContext = null;
        }
        str = paramContext.getMacAddress();
        paramContext = str;
      }
    } while (TextUtils.isEmpty(str));
    return str.toUpperCase(Locale.ENGLISH);
  }
  
  private static String getMacFromFile()
  {
    try
    {
      String str = new BufferedReader(new FileReader(new File("/sys/class/net/wlan0/address"))).readLine();
      return str;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return "02:00:00:00:00:00";
  }
  
  private static String getMacFromHardware()
  {
    try
    {
      Object localObject1 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (NetworkInterface)((Iterator)localObject1).next();
        if (((NetworkInterface)localObject2).getName().equalsIgnoreCase("wlan0"))
        {
          localObject1 = ((NetworkInterface)localObject2).getHardwareAddress();
          if (localObject1 == null) {
            return "";
          }
          localObject2 = new StringBuilder();
          int j = localObject1.length;
          int i = 0;
          while (i < j)
          {
            ((StringBuilder)localObject2).append(String.format("%02X:", new Object[] { Byte.valueOf(localObject1[i]) }));
            i += 1;
          }
          if (((StringBuilder)localObject2).length() > 0) {
            ((StringBuilder)localObject2).deleteCharAt(((StringBuilder)localObject2).length() - 1);
          }
          localObject1 = ((StringBuilder)localObject2).toString();
          return (String)localObject1;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "02:00:00:00:00:00";
  }
  
  public String getDeviceId()
  {
    TelephonyManager localTelephonyManager;
    if (TextUtils.isEmpty(this.mDeviceId)) {
      localTelephonyManager = (TelephonyManager)Global.getSystemService("phone");
    }
    try
    {
      this.mDeviceId = localTelephonyManager.getDeviceId();
      return this.mDeviceId;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        this.mDeviceId = "N/A";
      }
    }
  }
  
  public String getDeviceInfo()
  {
    if ((this.mDeviceInfo == null) || (this.mDeviceInfo.length() <= 0)) {
      return updateDeviceInfo();
    }
    return this.mDeviceInfo;
  }
  
  public String getDeviceSimplifiedInfo()
  {
    if ((this.mDeviceSimplifiedInfo == null) || (this.mDeviceSimplifiedInfo.length() <= 0)) {
      updateDeviceInfo();
    }
    return this.mDeviceSimplifiedInfo;
  }
  
  public String getMacAddress()
  {
    String str = "02:00:00:00:00:00";
    if (Build.VERSION.SDK_INT < 23) {
      str = getMacDefault(Global.getContext());
    }
    do
    {
      return str;
      if ((Build.VERSION.SDK_INT >= 23) && (Build.VERSION.SDK_INT < 24)) {
        return getMacFromFile();
      }
    } while (Build.VERSION.SDK_INT < 24);
    return getMacFromHardware();
  }
  
  public void onNetworkStateChanged(NetworkState paramNetworkState1, NetworkState paramNetworkState2)
  {
    updateDeviceInfo();
  }
  
  public String updateDeviceInfo()
  {
    Object localObject2 = (WindowManager)Global.getSystemService("window");
    Object localObject1 = (TelephonyManager)Global.getSystemService("phone");
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    try
    {
      ((WindowManager)localObject2).getDefaultDisplay().getMetrics(localDisplayMetrics);
      StringBuilder localStringBuilder = new StringBuilder();
      try
      {
        localObject2 = ((TelephonyManager)localObject1).getDeviceId();
        if (NetworkDash.isWifi())
        {
          localObject1 = "wifi";
          label60:
          localStringBuilder.append("imei=").append((String)localObject2).append('&');
          localStringBuilder.append("model=").append(Build.MODEL).append('&');
          localStringBuilder.append("os=").append(Build.VERSION.RELEASE).append('&');
          localStringBuilder.append("apilevel=").append(Build.VERSION.SDK_INT).append('&');
          localStringBuilder.append("macaddress=").append(getMacAddress()).append('&');
          localStringBuilder.append("network=").append((String)localObject1).append('&');
          localStringBuilder.append("display=").append(localDisplayMetrics.widthPixels).append('*').append(localDisplayMetrics.heightPixels).append('&');
          localStringBuilder.append("manu=").append(Build.MANUFACTURER).append('&');
          localStringBuilder.append("gv=").append(Global.getClientAppInfo().getGv()).append('&');
          localStringBuilder.append("versioncode=").append(Global.getClientAppInfo().getVersionCode()).append('&');
          localObject1 = "";
          if (IdentifierManager.a()) {
            localObject1 = IdentifierManager.a(Global.getContext());
          }
          localStringBuilder.append("oaid=").append((String)localObject1);
        }
      }
      catch (Exception localException1)
      {
        try
        {
          localObject1 = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", new Class[] { String.class, String.class });
          localObject2 = (String)((Method)localObject1).invoke(null, new Object[] { "ro.miui.ui.version.name", "" });
          localStringBuilder.append("&");
          localStringBuilder.append("miui=").append((String)localObject2);
          localObject1 = (String)((Method)localObject1).invoke(null, new Object[] { "ro.build.version.incremental", "" });
          localStringBuilder.append("&");
          localStringBuilder.append("subversion=").append((String)localObject1);
          this.mDeviceSimplifiedInfo = localStringBuilder.toString();
          localStringBuilder.append('&');
          localStringBuilder.append("wifi=").append(WifiDash.getWifiInfo()).append('&');
          localStringBuilder.append("cell=").append(NetworkDash.getCellLevel()).append('&');
          localObject2 = DnsDash.getLocalDns();
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = DnsDash.updateLocalDns();
          }
          localObject2 = localStringBuilder.append("dns=");
          if (localObject1 == null) {}
          String str;
          for (localObject1 = "N/A";; str = str.toString())
          {
            ((StringBuilder)localObject2).append((String)localObject1);
            this.mDeviceInfo = localStringBuilder.toString();
            return this.mDeviceInfo;
            localException1 = localException1;
            try
            {
              localObject2 = Settings.Secure.getString(Global.getApplicationContext().getContentResolver(), "android_id");
            }
            catch (Exception localException2)
            {
              localObject2 = "N/A";
            }
            break;
            if (NetworkDash.is2G())
            {
              str = "2G";
              break label60;
            }
            if (NetworkDash.is3G())
            {
              str = "3G";
              break label60;
            }
            if (NetworkDash.isEthernet())
            {
              str = "ethernet";
              break label60;
            }
            str = "wan";
            break label60;
          }
        }
        catch (Exception localException3)
        {
          for (;;) {}
        }
      }
    }
    catch (Exception localException4)
    {
      for (;;) {}
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\info\DeviceDash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */