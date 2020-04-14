package com.xiaomi.accountsdk.utils;

public class FidNonce
  extends e
{
  public FidNonce(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public static class Builder
  {
    public static FidNonce a(FidNonce.Type paramType)
    {
      ServerTimeUtil.a();
      FidSigningUtil.a();
      new Builder();
      if (paramType == null) {
        throw new IllegalArgumentException("type == null");
      }
      return null;
    }
  }
  
  public static enum Type
  {
    private Type() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\FidNonce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */