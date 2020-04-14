package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;

public class InternetUtil
{
  public static String a(Context paramContext)
  {
    Object localObject1 = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localObject1 == null) {
      return "NONE";
    }
    paramContext = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
    if ((paramContext == null) || (!paramContext.isAvailable())) {
      return "NONE";
    }
    Object localObject2 = ((ConnectivityManager)localObject1).getNetworkInfo(1);
    if (localObject2 != null)
    {
      localObject2 = ((NetworkInfo)localObject2).getState();
      if ((localObject2 != null) && ((localObject2 == NetworkInfo.State.CONNECTED) || (localObject2 == NetworkInfo.State.CONNECTING))) {
        return "WIFI";
      }
    }
    localObject2 = ((ConnectivityManager)localObject1).getNetworkInfo(0);
    if (localObject2 != null)
    {
      localObject1 = ((NetworkInfo)localObject2).getState();
      localObject2 = ((NetworkInfo)localObject2).getSubtypeName();
      if ((localObject1 != null) && ((localObject1 == NetworkInfo.State.CONNECTED) || (localObject1 == NetworkInfo.State.CONNECTING)))
      {
        switch (paramContext.getSubtype())
        {
        default: 
          if ((((String)localObject2).equalsIgnoreCase("TD-SCDMA")) || (((String)localObject2).equalsIgnoreCase("WCDMA")) || (((String)localObject2).equalsIgnoreCase("CDMA2000"))) {
            return "3G";
          }
          break;
        case 1: 
        case 2: 
        case 4: 
        case 7: 
        case 11: 
          return "2G";
        case 3: 
        case 5: 
        case 6: 
        case 8: 
        case 9: 
        case 10: 
        case 12: 
        case 14: 
        case 15: 
          return "3G";
        case 13: 
          return "4G";
        }
        return "MOBILE";
      }
    }
    return "NONE";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\InternetUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */