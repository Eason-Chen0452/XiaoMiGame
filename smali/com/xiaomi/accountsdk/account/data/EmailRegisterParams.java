package com.xiaomi.accountsdk.account.data;

public class EmailRegisterParams
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  
  public EmailRegisterParams(Builder paramBuilder)
  {
    this.a = Builder.a(paramBuilder);
    this.b = Builder.b(paramBuilder);
    this.c = Builder.c(paramBuilder);
    this.d = Builder.d(paramBuilder);
    this.e = Builder.e(paramBuilder);
    this.f = Builder.f(paramBuilder);
  }
  
  public static final class Builder
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\EmailRegisterParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */