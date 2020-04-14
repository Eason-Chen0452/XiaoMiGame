package com.xiaomi.gamecenter.sdk.notice;

import com.xiaomi.gamecenter.sdk.bf;
import com.xiaomi.gamecenter.sdk.protocol.result.NoticeConfig;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.NoticeHelper;
import java.util.Queue;

final class b
  implements bf
{
  b(NoticeManager.NoticeHandler paramNoticeHandler, String paramString, Queue paramQueue) {}
  
  public final void a(NoticeConfig paramNoticeConfig, boolean paramBoolean)
  {
    NoticeHelper localNoticeHelper = NoticeHelper.a();
    String str = this.a;
    paramNoticeConfig = paramNoticeConfig.a();
    if (!paramBoolean)
    {
      paramBoolean = true;
      localNoticeHelper.a(str, paramNoticeConfig, paramBoolean);
      if (this.b.size() <= 0) {
        break label83;
      }
      this.c.a(this.b, null);
      if (NoticeManager.c(this.c.c) != null) {
        NoticeManager.c(this.c.c);
      }
    }
    label83:
    do
    {
      return;
      paramBoolean = false;
      break;
      this.c.a = null;
      this.c.b = null;
      if (NoticeManager.c(this.c.c) != null) {
        NoticeManager.c(this.c.c).a();
      }
    } while (NoticeManager.d(this.c.c) == null);
    NoticeManager.d(this.c.c).a();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\notice\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */