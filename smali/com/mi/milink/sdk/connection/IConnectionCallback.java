package com.mi.milink.sdk.connection;

public abstract interface IConnectionCallback
{
  public abstract boolean onConnect(boolean paramBoolean, int paramInt);
  
  public abstract boolean onDisconnect();
  
  public abstract boolean onError(int paramInt);
  
  public abstract boolean onRecv(byte[] paramArrayOfByte);
  
  public abstract boolean onSendBegin(int paramInt);
  
  public abstract boolean onSendEnd(int paramInt);
  
  public abstract boolean onStart();
  
  public abstract boolean onTimeOut(int paramInt1, int paramInt2);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\connection\IConnectionCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */