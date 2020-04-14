package com.xiaomi.gamecenter.sdk.ui.actlayout;

import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class m
  implements Runnable
{
  m(l paraml, DownloadServiceUtil paramDownloadServiceUtil) {}
  
  public final void run()
  {
    try
    {
      this.a.a();
      ReporterUtils.getInstance().xmsdkReport(2302);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */