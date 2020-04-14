package com.mi.milink.sdk.session.persistent;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milink.sdk.account.AnonymousAccount;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.SessionLoginEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionLoginEvent.EventType;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdChannelRsp;
import com.mi.milink.sdk.session.common.ResponseListener;
import org.greenrobot.eventbus.EventBus;

class Session$6
  implements ResponseListener
{
  Session$6(Session paramSession) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    if (!MiAccountManager.getInstance().isChannelModCurrent())
    {
      MiLinkLog.i(this.this$0.mLogTag, "failed current is not channel mode " + MiAccountManager.getInstance().getCurrentAccountType());
      return;
    }
    MiLinkLog.i(this.this$0.mLogTag, "channel fastlogin onDataSendFailed errCode= " + paramInt + ", errMsg=" + paramString);
    EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LoginFailed, this.this$0, paramInt));
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    if (!MiAccountManager.getInstance().isChannelModCurrent())
    {
      MiLinkLog.i(this.this$0.mLogTag, "current is not channel mode " + MiAccountManager.getInstance().getCurrentAccountType());
      return;
    }
    MiLinkLog.v(this.this$0.mLogTag, "channel fastlogin response mns code: " + paramPacketData.getMnsCode());
    Object localObject;
    if (paramPacketData.getMnsCode() == 0) {
      localObject = null;
    }
    try
    {
      paramPacketData = SystemPacketProto.MnsCmdChannelRsp.parseFrom(paramPacketData.getData());
      if (paramPacketData == null)
      {
        MiLinkLog.w(this.this$0.mLogTag, "chanel fastlogin response = null");
        EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LoginFailed, this.this$0, 998));
        return;
      }
      if ((paramPacketData.getB2() != null) && (paramPacketData.getGTKEYB2() != null)) {
        AnonymousAccount.getInstance().loginMiLink(paramPacketData.getB2().toByteArray(), paramPacketData.getGTKEYB2().toByteArray());
      }
      for (;;)
      {
        MiAccountManager.getInstance().setPassportInit(false);
        long l = paramPacketData.getWid();
        AnonymousAccount.getInstance().setUserId(String.valueOf(l));
        EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LoginSuccess, this.this$0, 0));
        return;
        MiLinkLog.w(this.this$0.mLogTag, "channel fastlogin response.getB2() = null or response.getGTKEYB2() = null");
      }
      EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LoginFailed, this.this$0, paramPacketData.getMnsCode()));
      return;
    }
    catch (InvalidProtocolBufferException paramPacketData)
    {
      for (;;)
      {
        paramPacketData = (PacketData)localObject;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */