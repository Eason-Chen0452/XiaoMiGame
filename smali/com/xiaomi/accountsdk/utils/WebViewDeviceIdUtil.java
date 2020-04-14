package com.xiaomi.accountsdk.utils;

import android.webkit.WebView;
import com.xiaomi.accountsdk.account.XMPassportSettings;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;

public final class WebViewDeviceIdUtil
  extends AbstractAccountWebViewSingleCookieUtil
{
  protected final String a()
  {
    return "deviceId";
  }
  
  protected final String b()
  {
    return new HashedDeviceIdUtil(XMPassportSettings.d()).a();
  }
  
  public final void b(WebView paramWebView)
  {
    super.a(paramWebView);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\WebViewDeviceIdUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */