package com.xiaomi.gamecenter.sdk;

import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.protocol.result.NoticeConfig;
import com.xiaomi.gamecenter.sdk.report.ReportData;
import com.xiaomi.gamecenter.sdk.ui.notice.dialog.DialogUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class o
  implements bg
{
  o(MiCommplatform paramMiCommplatform, MiAppEntry paramMiAppEntry) {}
  
  public final void a(NoticeConfig paramNoticeConfig)
  {
    int j = DialogUtils.a(paramNoticeConfig);
    Logger.a("MiGameSDK.MiCommplatform", "onShow " + paramNoticeConfig);
    ReportData.a();
    String str = null;
    int i = -1;
    switch (j)
    {
    }
    for (;;)
    {
      ReportData.e("init_notice_view", paramNoticeConfig.a(), str, this.a);
      ReporterUtils.getInstance().report(i, paramNoticeConfig.a());
      return;
      str = "notice_text";
      i = 200;
      continue;
      str = "notice_image";
      i = 210;
      continue;
      str = "notice_scheme";
      i = 220;
    }
  }
  
  public final void a(NoticeConfig paramNoticeConfig, boolean paramBoolean)
  {
    int j;
    int i;
    if (paramBoolean)
    {
      ReportData.c("init_notice_view", paramNoticeConfig.a(), "notice_close_not_remind", this.a);
      j = DialogUtils.a(paramNoticeConfig);
      if (j >= 0)
      {
        i = -1;
        if (j != 0) {
          break label71;
        }
        i = 201;
      }
    }
    for (;;)
    {
      ReporterUtils.getInstance().report(i, paramNoticeConfig.a());
      return;
      ReportData.c("init_notice_view", paramNoticeConfig.a(), "notice_close_remind", this.a);
      break;
      label71:
      if (j == 2) {
        i = 221;
      } else if (j == 1) {
        i = 211;
      }
    }
  }
  
  public final void b(NoticeConfig paramNoticeConfig)
  {
    ReportData.c("init_notice_view", paramNoticeConfig.a(), "notice_skip_btn", this.a);
    int j = DialogUtils.a(paramNoticeConfig);
    int i;
    if (j >= 0)
    {
      i = -1;
      if (j != 2) {
        break label47;
      }
      i = 223;
    }
    for (;;)
    {
      ReporterUtils.getInstance().report(i, paramNoticeConfig.a());
      return;
      label47:
      if (j == 1) {
        i = 213;
      }
    }
  }
  
  public final void b(NoticeConfig paramNoticeConfig, boolean paramBoolean)
  {
    int j;
    int i;
    if (paramBoolean)
    {
      ReportData.f("init_notice_view", paramNoticeConfig.a(), "notice_close_not_remind", this.a);
      j = DialogUtils.a(paramNoticeConfig);
      if (j >= 0)
      {
        i = -1;
        if (j != 0) {
          break label71;
        }
        i = 202;
      }
    }
    for (;;)
    {
      ReporterUtils.getInstance().report(i, paramNoticeConfig.a());
      return;
      ReportData.f("init_notice_view", paramNoticeConfig.a(), "notice_close_remind", this.a);
      break;
      label71:
      if (j == 2) {
        i = 222;
      } else if (j == 1) {
        i = 212;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */