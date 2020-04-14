package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.Toast;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
import com.xiaomi.gamecenter.sdk.pay.PaySDK;
import com.xiaomi.gamecenter.sdk.protocol.ServiceToken;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.TokenUtils;
import java.util.concurrent.ExecutorService;

public class SDKPaymentUtil
{
  public static void a(Activity paramActivity, MiBuyInfo paramMiBuyInfo, OnPayProcessListener paramOnPayProcessListener, MiAppInfo paramMiAppInfo)
  {
    SdkAccountAdapter localSdkAccountAdapter = MiCommplatform.getInstance().getAccountAdapter();
    ReporterUtils.ChangeIndex();
    ReporterUtils.getInstance().report(152);
    if (localSdkAccountAdapter.c())
    {
      ReporterUtils.getInstance().report(3078);
      paramMiAppInfo = paramMiAppInfo.getAppId();
      if ((TextUtils.isEmpty(paramMiAppInfo)) || (ServiceToken.a(paramMiAppInfo) == null) || (TokenUtils.b(paramActivity) == null) || (!MiCommplatform.IS_LOGGED_IN))
      {
        paramActivity.runOnUiThread(new av(paramActivity));
        if (ServiceToken.a(paramMiAppInfo) == null) {
          ServiceToken.b(paramMiAppInfo);
        }
        if (TokenUtils.b(paramActivity) == null) {
          TokenUtils.a(paramActivity);
        }
        b(47533, paramOnPayProcessListener);
        return;
      }
      if (!paramMiBuyInfo.isValid())
      {
        ReporterUtils.getInstance().report(154);
        Toast.makeText(paramActivity, "参数无效", 0).show();
        b(47533, paramOnPayProcessListener);
        return;
      }
      PaySDK.a().a(paramActivity, paramMiBuyInfo, new aw(paramMiAppInfo, paramActivity, paramOnPayProcessListener));
      return;
    }
    if (localSdkAccountAdapter.b())
    {
      ReporterUtils.getInstance().report(3079);
      HyUtils.a().submit(new ay(paramActivity, paramMiBuyInfo, paramOnPayProcessListener));
      return;
    }
    throw new IllegalStateException("Please call MiCommplatform.Init () in application onCreate() and the MiappInfo parameter can not be null");
  }
  
  private static void b(int paramInt, OnPayProcessListener paramOnPayProcessListener)
  {
    HyUtils.a().submit(new ax(paramOnPayProcessListener, paramInt));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\SDKPaymentUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */