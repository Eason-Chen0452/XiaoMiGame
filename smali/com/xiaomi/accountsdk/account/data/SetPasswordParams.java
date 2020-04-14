package com.xiaomi.accountsdk.account.data;

public class SetPasswordParams
{
  public final String a;
  public final PassportInfo b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public final MiuiActivatorInfo h;
  
  public SetPasswordParams(Builder paramBuilder)
  {
    this.a = Builder.a(paramBuilder);
    this.b = Builder.b(paramBuilder);
    this.c = Builder.c(paramBuilder);
    this.d = Builder.d(paramBuilder);
    this.e = Builder.e(paramBuilder);
    this.f = Builder.f(paramBuilder);
    this.g = Builder.g(paramBuilder);
    this.h = Builder.h(paramBuilder);
  }
  
  public static final class Builder
  {
    private final String a;
    private PassportInfo b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private MiuiActivatorInfo h;
    
    public Builder(String paramString)
    {
      this.a = paramString;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\SetPasswordParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */