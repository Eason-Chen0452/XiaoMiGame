package com.alipay.b.a.a.c.b;

import android.content.Context;
import com.alipay.b.a.a.c.a.c;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

public final class b
  implements a
{
  private static a a = null;
  private static com.alipay.b.a.a.c.a b = null;
  
  public static a a(Context paramContext, String paramString)
  {
    Object localObject = null;
    if (paramContext == null) {
      return null;
    }
    if (a == null) {
      if (paramContext != null) {
        break label38;
      }
    }
    label38:
    for (paramContext = (Context)localObject;; paramContext = com.alipay.b.a.a.c.b.a(paramContext, paramString))
    {
      b = paramContext;
      a = new b();
      return a;
    }
  }
  
  public final com.alipay.b.a.a.c.a.b a(c paramc)
  {
    Object localObject = new DeviceDataReportRequest();
    ((DeviceDataReportRequest)localObject).os = paramc.a();
    ((DeviceDataReportRequest)localObject).apdid = paramc.b();
    ((DeviceDataReportRequest)localObject).pubApdid = paramc.c();
    ((DeviceDataReportRequest)localObject).priApdid = paramc.d();
    ((DeviceDataReportRequest)localObject).token = paramc.e();
    ((DeviceDataReportRequest)localObject).umidToken = paramc.f();
    ((DeviceDataReportRequest)localObject).version = paramc.g();
    ((DeviceDataReportRequest)localObject).lastTime = paramc.h();
    ((DeviceDataReportRequest)localObject).dataMap = paramc.i();
    paramc = b.a((DeviceDataReportRequest)localObject);
    localObject = new com.alipay.b.a.a.c.a.b();
    if (paramc == null) {
      paramc = null;
    }
    String str;
    do
    {
      do
      {
        return paramc;
        ((com.alipay.b.a.a.c.a.b)localObject).a = paramc.success;
        ((com.alipay.b.a.a.c.a.b)localObject).b = paramc.resultCode;
        ((com.alipay.b.a.a.c.a.b)localObject).c = paramc.apdid;
        ((com.alipay.b.a.a.c.a.b)localObject).d = paramc.token;
        ((com.alipay.b.a.a.c.a.b)localObject).e = paramc.currentTime;
        ((com.alipay.b.a.a.c.a.b)localObject).f = paramc.version;
        ((com.alipay.b.a.a.c.a.b)localObject).g = paramc.vkeySwitch;
        ((com.alipay.b.a.a.c.a.b)localObject).i = paramc.appListVer;
        str = paramc.bugTrackSwitch;
        ((com.alipay.b.a.a.c.a.b)localObject).h = "0";
        ((com.alipay.b.a.a.c.a.b)localObject).j = "0";
        paramc = (c)localObject;
      } while (!com.alipay.b.a.a.a.a.b(str));
      paramc = (c)localObject;
    } while (str.length() <= 0);
    ((com.alipay.b.a.a.c.a.b)localObject).h = str.charAt(0);
    return (com.alipay.b.a.a.c.a.b)localObject;
  }
  
  public final boolean a(String paramString)
  {
    return b.a(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\b\a\a\c\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */