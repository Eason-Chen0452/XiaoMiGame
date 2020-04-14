package com.aonesoft.lib;

class AoneHttpThread
  implements Runnable
{
  private int mCbNum;
  private String mIp;
  private String mKey;
  private int mPort;
  private byte[] mRequest;
  private int mRequestLen;
  
  public AoneHttpThread(String paramString1, int paramInt1, String paramString2, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    this.mIp = paramString1;
    this.mPort = paramInt1;
    this.mKey = paramString2;
    this.mRequest = ((byte[])paramArrayOfByte.clone());
    this.mRequestLen = paramInt2;
    this.mCbNum = paramInt3;
  }
  
  public static native int nativeSendRecv(String paramString1, int paramInt1, String paramString2, byte[] paramArrayOfByte, int paramInt2, int paramInt3);
  
  public void run()
  {
    AoneNetAsync.runOnGameThread(new AoneNetResponse(true, nativeSendRecv(this.mIp, this.mPort, this.mKey, this.mRequest, this.mRequestLen, this.mCbNum), new byte[1], 1, this.mCbNum));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneHttpThread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */