package com.aonesoft.lib.utils;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.app.ActivityCompat;

public class PermissionHelper
{
  public static boolean canMakeSmores()
  {
    return Build.VERSION.SDK_INT >= 23;
  }
  
  @TargetApi(23)
  public static boolean hasPermission(Context paramContext, String paramString)
  {
    return (!canMakeSmores()) || (paramContext.checkSelfPermission(paramString) == 0);
  }
  
  public static boolean requestPermissionDialog(Activity paramActivity, int paramInt)
  {
    String[] arrayOfString = PermissionsHelper.getNotGrantPermissions(paramActivity, PermissionsHelper.getPermissions());
    if ((arrayOfString == null) || (arrayOfString.length == 0)) {
      return false;
    }
    paramActivity.requestPermissions(arrayOfString, paramInt);
    return true;
  }
  
  public static boolean requestPermissionDialog(Activity paramActivity, String paramString, int paramInt)
  {
    if (!hasPermission(paramActivity, paramString))
    {
      ActivityCompat.requestPermissions(paramActivity, new String[] { paramString }, paramInt);
      return false;
    }
    return true;
  }
  
  @TargetApi(23)
  public static boolean twiceShowRequestPermission(Activity paramActivity, String paramString)
  {
    return paramActivity.shouldShowRequestPermissionRationale(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\utils\PermissionHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */