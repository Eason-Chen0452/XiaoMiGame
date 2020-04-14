package com.xiaomi.gamecenter.sdk.ui;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Build.VERSION;

public class MiProgressDialog
{
  public static ProgressDialog a(Context paramContext, CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 21) {}
    for (paramContext = new ProgressDialog(paramContext, 16974393);; paramContext = new ProgressDialog(paramContext))
    {
      paramContext.setTitle(null);
      paramContext.setMessage(paramCharSequence);
      paramContext.setIndeterminate(false);
      paramContext.setCancelable(false);
      paramContext.setOnCancelListener(null);
      paramContext.show();
      return paramContext;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\MiProgressDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */