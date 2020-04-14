package com.xiaomi.gamecenter.sdk.ui;

import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.hy.dj.PayResultCallback;

final class f
  implements PayResultCallback
{
  f(PayListActivity paramPayListActivity) {}
  
  public final void onError(int paramInt, String paramString)
  {
    if (paramInt == 185) {
      ReporterUtils.getInstance().report(3082);
    }
    for (;;)
    {
      PayListActivity.a(this.a, paramInt, paramString);
      return;
      ReporterUtils.getInstance().report(3081);
    }
  }
  
  public final void onSuccess(String paramString)
  {
    ReporterUtils.getInstance().report(3080);
    PayListActivity.b(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */