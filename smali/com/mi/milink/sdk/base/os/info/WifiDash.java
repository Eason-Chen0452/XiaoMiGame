package com.mi.milink.sdk.base.os.info;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Base64;
import com.mi.milink.sdk.base.Global;

public class WifiDash
{
  public static String getBSSID()
  {
    Object localObject1 = (WifiManager)Global.getSystemService("wifi");
    if (localObject1 == null) {
      localObject1 = null;
    }
    for (;;)
    {
      return (String)localObject1;
      try
      {
        localObject1 = ((WifiManager)localObject1).getConnectionInfo();
        if (localObject1 == null) {
          return null;
        }
      }
      catch (Exception localException)
      {
        Object localObject2;
        for (;;)
        {
          localObject2 = null;
        }
        String str = ((WifiInfo)localObject2).getBSSID();
        if ((!"N/A".equals(str)) && (!"00:00:00:00:00:00".equals(str)))
        {
          localObject2 = str;
          if (!"FF:FF:FF:FF:FF:FF".equalsIgnoreCase(str)) {
            continue;
          }
        }
      }
    }
    return null;
  }
  
  public static int getSignalLevel()
  {
    Object localObject = queryWifiInfo("N/A");
    if (localObject == "N/A") {
      return -1;
    }
    return WifiManager.calculateSignalLevel(((WifiInfo)localObject).getRssi(), 5);
  }
  
  public static String getWifiInfo()
  {
    Object localObject = (WifiManager)Global.getSystemService("wifi");
    if (localObject == null) {
      return "[-]";
    }
    try
    {
      localObject = ((WifiManager)localObject).getConnectionInfo();
      if (localObject == null) {
        return "[-]";
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        str1 = null;
      }
      String str2 = str1.getSSID();
      int i = WifiManager.calculateSignalLevel(str1.getRssi(), 5);
      String str3 = String.valueOf(str1.getLinkSpeed()) + " Mbps";
      String str1 = str1.getBSSID();
      StringBuffer localStringBuffer = new StringBuffer();
      try
      {
        localStringBuffer.append('[').append(String.valueOf(i)).append(", ").append(new String(Base64.encode(str2.getBytes(), 0))).append(", ").append(str3).append(", ").append(str1).append(']');
        return localStringBuffer.toString();
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
    return "";
  }
  
  private static Object queryWifiInfo(Object paramObject)
  {
    Object localObject1 = (WifiManager)Global.getSystemService("wifi");
    if (localObject1 == null) {}
    for (;;)
    {
      return paramObject;
      try
      {
        localObject1 = ((WifiManager)localObject1).getConnectionInfo();
        if (localObject1 == null) {
          continue;
        }
        return localObject1;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject2 = null;
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\info\WifiDash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */