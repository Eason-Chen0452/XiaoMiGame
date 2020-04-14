package com.xiaomi.passport.uicontroller;

import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import com.xiaomi.accountsdk.utils.ServerTimeUtil;
import com.xiaomi.accountsdk.utils.ServerTimeUtil.b;

public class NotificationWebView
  extends WebView
{
  private final ServerTimeUtil.b a;
  private final boolean b;
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ServerTimeUtil.a(this.a);
  }
  
  protected void onDetachedFromWindow()
  {
    ServerTimeUtil.b(this.a);
    if (this.b)
    {
      CookieSyncManager.createInstance(getContext());
      CookieManager.getInstance().removeAllCookie();
    }
    super.onDetachedFromWindow();
  }
  
  public static class Builder {}
  
  public static class ExternalParams
  {
    public final String a;
    public final boolean b;
    public final String c;
    public final String d;
    
    public ExternalParams(String paramString, boolean paramBoolean)
    {
      this(paramString, paramBoolean, null, null);
    }
    
    public ExternalParams(String paramString1, boolean paramBoolean, String paramString2, String paramString3)
    {
      this.a = paramString1;
      this.b = paramBoolean;
      this.c = paramString2;
      this.d = paramString3;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\uicontroller\NotificationWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */