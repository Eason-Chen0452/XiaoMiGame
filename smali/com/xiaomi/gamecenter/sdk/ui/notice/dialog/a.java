package com.xiaomi.gamecenter.sdk.ui.notice.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.xiaomi.gamecenter.sdk.bf;
import com.xiaomi.gamecenter.sdk.bg;

final class a
  implements DialogInterface.OnKeyListener
{
  a(BaseDialog paramBaseDialog) {}
  
  public final boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 1) && (paramKeyEvent.getRepeatCount() == 0))
    {
      paramDialogInterface = this.a.a();
      if (this.a.d != null) {
        this.a.d.b(paramDialogInterface, this.a.b());
      }
      if (this.a.c != null)
      {
        this.a.c.a(paramDialogInterface, this.a.b());
        this.a.c();
      }
      return true;
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\dialog\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */