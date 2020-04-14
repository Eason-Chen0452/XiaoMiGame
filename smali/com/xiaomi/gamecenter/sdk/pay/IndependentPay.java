package com.xiaomi.gamecenter.sdk.pay;

import android.app.Activity;
import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.hy.dj.HyDJ;

public class IndependentPay
{
  private static volatile IndependentPay d;
  private Activity a;
  private String b;
  private String c;
  
  public IndependentPay(Activity paramActivity, String paramString1, String paramString2)
  {
    this.a = paramActivity;
    this.b = paramString1;
    this.c = paramString2;
    ReporterUtils.init(paramActivity, paramString1);
    HyDJ.init(paramActivity, paramString1, paramString2);
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2)
  {
    if ((paramActivity == null) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      throw new IllegalStateException("context、appid 、appkey must not be null");
    }
    if (d == null) {
      d = new IndependentPay(paramActivity, paramString1, paramString2);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\pay\IndependentPay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */