package com.xiaomi.passport.data;

public class LoginPreference
{
  public String a;
  public String b;
  public PhoneLoginType c;
  
  public LoginPreference(String paramString1, String paramString2, PhoneLoginType paramPhoneLoginType)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramPhoneLoginType;
  }
  
  public static enum PhoneLoginType
  {
    private final String a;
    
    static
    {
      password = new PhoneLoginType("password", 1, "password");
    }
    
    private PhoneLoginType(String paramString)
    {
      this.a = paramString;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\data\LoginPreference.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */