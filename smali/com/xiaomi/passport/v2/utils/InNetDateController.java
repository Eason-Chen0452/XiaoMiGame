package com.xiaomi.passport.v2.utils;

import com.xiaomi.accountsdk.account.URLs;
import com.xiaomi.accountsdk.account.data.ActivatorPhoneInfo;

public class InNetDateController
{
  private static String a = URLs.e + "/recyclePhoneCheck";
  
  public static class PhoneParams
  {
    public final String a;
    public final String b;
    public final ActivatorPhoneInfo c;
    
    public PhoneParams(String paramString1, String paramString2, ActivatorPhoneInfo paramActivatorPhoneInfo)
    {
      this.a = paramString1;
      this.b = paramString2;
      this.c = paramActivatorPhoneInfo;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\v2\utils\InNetDateController.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */