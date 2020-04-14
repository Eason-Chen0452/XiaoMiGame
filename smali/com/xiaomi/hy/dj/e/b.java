package com.xiaomi.hy.dj.e;

import android.content.Context;
import com.wali.gamecenter.report.ReportManager;
import com.wali.gamecenter.report.ReportType;
import com.wali.gamecenter.report.model.Bid522Report;
import com.wali.gamecenter.report.model.XmsdkReport;
import com.wali.gamecenter.report.utils.MD5;
import com.xiaomi.hy.dj.b.a;
import com.xiaomi.hy.dj.f.i;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class b
{
  private static b b;
  private static String c;
  private static Map<String, String> e;
  private Context a;
  private String d;
  
  static
  {
    HashMap localHashMap = new HashMap();
    e = localHashMap;
    localHashMap.put("com.xiaomi.gamecenter.sdk.service", "SDK");
    e.put("com.xiaomi.gamecenter", "游戏中心");
  }
  
  private b(Context paramContext)
  {
    this.a = paramContext;
    this.d = MD5.getMD5(UUID.randomUUID().toString().getBytes());
  }
  
  public static b a()
  {
    return b;
  }
  
  public static void a(Context paramContext, String paramString)
  {
    if (b == null)
    {
      ReportManager.Init(paramContext.getApplicationContext());
      b = new b(paramContext);
    }
    c = paramString;
  }
  
  public void a(int paramInt)
  {
    a.a("report---->" + paramInt);
    XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
    localXmsdkReport.setAppid(c);
    localXmsdkReport.setNum(String.valueOf(paramInt));
    localXmsdkReport.setClient("djpay");
    localXmsdkReport.setCpChannel(i.a(this.a));
    localXmsdkReport.ver = "SDK_VISITOR_DJPAY_1.1.6";
    localXmsdkReport.index = this.d;
    localXmsdkReport.send();
  }
  
  public void a(String paramString, int paramInt)
  {
    XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
    localXmsdkReport.setAppid(c);
    localXmsdkReport.setNum(String.valueOf(paramInt));
    localXmsdkReport.setClient("djpay");
    localXmsdkReport.setCpChannel(i.a(this.a));
    localXmsdkReport.ver = "SDK_VISITOR_DJPAY_1.1.6";
    localXmsdkReport.index = paramString;
    localXmsdkReport.send();
  }
  
  public void a(String paramString, ReportType paramReportType, int paramInt)
  {
    XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
    localXmsdkReport.setAppid(c);
    localXmsdkReport.setNum(String.valueOf(paramInt));
    localXmsdkReport.setType(paramReportType);
    localXmsdkReport.setClient("djpay");
    localXmsdkReport.setCpChannel(i.a(this.a));
    localXmsdkReport.ver = "SDK_VISITOR_DJPAY_1.1.6";
    localXmsdkReport.index = paramString;
    localXmsdkReport.send();
  }
  
  public void b()
  {
    this.d = MD5.getMD5(UUID.randomUUID().toString().getBytes());
  }
  
  public void c()
  {
    if (!e.containsKey(this.a.getPackageName()))
    {
      Bid522Report localBid522Report = new Bid522Report(this.a);
      localBid522Report.setAppid(c);
      localBid522Report.ver = "SDK_VISITOR_DJPAY_1.1.6";
      localBid522Report.setChannelId(i.a(this.a));
      localBid522Report.getExt().from = "djpay";
      localBid522Report.send();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\e\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */