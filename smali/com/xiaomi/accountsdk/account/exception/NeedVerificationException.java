package com.xiaomi.accountsdk.account.exception;

import com.xiaomi.accountsdk.account.data.MetaLoginData;

public class NeedVerificationException
  extends Exception
{
  private final MetaLoginData a;
  private final String b;
  private final String c;
  
  public NeedVerificationException(MetaLoginData paramMetaLoginData, String paramString1, String paramString2)
  {
    super("Need verification code");
    this.a = paramMetaLoginData;
    this.b = paramString1;
    this.c = paramString2;
  }
  
  public NeedVerificationException(String paramString)
  {
    this(null, null, paramString);
  }
  
  public final MetaLoginData a()
  {
    return this.a;
  }
  
  public final String b()
  {
    return this.b;
  }
  
  public final String c()
  {
    return this.c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\NeedVerificationException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */