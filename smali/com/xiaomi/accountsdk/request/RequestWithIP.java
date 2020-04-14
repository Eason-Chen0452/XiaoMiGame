package com.xiaomi.accountsdk.request;

public class RequestWithIP
  extends PassportRequest
{
  private final PassportSimpleRequest a;
  private final IPStrategy b;
  private final RequestWithIPStatHelper c;
  
  public RequestWithIP(PassportSimpleRequest paramPassportSimpleRequest, IPStrategy paramIPStrategy, RequestWithIPStatHelper paramRequestWithIPStatHelper)
  {
    if ((paramPassportSimpleRequest == null) || (paramIPStrategy == null)) {
      throw new IllegalArgumentException();
    }
    this.a = paramPassportSimpleRequest;
    this.b = paramIPStrategy;
    this.c = new RequestWithIPStatHelper.Composition(new RequestWithIPStatHelper[] { new b(), paramRequestWithIPStatHelper });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\RequestWithIP.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */