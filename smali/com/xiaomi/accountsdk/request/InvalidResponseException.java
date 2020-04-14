package com.xiaomi.accountsdk.request;

import com.xiaomi.accountsdk.account.exception.AccountException;

public class InvalidResponseException
  extends AccountException
{
  public boolean e = false;
  
  public InvalidResponseException(int paramInt, String paramString)
  {
    super(paramInt, paramString);
  }
  
  public InvalidResponseException(String paramString)
  {
    this(paramString, null);
  }
  
  public InvalidResponseException(String paramString, Throwable paramThrowable)
  {
    this(paramString, paramThrowable, false);
  }
  
  public InvalidResponseException(String paramString, Throwable paramThrowable, boolean paramBoolean)
  {
    super(-1, paramString, paramThrowable);
    this.e = paramBoolean;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\InvalidResponseException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */