package com.xiaomi.gamecenter.sdk.ui;

import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.hy.dj.PayResultCallback;

final class e
  implements PayResultCallback
{
  e(PayListActivity paramPayListActivity) {}
  
  public final void onError(int paramInt, String paramString)
  {
    if (paramInt == 185) {
      ReporterUtils.getInstance().report(3085);
    }
    for (;;)
    {
      PayListActivity.a(this.a, paramInt, paramString);
      return;
      ReporterUtils.getInstance().report(3084);
    }
  }
  
  public final void onSuccess(String paramString)
  {
    ReporterUtils.getInstance().report(3083);
    PayListActivity.b(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */