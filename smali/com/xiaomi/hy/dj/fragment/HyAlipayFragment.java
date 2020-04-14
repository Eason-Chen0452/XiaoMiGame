package com.xiaomi.hy.dj.fragment;

import android.os.Bundle;
import android.util.Log;
import java.util.Map;

public class HyAlipayFragment
  extends BaseFragment
{
  public static final String d = "HyAlipayFragment";
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    Log.e("onPay--alipay", "准备支付宝支付中...");
    new Thread(new c(this, paramString2, paramString1)).start();
  }
  
  public void a(Map<String, Object> paramMap)
  {
    this.a.a("ALIPAY");
  }
  
  public void c(String paramString)
  {
    if (paramString.equals("TRADE_SUCCESS"))
    {
      com.xiaomi.hy.dj.e.b.a().a(169);
      b(169);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\HyAlipayFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */