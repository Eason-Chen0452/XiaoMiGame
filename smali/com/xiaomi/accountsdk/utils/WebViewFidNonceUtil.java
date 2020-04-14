package com.xiaomi.accountsdk.utils;

import android.webkit.WebView;
import java.lang.ref.WeakReference;

public class WebViewFidNonceUtil
{
  public static void a(WebView paramWebView)
  {
    if (paramWebView == null) {
      return;
    }
    new FidNonce.Builder();
    FidNonce.Builder.a(FidNonce.Type.WEB_VIEW);
  }
  
  public static final class ServerTimeAlignedListenerImpl
    implements ServerTimeUtil.b
  {
    private final WeakReference<WebView> a;
    
    public ServerTimeAlignedListenerImpl(WebView paramWebView)
    {
      this.a = new WeakReference(paramWebView);
    }
    
    public final void a()
    {
      WebView localWebView = (WebView)this.a.get();
      if (localWebView != null)
      {
        new WebViewFidNonceUtil();
        WebViewFidNonceUtil.a(localWebView);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\WebViewFidNonceUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */