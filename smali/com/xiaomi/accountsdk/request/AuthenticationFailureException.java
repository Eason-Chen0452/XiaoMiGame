package com.xiaomi.accountsdk.request;

import com.xiaomi.accountsdk.account.exception.HttpException;

public class AuthenticationFailureException
  extends HttpException
{
  private String d = null;
  private String e = null;
  
  public AuthenticationFailureException(int paramInt, String paramString)
  {
    super(paramInt, paramString);
  }
  
  public AuthenticationFailureException(String paramString)
  {
    super(0, paramString);
  }
  
  public final void a(String paramString)
  {
    this.d = paramString;
  }
  
  public final void b(String paramString)
  {
    this.e = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\AuthenticationFailureException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */