package com.xiaomi.gamecenter.sdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class ao
  extends Handler
{
  ao(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void dispatchMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      return;
    }
    ReporterUtils.getInstance().xmsdkReport(2020);
    ReporterUtils.getInstance().reportLive();
    MiCommplatform.reportKeyPath("12710_20191010094407_a95dcf2f63bf3ec626d0eeff85fc57e3b24703b4");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */