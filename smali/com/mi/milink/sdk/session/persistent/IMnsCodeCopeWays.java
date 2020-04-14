package com.mi.milink.sdk.session.persistent;

import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ServerNotificationEvent.EventType;
import com.mi.milink.sdk.proto.PushPacketProto.KickMessage;
import com.mi.milink.sdk.proto.PushPacketProto.KickMessage.Builder;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdChannelNewPubKeyRsp;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.simplechannel.SessionForSimpleChannel;
import com.mi.milink.sdk.session.simplechannel.SessionManagerForSimpleChannel;
import com.mi.milink.sdk.session.simplechannel.UpdateChannelPubKeyValue;
import org.greenrobot.eventbus.EventBus;

public abstract class IMnsCodeCopeWays
{
  public static String TAG = "IMnsCodeCopeWays";
  protected PacketData mRecvData;
  protected Request mRequeset;
  protected int mRetCode;
  protected Session mSession;
  
  public IMnsCodeCopeWays(Session paramSession)
  {
    this.mSession = paramSession;
  }
  
  protected abstract void afterHandle();
  
  public void handleMnsCode()
  {
    int i = Math.abs(this.mRecvData.getMnsCode());
    this.mRetCode = i;
    if (!"milink.handshake".equals(this.mRecvData.getCommand()))
    {
      if (i != 110) {
        break label88;
      }
      this.mSession.addContinuousRecv110Count();
    }
    while (("milink.loginoff".equals(this.mRecvData.getCommand())) && (i != 0))
    {
      if (this.mRequeset != null) {
        this.mRequeset.onDataSendFailed(this.mRecvData.getMnsCode(), "MNS_LOGOFF failed, return");
      }
      return;
      label88:
      this.mSession.resetContinuousRecv110Count();
    }
    switch (i)
    {
    default: 
      onUnknowMsnCode(i);
    }
    for (;;)
    {
      afterHandle();
      this.mRecvData = null;
      this.mRequeset = null;
      return;
      onOk();
      continue;
      onB2TokenExpired();
      continue;
      onServerTokenExpired();
      continue;
      onTimeOut();
      continue;
      onKickedByServer();
      continue;
      onAccNeedRetry();
      continue;
      onServerSpecialLineBroken();
      continue;
      onServerSpecialLineBrokenUrgent();
      continue;
      onUpdateChannelPubKey();
      continue;
      onDeleteChannelPubKey();
    }
  }
  
  protected abstract void onAccNeedRetry();
  
  protected void onB2TokenExpired()
  {
    if ((this.mSession instanceof SessionForSimpleChannel))
    {
      ((SessionForSimpleChannel)this.mSession).getSessionManagerForSimpleChannel().getChannelEventBus().post(new MiLinkEventForSimpleChannel.ServerNotificationEvent(MiLinkEventForSimpleChannel.ServerNotificationEvent.EventType.B2tokenExpired));
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.B2tokenExpired));
  }
  
  protected abstract void onBusinessCmdTimeout();
  
  protected void onDeleteChannelPubKey()
  {
    if ((this.mSession instanceof SessionForSimpleChannel)) {
      ((SessionForSimpleChannel)this.mSession).getSessionManagerForSimpleChannel().getChannelEventBus().post(new MiLinkEventForSimpleChannel.ServerNotificationEvent(MiLinkEventForSimpleChannel.ServerNotificationEvent.EventType.ChannelDelPubKey, this.mRequeset));
    }
  }
  
  protected abstract void onInternalCmdTimeout();
  
  protected void onKickedByServer()
  {
    try
    {
      PushPacketProto.KickMessage localKickMessage1 = PushPacketProto.KickMessage.parseFrom(this.mRecvData.getData());
      EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.KickByServer, localKickMessage1));
      return;
    }
    catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
    {
      MiLinkLog.e(TAG, localInvalidProtocolBufferException);
      MiLinkLog.e(TAG, "kick but InvalidProtocolBufferException construct a message and post.");
      int i = (int)(System.currentTimeMillis() / 1000L);
      PushPacketProto.KickMessage localKickMessage2 = PushPacketProto.KickMessage.newBuilder().setDevice("unknowdevices").setTime(i).setType(10).build();
      EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.KickByServer, localKickMessage2));
    }
  }
  
  protected abstract void onOk();
  
  protected void onServerSpecialLineBroken()
  {
    this.mRequeset.onDataSendFailed(this.mRecvData.getMnsCode(), "MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN");
    this.mSession.checkExceedMaxContinuousRecv110Count();
  }
  
  protected void onServerSpecialLineBrokenUrgent()
  {
    MiLinkLog.e(TAG, "onServerSpecialLineBrokenUrgent");
    this.mRequeset.onDataSendFailed(this.mRecvData.getMnsCode(), "MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN_URGENT");
    if ((this.mSession instanceof SessionForSimpleChannel))
    {
      ((SessionForSimpleChannel)this.mSession).getSessionManagerForSimpleChannel().getChannelEventBus().post(new MiLinkEventForSimpleChannel.ServerNotificationEvent(MiLinkEventForSimpleChannel.ServerNotificationEvent.EventType.ServerLineBroken, this.mRequeset));
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.ServerLineBroken));
  }
  
  protected abstract void onServerTokenExpired();
  
  protected void onTimeOut()
  {
    if (this.mRequeset != null)
    {
      if (this.mRequeset.isInternalRequest()) {
        onInternalCmdTimeout();
      }
    }
    else {
      return;
    }
    onBusinessCmdTimeout();
  }
  
  protected abstract void onUnknowMsnCode(int paramInt);
  
  protected void onUpdateChannelPubKey()
  {
    MiLinkLog.v(TAG, "onUpdateChannelPubKey handler");
    if ((this.mRecvData != null) && (this.mRecvData.getData() != null)) {
      try
      {
        SystemPacketProto.MnsCmdChannelNewPubKeyRsp localMnsCmdChannelNewPubKeyRsp = SystemPacketProto.MnsCmdChannelNewPubKeyRsp.parseFrom(this.mRecvData.getData());
        if ((this.mSession instanceof SessionForSimpleChannel))
        {
          UpdateChannelPubKeyValue localUpdateChannelPubKeyValue = new UpdateChannelPubKeyValue();
          localUpdateChannelPubKeyValue.setChannelNewPubkey(localMnsCmdChannelNewPubKeyRsp);
          localUpdateChannelPubKeyValue.setmRequeset(this.mRequeset);
          ((SessionForSimpleChannel)this.mSession).getSessionManagerForSimpleChannel().getChannelEventBus().post(new MiLinkEventForSimpleChannel.ServerNotificationEvent(MiLinkEventForSimpleChannel.ServerNotificationEvent.EventType.ChannelPubKeyUpdate, localUpdateChannelPubKeyValue));
          return;
        }
        EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.ChannelPubKeyUpdate, localMnsCmdChannelNewPubKeyRsp));
        return;
      }
      catch (Exception localException) {}
    }
  }
  
  public void setParam(PacketData paramPacketData, Request paramRequest)
  {
    this.mRecvData = paramPacketData;
    this.mRequeset = paramRequest;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\IMnsCodeCopeWays.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */