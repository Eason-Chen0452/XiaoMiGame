package com.xiaomi.gamecenter.sdk.web;

import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.protocol.MessageRequestQQLogin;

final class c
  implements Runnable
{
  c(LoginWebFragment.a parama, String paramString1, String paramString2) {}
  
  public final void run()
  {
    String str = new MessageRequestQQLogin(MiCommplatform.getInstance().getApplicationContext(), this.a).a();
    if (!TextUtils.isEmpty(str)) {
      if (LoginWebFragment.a(this.c.a) != null) {
        LoginWebFragment.a(this.c.a).a(null, str, this.a, this.b);
      }
    }
    while (LoginWebFragment.a(this.c.a) == null) {
      return;
    }
    LoginWebFragment.a(this.c.a).a();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\web\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */