package com.xiaomi.accountsdk.account.exception;

import com.xiaomi.accountsdk.request.SimpleRequest.StringContent;

public class NeedNotificationException
  extends Exception
{
  private final String a;
  private final String b;
  private final SimpleRequest.StringContent c;
  
  public NeedNotificationException(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public NeedNotificationException(String paramString1, String paramString2, SimpleRequest.StringContent paramStringContent)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramStringContent;
  }
  
  public final String a()
  {
    return this.b;
  }
  
  public final String b()
  {
    return this.a;
  }
  
  public final SimpleRequest.StringContent c()
  {
    return this.c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\exception\NeedNotificationException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */