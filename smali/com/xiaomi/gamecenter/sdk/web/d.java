package com.xiaomi.gamecenter.sdk.web;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.webkit.WebView;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class d
  implements View.OnKeyListener
{
  d(VerifyIDWebFragment paramVerifyIDWebFragment) {}
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 1))
    {
      if (VerifyIDWebFragment.a(this.a) == null)
      {
        VerifyIDWebFragment.b(this.a);
        return true;
      }
      if (VerifyIDWebFragment.c(this.a) == null)
      {
        VerifyIDWebFragment.a(this.a).a();
        return true;
      }
      paramView = VerifyIDWebFragment.c(this.a).getUrl();
      if ((VerifyIDWebFragment.c(this.a).canGoBack()) && (!VerifyIDWebFragment.d(this.a).equals(paramView)))
      {
        if (paramView != null) {
          VerifyIDWebFragment.a(this.a, paramView);
        }
        VerifyIDWebFragment.c(this.a).goBack();
        return true;
      }
      ReporterUtils.getInstance().xmsdkReport(2024);
      VerifyIDWebFragment.e(this.a);
      return true;
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\web\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */