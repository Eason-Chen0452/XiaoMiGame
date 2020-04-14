package com.xiaomi.hy.dj.fragment;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import java.util.Map;

public class HyPayEcoFragment
  extends BaseFragment
{
  public static final String d = "HyAlipayFragment";
  private final String e = "BROADCAST_PAY_END";
  private BroadcastReceiver f;
  
  private void b()
  {
    this.f = new h(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("BROADCAST_PAY_END");
    localIntentFilter.addCategory("android.intent.category.DEFAULT");
    getActivity().registerReceiver(this.f, localIntentFilter);
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    Log.e("onPay--payeco", "准备银行卡支付中...");
    new Thread(new g(this, paramString2)).start();
  }
  
  public void a(Map<String, Object> paramMap)
  {
    this.a.a("PAYECO");
  }
  
  public void c(String paramString)
  {
    if (paramString.equals("TRADE_SUCCESS"))
    {
      com.xiaomi.hy.dj.e.b.a().a(187);
      b(187);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    getActivity().unregisterReceiver(this.f);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\HyPayEcoFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */