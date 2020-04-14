package com.mi.milink.sdk.session.persistent;

import android.text.TextUtils;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent.EventType;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.Request.AfterHandleCallBack;
import com.mi.milink.sdk.session.common.ServerProfile;
import com.mi.milink.sdk.session.simplechannel.SessionForSimpleChannel;
import org.greenrobot.eventbus.EventBus;

public class MnsCodeCopeWaysHasListener
  extends IMnsCodeCopeWays
{
  private static final String CLASSTAG = "MnsCodeCopeWaysHasListener";
  private String TAG;
  
  public MnsCodeCopeWaysHasListener(Session paramSession)
  {
    super(paramSession);
    this.TAG = String.format("[No:%d]%s", new Object[] { Integer.valueOf(paramSession.getSessionNO()), "MnsCodeCopeWaysHasListener" });
  }
  
  protected void afterHandle()
  {
    String str2;
    if (this.mSession.getServerProfileForStatistic() != null)
    {
      str2 = this.mSession.getServerProfileForStatistic().getServerIP();
      if (this.mSession.getServerProfileForStatistic() == null) {
        break label164;
      }
    }
    String str3;
    int j;
    long l1;
    long l2;
    int k;
    int m;
    int n;
    String str4;
    String str5;
    label164:
    for (int i = this.mSession.getServerProfileForStatistic().getServerPort();; i = 0)
    {
      str3 = this.mRecvData.getCommand();
      j = this.mRetCode;
      l1 = this.mRequeset.getSentTime();
      l2 = System.currentTimeMillis();
      k = this.mRequeset.getSize();
      m = this.mRecvData.getResponseSize();
      n = this.mRequeset.getSeqNo();
      str4 = this.mSession.getClientIp();
      str5 = this.mSession.getClientIsp();
      if (this.mRequeset.getAfterHandleCallBack() == null) {
        break label169;
      }
      this.mRequeset.getAfterHandleCallBack().onCallBack(str2, i, str3, j, l1, l2, k, m, n, str4, str5);
      return;
      str2 = "";
      break;
    }
    label169:
    String str1 = str3;
    if (TextUtils.isEmpty(str3)) {
      if (this.mRequeset.getData() == null) {
        break label237;
      }
    }
    label237:
    for (str1 = this.mRequeset.getData().getCommand(); !TextUtils.isEmpty(str1); str1 = "")
    {
      InternalDataMonitor.getInstance().trace(str2, i, str1, j, l1, l2, k, m, n, str4, str5);
      return;
    }
    MiLinkLog.e(this.TAG, "cmd is empty, don't monitor it, seq=" + this.mRequeset.getSeqNo());
  }
  
  protected void onAccNeedRetry()
  {
    this.mSession.onAccNeedRetryWithClientInfo(this.mRequeset);
  }
  
  protected void onBusinessCmdTimeout()
  {
    this.mRequeset.onDataSendFailed(109, "request time out");
  }
  
  protected void onInternalCmdTimeout()
  {
    this.mRequeset.onDataSendFailed(109, "request time out");
  }
  
  protected void onOk()
  {
    this.mRequeset.onDataSendSuccess(0, this.mRecvData);
    this.mRetCode = this.mRecvData.getBusiCode();
  }
  
  protected void onServerTokenExpired()
  {
    if ((this.mSession instanceof SessionForSimpleChannel)) {
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.ServiceTokenExpired));
    this.mRequeset.onDataSendFailed(100, "service token expired");
  }
  
  protected void onUnknowMsnCode(int paramInt)
  {
    this.mRequeset.onDataSendFailed(paramInt, "unknow mnscode for milinksdk");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\MnsCodeCopeWaysHasListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */