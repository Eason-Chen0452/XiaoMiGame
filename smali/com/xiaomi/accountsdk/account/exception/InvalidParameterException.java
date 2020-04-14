package com.xiaomi.accountsdk.account.exception;

public class InvalidParameterException
  extends AccountException
{
  public String e;
  
  public InvalidParameterException(int paramInt, String paramString)
  {
    super(paramInt, paramString);
  }
  
  public InvalidParameterException(String paramString)
  {
    this(null, paramString);
  }
  
  public InvalidParameterException(String paramString1, String paramString2)
  {
    super(-1, paramString2);
    this.e = paramString1;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\InvalidParameterException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */