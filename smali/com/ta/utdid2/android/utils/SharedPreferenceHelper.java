package com.ta.utdid2.android.utils;

import android.annotation.TargetApi;
import android.content.SharedPreferences.Editor;

public class SharedPreferenceHelper
{
  @TargetApi(9)
  public static void apply(SharedPreferences.Editor paramEditor)
  {
    if (paramEditor != null) {
      paramEditor.apply();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\android\utils\SharedPreferenceHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */