package com.xiaomi.gamecenter.sdk.report;

import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.EventBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.PageBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.datasdk.DataSDK;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;

final class c
  implements Runnable
{
  c(MiAppEntry paramMiAppEntry, String paramString1, String paramString2, String paramString3) {}
  
  public final void run()
  {
    try
    {
      if (ReportData.b() != null) {
        ReportData.c();
      }
      ReportData.a(new PageBean());
      ReportData.a(new EventBean());
      ReportData.d().setName(this.b);
      ReportData.d().setId(this.c);
      ReportData.e().setName(this.d);
      ReportData.e().setId(this.e);
      ReportData.e().setLoginType(this.f);
      ReportData.e().setPayType(this.g);
      ReportData.e().setErrCode(this.h);
      DataSDK.eventBack(ReportData.d(), ReportData.f(), ReportData.e(), this.i);
      Logger.a("MiGameSDK.ReportData", "the statistic event info is BACK " + ReportData.d().getName() + " " + ReportData.e().getName());
      Logger.a("MiGameSDK.ReportData", "the statistic event info is VIEW " + ReportData.d().getName() + " " + ReportData.e().getName());
      Logger.a("MiGameSDK.ReportData", "pb " + ReportData.d());
      Logger.a("MiGameSDK.ReportData", "plb " + ReportData.f());
      Logger.a("MiGameSDK.ReportData", "eb " + ReportData.e());
      Logger.a("MiGameSDK.ReportData", "items " + this.i);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\report\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */