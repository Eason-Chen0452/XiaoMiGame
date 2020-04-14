package com.xiaomi.passport.uicontroller;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xiaomi.accountsdk.utils.XMPassportUtil;

public class NotificationWebViewClient
  extends WebViewClient
{
  private String a;
  private CookieManager b;
  private a c;
  
  public NotificationWebViewClient(Context paramContext, String paramString, a parama)
  {
    this.a = paramString;
    CookieSyncManager.createInstance(paramContext);
    this.b = CookieManager.getInstance();
    this.c = parama;
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (this.c == null) {}
    String str;
    do
    {
      do
      {
        return true;
        str = this.b.getCookie(this.a);
        if ((TextUtils.isEmpty(str)) || (!str.contains("passInfo"))) {
          break;
        }
      } while (str.contains("need-relogin"));
      if (str.contains("login-end"))
      {
        XMPassportUtil.a(str);
        XMPassportUtil.b(str);
        return true;
      }
    } while (str.contains("auth-end"));
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
  
  public static abstract interface a {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\uicontroller\NotificationWebViewClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */