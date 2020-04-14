package com.xiaomi.gamecenter.sdk.ui.mifloat.message;

import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.ui.mifloat.report.MiFloatDataReport;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.UrlUtils;

final class b
  implements a
{
  b(MiMsgManager paramMiMsgManager) {}
  
  public final void a(MiMsgEntity.MarqueeMsg paramMarqueeMsg)
  {
    MiMsgManager.b(this.a).sendEmptyMessage(1001);
    MiFloatDataReport.c(paramMarqueeMsg.getId());
  }
  
  public final void b(MiMsgEntity.MarqueeMsg paramMarqueeMsg)
  {
    for (;;)
    {
      String str;
      try
      {
        str = paramMarqueeMsg.getUrl();
        if (TextUtils.isEmpty(str)) {
          return;
        }
        if (str.startsWith("miservicesdk://mifloat"))
        {
          com.xiaomi.gamecenter.sdk.ui.mifloat.utils.b.a(MiMsgManager.c(this.a), str, "此功能");
          MiFloatDataReport.b(paramMarqueeMsg.getId());
          MiMsgManager.b(this.a).sendEmptyMessage(1001);
          return;
        }
      }
      catch (Exception paramMarqueeMsg)
      {
        paramMarqueeMsg.printStackTrace();
        return;
      }
      UrlUtils.a(MiMsgManager.c(this.a), str, null);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\message\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */