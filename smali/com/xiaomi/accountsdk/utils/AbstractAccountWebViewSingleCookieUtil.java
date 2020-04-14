package com.xiaomi.accountsdk.utils;

import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import com.xiaomi.accountsdk.account.XMPassport;

public abstract class AbstractAccountWebViewSingleCookieUtil
{
  public static final String a;
  
  static
  {
    if (XMPassport.a) {}
    for (String str = ".account.preview.n.xiaomi.net";; str = ".account.xiaomi.com")
    {
      a = str;
      return;
    }
  }
  
  protected abstract String a();
  
  public final void a(WebView paramWebView)
  {
    if (paramWebView == null) {}
    while (TextUtils.isEmpty(b())) {
      return;
    }
    CookieSyncManager.createInstance(paramWebView.getContext());
    paramWebView = CookieManager.getInstance();
    String str1 = a();
    String str2 = b();
    if ((paramWebView == null) || (TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2))) {}
    for (;;)
    {
      CookieSyncManager.getInstance().sync();
      return;
      str1 = String.format("%s=%s;", new Object[] { str1, str2 });
      paramWebView.setCookie(a, str1);
    }
  }
  
  protected abstract String b();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\AbstractAccountWebViewSingleCookieUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */