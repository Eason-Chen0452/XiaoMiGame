package com.mi.milink.sdk.connection;

public class TcpConnection
  extends ConnectionImpl
{
  private boolean mIsLoaded = false;
  private String mServerIP = null;
  private int mServerPort = 0;
  
  public TcpConnection(int paramInt, IConnectionCallback paramIConnectionCallback)
  {
    super(paramInt, 1);
    setCallback(paramIConnectionCallback);
  }
  
  public boolean connect(String paramString1, int paramInt1, String paramString2, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mServerIP = paramString1;
    this.mServerPort = paramInt1;
    if (!this.mIsLoaded) {
      return false;
    }
    try
    {
      boolean bool = super.connect(this.mServerIP, this.mServerPort, paramString2, paramInt2, paramInt3, paramInt4);
      return bool;
    }
    catch (Exception paramString1) {}
    return false;
  }
  
  public boolean disconnect()
  {
    if (!this.mIsLoaded) {
      return false;
    }
    try
    {
      boolean bool = super.disconnect();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public String getServerIP()
  {
    return this.mServerIP;
  }
  
  public int getServerPort()
  {
    return this.mServerPort;
  }
  
  public boolean isRunning()
  {
    if (!this.mIsLoaded) {
      return false;
    }
    try
    {
      boolean bool = super.isRunning();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public boolean isSendDone(int paramInt)
  {
    if (!this.mIsLoaded) {
      return false;
    }
    try
    {
      boolean bool = super.isSendDone(paramInt);
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public void removeAllSendData()
  {
    if (!this.mIsLoaded) {
      return;
    }
    try
    {
      super.removeAllSendData();
      return;
    }
    catch (Exception localException) {}
  }
  
  public void removeSendData(int paramInt)
  {
    if (!this.mIsLoaded) {
      return;
    }
    try
    {
      super.removeSendData(paramInt);
      return;
    }
    catch (Exception localException) {}
  }
  
  public boolean sendData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.mIsLoaded) {
      return false;
    }
    try
    {
      boolean bool = super.sendData(paramArrayOfByte, paramInt1, paramInt2);
      return bool;
    }
    catch (Exception paramArrayOfByte) {}
    return false;
  }
  
  public boolean start()
  {
    if (!this.mIsLoaded) {
      return false;
    }
    try
    {
      boolean bool = super.start();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public boolean stop()
  {
    if (!this.mIsLoaded) {
      return false;
    }
    try
    {
      boolean bool = super.stop();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public void wakeUp()
  {
    if (!this.mIsLoaded) {
      return;
    }
    try
    {
      super.wakeUp();
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\connection\TcpConnection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */