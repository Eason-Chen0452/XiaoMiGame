package com.xiaomi.accountsdk.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.accountsdk.account.XMPassportSettings;

public class WebViewNativeUserAgentUtil
  extends AbstractAccountWebViewSingleCookieUtil
{
  protected final String a()
  {
    return "NativeUserAgent";
  }
  
  protected final String b()
  {
    String str = XMPassportSettings.a();
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    return Base64.encodeToString(str.getBytes(), 2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\WebViewNativeUserAgentUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */