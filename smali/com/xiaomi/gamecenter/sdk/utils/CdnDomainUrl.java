package com.xiaomi.gamecenter.sdk.utils;

import android.os.Build.VERSION;

public class CdnDomainUrl
{
  public static final String a;
  
  static
  {
    if (Build.VERSION.SDK_INT < 18) {}
    for (String str = "jpeg";; str = "webp")
    {
      a = str;
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\CdnDomainUrl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */