package com.mi.milink.sdk.session.simplechannel;

import android.os.Handler;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.debug.TrafficMonitor;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionOtherEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionOtherEvent.EventType;
import com.mi.milink.sdk.session.common.ReceiveBuffer.ReceiveBufferSink;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.StreamUtil;
import com.mi.milink.sdk.session.persistent.RecvDataProcessUtil;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBus;

class SessionForSimpleChannel$1
  implements ReceiveBuffer.ReceiveBufferSink
{
  SessionForSimpleChannel$1(SessionForSimpleChannel paramSessionForSimpleChannel) {}
  
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
        localObject2 = StreamUtil.getDownPacket(String.format("[No:%d]", new Object[] { Integer.valueOf(paramInt) }), paramArrayOfByte, new SessionForSimpleChannel.1.1(this));
        localObject1 = localObject2;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Object localObject2;
          long l;
          Request localRequest;
          MiLinkLog.e(SessionForSimpleChannel.access$100(this.this$0), "decode downstream failed", localIOException);
          continue;
          paramArrayOfByte = localRequest;
          if (localIOException != null) {
            paramArrayOfByte = localIOException;
          }
        }
      }
    } while (localObject1 == null);
    l = System.currentTimeMillis();
    SessionForSimpleChannel.access$202(this.this$0, l);
    localObject2 = this.this$0;
    if (!((PacketData)localObject1).hasClientInfo()) {
      bool = true;
    }
    SessionForSimpleChannel.access$302((SessionForSimpleChannel)localObject2, bool);
    MiLinkLog.v(SessionForSimpleChannel.access$400(this.this$0), " onRecvDownStream cmd=" + ((PacketData)localObject1).getCommand() + " mnscode=" + ((PacketData)localObject1).getMnsCode() + " seq=" + ((PacketData)localObject1).getSeqNo() + " and set mNeedClientInfo=" + SessionForSimpleChannel.access$500(this.this$0));
    TrafficMonitor.getInstance().traffic(((PacketData)localObject1).getCommand(), paramArrayOfByte.length);
    localObject2 = (Request)SessionForSimpleChannel.access$600(this.this$0).remove(Integer.valueOf(((PacketData)localObject1).getSeqNo()));
    localRequest = (Request)SessionForSimpleChannel.access$700(this.this$0).get(Integer.valueOf(((PacketData)localObject1).getSeqNo()));
    if (localRequest != null)
    {
      SessionForSimpleChannel.access$800(this.this$0).remove(Integer.valueOf(((PacketData)localObject1).getSeqNo()));
      paramArrayOfByte = localRequest;
      if (SessionForSimpleChannel.access$900(this.this$0, localRequest))
      {
        SessionForSimpleChannel.access$1002(this.this$0, System.currentTimeMillis());
        Global.getMainHandler().removeCallbacks(SessionForSimpleChannel.access$1100(this.this$0));
        Global.getMainHandler().postAtFrontOfQueue(SessionForSimpleChannel.access$1100(this.this$0));
        paramArrayOfByte = localRequest;
      }
      SessionForSimpleChannel.access$1200(this.this$0).selectHandleUtil((PacketData)localObject1, paramArrayOfByte).handle();
      if (SessionForSimpleChannel.access$1300(this.this$0).isEmpty()) {
        SessionForSimpleChannel.access$1400(this.this$0).getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionOtherEvent(MiLinkEventForSimpleChannel.SessionOtherEvent.EventType.RequestMapIsEmpty, this.this$0));
      }
      return true;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionForSimpleChannel$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */