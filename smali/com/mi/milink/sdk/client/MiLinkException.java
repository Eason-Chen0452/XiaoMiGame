package com.mi.milink.sdk.client;

public class MiLinkException
  extends Throwable
{
  private static final long serialVersionUID = 112893821983L;
  
  public MiLinkException(int paramInt, String paramString)
  {
    super(String.format("errCode:%d errMsg:%s", new Object[] { Integer.valueOf(paramInt), paramString }));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\MiLinkException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */