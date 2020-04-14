package com.mi.milink.sdk.service;

import android.os.RemoteException;
import com.mi.milink.sdk.aidl.ISendCallback;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.session.common.ResponseListener;

class MnsServiceBinder$1
  implements ResponseListener
{
  MnsServiceBinder$1(MnsServiceBinder paramMnsServiceBinder, ISendCallback paramISendCallback) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    if (this.val$callback != null) {}
    try
    {
      this.val$callback.onFailed(paramInt, paramString);
      return;
    }
    catch (RemoteException paramString) {}
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    if (this.val$callback != null) {}
    try
    {
      this.val$callback.onRsponse(paramPacketData);
      return;
    }
    catch (RemoteException paramPacketData) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\service\MnsServiceBinder$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */