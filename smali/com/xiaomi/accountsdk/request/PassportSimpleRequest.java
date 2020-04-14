package com.xiaomi.accountsdk.request;

public abstract class PassportSimpleRequest
  extends PassportRequest
{
  protected final PassportRequestArguments b;
  
  protected PassportSimpleRequest(PassportRequestArguments paramPassportRequestArguments)
  {
    if (paramPassportRequestArguments == null) {
      throw new IllegalArgumentException("arguments can't be null");
    }
    this.b = paramPassportRequestArguments;
  }
  
  public static class GetAsString
    extends PassportSimpleRequest
  {
    public GetAsString(PassportRequestArguments paramPassportRequestArguments)
    {
      super();
    }
  }
  
  public static class PostAsString
    extends PassportSimpleRequest
  {
    public PostAsString(PassportRequestArguments paramPassportRequestArguments)
    {
      super();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\PassportSimpleRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */