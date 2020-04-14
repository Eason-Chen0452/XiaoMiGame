package com.mi.milink.sdk.session.persistent;

import android.text.TextUtils;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.data.Convert;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.proto.DataExtraProto.DataClientIp;
import com.mi.milink.sdk.proto.DataExtraProto.DataClientIp.Builder;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdHandShakeRsp;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsIpInfo;
import com.mi.milink.sdk.session.common.OpenSessionSucessReturnInfo;
import com.mi.milink.sdk.session.common.ResponseListener;
import com.mi.milink.sdk.session.common.ServerProfile;
import java.util.ArrayList;

class Session$3
  implements ResponseListener
{
  Session$3(Session paramSession) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    MiLinkLog.i(this.this$0.mLogTag, "hand shake error session, errCode=" + paramInt + ", errMsg=" + paramString);
    if ((paramInt == 516) || (paramInt == 515) || (paramInt == 557))
    {
      Session.access$502(this.this$0, true);
      Session.access$600(this.this$0, paramInt);
      return;
    }
    this.this$0.onOpenSessionHandshakeSuccess(null);
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    MiLinkLog.v(this.this$0.mLogTag, "hand shake success session " + this.this$0.mServerProfile + ", seq=" + paramPacketData.getSeqNo());
    try
    {
      paramPacketData = SystemPacketProto.MnsCmdHandShakeRsp.parseFrom(paramPacketData.getData());
      if (paramPacketData == null)
      {
        MiLinkLog.e(this.this$0.mLogTag, "handshake response is null");
        this.this$0.onOpenSessionHandshakeSuccess(null);
        return;
      }
    }
    catch (InvalidProtocolBufferException paramPacketData)
    {
      for (;;)
      {
        paramPacketData = null;
      }
      localObject1 = paramPacketData.getClientinfo();
      MiLinkLog.v(this.this$0.mLogTag, "clientInfo:" + (String)localObject1);
      Session.access$202(this.this$0, "");
      Session.access$302(this.this$0, "");
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject1 = ((String)localObject1).split("#");
        if (localObject1 != null)
        {
          Session.access$202(this.this$0, localObject1[0]);
          if (localObject1.length > 1) {
            Session.access$302(this.this$0, localObject1[1]);
          }
        }
      }
      if (!TextUtils.isEmpty(Session.access$200(this.this$0)))
      {
        localObject1 = DataExtraProto.DataClientIp.newBuilder();
        ((DataExtraProto.DataClientIp.Builder)localObject1).setClientIp(Session.access$200(this.this$0));
        ((DataExtraProto.DataClientIp.Builder)localObject1).setClientIpIsp(Session.access$300(this.this$0));
        localObject2 = new PacketData();
        ((PacketData)localObject2).setCommand("data.clientip");
        ((PacketData)localObject2).setData(((DataExtraProto.DataClientIp.Builder)localObject1).build().toByteArray());
        MiLinkLog.d(Session.access$400(this.this$0), " disp clientIP");
        MnsPacketDispatcher.getInstance().dispatchPacket((PacketData)localObject2);
      }
      if (paramPacketData.getRedirectList() == null) {
        break label638;
      }
    }
    Object localObject1 = new ArrayList();
    Object localObject2 = new ArrayList();
    paramInt = 0;
    if (paramInt < paramPacketData.getRedirectCount())
    {
      SystemPacketProto.MnsIpInfo localMnsIpInfo = paramPacketData.getRedirect(paramInt);
      if (localMnsIpInfo.getIp() != 0) {
        ((ArrayList)localObject1).add(new ServerProfile(Convert.intToIPv4(localMnsIpInfo.getIp()), 0, 1, 5));
      }
      if (localMnsIpInfo.hasIpv6()) {
        ((ArrayList)localObject1).add(new ServerProfile(localMnsIpInfo.getIpv6(), 0, 1, 5));
      }
      if (paramInt == 0)
      {
        Object localObject3 = localMnsIpInfo.getRemark();
        if (!TextUtils.isEmpty((CharSequence)localObject3))
        {
          localObject3 = ((String)localObject3).split("#");
          if (localObject3 != null)
          {
            int j = localObject3.length;
            int i = 0;
            while (i < j)
            {
              CharSequence localCharSequence = localObject3[i];
              if (!TextUtils.isEmpty(localCharSequence)) {
                ((ArrayList)localObject2).add(new ServerProfile(localCharSequence, 0, 1, 5));
              }
              i += 1;
            }
          }
        }
      }
      if (localMnsIpInfo.hasIpv6()) {
        MiLinkLog.w(this.this$0.mLogTag, "milink server ipv6:" + localMnsIpInfo.getIpv6() + " port:" + localMnsIpInfo.getPort() + " remark:" + localMnsIpInfo.getRemark());
      }
      for (;;)
      {
        paramInt += 1;
        break;
        MiLinkLog.w(this.this$0.mLogTag, "milink server ipv4:" + Convert.intToIPv4(localMnsIpInfo.getIp()) + " port:" + localMnsIpInfo.getPort() + " remark:" + localMnsIpInfo.getRemark());
      }
    }
    paramPacketData = (PacketData)localObject2;
    for (;;)
    {
      this.this$0.onOpenSessionHandshakeSuccess(new OpenSessionSucessReturnInfo(Session.access$200(this.this$0), Session.access$300(this.this$0), (ArrayList)localObject1, paramPacketData));
      return;
      label638:
      paramPacketData = null;
      localObject1 = null;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */