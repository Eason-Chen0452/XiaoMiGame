package com.mi.milink.sdk.session.persistent;

import android.os.Handler;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.debug.TrafficMonitor;
import com.mi.milink.sdk.event.MiLinkEvent.SessionOtherEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionOtherEvent.EventType;
import com.mi.milink.sdk.session.common.ReceiveBuffer.ReceiveBufferSink;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.StreamUtil;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBus;

class Session$1
  implements ReceiveBuffer.ReceiveBufferSink
{
  Session$1(Session paramSession) {}
  
  public boolean onAddTimeout(int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public boolean onRecvDownStream(int paramInt, byte[] paramArrayOfByte)
  {
    boolean bool = false;
    if (paramArrayOfByte == null) {}
    do
    {
      return false;
      Object localObject1 = null;
      try
      {
        localObject2 = StreamUtil.getDownPacket(String.format("[No:%d]", new Object[] { Integer.valueOf(paramInt) }), paramArrayOfByte, new Session.1.1(this));
        localObject1 = localObject2;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Object localObject2;
          long l;
          Request localRequest;
          MiLinkLog.e(this.this$0.mLogTag, "decode downstream failed", localIOException);
          continue;
          paramArrayOfByte = localRequest;
          if (localIOException != null) {
            paramArrayOfByte = localIOException;
          }
        }
      }
    } while (localObject1 == null);
    l = System.currentTimeMillis();
    this.this$0.mLastReceivedPacketTime = l;
    localObject2 = this.this$0;
    if (!((PacketData)localObject1).hasClientInfo()) {
      bool = true;
    }
    ((Session)localObject2).mNeedClientInfo = bool;
    MiLinkLog.w(this.this$0.mLogTag, " onRecvDownStream cmd=" + ((PacketData)localObject1).getCommand() + " mnscode=" + ((PacketData)localObject1).getMnsCode() + " seq=" + ((PacketData)localObject1).getSeqNo() + " and set mNeedClientInfo=" + this.this$0.mNeedClientInfo);
    TrafficMonitor.getInstance().traffic(((PacketData)localObject1).getCommand(), paramArrayOfByte.length);
    localObject2 = (Request)this.this$0.mPendingStatisticTimeoutedRequestMap.remove(Integer.valueOf(((PacketData)localObject1).getSeqNo()));
    localRequest = (Request)this.this$0.mRequestMap.get(Integer.valueOf(((PacketData)localObject1).getSeqNo()));
    if (localRequest != null)
    {
      this.this$0.mRequestMap.remove(Integer.valueOf(((PacketData)localObject1).getSeqNo()));
      paramArrayOfByte = localRequest;
      if (Session.access$000(this.this$0, localRequest))
      {
        this.this$0.mLastReceivedFastPingTime = l;
        Global.getMainHandler().removeCallbacks(Session.access$100(this.this$0));
        Global.getMainHandler().postAtFrontOfQueue(Session.access$100(this.this$0));
        paramArrayOfByte = localRequest;
      }
      this.this$0.mRecvDataProcessUtil.selectHandleUtil((PacketData)localObject1, paramArrayOfByte).handle();
      if (this.this$0.mRequestMap.isEmpty()) {
        EventBus.getDefault().post(new MiLinkEvent.SessionOtherEvent(MiLinkEvent.SessionOtherEvent.EventType.RequestMapIsEmpty, this.this$0));
      }
      return true;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */