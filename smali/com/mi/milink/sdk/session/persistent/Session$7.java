package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.proto.DataExtraProto.DataExtra;
import com.mi.milink.sdk.proto.DataExtraProto.DataExtra.Builder;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdHeartBeatRsp;
import com.mi.milink.sdk.session.common.ResponseListener;
import org.json.JSONObject;

class Session$7
  implements ResponseListener
{
  Session$7(Session paramSession, Session.B paramB) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    MiLinkLog.v(this.this$0.mLogTag, "heartbeat failed");
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    if (this.val$b.b)
    {
      MiLinkLog.v(Session.access$400(this.this$0), "upload regid to server success");
      MiAccountManager.getInstance().setHasUploadRegIdToServer(true);
    }
    MiLinkLog.v(this.this$0.mLogTag, "heartbeat success");
    if ((paramPacketData != null) && (paramPacketData.getData() != null)) {}
    try
    {
      paramPacketData = SystemPacketProto.MnsCmdHeartBeatRsp.parseFrom(paramPacketData.getData());
      if ((paramPacketData != null) && (ConfigManager.getInstance().updateConfig(paramPacketData.getTimeStamp(), paramPacketData.getJsonconfig())))
      {
        paramPacketData = DataExtraProto.DataExtra.newBuilder();
        float f = ConfigManager.getInstance().getEngineConfigRatio();
        MiLinkLog.v(this.this$0.mLogTag, "engineConfigRatio=" + f);
        paramPacketData.setEngineratio(f);
        Object localObject = ConfigManager.getInstance().getEngineMatch();
        if (localObject != null)
        {
          MiLinkLog.v(this.this$0.mLogTag, "engineMatchJson=" + localObject);
          paramPacketData.setEngineConfigJson(((JSONObject)localObject).toString());
        }
        localObject = new PacketData();
        ((PacketData)localObject).setCommand("data.extra");
        ((PacketData)localObject).setData(paramPacketData.build().toByteArray());
        MnsPacketDispatcher.getInstance().dispatchPacket((PacketData)localObject);
      }
      return;
    }
    catch (Exception paramPacketData) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session$7.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */