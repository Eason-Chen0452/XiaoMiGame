package com.mi.milink.sdk.session.common;

public class InvalidPacketExecption
  extends Exception
{
  public static final int ERROR_CODE_LENGTH_TOO_BIG = 3;
  public static final int ERROR_CODE_LENGTH_TOO_SMALL = 2;
  public static final int ERROR_CODE_NO_HTTP_HEAD_END = 4;
  public static final int ERROR_CODE_NO_MNS_HEAD = 1;
  private static final long serialVersionUID = -4691985160731593680L;
  public int errCode = 0;
  
  public InvalidPacketExecption(String paramString, int paramInt)
  {
    super(paramString);
    this.errCode = paramInt;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\InvalidPacketExecption.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */