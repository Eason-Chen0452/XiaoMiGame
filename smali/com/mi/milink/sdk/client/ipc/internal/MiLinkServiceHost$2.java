package com.mi.milink.sdk.client.ipc.internal;

import android.os.RemoteException;
import com.mi.milink.sdk.aidl.IEventCallback.Stub;
import com.mi.milink.sdk.client.IEventListener;

class MiLinkServiceHost$2
  extends IEventCallback.Stub
{
  MiLinkServiceHost$2(MiLinkServiceHost paramMiLinkServiceHost) {}
  
  public void onEventGetServiceToken()
    throws RemoteException
  {
    if (this.this$0.mEventListener != null) {
      this.this$0.mEventListener.onEventGetServiceToken();
    }
  }
  
  public void onEventInvalidPacket()
    throws RemoteException
  {
    if (this.this$0.mEventListener != null) {
      this.this$0.mEventListener.onEventInvalidPacket();
    }
  }
  
  public void onEventKickedByServer(int paramInt, long paramLong, String paramString)
    throws RemoteException
  {
    if (this.this$0.mEventListener != null) {
      this.this$0.mEventListener.onEventKickedByServer(paramInt, paramLong, paramString);
    }
  }
  
  public void onEventServiceTokenExpired()
    throws RemoteException
  {
    if (this.this$0.mEventListener != null) {
      this.this$0.mEventListener.onEventServiceTokenExpired();
    }
  }
  
  public void onEventShouldCheckUpdate()
    throws RemoteException
  {
    if (this.this$0.mEventListener != null) {
      this.this$0.mEventListener.onEventShouldCheckUpdate();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\internal\MiLinkServiceHost$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */