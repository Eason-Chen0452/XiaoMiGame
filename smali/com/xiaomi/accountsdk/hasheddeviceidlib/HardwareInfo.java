package com.xiaomi.accountsdk.hasheddeviceidlib;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.AccountLog;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

public class HardwareInfo
{
  private static String a()
  {
    StringBuilder localStringBuilder = null;
    try
    {
      Enumeration localEnumeration = NetworkInterface.getNetworkInterfaces();
      if (localEnumeration == null) {
        return "0";
      }
      do
      {
        localObject = localStringBuilder;
        if (!localEnumeration.hasMoreElements()) {
          break;
        }
        localObject = (NetworkInterface)localEnumeration.nextElement();
      } while ((((NetworkInterface)localObject).getName() == null) || (!((NetworkInterface)localObject).getName().equalsIgnoreCase("wlan0")));
      Object localObject = ((NetworkInterface)localObject).getHardwareAddress();
      if (localObject == null) {
        return "0";
      }
    }
    catch (SocketException localSocketException)
    {
      AccountLog.d("UserEnvironment", "failed to get wifi Mac Address", localSocketException);
      return "0";
    }
    localStringBuilder = new StringBuilder();
    int j = localSocketException.length;
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append(String.format("%02X:", new Object[] { Byte.valueOf(localSocketException[i]) }));
      i += 1;
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
    }
    return localStringBuilder.toString();
  }
  
  public static String a(Context paramContext)
  {
    String str = a();
    if ((!TextUtils.isEmpty(str)) && (!str.equals("0"))) {
      paramContext = str;
    }
    for (;;)
    {
      return paramContext;
      if (paramContext == null) {
        return "0";
      }
      try
      {
        paramContext = (WifiManager)paramContext.getSystemService("wifi");
        if (paramContext.getConnectionInfo() == null) {
          return "0";
        }
        paramContext = paramContext.getConnectionInfo().getMacAddress();
        if (!TextUtils.isEmpty(paramContext))
        {
          boolean bool = paramContext.equals("02:00:00:00:00:00");
          if (!bool) {
            continue;
          }
        }
      }
      catch (SecurityException paramContext)
      {
        for (;;)
        {
          AccountLog.d("UserEnvironment", "failed to get Mac Address", paramContext);
        }
      }
    }
    return "0";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\hasheddeviceidlib\HardwareInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */