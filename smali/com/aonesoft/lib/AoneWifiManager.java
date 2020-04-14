package com.aonesoft.lib;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;

public class AoneWifiManager
{
  private static Context mContext;
  
  public static int getWifiRssi()
  {
    return ((WifiManager)mContext.getSystemService("wifi")).getConnectionInfo().getRssi();
  }
  
  public static void init(Context paramContext)
  {
    mContext = paramContext;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneWifiManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */