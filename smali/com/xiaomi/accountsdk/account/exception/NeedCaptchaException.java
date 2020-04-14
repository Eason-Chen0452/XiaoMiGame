package com.xiaomi.accountsdk.account.exception;

public class NeedCaptchaException
  extends AccountException
{
  private final String e;
  
  public NeedCaptchaException(int paramInt, String paramString1, String paramString2)
  {
    super(paramInt, paramString1);
    this.e = paramString2;
  }
  
  public NeedCaptchaException(String paramString)
  {
    this(87001, "Need captcha code or wrong captcha code", paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\NeedCaptchaException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */