package com.mi.milink.sdk.session.simplechannel;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.account.manager.MiChannelAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionLoginEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionLoginEvent.EventType;
import com.mi.milink.sdk.proto.DataExtraProto.DataAnonymousWid;
import com.mi.milink.sdk.proto.DataExtraProto.DataAnonymousWid.Builder;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdChannelRsp;
import com.mi.milink.sdk.session.common.ResponseListener;
import com.mi.milink.sdk.session.persistent.MnsPacketDispatcher;
import org.greenrobot.eventbus.EventBus;

class SessionForSimpleChannel$3
  implements ResponseListener
{
  SessionForSimpleChannel$3(SessionForSimpleChannel paramSessionForSimpleChannel) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    if (!SessionForSimpleChannel.access$000(this.this$0).isChannelModCurrent())
    {
      MiLinkLog.i(SessionForSimpleChannel.access$2000(this.this$0), "failed current is not channel mode " + SessionForSimpleChannel.access$000(this.this$0).getCurrentAccountType());
      return;
    }
    MiLinkLog.i(SessionForSimpleChannel.access$2100(this.this$0), "channel fastlogin onDataSendFailed errCode= " + paramInt + ", errMsg=" + paramString);
    SessionForSimpleChannel.access$1400(this.this$0).getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionLoginEvent(MiLinkEventForSimpleChannel.SessionLoginEvent.EventType.LoginFailed, this.this$0, paramInt));
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    if (!SessionForSimpleChannel.access$000(this.this$0).isChannelModCurrent())
    {
      MiLinkLog.i(SessionForSimpleChannel.access$1500(this.this$0), "current is not channel mode " + SessionForSimpleChannel.access$000(this.this$0).getCurrentAccountType());
      return;
    }
    MiLinkLog.v(SessionForSimpleChannel.access$1600(this.this$0), "channel fastlogin response mns code: " + paramPacketData.getMnsCode());
    DataExtraProto.DataAnonymousWid.Builder localBuilder;
    if (paramPacketData.getMnsCode() == 0) {
      localBuilder = null;
    }
    try
    {
      paramPacketData = SystemPacketProto.MnsCmdChannelRsp.parseFrom(paramPacketData.getData());
      if (paramPacketData == null)
      {
        MiLinkLog.w(SessionForSimpleChannel.access$1700(this.this$0), "chanel fastlogin response = null");
        SessionForSimpleChannel.access$1400(this.this$0).getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionLoginEvent(MiLinkEventForSimpleChannel.SessionLoginEvent.EventType.LoginFailed, this.this$0, 998));
        return;
      }
      if ((paramPacketData.getB2() != null) && (paramPacketData.getGTKEYB2() != null)) {
        SessionForSimpleChannel.access$000(this.this$0).getCurrentAccount().loginMiLink(paramPacketData.getB2().toByteArray(), paramPacketData.getGTKEYB2().toByteArray());
      }
      for (;;)
      {
        paramPacketData = String.valueOf(paramPacketData.getWid());
        MiLinkLog.w(SessionForSimpleChannel.access$1900(this.this$0), "userId=" + paramPacketData + ",accountManager.getCurrentAccount():" + SessionForSimpleChannel.access$000(this.this$0).getCurrentAccount());
        SessionForSimpleChannel.access$000(this.this$0).getCurrentAccount().setUserId(paramPacketData);
        try
        {
          localBuilder = DataExtraProto.DataAnonymousWid.newBuilder();
          localBuilder.setWid(Long.valueOf(paramPacketData).longValue());
          PacketData localPacketData = new PacketData();
          localPacketData.setCommand("data.channel.anonymouswid");
          localPacketData.setData(localBuilder.build().toByteArray());
          MnsPacketDispatcher.getInstance().dispatchPacket(localPacketData);
          MiLinkLog.d(SessionForSimpleChannel.access$1900(this.this$0), " dispwid to app success wid = " + paramPacketData);
          MiLinkLog.w(SessionForSimpleChannel.access$1900(this.this$0), "wid=" + paramPacketData);
          SessionForSimpleChannel.access$1400(this.this$0).processEvent(new MiLinkEventForSimpleChannel.SessionLoginEvent(MiLinkEventForSimpleChannel.SessionLoginEvent.EventType.LoginSuccess, this.this$0, 0));
          return;
          MiLinkLog.w(SessionForSimpleChannel.access$1800(this.this$0), "channel fastlogin response.getB2() = null or response.getGTKEYB2() = null");
          continue;
          SessionForSimpleChannel.access$1400(this.this$0).processEvent(new MiLinkEventForSimpleChannel.SessionLoginEvent(MiLinkEventForSimpleChannel.SessionLoginEvent.EventType.LoginFailed, this.this$0, paramPacketData.getMnsCode()));
          return;
        }
        catch (Exception localException)
        {
          for (;;) {}
        }
      }
    }
    catch (InvalidProtocolBufferException paramPacketData)
    {
      for (;;)
      {
        paramPacketData = localException;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionForSimpleChannel$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */