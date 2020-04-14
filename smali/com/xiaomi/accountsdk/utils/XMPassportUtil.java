package com.xiaomi.accountsdk.utils;

import android.text.TextUtils;

public class XMPassportUtil
{
  public static String a(String paramString)
  {
    return a(paramString, "passToken");
  }
  
  private static String a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {}
    for (;;)
    {
      return null;
      paramString1 = paramString1.split(";");
      int j = paramString1.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramString1[i];
        if ((((String)localObject).contains(paramString2)) && (localObject.split("=")[0].trim().equals(paramString2))) {
          return ((String)localObject).substring(((String)localObject).indexOf("=") + 1);
        }
        i += 1;
      }
    }
  }
  
  public static String b(String paramString)
  {
    return a(paramString, "userId");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\XMPassportUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */