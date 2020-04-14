package com.xiaomi.gamecenter.sdk.ui;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.Build.VERSION;

public class MiAlertDialog
{
  public static AlertDialog.Builder a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new AlertDialog.Builder(paramContext, 16974394);
    }
    return new AlertDialog.Builder(paramContext);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\MiAlertDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */