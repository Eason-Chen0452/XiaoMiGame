package com.mi.milink.sdk.session.persistent;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milink.sdk.account.AnonymousAccount;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.SessionLoginEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionLoginEvent.EventType;
import com.mi.milink.sdk.proto.DataExtraProto.DataAnonymousWid;
import com.mi.milink.sdk.proto.DataExtraProto.DataAnonymousWid.Builder;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdAnonymousRsp;
import com.mi.milink.sdk.session.common.ResponseListener;
import org.greenrobot.eventbus.EventBus;

class Session$4
  implements ResponseListener
{
  Session$4(Session paramSession) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    if (!MiAccountManager.getInstance().isAnonymousModeCurrent())
    {
      MiLinkLog.i(this.this$0.mLogTag, "current is not anonymous mode");
      return;
    }
    MiLinkLog.i(this.this$0.mLogTag, "fastlogin onDataSendFailed errCode= " + paramInt + ", errMsg=" + paramString);
    EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LoginFailed, this.this$0, paramInt));
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    if (!MiAccountManager.getInstance().isAnonymousModeCurrent())
    {
      MiLinkLog.i(this.this$0.mLogTag, "current is not anonymous mode");
      return;
    }
    MiLinkLog.v(this.this$0.mLogTag, "anonymous fastlogin response mns code: " + paramPacketData.getMnsCode());
    Object localObject;
    if (paramPacketData.getMnsCode() == 0) {
      localObject = null;
    }
    try
    {
      paramPacketData = SystemPacketProto.MnsCmdAnonymousRsp.parseFrom(paramPacketData.getData());
      if (paramPacketData == null)
      {
        MiLinkLog.w(this.this$0.mLogTag, "anonymous fastlogin response = null");
        EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LoginFailed, this.this$0, 998));
        return;
      }
      if ((paramPacketData.getB2() != null) && (paramPacketData.getGTKEYB2() != null)) {
        AnonymousAccount.getInstance().loginMiLink(paramPacketData.getB2().toByteArray(), paramPacketData.getGTKEYB2().toByteArray());
      }
      for (;;)
      {
        MiAccountManager.getInstance().setPassportInit(false);
        ConfigManager.getInstance().updateSuidAnonymous(paramPacketData.getSUID());
        localObject = String.valueOf(paramPacketData.getWid());
        AnonymousAccount.getInstance().setUserId((String)localObject);
        try
        {
          paramPacketData = DataExtraProto.DataAnonymousWid.newBuilder();
          paramPacketData.setWid(Long.valueOf((String)localObject).longValue());
          localObject = new PacketData();
          ((PacketData)localObject).setCommand("data.anonymouswid");
          ((PacketData)localObject).setData(paramPacketData.build().toByteArray());
          MnsPacketDispatcher.getInstance().dispatchPacket((PacketData)localObject);
          EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LoginSuccess, this.this$0, 0));
          this.this$0.heartBeat(true);
          return;
          MiLinkLog.w(this.this$0.mLogTag, "anonymous fastlogin response.getB2() = null or response.getGTKEYB2() = null");
          continue;
          EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LoginFailed, this.this$0, paramPacketData.getMnsCode()));
          return;
        }
        catch (Exception paramPacketData)
        {
          for (;;) {}
        }
      }
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */