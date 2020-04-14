package com.mi.milink.sdk.session.persistent;

import android.os.Handler;
import android.os.Message;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.CustomHandlerThread;
import com.mi.milink.sdk.client.IPacketListener;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.ArrayList;
import java.util.List;

public class MnsPacketDispatcher
  extends CustomHandlerThread
{
  private static final int MAX_BATCH_COUNT = 10;
  private static final int MAX_DISPATCH_PACKET_DELAY_TIME = 500;
  private static final int MSG_ADD_PACKET = 1;
  private static final int MSG_DISPATCH_PACKET = 2;
  private static final String TAG = "MnsPacketDispatcher";
  private static MnsPacketDispatcher sInstance = new MnsPacketDispatcher();
  private volatile long mDispatchPacketDelayTime = 0L;
  private long mDispatchPacketDelayTimeWhenScreenOn = 0L;
  private IPacketListener mListener;
  private final List<PacketData> mPacketCache = new ArrayList(32);
  
  private MnsPacketDispatcher()
  {
    super("MnsPacketDispatcher");
    MiLinkLog.v("MnsPacketDispatcher", "MnsPacketDispatcher created, threadId=" + Thread.currentThread().getId());
  }
  
  private void execDispatch()
  {
    MiLinkLog.v("MnsPacketDispatcher", "DISPATCH_PACKET, mPacketCache.size=" + this.mPacketCache.size());
    if (!this.mPacketCache.isEmpty())
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.addAll(this.mPacketCache);
      this.mPacketCache.clear();
      if (this.mListener != null) {
        this.mListener.onReceive(localArrayList);
      }
    }
  }
  
  public static MnsPacketDispatcher getInstance()
  {
    return sInstance;
  }
  
  public void dispatchPacket(PacketData paramPacketData)
  {
    if (paramPacketData != null)
    {
      MiLinkLog.v("MnsPacketDispatcher", "dispatch packet data, seq=" + paramPacketData.getSeqNo());
      Message localMessage = obtainMessage();
      if (this.mDispatchPacketDelayTime > 0L) {
        localMessage.what = 1;
      }
      for (localMessage.obj = paramPacketData;; localMessage.obj = paramPacketData)
      {
        sendMessage(localMessage);
        return;
        localMessage.what = 2;
      }
    }
    MiLinkLog.v("MnsPacketDispatcher", "dispatch packet data, but data is null");
  }
  
  protected void processMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      MiLinkLog.e("MnsPacketDispatcher", "handleMessage unknown msgid = " + paramMessage.what);
    case 1: 
      do
      {
        return;
        paramMessage = (PacketData)paramMessage.obj;
      } while (paramMessage == null);
      MiLinkLog.v("MnsPacketDispatcher", "ADD_PACKET, seq=" + paramMessage.getSeqNo());
      this.mPacketCache.add(paramMessage);
      removeMessage(2);
      if ((this.mDispatchPacketDelayTime > 0L) && (this.mPacketCache.size() < 10))
      {
        this.mHandler.sendEmptyMessageDelayed(2, this.mDispatchPacketDelayTime);
        return;
      }
      execDispatch();
      return;
    }
    if (paramMessage.obj != null)
    {
      paramMessage = (PacketData)paramMessage.obj;
      this.mPacketCache.add(paramMessage);
    }
    execDispatch();
  }
  
  public void setCallback(IPacketListener paramIPacketListener)
  {
    if (paramIPacketListener != null)
    {
      MiLinkLog.v("MnsPacketDispatcher", "register packet callback. callback=" + paramIPacketListener);
      this.mListener = paramIPacketListener;
      removeMessage(2);
      this.mHandler.sendEmptyMessage(2);
      return;
    }
    MiLinkLog.v("MnsPacketDispatcher", "register packet callback, but callback is null");
  }
  
  public void setDispatchPacketDelayTime(long paramLong)
  {
    if (paramLong > 500L) {}
    for (this.mDispatchPacketDelayTimeWhenScreenOn = 500L;; this.mDispatchPacketDelayTimeWhenScreenOn = paramLong)
    {
      this.mDispatchPacketDelayTime = this.mDispatchPacketDelayTimeWhenScreenOn;
      return;
    }
  }
  
  public void setDispatchPacketDelayTimeWhenScreenOff()
  {
    this.mDispatchPacketDelayTime = 0L;
  }
  
  public void setDispatchPacketDelayTimeWhenScreenOn()
  {
    this.mDispatchPacketDelayTime = this.mDispatchPacketDelayTimeWhenScreenOn;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\MnsPacketDispatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */