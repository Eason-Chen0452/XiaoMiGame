package com.aonesoft.lib;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import android.util.Log;
import com.aonesoft.lib.utils.AoneAdvertisingIdClient;
import java.util.Locale;

public class AoneDevice
{
  private static String LOG_TAG;
  private static String s_androidId;
  private static Context s_context = null;
  private static String s_country;
  private static String s_imei = "";
  private static String s_ip = null;
  private static String s_language;
  private static String s_mac = null;
  private static String s_model;
  private static String s_os;
  private static String s_uniqueId = null;
  
  static
  {
    LOG_TAG = "aonesdk info AoneDevice";
    s_androidId = null;
    s_country = null;
    s_language = null;
    s_model = null;
    s_os = null;
  }
  
  public static String getCountry()
  {
    return s_country;
  }
  
  public static String getDeviceId()
  {
    if (s_uniqueId != null) {
      return s_uniqueId;
    }
    s_uniqueId = s_androidId;
    if ((s_uniqueId == null) || (s_uniqueId.equals("9774d56d682e549c")))
    {
      s_uniqueId = s_imei;
      if ((s_uniqueId == null) || (s_uniqueId.length() <= 0)) {
        s_uniqueId = AoneInstallation.id(s_context);
      }
    }
    Log.d(LOG_TAG, "get device id:" + s_uniqueId);
    return s_uniqueId;
  }
  
  public static String getIMEI()
  {
    if ((s_imei != null) && (s_imei.length() <= 0))
    {
      s_imei = AoneInstallation.id(s_context);
      Log.i(LOG_TAG, "getIMEI1:" + s_imei);
    }
    Log.i(LOG_TAG, "getIMEI2:" + s_imei);
    return s_imei;
  }
  
  public static String getIdfa()
  {
    String str = AoneAdvertisingIdClient.getAdId();
    Log.d(LOG_TAG, "idfa:" + str);
    return str;
  }
  
  public static String getIp()
  {
    return s_ip;
  }
  
  public static String getLanguage()
  {
    return s_language;
  }
  
  public static String getMac()
  {
    return s_mac;
  }
  
  public static String getModel()
  {
    return s_model;
  }
  
  public static String getNetworkType()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)s_context.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo == null)
    {
      Log.d(LOG_TAG, " network type is null, may be no network now!");
      return "";
    }
    if (localNetworkInfo.getType() == 1) {
      return "wifi";
    }
    return "mobile";
  }
  
  public static String getOS()
  {
    return s_os;
  }
  
  public static String getOpertorCode()
  {
    String str2 = ((TelephonyManager)s_context.getSystemService("phone")).getSimOperator();
    String str1 = str2;
    if (str2 == null) {
      str1 = "";
    }
    return str1;
  }
  
  public static void init(Context paramContext)
  {
    s_context = paramContext;
    s_androidId = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    Log.d(LOG_TAG, " deviceId:" + s_androidId);
    s_country = Locale.getDefault().getCountry();
    Log.d(LOG_TAG, " country:" + s_country);
    s_language = Locale.getDefault().getLanguage();
    Log.d(LOG_TAG, " language:" + s_language);
    s_model = Build.MODEL;
    Log.d(LOG_TAG, " model:" + s_model);
    s_os = "android" + Build.VERSION.RELEASE;
    Log.d(LOG_TAG, " os:" + s_os);
    Log.d(LOG_TAG, " imei:" + s_imei);
    paramContext = (WifiManager)paramContext.getApplicationContext().getSystemService("wifi");
    s_ip = Formatter.formatIpAddress(paramContext.getConnectionInfo().getIpAddress());
    Log.d(LOG_TAG, " ip:" + s_ip);
    s_mac = paramContext.getConnectionInfo().getMacAddress();
    Log.d(LOG_TAG, " mac:" + s_mac);
  }
  
  public static void openUrl(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("url", paramString);
    localIntent.setClass(s_context, AoneOpenUrl.class);
    s_context.startActivity(localIntent);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneDevice.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */