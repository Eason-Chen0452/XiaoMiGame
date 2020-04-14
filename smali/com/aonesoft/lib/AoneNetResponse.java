package com.aonesoft.lib;

class AoneNetResponse
  implements Runnable
{
  private int mCbNum;
  private boolean mIsHttp;
  private byte[] mResponse;
  private int mResponseLen;
  private int mResult;
  
  AoneNetResponse(boolean paramBoolean, int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    this.mIsHttp = paramBoolean;
    this.mResult = paramInt1;
    this.mResponse = paramArrayOfByte;
    this.mResponseLen = paramInt2;
    this.mCbNum = paramInt3;
  }
  
  public static native void nativeHttpCallback(int paramInt1, int paramInt2);
  
  public static native void nativeNetCallback(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3);
  
  public void run()
  {
    if (this.mIsHttp)
    {
      nativeHttpCallback(this.mResult, this.mCbNum);
      return;
    }
    nativeNetCallback(this.mResult, this.mResponse, this.mResponseLen, this.mCbNum);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneNetResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */