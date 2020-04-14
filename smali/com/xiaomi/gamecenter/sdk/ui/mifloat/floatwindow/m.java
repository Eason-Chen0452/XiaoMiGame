package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.n;

final class m
  implements View.OnClickListener
{
  m(i parami, View paramView, CheckBox paramCheckBox) {}
  
  public final void onClick(View paramView)
  {
    MiFloatManager.m(this.c.a);
    n.a(MiFloatManager.s(this.c.a));
    n.a(this.a);
    if (this.b.isChecked())
    {
      paramView = MiFloatManager.b(this.c.a).getSharedPreferences("misdk_float_", 0).edit();
      paramView.putBoolean("is_hide_prompt", true);
      paramView.commit();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */