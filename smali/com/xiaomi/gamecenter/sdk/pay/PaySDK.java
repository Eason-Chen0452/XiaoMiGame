package com.xiaomi.gamecenter.sdk.pay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.entry.CallModel;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
import com.xiaomi.gamecenter.sdk.ui.PayListActivity;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.hy.dj.HyDJ;

public class PaySDK
{
  private static volatile PaySDK a;
  private String b;
  private String c;
  
  public PaySDK(Context paramContext, String paramString1, String paramString2)
  {
    this.b = paramString1;
    this.c = paramString2;
    ReporterUtils.init(paramContext, paramString1);
    HyDJ.init(paramContext, paramString1, paramString2);
  }
  
  public static PaySDK a()
  {
    if (a == null) {
      throw new IllegalStateException("please HyAwPay.init() in application before use this method");
    }
    return a;
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      throw new IllegalStateException("context、appid 、appkey must not be null");
    }
    if (a == null) {
      a = new PaySDK(paramContext, paramString1, paramString2);
    }
  }
  
  public final void a(Activity paramActivity, MiBuyInfo paramMiBuyInfo, b paramb)
  {
    Intent localIntent = new Intent(paramActivity, PayListActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("_mibuyinfo", paramMiBuyInfo);
    localBundle.putString("_appid", this.b);
    localBundle.putString("_appkey", this.c);
    localBundle.putLong("_callback", CallModel.add(paramb));
    localIntent.putExtra("_bundle", localBundle);
    paramActivity.startActivity(localIntent);
    paramActivity.overridePendingTransition(0, 0);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\pay\PaySDK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */