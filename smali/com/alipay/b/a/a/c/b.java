package com.alipay.b.a.a.c;

import android.content.Context;
import com.alipay.android.phone.mrpc.core.aa;
import com.alipay.android.phone.mrpc.core.h;
import com.alipay.android.phone.mrpc.core.w;
import com.alipay.tscenter.biz.rpc.deviceFp.BugTrackMessageService;
import com.alipay.tscenter.biz.rpc.vkeydfp.DeviceDataReportService;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
import org.json.JSONObject;

public final class b
  implements a
{
  private static b d = null;
  private static DeviceDataReportResult e;
  private w a = null;
  private BugTrackMessageService b = null;
  private DeviceDataReportService c = null;
  
  private b(Context paramContext, String paramString)
  {
    aa localaa = new aa();
    localaa.a(paramString);
    this.a = new h(paramContext);
    this.b = ((BugTrackMessageService)this.a.a(BugTrackMessageService.class, localaa));
    this.c = ((DeviceDataReportService)this.a.a(DeviceDataReportService.class, localaa));
  }
  
  public static b a(Context paramContext, String paramString)
  {
    try
    {
      if (d == null) {
        d = new b(paramContext, paramString);
      }
      paramContext = d;
      return paramContext;
    }
    finally {}
  }
  
  public final DeviceDataReportResult a(DeviceDataReportRequest paramDeviceDataReportRequest)
  {
    if (this.c != null)
    {
      e = null;
      new Thread(new c(this, paramDeviceDataReportRequest)).start();
      int i = 300000;
      while ((e == null) && (i >= 0))
      {
        Thread.sleep(50L);
        i -= 50;
      }
    }
    return e;
  }
  
  public final boolean a(String paramString)
  {
    if (com.alipay.b.a.a.a.a.a(paramString)) {
      return false;
    }
    Object localObject;
    if (this.b != null) {
      localObject = null;
    }
    for (;;)
    {
      try
      {
        paramString = this.b.logCollect(com.alipay.b.a.a.a.a.e(paramString));
        if (!com.alipay.b.a.a.a.a.a(paramString))
        {
          bool = ((Boolean)new JSONObject(paramString).get("success")).booleanValue();
          return bool;
        }
      }
      catch (Exception paramString)
      {
        paramString = (String)localObject;
        continue;
      }
      boolean bool = false;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\b\a\a\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */