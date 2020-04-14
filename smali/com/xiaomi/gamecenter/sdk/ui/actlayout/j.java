package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.TextView;
import com.xiaomi.gamecenter.sdk.entry.Image;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoadCallback;
import com.xiaomi.gamecenter.sdk.ui.notice.imageload.ImageLoader;
import com.xiaomi.gamecenter.sdk.ui.notice.transform.CircleTransform;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

final class j
  extends Handler
{
  j(ViewSelectAccount paramViewSelectAccount, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void dispatchMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    }
    AccountType localAccountType;
    do
    {
      do
      {
        return;
        this.a.j();
        int i = ((Integer)paramMessage.obj).intValue();
        ViewSelectAccount.a(this.a, i);
        return;
        this.a.j();
        ReporterUtils.getInstance().xmsdkReport(2018);
        ViewSelectAccount.a(this.a);
        return;
        paramMessage = (String)paramMessage.obj;
      } while ((TextUtils.isEmpty(paramMessage)) || (ViewSelectAccount.b(this.a) == null));
      ViewSelectAccount.b(this.a).setText(paramMessage);
      return;
      paramMessage = (String)paramMessage.obj;
      PackgeInfoHelper.a();
      localAccountType = PackgeInfoHelper.a(ViewSelectAccount.c(this.a).getAppId());
    } while ((TextUtils.isEmpty(paramMessage)) || (!ViewSelectAccount.k()));
    if (ViewSelectAccount.d(this.a) == null) {
      ViewSelectAccount.a(this.a, new ImageLoadCallback(ViewSelectAccount.e(this.a)));
    }
    if (ViewSelectAccount.f(this.a) == null) {
      ViewSelectAccount.a(this.a, new CircleTransform());
    }
    if (localAccountType == AccountType.AccountType_QQ)
    {
      ImageLoader.b(this.a.getContext(), ViewSelectAccount.e(this.a), Image.get(paramMessage), ResourceUtils.d(this.a.getContext(), "mio_login_wait_default_icon"), ViewSelectAccount.d(this.a), ViewSelectAccount.f(this.a));
      return;
    }
    ImageLoader.a(this.a.getContext(), ViewSelectAccount.e(this.a), Image.get(paramMessage), ResourceUtils.d(this.a.getContext(), "mio_login_wait_default_icon"), ViewSelectAccount.d(this.a), ViewSelectAccount.f(this.a));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */