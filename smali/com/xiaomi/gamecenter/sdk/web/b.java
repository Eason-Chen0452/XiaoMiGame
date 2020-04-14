package com.xiaomi.gamecenter.sdk.web;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.webkit.WebView;

final class b
  implements View.OnKeyListener
{
  b(LoginWebFragment paramLoginWebFragment) {}
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 1))
    {
      if (LoginWebFragment.a(this.a) == null)
      {
        LoginWebFragment.b(this.a);
        return true;
      }
      if (LoginWebFragment.c(this.a) == null)
      {
        LoginWebFragment.a(this.a).a();
        return true;
      }
      paramView = LoginWebFragment.c(this.a).getUrl();
      if ((LoginWebFragment.c(this.a).canGoBack()) && (!LoginWebFragment.d(this.a).equals(paramView)))
      {
        if (paramView != null) {
          LoginWebFragment.a(this.a, paramView);
        }
        LoginWebFragment.c(this.a).goBack();
        return true;
      }
      if (LoginWebFragment.a(this.a) != null) {
        LoginWebFragment.a(this.a).b();
      }
      LoginWebFragment.b(this.a);
      return true;
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\web\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */