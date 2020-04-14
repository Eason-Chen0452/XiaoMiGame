package com.xiaomi.accountsdk.utils;

import android.text.TextUtils;
import com.xiaomi.accountsdk.account.XMPassportSettings;

public final class WebViewUserSpaceIdUtil
  extends AbstractAccountWebViewSingleCookieUtil
{
  protected final String a()
  {
    return "userSpaceId";
  }
  
  protected final String b()
  {
    String str2 = XMPassportSettings.b();
    String str3 = XMPassportSettings.c();
    String str1;
    if (!TextUtils.isEmpty(str2))
    {
      str1 = str2;
      if (!TextUtils.equals(str2, str3)) {}
    }
    else
    {
      str1 = null;
    }
    return str1;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\WebViewUserSpaceIdUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */