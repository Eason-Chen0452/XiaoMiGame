package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.l;

final class d
  implements Runnable
{
  d(c paramc) {}
  
  public final void run()
  {
    if (l.c(MiFloatManager.b(this.a.a)))
    {
      l.b(MiFloatManager.b(this.a.a));
      Activity localActivity = MiFloatManager.b(this.a.a);
      SharedPreferences.Editor localEditor = localActivity.getSharedPreferences("misdk_float_", 0).edit();
      int i = localActivity.getResources().getConfiguration().orientation;
      localEditor.remove("x_" + i);
      localEditor.remove("y_" + i);
      localEditor.commit();
      this.a.a.d();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */