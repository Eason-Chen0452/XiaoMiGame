package main;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class Utils
{
  static String TAG = "Game Utils";
  static Context context_;
  
  public static int getAonedefChannelID(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    return metaData(paramContext).getInt("aonedef.channel.id");
  }
  
  public static long getAvailableSpace()
  {
    StatFs localStatFs = new StatFs(context_.getFilesDir().getPath());
    long l1 = localStatFs.getBlockSize();
    long l2 = localStatFs.getAvailableBlocks();
    long l3 = l1 * l2 / 1024L;
    Log.i("utils", String.format("msg: block size = %d", new Object[] { Long.valueOf(l1) }));
    Log.i("utils", String.format("msg: avail count= %d", new Object[] { Long.valueOf(l2) }));
    Log.i("utils", String.format("msg: avail size = %d", new Object[] { Long.valueOf(l3) }));
    return l3;
  }
  
  public static boolean getBolMetaData(Context paramContext, String paramString)
  {
    try
    {
      boolean bool = metaData(paramContext).getBoolean(paramString);
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  public static String getDeviceID()
  {
    String str2 = ((TelephonyManager)context_.getSystemService("phone")).getDeviceId();
    String str1 = str2;
    if (str2 == null) {
      str1 = Settings.Secure.getString(context_.getContentResolver(), "android_id");
    }
    return str1;
  }
  
  public static String getIPAddress()
  {
    Object localObject = (WifiManager)context_.getSystemService("wifi");
    if (localObject == null) {}
    for (localObject = null; localObject != null; localObject = ((WifiManager)localObject).getConnectionInfo()) {
      return Formatter.formatIpAddress(((WifiInfo)localObject).getIpAddress());
    }
    return "0.0.0.0";
  }
  
  public static int getIntMetaData(Context paramContext, String paramString)
  {
    try
    {
      int i = metaData(paramContext).getInt(paramString);
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  @SuppressLint({"DefaultLocale"})
  public static String getLocaleLanguage()
  {
    String str = Locale.getDefault().toString().toLowerCase();
    str.replace('_', '-');
    return str;
  }
  
  public static String getMacAddress()
  {
    Object localObject = (WifiManager)context_.getSystemService("wifi");
    if (localObject == null) {}
    for (localObject = null; localObject != null; localObject = ((WifiManager)localObject).getConnectionInfo()) {
      return ((WifiInfo)localObject).getMacAddress();
    }
    return "null";
  }
  
  public static String getManufactName()
  {
    return Build.MANUFACTURER;
  }
  
  public static String getModelName()
  {
    return Build.MODEL;
  }
  
  @SuppressLint({"NewApi"})
  public static String getPackageinfo(String paramString)
  {
    Object localObject2 = null;
    String str = null;
    Object localObject1 = localObject2;
    for (;;)
    {
      try
      {
        InputStream localInputStream = context_.getAssets().open("aonesdk.json");
        localObject1 = localObject2;
        localObject3 = new byte[localInputStream.available()];
        localObject1 = localObject2;
        localInputStream.read((byte[])localObject3);
        localObject1 = localObject2;
        localObject3 = new String((byte[])localObject3, "utf-8");
        localObject1 = localObject2;
        localInputStream.close();
        localObject1 = localObject2;
      }
      catch (IOException paramString)
      {
        Object localObject3;
        paramString.printStackTrace();
        paramString = (String)localObject1;
        continue;
      }
      try
      {
        paramString = new JSONObject((String)localObject3).getString(paramString);
        str = paramString;
        localObject1 = paramString;
        Log.i("Utils.getPackageinfo", "InfoGet:" + paramString);
      }
      catch (JSONException paramString)
      {
        localObject1 = str;
        paramString.printStackTrace();
        paramString = str;
      }
    }
    if (!paramString.isEmpty()) {
      return paramString;
    }
    return "info-get-null";
  }
  
  public static String getPushId()
  {
    return "JPush.getToken()";
  }
  
  public static String getStrMetaData(Context paramContext, String paramString)
  {
    try
    {
      paramContext = metaData(paramContext).getString(paramString);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  public static String getSystemVersion()
  {
    return "android " + Build.VERSION.RELEASE;
  }
  
  public static double getTotalMemory()
  {
    double d = 0.0D;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      String[] arrayOfString = localBufferedReader.readLine().split("\\s+");
      localBufferedReader.close();
      int i = Integer.parseInt(arrayOfString[1]);
      d = (i + 1023.0D) / 1024.0D;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
    Log.i(TAG, "total memory is " + d + " MB.");
    return d;
  }
  
  public static void init(Context paramContext)
  {
    context_ = paramContext;
    initAssetsManager(paramContext.getAssets());
  }
  
  public static native void initAssetsManager(AssetManager paramAssetManager);
  
  public static Bundle metaData(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    String str = paramContext.getPackageName();
    return paramContext.getPackageManager().getApplicationInfo(str, 128).metaData;
  }
  
  public static boolean mobileConnected()
  {
    try
    {
      boolean bool = ((ConnectivityManager)context_.getSystemService("connectivity")).getNetworkInfo(0).isAvailable();
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  public static boolean networkConnected()
  {
    try
    {
      boolean bool = ((ConnectivityManager)context_.getSystemService("connectivity")).getActiveNetworkInfo().isAvailable();
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  public static boolean wifiConnected()
  {
    try
    {
      boolean bool = ((ConnectivityManager)context_.getSystemService("connectivity")).getNetworkInfo(1).isAvailable();
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\main\Utils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */