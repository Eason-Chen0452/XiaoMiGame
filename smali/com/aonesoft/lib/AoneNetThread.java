package com.aonesoft.lib;

class AoneNetThread
  implements Runnable
{
  private int mCbNum;
  private String mIp;
  private String mKey;
  private int mPort;
  private byte[] mRequest;
  private int mRequestLen;
  public byte[] sResponse = null;
  public int sResponseLen = 0;
  public int sResult = 0;
  
  public AoneNetThread(String paramString1, int paramInt1, String paramString2, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    this.mIp = paramString1;
    this.mPort = paramInt1;
    this.mKey = paramString2;
    this.mRequest = ((byte[])paramArrayOfByte.clone());
    this.mRequestLen = paramInt2;
    this.mCbNum = paramInt3;
  }
  
  public static native void nativeSendRecv(AoneNetThread paramAoneNetThread, String paramString1, int paramInt1, String paramString2, byte[] paramArrayOfByte, int paramInt2);
  
  public byte[] getResponse()
  {
    return this.sResponse;
  }
  
  public int getResponseLen()
  {
    return this.sResponseLen;
  }
  
  public int getResult()
  {
    return this.sResult;
  }
  
  public void run()
  {
    nativeSendRecv(this, this.mIp, this.mPort, this.mKey, this.mRequest, this.mRequestLen);
    AoneNetAsync.runOnGameThread(new AoneNetResponse(false, getResult(), getResponse(), getResponseLen(), this.mCbNum));
  }
  
  public void setResponse(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    this.sResult = paramInt1;
    if (paramArrayOfByte == null) {}
    for (this.sResponse = null;; this.sResponse = ((byte[])paramArrayOfByte.clone()))
    {
      this.sResponseLen = paramInt2;
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneNetThread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */