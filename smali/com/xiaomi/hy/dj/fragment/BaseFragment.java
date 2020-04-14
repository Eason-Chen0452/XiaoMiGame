package com.xiaomi.hy.dj.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import com.xiaomi.hy.dj.PayResultCallback;
import com.xiaomi.hy.dj.config.ResultCode;
import com.xiaomi.hy.dj.model.AppInfo;
import com.xiaomi.hy.dj.model.CallModel;
import com.xiaomi.hy.dj.model.ServiceToken;
import com.xiaomi.hy.dj.model.TokenManager;
import com.xiaomi.hy.dj.purchase.OrderPurchase;
import com.xiaomi.hy.dj.purchase.Purchase;
import java.util.Map;

public class BaseFragment
  extends Fragment
  implements com.xiaomi.hy.dj.d.a
{
  protected com.xiaomi.hy.dj.d.b a;
  public ProgressDialog b;
  public CountDownTimer c;
  private String[] d;
  private Purchase e;
  private long f;
  private Bundle g;
  
  private void b()
  {
    if ((this.e instanceof OrderPurchase))
    {
      this.a.a(this.d[0]);
      return;
    }
    this.a.a(this.d);
  }
  
  public void a()
  {
    b(3060);
  }
  
  public void a(int paramInt)
  {
    b(paramInt);
  }
  
  public void a(String paramString)
  {
    if ((paramString.equals("404")) || (paramString.equals("405")))
    {
      this.b.dismiss();
      Bundle localBundle = new Bundle();
      String str1 = TokenManager.getInstance().getToken(getActivity()).getOpenId();
      String str2 = TokenManager.getInstance().getToken(getActivity()).getSession();
      localBundle.putString("_url", "http://static.g.mi.com/pages/realname/index.html?fuid=" + str1 + "&sid=" + str2 + "&pid=7010");
      localBundle.putInt("_code", Integer.parseInt(paramString));
      paramString = new HyWebFragment();
      paramString.setArguments(localBundle);
      getFragmentManager().beginTransaction().add(16908290, paramString, "WEBVIEW").commit();
      paramString.a(new a(this));
      return;
    }
    b();
  }
  
  protected void a(String paramString, long paramLong1, long paramLong2)
  {
    this.b.setMessage("正在查询订单信息...");
    if (this.c == null)
    {
      this.c = new b(this, paramLong1, paramLong2, paramString);
      this.c.start();
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3) {}
  
  public void a(Map<String, Object> paramMap) {}
  
  public void b(int paramInt)
  {
    try
    {
      this.a.d();
      if ((this.b != null) && (this.b.isShowing())) {
        this.b.dismiss();
      }
      if (this.c != null)
      {
        this.c.cancel();
        this.c = null;
      }
      PayResultCallback localPayResultCallback = CallModel.pop(this.f);
      if ((paramInt == 169) || (paramInt == 181) || (paramInt == 177) || (paramInt == 173) || (paramInt == 187) || (paramInt == 191)) {
        localPayResultCallback.onSuccess(this.e.getCpOrderId());
      }
      for (;;)
      {
        getActivity().finish();
        getActivity().overridePendingTransition(0, 0);
        return;
        localPayResultCallback.onError(paramInt, (String)ResultCode.errorMap.get(Integer.valueOf(paramInt)));
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void b(String paramString)
  {
    if (TokenManager.getInstance().isExist(getActivity())) {
      this.a.b();
    }
  }
  
  public void c(String paramString) {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.g = getActivity().getIntent().getBundleExtra("_bundle");
    if (paramBundle != null) {
      this.g = paramBundle.getBundle("_bundle");
    }
    paramBundle = (AppInfo)this.g.getSerializable("_appinfo");
    this.d = paramBundle.getPaymentList();
    this.e = ((Purchase)this.g.getSerializable("_purchase"));
    this.f = paramBundle.getCallId();
    this.b = new ProgressDialog(getActivity());
    this.b.setMessage("正在获取订单信息...");
    this.b.setCancelable(false);
    this.b.show();
    this.a = new com.xiaomi.hy.dj.d.b(getActivity(), paramBundle, this.e);
    this.a.a(this);
    if (TokenManager.getInstance().isExist(getActivity()))
    {
      this.a.b();
      return;
    }
    this.a.a();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBundle("_bundle", this.g);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\fragment\BaseFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */