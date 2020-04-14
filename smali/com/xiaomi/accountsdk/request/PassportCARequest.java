package com.xiaomi.accountsdk.request;

import com.xiaomi.accountsdk.account.b;

public class PassportCARequest
  extends PassportRequest
{
  private static final String a = PassportCARequest.class.getName();
  private final PassportSimpleRequest b;
  private final b c;
  private boolean d = false;
  
  public PassportCARequest(PassportSimpleRequest paramPassportSimpleRequest, b paramb)
  {
    this.b = paramPassportSimpleRequest;
    this.c = paramb;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\PassportCARequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */