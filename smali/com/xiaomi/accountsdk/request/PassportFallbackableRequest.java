package com.xiaomi.accountsdk.request;

public abstract class PassportFallbackableRequest
  extends PassportRequest
{
  private final PassportRequest a;
  private final PassportRequest b;
  private boolean c = false;
  
  public PassportFallbackableRequest(PassportRequest paramPassportRequest1, PassportRequest paramPassportRequest2)
  {
    if ((paramPassportRequest1 == null) || (paramPassportRequest2 == null)) {
      throw new IllegalStateException("both arguments should not be null.");
    }
    this.a = paramPassportRequest1;
    this.b = paramPassportRequest2;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\PassportFallbackableRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */