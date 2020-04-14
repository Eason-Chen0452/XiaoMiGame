package com.xiaomi.gamecenter.sdk.utils;

import android.app.Activity;
import android.os.Build.VERSION;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import java.util.ArrayList;

public class PermissionUtils
{
  public static void a(Activity paramActivity, String[] paramArrayOfString)
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      ArrayList localArrayList = new ArrayList();
      int k = paramArrayOfString.length;
      int i = 0;
      if (i < k)
      {
        String str = paramArrayOfString[i];
        if (ContextCompat.checkSelfPermission(paramActivity, str) == 0) {}
        for (int j = 1;; j = 0)
        {
          if (j == 0) {
            localArrayList.add(str);
          }
          i += 1;
          break;
        }
      }
      if (localArrayList.size() > 0) {
        ActivityCompat.requestPermissions(paramActivity, (String[])localArrayList.toArray(new String[localArrayList.size()]), 10000);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\PermissionUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */