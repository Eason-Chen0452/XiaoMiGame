package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.text.TextUtils;
import cn.com.wali.basetool.utils.a;
import com.wali.gamecenter.report.ReportManager;
import com.wali.gamecenter.report.ReportType;
import com.wali.gamecenter.report.model.Bid522Report;
import com.wali.gamecenter.report.model.EXT;
import com.wali.gamecenter.report.model.XmsdkReport;
import com.wali.gamecenter.report.utils.MD5;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.protocol.ProDefine;
import com.xiaomi.licensinglibrary.util.RSAUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.UUID;
import org.json.JSONObject;

public class ReporterUtils
{
  private static ReporterUtils b;
  private static String c;
  private static String d;
  private static String e;
  private Context a;
  
  private ReporterUtils(Context paramContext)
  {
    this.a = paramContext;
    d = MD5.getMD5(UUID.randomUUID().toString().getBytes());
  }
  
  public static void ChangeIndex()
  {
    d = MD5.getMD5(UUID.randomUUID().toString().getBytes());
  }
  
  public static void FastXmsdkReport(Context paramContext, int paramInt)
  {
    FastXmsdkReport(paramContext, paramInt, null, false);
  }
  
  public static void FastXmsdkReport(Context paramContext, int paramInt, String paramString)
  {
    FastXmsdkReport(paramContext, paramInt, paramString, false);
  }
  
  public static void FastXmsdkReport(Context paramContext, int paramInt, String paramString, boolean paramBoolean)
  {
    if (paramContext == null) {
      return;
    }
    new Thread(new k(paramContext, paramInt, paramString, paramBoolean)).start();
  }
  
  private static String d()
  {
    try
    {
      Object localObject = new JSONObject();
      String str = b.i;
      if (!TextUtils.isEmpty(str)) {
        ((JSONObject)localObject).put(ProDefine.k, str);
      }
      if (!TextUtils.isEmpty(null)) {
        ((JSONObject)localObject).put("mid", null);
      }
      if (((JSONObject)localObject).length() > 0)
      {
        localObject = new String(a.a(RSAUtils.b(((JSONObject)localObject).toString().getBytes(), ProDefine.v)));
        return (String)localObject;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public static ReporterUtils getInstance()
  {
    return b;
  }
  
  public static void init(Context paramContext, String paramString)
  {
    init(paramContext, paramString, null, null, null);
  }
  
  public static void init(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (b == null)
    {
      ReportManager.Init(paramContext.getApplicationContext(), true);
      ReportManager.getInstance().forceSendReport();
      b = new ReporterUtils(paramContext);
    }
    c = paramString1;
  }
  
  public static void setFuid(String paramString)
  {
    e = paramString;
  }
  
  public void report(int paramInt)
  {
    try
    {
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setAppid(c);
      localXmsdkReport.setNum(String.valueOf(paramInt));
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.setCID(b.f(this.a));
      localXmsdkReport.setCpChannel(b.f(this.a));
      localXmsdkReport.setMd5imei(b.m);
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      localXmsdkReport.index = d;
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      EXT localEXT = localXmsdkReport.getExt();
      if (localEXT != null) {
        localEXT.from = "mioauthjarbase";
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void report(int paramInt, String paramString)
  {
    try
    {
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setAppid(c);
      localXmsdkReport.setNum(String.valueOf(paramInt));
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.setCID(b.f(this.a));
      localXmsdkReport.setCpChannel(b.f(this.a));
      localXmsdkReport.setMd5imei(b.m);
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      localXmsdkReport.index = d;
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      localXmsdkReport.setStep(paramString);
      paramString = localXmsdkReport.getExt();
      if (paramString != null) {
        paramString.from = "mioauthjarbase";
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void report(int paramInt, String paramString1, String paramString2)
  {
    try
    {
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setAppid(c);
      localXmsdkReport.setNum(String.valueOf(paramInt));
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.setCID(b.f(this.a));
      localXmsdkReport.setCpChannel(b.f(this.a));
      localXmsdkReport.setMd5imei(b.m);
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      localXmsdkReport.index = d;
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      localXmsdkReport.setUid(paramString1);
      paramString1 = localXmsdkReport.getExt();
      if (paramString1 != null)
      {
        paramString1.getPayInfo().orderId = paramString2;
        paramString1.from = "mioauthjarbase";
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public void reportLive()
  {
    try
    {
      Bid522Report localBid522Report = new Bid522Report(this.a);
      localBid522Report.setAppid(c);
      localBid522Report.ver = "SDK_MI_SP_3.1.2";
      localBid522Report.setChannelId(b.f(this.a));
      localBid522Report.setCpChannel(b.f(this.a));
      if (TextUtils.isEmpty(localBid522Report.imei)) {
        localBid522Report.imei = b.j;
      }
      if (!TextUtils.isEmpty(b.q)) {
        localBid522Report.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localBid522Report.setOaid(b.r);
      }
      localBid522Report.setMd5imei(b.m);
      EXT localEXT = localBid522Report.getExt();
      if (localEXT != null) {
        localEXT.from = "mioauthjarbase";
      }
      localBid522Report.send();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void reportMilink(long paramLong, int paramInt, String paramString)
  {
    try
    {
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setType(ReportType.MILINK);
      localXmsdkReport.setAppid(c);
      localXmsdkReport.setNum(String.valueOf(paramInt));
      localXmsdkReport.setWasteTime(String.valueOf(paramLong));
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.setCID(b.f(this.a));
      localXmsdkReport.setCpChannel(b.f(this.a));
      localXmsdkReport.setMd5imei(b.m);
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      localXmsdkReport.index = d;
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      EXT localEXT = localXmsdkReport.getExt();
      if (localEXT != null)
      {
        localEXT.from = "mioauthjarbase";
        localEXT.exname = paramString;
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void xmsdkReport(int paramInt)
  {
    xmsdkReport(paramInt, null);
  }
  
  public void xmsdkReport(int paramInt, String paramString)
  {
    xmsdkReport(paramInt, paramString, false);
  }
  
  public void xmsdkReport(int paramInt, String paramString, boolean paramBoolean)
  {
    try
    {
      MiAppInfo localMiAppInfo = MiCommplatform.getInstance().getMiAppInfo();
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.setStep(paramString);
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (localMiAppInfo != null)
      {
        localXmsdkReport.setAppid(localMiAppInfo.getAppId());
        if ((paramBoolean) && (!TextUtils.isEmpty(e))) {
          localXmsdkReport.setUid(e);
        }
      }
      paramString = b.f(this.a);
      localXmsdkReport.setCID(paramString);
      localXmsdkReport.setCpChannel(paramString);
      localXmsdkReport.setType(ReportType.LOGIN);
      paramString = b.m;
      if (!TextUtils.isEmpty(paramString)) {
        localXmsdkReport.setMd5imei(paramString);
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      if (paramInt != -1) {
        localXmsdkReport.setNum(String.valueOf(paramInt));
      }
      localXmsdkReport.index = d;
      localXmsdkReport.jarver = "3010002";
      paramString = localXmsdkReport.getExt();
      if (paramString != null)
      {
        String str = d();
        if (!TextUtils.isEmpty(str)) {
          paramString.sext = str;
        }
        if ((localMiAppInfo != null) && (!TextUtils.isEmpty(this.a.getPackageName()))) {
          paramString.packageName = this.a.getPackageName();
        }
        paramString.from = "mioauthjarbase";
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void xmsdkReport(int paramInt, Throwable paramThrowable)
  {
    try
    {
      Object localObject2 = MiCommplatform.getInstance().getMiAppInfo();
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (localObject2 != null) {
        localXmsdkReport.setAppid(((MiAppInfo)localObject2).getAppId());
      }
      if (!TextUtils.isEmpty(e)) {
        localXmsdkReport.setUid(e);
      }
      Object localObject1 = b.f(this.a);
      localXmsdkReport.setCID((String)localObject1);
      localXmsdkReport.setCpChannel((String)localObject1);
      localXmsdkReport.setType(ReportType.LOGIN);
      localObject1 = b.m;
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        localXmsdkReport.setMd5imei((String)localObject1);
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      if (paramInt != -1) {
        localXmsdkReport.setNum(String.valueOf(paramInt));
      }
      localXmsdkReport.index = d;
      localXmsdkReport.jarver = "3010002";
      localObject1 = localXmsdkReport.getExt();
      if (localObject1 != null)
      {
        String str = d();
        if (!TextUtils.isEmpty(str)) {
          ((EXT)localObject1).sext = str;
        }
        if ((localObject2 != null) && (!TextUtils.isEmpty(this.a.getPackageName()))) {
          ((EXT)localObject1).packageName = this.a.getPackageName();
        }
        ((EXT)localObject1).from = "mioauthjarbase";
        if (paramThrowable != null) {
          if (paramThrowable != null) {
            break label276;
          }
        }
      }
      for (paramThrowable = "";; paramThrowable = ((StringWriter)localObject2).toString())
      {
        ((EXT)localObject1).exStack = paramThrowable;
        localXmsdkReport.send();
        return;
        label276:
        localObject2 = new StringWriter();
        paramThrowable.printStackTrace(new PrintWriter((Writer)localObject2));
      }
      return;
    }
    catch (Exception paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
  }
  
  public void xmsdkReportBonus(String paramString, int paramInt)
  {
    try
    {
      MiAppInfo localMiAppInfo = MiCommplatform.getInstance().getMiAppInfo();
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (localMiAppInfo != null) {
        localXmsdkReport.setAppid(localMiAppInfo.getAppId());
      }
      if (!TextUtils.isEmpty(e)) {
        localXmsdkReport.setUid(e);
      }
      String str = b.f(this.a);
      localXmsdkReport.setCID(str);
      localXmsdkReport.setCpChannel(str);
      localXmsdkReport.setType(ReportType.LOGIN);
      str = b.m;
      if (!TextUtils.isEmpty(str)) {
        localXmsdkReport.setMd5imei(str);
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      if (paramInt != -1) {
        localXmsdkReport.setNum(String.valueOf(paramInt));
      }
      localXmsdkReport.setStep(paramString);
      localXmsdkReport.setWasteTime(System.currentTimeMillis());
      localXmsdkReport.index = d;
      localXmsdkReport.jarver = "3010002";
      paramString = localXmsdkReport.getExt();
      if (paramString != null)
      {
        str = d();
        if (!TextUtils.isEmpty(str)) {
          paramString.sext = str;
        }
        if ((localMiAppInfo != null) && (!TextUtils.isEmpty(this.a.getPackageName()))) {
          paramString.packageName = this.a.getPackageName();
        }
        paramString.from = "mioauthjarbase";
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void xmsdkReportCp(String paramString)
  {
    try
    {
      MiAppInfo localMiAppInfo = MiCommplatform.getInstance().getMiAppInfo();
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (localMiAppInfo != null) {
        localXmsdkReport.setAppid(localMiAppInfo.getAppId());
      }
      if (!TextUtils.isEmpty(e)) {
        localXmsdkReport.setUid(e);
      }
      String str = b.f(this.a);
      localXmsdkReport.setCID(str);
      localXmsdkReport.setCpChannel(str);
      localXmsdkReport.setType(ReportType.LOGIN);
      str = b.m;
      if (!TextUtils.isEmpty(str)) {
        localXmsdkReport.setMd5imei(str);
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      localXmsdkReport.setNum("4091");
      localXmsdkReport.setStep(paramString);
      localXmsdkReport.setWasteTime(System.currentTimeMillis());
      localXmsdkReport.index = d;
      localXmsdkReport.jarver = "3010002";
      paramString = localXmsdkReport.getExt();
      if (paramString != null)
      {
        str = d();
        if (!TextUtils.isEmpty(str)) {
          paramString.sext = str;
        }
        if ((localMiAppInfo != null) && (!TextUtils.isEmpty(this.a.getPackageName()))) {
          paramString.packageName = this.a.getPackageName();
        }
        paramString.from = "mioauthjarbase";
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void xmsdkReportCrash(int paramInt)
  {
    try
    {
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      MiAppInfo localMiAppInfo = MiCommplatform.getInstance().getMiAppInfo();
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (localMiAppInfo != null) {
        localXmsdkReport.setAppid(localMiAppInfo.getAppId());
      }
      if (!TextUtils.isEmpty(e)) {
        localXmsdkReport.setUid(e);
      }
      Object localObject = b.f(this.a);
      localXmsdkReport.setCID((String)localObject);
      localXmsdkReport.setCpChannel((String)localObject);
      localXmsdkReport.setType(ReportType.JARCRASH);
      localObject = b.m;
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        localXmsdkReport.setMd5imei((String)localObject);
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      if (paramInt != -1) {
        localXmsdkReport.setNum(String.valueOf(paramInt));
      }
      localXmsdkReport.index = d;
      localXmsdkReport.jarver = "3010002";
      localObject = localXmsdkReport.getExt();
      if (localObject != null)
      {
        String str = d();
        if (!TextUtils.isEmpty(str)) {
          ((EXT)localObject).sext = str;
        }
        if ((localMiAppInfo != null) && (!TextUtils.isEmpty(this.a.getPackageName()))) {
          ((EXT)localObject).packageName = this.a.getPackageName();
        }
        ((EXT)localObject).from = "mioauthjarbase";
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void xmsdkReportForegroundTime(int paramInt, String paramString)
  {
    try
    {
      MiAppInfo localMiAppInfo = MiCommplatform.getInstance().getMiAppInfo();
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (localMiAppInfo != null) {
        localXmsdkReport.setAppid(localMiAppInfo.getAppId());
      }
      if (!TextUtils.isEmpty(e)) {
        localXmsdkReport.setUid(e);
      }
      String str = b.f(this.a);
      localXmsdkReport.setCID(str);
      localXmsdkReport.setCpChannel(str);
      localXmsdkReport.setType(ReportType.LOGIN);
      str = b.m;
      if (!TextUtils.isEmpty(str)) {
        localXmsdkReport.setMd5imei(str);
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      localXmsdkReport.setNum(String.valueOf(paramInt));
      localXmsdkReport.setStep(paramString);
      localXmsdkReport.setWasteTime(System.currentTimeMillis());
      localXmsdkReport.index = d;
      localXmsdkReport.jarver = "3010002";
      paramString = localXmsdkReport.getExt();
      if (paramString != null)
      {
        str = d();
        if (!TextUtils.isEmpty(str)) {
          paramString.sext = str;
        }
        if ((localMiAppInfo != null) && (!TextUtils.isEmpty(this.a.getPackageName()))) {
          paramString.packageName = this.a.getPackageName();
        }
        paramString.from = "mioauthjarbase";
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void xmsdkReportOpenId(String paramString)
  {
    try
    {
      MiAppInfo localMiAppInfo = MiCommplatform.getInstance().getMiAppInfo();
      XmsdkReport localXmsdkReport = new XmsdkReport(this.a);
      localXmsdkReport.setClient("mioauthjar");
      localXmsdkReport.setUid(paramString);
      localXmsdkReport.ver = "SDK_MI_SP_3.1.2";
      if (TextUtils.isEmpty(localXmsdkReport.imei)) {
        localXmsdkReport.imei = b.j;
      }
      if (localMiAppInfo != null) {
        localXmsdkReport.setAppid(localMiAppInfo.getAppId());
      }
      paramString = b.f(this.a);
      localXmsdkReport.setCID(paramString);
      localXmsdkReport.setCpChannel(paramString);
      localXmsdkReport.setType(ReportType.LOGIN);
      paramString = b.m;
      if (!TextUtils.isEmpty(paramString)) {
        localXmsdkReport.setMd5imei(paramString);
      }
      if (!TextUtils.isEmpty(b.q)) {
        localXmsdkReport.setUdid(b.q);
      }
      if (!TextUtils.isEmpty(b.r)) {
        localXmsdkReport.setOaid(b.r);
      }
      localXmsdkReport.setNum("2100");
      localXmsdkReport.index = d;
      localXmsdkReport.jarver = "3010002";
      paramString = localXmsdkReport.getExt();
      if (paramString != null)
      {
        String str = d();
        if (!TextUtils.isEmpty(str)) {
          paramString.sext = str;
        }
        if ((localMiAppInfo != null) && (!TextUtils.isEmpty(this.a.getPackageName()))) {
          paramString.packageName = this.a.getPackageName();
        }
        paramString.from = "mioauthjarbase";
      }
      localXmsdkReport.send();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\ReporterUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */