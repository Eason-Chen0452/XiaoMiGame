package com.alipay.sdk.protocol;

import android.text.TextUtils;

public enum a
{
  private String d;
  
  private a(String paramString)
  {
    this.d = paramString;
  }
  
  public static a a(String paramString)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString))
    {
      localObject = a;
      return (a)localObject;
    }
    a locala2 = a;
    a[] arrayOfa = values();
    int j = arrayOfa.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label62;
      }
      a locala1 = arrayOfa[i];
      localObject = locala1;
      if (paramString.startsWith(locala1.d)) {
        break;
      }
      i += 1;
    }
    label62:
    return locala2;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\protocol\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */