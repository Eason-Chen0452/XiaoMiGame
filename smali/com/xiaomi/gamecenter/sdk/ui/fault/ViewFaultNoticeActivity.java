package com.xiaomi.gamecenter.sdk.ui.fault;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.notice.NoticeManager;
import com.xiaomi.gamecenter.sdk.protocol.login.FaultInfo;
import com.xiaomi.gamecenter.sdk.report.ReportData;
import com.xiaomi.gamecenter.sdk.ui.BaseMiActivity;
import com.xiaomi.gamecenter.sdk.ui.UiUtils;
import com.xiaomi.gamecenter.sdk.ui.fault.widget.FaultNoticeView;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import com.xiaomi.gamecenter.sdk.utils.c;

public class ViewFaultNoticeActivity
  extends BaseMiActivity
{
  private FaultNoticeView j;
  
  protected final RelativeLayout.LayoutParams a()
  {
    this.b.setBackgroundColor(getResources().getColor(ResourceUtils.h(this, "text_color_black_60")));
    return new RelativeLayout.LayoutParams(-1, -1);
  }
  
  protected final View b()
  {
    this.j = new FaultNoticeView(this);
    return this.j;
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    ReportData.d("fault_notice", "fault_back", this.i);
    ReporterUtils.getInstance().report(402);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (FaultInfo)getIntent().getParcelableExtra("faultInfo");
    if (this.j != null)
    {
      this.j.a(this.i);
      this.j.a(paramBundle);
    }
    try
    {
      ReportData.a();
      ReportData.a("fault_notice", this.i);
      ReporterUtils.getInstance().report(400);
      if (c.a(this)) {
        UiUtils.a(this, "show fault notice from jar.", 0);
      }
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        Logger.c("MiGameSDK.ViewFaultNoticeActivity", paramBundle.getMessage());
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    NoticeManager.a().a(this, new a(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\fault\ViewFaultNoticeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */