package com.mi.milink.sdk.client.ipc.internal;

import android.os.RemoteException;
import com.mi.milink.sdk.aidl.ISendCallback.Stub;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.client.SendPacketListener;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class MnsSendPacketListener
  extends ISendCallback.Stub
{
  private static final ThreadPoolExecutor RESPONSE_EXEXUTOR = new ThreadPoolExecutor(2, 4, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(4), rehHandler);
  private static final String TAG = "MnsSendPacketListener";
  private static RejectedExecutionHandler rehHandler = new MnsSendPacketListener.1();
  private SendPacketListener mListener;
  
  public MnsSendPacketListener(SendPacketListener paramSendPacketListener)
  {
    this.mListener = paramSendPacketListener;
  }
  
  public void onFailed(int paramInt, String paramString)
    throws RemoteException
  {
    if (this.mListener != null) {
      new MnsSendPacketListener.3(this, paramInt, paramString).executeOnExecutor(RESPONSE_EXEXUTOR, new Void[0]);
    }
  }
  
  public void onRsponse(PacketData paramPacketData)
    throws RemoteException
  {
    if (this.mListener != null) {
      new MnsSendPacketListener.2(this, paramPacketData).executeOnExecutor(RESPONSE_EXEXUTOR, new Void[0]);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\internal\MnsSendPacketListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */