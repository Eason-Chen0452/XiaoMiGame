package com.mi.milink.sdk.client;

public abstract interface IEventListener
{
  public abstract void onEventGetServiceToken();
  
  public abstract void onEventInvalidPacket();
  
  public abstract void onEventKickedByServer(int paramInt, long paramLong, String paramString);
  
  public abstract void onEventServiceTokenExpired();
  
  public abstract void onEventShouldCheckUpdate();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\IEventListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */