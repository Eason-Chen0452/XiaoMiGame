package com.xiaomi.accountsdk.account.exception;

import com.xiaomi.accountsdk.account.data.MetaLoginData;

public class InvalidCredentialException
  extends AccountException
{
  public MetaLoginData e;
  public String f;
  public final boolean g;
  
  public InvalidCredentialException(int paramInt, String paramString, boolean paramBoolean)
  {
    super(paramInt, paramString);
    this.g = paramBoolean;
  }
  
  public InvalidCredentialException(boolean paramBoolean) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\InvalidCredentialException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */