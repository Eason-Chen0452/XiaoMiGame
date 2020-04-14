package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.app.Activity;
import android.os.Handler;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class f
  implements Runnable
{
  f(ViewLoginLayout paramViewLoginLayout) {}
  
  public final void run()
  {
    ReporterUtils.getInstance().xmsdkReport(2043);
    int i = ViewLoginLayout.b(this.a, (Activity)this.a.getContext());
    if (ViewLoginLayout.a(this.a) != null) {
      ViewLoginLayout.a(this.a).sendMessage(ViewLoginLayout.a(this.a).obtainMessage(50001, i, -1));
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */