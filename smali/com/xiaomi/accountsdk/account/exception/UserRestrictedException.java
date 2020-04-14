package com.xiaomi.accountsdk.account.exception;

public class UserRestrictedException
  extends Exception
{
  public UserRestrictedException()
  {
    super("User has been restricted by server");
  }
  
  public UserRestrictedException(String paramString)
  {
    super(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\UserRestrictedException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */