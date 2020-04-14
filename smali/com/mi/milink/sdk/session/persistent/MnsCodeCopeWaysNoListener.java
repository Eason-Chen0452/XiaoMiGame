package com.mi.milink.sdk.session.persistent;

import android.text.TextUtils;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent.EventType;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.ServerProfile;
import com.mi.milink.sdk.session.simplechannel.SessionForSimpleChannel;
import org.greenrobot.eventbus.EventBus;

public class MnsCodeCopeWaysNoListener
  extends IMnsCodeCopeWays
{
  private static final String CLASSTAG = "MnsCodeCopeWaysNoListener";
  private String TAG;
  
  public MnsCodeCopeWaysNoListener(Session paramSession)
  {
    super(paramSession);
    this.TAG = String.format("[No:%d]%s", new Object[] { Integer.valueOf(paramSession.getSessionNO()), "MnsCodeCopeWaysNoListener" });
  }
  
  protected void afterHandle()
  {
    String str2 = this.mRecvData.getCommand();
    String str1 = str2;
    InternalDataMonitor localInternalDataMonitor;
    if (TextUtils.isEmpty(str2))
    {
      if (this.mRequeset.getData() != null) {
        str1 = this.mRequeset.getData().getCommand();
      }
    }
    else
    {
      if (TextUtils.isEmpty(str1)) {
        break label153;
      }
      localInternalDataMonitor = InternalDataMonitor.getInstance();
      if (this.mSession.getServerProfileForStatistic() == null) {
        break label142;
      }
      str2 = this.mSession.getServerProfileForStatistic().getServerIP();
      label71:
      if (this.mSession.getServerProfileForStatistic() == null) {
        break label148;
      }
    }
    label142:
    label148:
    for (int i = this.mSession.getServerProfileForStatistic().getServerPort();; i = 0)
    {
      localInternalDataMonitor.trace(str2, i, str1, this.mRetCode, this.mRequeset.getSentTime(), System.currentTimeMillis(), this.mRequeset.getSize(), this.mRecvData.getResponseSize(), this.mRequeset.getSeqNo());
      return;
      str1 = "";
      break;
      str2 = "";
      break label71;
    }
    label153:
    MiLinkLog.e(this.TAG, "cmd is empty, don't monitor it, seq=" + this.mRequeset.getSeqNo());
  }
  
  protected void onAccNeedRetry()
  {
    this.mSession.onAccNeedRetryWithClientInfo(this.mRequeset);
  }
  
  protected void onBusinessCmdTimeout() {}
  
  protected void onInternalCmdTimeout() {}
  
  protected void onOk()
  {
    MiLinkLog.v(this.TAG, "recv data and to dispatcher");
    MnsPacketDispatcher.getInstance().dispatchPacket(this.mRecvData);
    this.mRetCode = this.mRecvData.getBusiCode();
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\MnsCodeCopeWaysNoListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */