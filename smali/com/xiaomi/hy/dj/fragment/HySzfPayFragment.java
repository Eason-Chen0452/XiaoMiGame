package com.xiaomi.hy.dj.fragment;

import android.os.Bundle;
import android.util.Log;
import java.util.Map;

public class HySzfPayFragment
  extends BaseFragment
{
  public static final String d = "HySzfPayFragment";
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    Log.e("onPay--SZFpay", "准备充值卡支付中...");
    new Thread(new o(this, paramString1)).start();
  }
  
  public void a(Map<String, Object> paramMap)
  {
    this.a.a("SZFPAY");
  }
  
  public void c(String paramString)
  {
    if (paramString.equals("TRADE_SUCCESS"))
    {
      com.xiaomi.hy.dj.e.b.a().a(191);
      b(191);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\HySzfPayFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */