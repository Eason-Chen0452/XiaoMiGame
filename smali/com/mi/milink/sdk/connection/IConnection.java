package com.mi.milink.sdk.connection;

import com.mi.milink.sdk.session.common.MsgProcessor;

public abstract interface IConnection
{
  public abstract boolean connect(String paramString1, int paramInt1, String paramString2, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean disconnect();
  
  public abstract int getConnectionType();
  
  public abstract String getServerIP();
  
  public abstract int getServerPort();
  
  public abstract boolean isRunning();
  
  public abstract boolean isSendDone(int paramInt);
  
  public abstract boolean postMessage(int paramInt1, Object paramObject, int paramInt2, MsgProcessor paramMsgProcessor);
  
  public abstract void removeAllSendData();
  
  public abstract void removeSendData(int paramInt);
  
  public abstract boolean sendData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public abstract void setCallback(IConnectionCallback paramIConnectionCallback);
  
  public abstract boolean start();
  
  public abstract boolean stop();
  
  public abstract void wakeUp();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\connection\IConnection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */