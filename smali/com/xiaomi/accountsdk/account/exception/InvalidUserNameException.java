package com.xiaomi.accountsdk.account.exception;

public class InvalidUserNameException
  extends Exception
{
  public InvalidUserNameException()
  {
    super("No such a user");
  }
  
  public InvalidUserNameException(String paramString)
  {
    super(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\InvalidUserNameException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */