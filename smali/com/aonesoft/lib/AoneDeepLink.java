package com.aonesoft.lib;

import android.content.Intent;
import android.util.Log;
import java.io.PrintStream;

public class AoneDeepLink
{
  private static boolean isGeted = false;
  private static String mData = "";
  
  public static String getDeepLinkData()
  {
    Log.d("AoneDeepLink", mData);
    if (isGeted)
    {
      isGeted = false;
      return mData;
    }
    return "";
  }
  
  public static void onNewIntent(Intent paramIntent)
  {
    System.out.println("AoneDeepLink==onNewIntent");
    if ("android.intent.action.VIEW".equals(paramIntent.getAction()))
    {
      isGeted = true;
      mData = paramIntent.getDataString();
      Log.d("AoneDeepLink===onNewIntent", mData);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneDeepLink.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */