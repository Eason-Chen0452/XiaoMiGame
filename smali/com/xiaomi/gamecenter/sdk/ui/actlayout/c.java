package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.os.Handler;
import com.xiaomi.gamecenter.sdk.ui.ActionTransfor.ActionResult;
import com.xiaomi.gamecenter.sdk.ui.MiLayout;
import com.xiaomi.gamecenter.sdk.web.h;

final class c
  implements h
{
  c(a parama, long paramLong, String paramString, int paramInt) {}
  
  public final void a()
  {
    if (ViewLoginLayout.a(this.d.a) != null) {
      ViewLoginLayout.a(this.d.a).sendMessage(ViewLoginLayout.a(this.d.a).obtainMessage(40000, "实名认证出现异常"));
    }
    ViewLoginLayout.b(this.d.a, ActionTransfor.ActionResult.ACTION_OK);
    MiLayout.a(ViewLoginLayout.h(this.d.a));
  }
  
  public final void b()
  {
    ViewLoginLayout.a(this.d.a, this.a, this.b, this.c);
  }
  
  public final void c()
  {
    ViewLoginLayout.e(this.d.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */