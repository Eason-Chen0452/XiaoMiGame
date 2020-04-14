package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import android.content.Intent;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.notice.NoticeManager;
import com.xiaomi.gamecenter.sdk.protocol.login.FaultInfo;
import com.xiaomi.gamecenter.sdk.protocol.login.MessageRequest_GetFaultNotice;
import com.xiaomi.gamecenter.sdk.ui.fault.ViewFaultNoticeActivity;

final class p
  implements Runnable
{
  p(MiCommplatform paramMiCommplatform, MiAppInfo paramMiAppInfo) {}
  
  public final void run()
  {
    try
    {
      MiAppEntry localMiAppEntry = new MiAppEntry(this.a);
      FaultInfo localFaultInfo = new MessageRequest_GetFaultNotice(this.b.getApplicationContext(), localMiAppEntry).a();
      Logger.a("MiGameSDK.MiCommplatform", "getFaultInfo " + localFaultInfo);
      if ((localFaultInfo == null) || (localFaultInfo.a() != 0))
      {
        NoticeManager.a().a(MiCommplatform.access$700(), new q(this));
        return;
      }
      Intent localIntent = new Intent(this.b.getApplicationContext(), ViewFaultNoticeActivity.class);
      localIntent.addFlags(268435456);
      localIntent.putExtra("faultInfo", localFaultInfo);
      localIntent.putExtra("app", localMiAppEntry);
      this.b.getApplicationContext().startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      Logger.c("MiGameSDK.MiCommplatform", localException.getMessage());
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */