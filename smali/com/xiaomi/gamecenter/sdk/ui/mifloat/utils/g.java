package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import android.app.Activity;
import android.content.Context;
import com.xiaomi.gamecenter.sdk.utils.Downloader.a;

final class g
  implements Downloader.a
{
  g(Activity paramActivity, Context paramContext) {}
  
  public final void a()
  {
    if (this.a != null) {
      this.a.runOnUiThread(new h(this));
    }
  }
  
  public final void b()
  {
    if (this.a != null) {
      this.a.runOnUiThread(new i(this));
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */