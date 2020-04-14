package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import java.util.concurrent.ExecutorService;

final class l
  extends Handler
{
  l(ViewSelectLoginMethod paramViewSelectLoginMethod, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void dispatchMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      return;
    case 10000: 
      ViewSelectLoginMethod.a(this.a, ((Integer)paramMessage.obj).intValue());
      return;
    case 20000: 
      ViewSelectLoginMethod.a(this.a).setVisibility(4);
      ViewSelectLoginMethod.a(this.a, this.a.getContext(), ((Integer)paramMessage.obj).intValue(), false);
      return;
    case 20001: 
      ViewSelectLoginMethod.a(this.a).setVisibility(0);
      return;
    case 30000: 
      ViewSelectLoginMethod.a(this.a).setVisibility(4);
      ViewSelectLoginMethod.a(this.a, this.a.getContext());
      paramMessage = new DownloadServiceUtil(ViewSelectLoginMethod.b(this.a));
      HyUtils.a().submit(new m(this, paramMessage));
      return;
    case 1: 
      ReporterUtils.getInstance().xmsdkReport(2303);
      return;
    case 2: 
      int i = paramMessage.arg1;
      ViewSelectLoginMethod.b(this.a, i >> 10);
      return;
    case 3: 
      ViewSelectLoginMethod.c(this.a);
      ReporterUtils.getInstance().xmsdkReport(2304);
      return;
    case 4: 
      ViewSelectLoginMethod.d(this.a);
      ViewSelectLoginMethod.c(this.a);
      ViewSelectLoginMethod.a(this.a, "游戏服务校验完成，开始安装");
      return;
    }
    ViewSelectLoginMethod.e(this.a);
    ViewSelectLoginMethod.a(this.a).setVisibility(4);
    ViewSelectLoginMethod.a(this.a, this.a.getContext(), -1, true);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */