package com.alipay.b.a.a.c;

import com.alipay.b.a.a.a.a;
import com.alipay.tscenter.biz.rpc.vkeydfp.DeviceDataReportService;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

final class c
  implements Runnable
{
  c(b paramb, DeviceDataReportRequest paramDeviceDataReportRequest) {}
  
  public final void run()
  {
    try
    {
      b.a(b.a(this.b).reportStaticData(this.a));
      return;
    }
    catch (Throwable localThrowable)
    {
      b.a(new DeviceDataReportResult());
      b.a().success = false;
      b.a().resultCode = ("static data rpc upload error, " + a.a(localThrowable));
      a.a(localThrowable);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\b\a\a\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */