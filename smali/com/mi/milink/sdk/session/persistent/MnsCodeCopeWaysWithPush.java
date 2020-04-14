package com.mi.milink.sdk.session.persistent;

import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.ChannelStatusChangeEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ChannelStatusChangeEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ServerNotificationEvent.EventType;
import com.mi.milink.sdk.proto.PushPacketProto.KickMessage;
import com.mi.milink.sdk.proto.PushPacketProto.MilinkLogReq;
import com.mi.milink.sdk.proto.PushPacketProto.PushLogLevel;
import com.mi.milink.sdk.proto.PushPacketProto.SimplePushData;
import com.mi.milink.sdk.session.common.ServerProfile;
import com.mi.milink.sdk.session.simplechannel.SessionForSimpleChannel;
import com.mi.milink.sdk.session.simplechannel.SessionManagerForSimpleChannel;
import org.greenrobot.eventbus.EventBus;

public class MnsCodeCopeWaysWithPush
  extends IMnsCodeCopeWays
{
  public static final long CHANNEL_BUSY_CANCEL_FLAG_NUMBER = 3L;
  public static final long CHANNEL_BUSY_FLAG_INTERVAL = 3000L;
  public static final long CHANNEL_BUSY_FLAG_NUMBER = 150L;
  private static final String CLASSTAG = "MnsCodeCopeWaysWithPush";
  private String TAG;
  private long mBeginStatisticsTime = 0L;
  private int mLargeIntervalNumber = 0;
  private long mLastRecvPushTimeStamp = 0L;
  private int mRecvPushNumber = 0;
  
  public MnsCodeCopeWaysWithPush(Session paramSession)
  {
    super(paramSession);
    this.TAG = String.format("[No:%d]%s", new Object[] { Integer.valueOf(paramSession.getSessionNO()), "MnsCodeCopeWaysWithPush" });
  }
  
  private void estimateChannelBusy()
  {
    long l = System.currentTimeMillis();
    if (l - this.mBeginStatisticsTime < 3000L)
    {
      this.mRecvPushNumber += 1;
      if (this.mRecvPushNumber > 150L) {
        EventBus.getDefault().post(new MiLinkEvent.ChannelStatusChangeEvent(MiLinkEvent.ChannelStatusChangeEvent.EventType.channelBusy, null));
      }
      if (l - this.mLastRecvPushTimeStamp <= 3000L) {
        break label149;
      }
      this.mLargeIntervalNumber += 1;
      if (this.mLargeIntervalNumber > 3L)
      {
        this.mBeginStatisticsTime = 0L;
        this.mRecvPushNumber = 0;
        EventBus.getDefault().post(new MiLinkEvent.ChannelStatusChangeEvent(MiLinkEvent.ChannelStatusChangeEvent.EventType.channelIdle, null));
      }
    }
    for (;;)
    {
      this.mLastRecvPushTimeStamp = l;
      return;
      if (this.mRecvPushNumber > 150L) {
        break;
      }
      this.mBeginStatisticsTime = l;
      this.mRecvPushNumber = 0;
      break;
      label149:
      this.mLargeIntervalNumber = 0;
    }
  }
  
  protected void afterHandle()
  {
    InternalDataMonitor localInternalDataMonitor;
    String str1;
    int i;
    if (this.mRecvData.isPushPacket())
    {
      localInternalDataMonitor = InternalDataMonitor.getInstance();
      if (this.mSession.getServerProfileForStatistic() == null) {
        break label124;
      }
      str1 = this.mSession.getServerProfileForStatistic().getServerIP();
      if (this.mSession.getServerProfileForStatistic() == null) {
        break label130;
      }
      i = this.mSession.getServerProfileForStatistic().getServerPort();
      label57:
      if (!this.mRecvData.isPushPacket()) {
        break label135;
      }
    }
    label124:
    label130:
    label135:
    for (String str2 = "milink.push." + this.mRecvData.getCommand();; str2 = this.mRecvData.getCommand())
    {
      localInternalDataMonitor.trace(str1, i, str2, this.mRetCode, System.currentTimeMillis(), System.currentTimeMillis(), 0, this.mRecvData.getResponseSize(), this.mRecvData.getSeqNo());
      return;
      str1 = "";
      break;
      i = 0;
      break label57;
    }
  }
  
  protected void onAccNeedRetry() {}
  
  protected void onB2TokenExpired()
  {
    if ((this.mSession instanceof SessionForSimpleChannel))
    {
      ((SessionForSimpleChannel)this.mSession).getSessionManagerForSimpleChannel().getChannelEventBus().post(new MiLinkEventForSimpleChannel.ServerNotificationEvent(MiLinkEventForSimpleChannel.ServerNotificationEvent.EventType.B2tokenExpired));
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.B2tokenExpired));
  }
  
  protected void onBusinessCmdTimeout() {}
  
  protected void onInternalCmdTimeout() {}
  
  protected void onKickedByServer() {}
  
  protected void onOk()
  {
    MiLinkLog.v(this.TAG, "recv data and to dispatcher");
    if ("milink.kick".equals(this.mRecvData.getCommand())) {
      MiLinkLog.v(this.TAG, "get kick push");
    }
    for (;;)
    {
      try
      {
        PushPacketProto.KickMessage localKickMessage = PushPacketProto.KickMessage.parseFrom(PushPacketProto.SimplePushData.parseFrom(this.mRecvData.getData()).getPushdata());
        EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.KickByServer, localKickMessage));
        this.mRetCode = this.mRecvData.getBusiCode();
        return;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException1)
      {
        MiLinkLog.e(this.TAG, localInvalidProtocolBufferException1.getMessage());
        continue;
      }
      int i;
      if ("milink.push.log".equals(this.mRecvData.getCommand()))
      {
        try
        {
          PushPacketProto.MilinkLogReq localMilinkLogReq = PushPacketProto.MilinkLogReq.parseFrom(PushPacketProto.SimplePushData.parseFrom(this.mRecvData.getData()).getPushdata());
          i = localMilinkLogReq.getType();
          if (i != 0) {
            break label180;
          }
          EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.requireUploadLog, localMilinkLogReq));
          MnsPacketDispatcher.getInstance().dispatchPacket(this.mRecvData);
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException2)
        {
          MiLinkLog.e(this.TAG, localInvalidProtocolBufferException2.getMessage());
        }
        continue;
        label180:
        if (1 == i)
        {
          PushPacketProto.PushLogLevel localPushLogLevel = localInvalidProtocolBufferException2.getLogLevel();
          MiLinkLog.v(this.TAG, "recv push log level,loglevel=" + localPushLogLevel.getLoglevel() + ",time=" + localPushLogLevel.getTimeLong());
          EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.requireChannelLogLevel, localPushLogLevel));
        }
      }
      else
      {
        MnsPacketDispatcher.getInstance().dispatchPacket(this.mRecvData);
        i = this.mRecvData.getSeqNo();
        if (i < 0)
        {
          this.mSession.pushAck(i);
          this.mRecvData.setSeqNo(0);
        }
      }
    }
  }
  
  protected void onServerTokenExpired()
  {
    if ((this.mSession instanceof SessionForSimpleChannel)) {
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.ServiceTokenExpired));
  }
  
  protected void onUnknowMsnCode(int paramInt) {}
  
  protected void onUpdateChannelPubKey() {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\MnsCodeCopeWaysWithPush.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */