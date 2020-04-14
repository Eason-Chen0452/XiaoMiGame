package com.xiaomi.licensinglibrary.util;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class PreferenceUtil
{
  public static void a(Activity paramActivity, String paramString)
  {
    try
    {
      paramActivity = paramActivity.getSharedPreferences("gclicense.xml", 0).edit();
      paramActivity.putBoolean(paramString, true);
      paramActivity.commit();
      return;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
  }
  
  public static boolean b(Activity paramActivity, String paramString)
  {
    try
    {
      boolean bool = paramActivity.getSharedPreferences("gclicense.xml", 0).getBoolean(paramString, false);
      return bool;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\util\PreferenceUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */