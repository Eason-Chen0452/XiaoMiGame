package com.xiaomi.gamecenter.sdk.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.xiaomi.gamecenter.sdk.adapter.PayAdapter;
import com.xiaomi.gamecenter.sdk.entry.CallModel;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
import com.xiaomi.gamecenter.sdk.entry.PaytypeModel;
import com.xiaomi.gamecenter.sdk.pay.b;
import com.xiaomi.gamecenter.sdk.protocol.VerifyType;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import com.xiaomi.gamecenter.sdk.utils.TokenUtils;
import com.xiaomi.gamecenter.sdk.verifyid.VerifyID;
import com.xiaomi.hy.dj.HyDJ;
import com.xiaomi.hy.dj.purchase.OrderPurchase;
import java.util.ArrayList;
import java.util.List;

public class PayListActivity
  extends Activity
  implements AdapterView.OnItemClickListener
{
  private ListView a;
  private PayAdapter b;
  private MiBuyInfo c;
  private TextView d;
  private TextView e;
  private String f;
  private String g;
  private List<PaytypeModel> h = new ArrayList();
  private LinearLayout i;
  private ProgressDialog j;
  private String k;
  private String l;
  private String m;
  private String n;
  private long o;
  private a p;
  
  private void a(int paramInt, String paramString)
  {
    b localb = CallModel.get(this.o);
    CallModel.remove(this.o);
    if (localb != null)
    {
      localb.a(paramInt, paramString);
      finish();
      overridePendingTransition(0, 0);
    }
  }
  
  private void b()
  {
    this.p = new a();
    this.p.execute(new Integer[0]);
  }
  
  private static boolean c()
  {
    try
    {
      Class.forName("com.google.zxing.BarcodeFormat");
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public void onBackPressed()
  {
    ReporterUtils.getInstance().report(3086);
    b localb = CallModel.get(this.o);
    CallModel.remove(this.o);
    if (localb != null)
    {
      localb.a(3086, "取消支付");
      finish();
      overridePendingTransition(0, 0);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      this.o = paramBundle.getLong("_callback");
    }
    setContentView(ResourceUtils.f(this, "mio_activity_paylist"));
    this.d = ((TextView)findViewById(ResourceUtils.d(this, "tv_purchase_name")));
    this.e = ((TextView)findViewById(ResourceUtils.d(this, "tv_price")));
    this.i = ((LinearLayout)findViewById(ResourceUtils.d(this, "ll_container")));
    this.i.setVisibility(8);
    paramBundle = getIntent().getBundleExtra("_bundle");
    if (paramBundle == null)
    {
      a(64526, "参数错误");
      return;
    }
    this.c = ((MiBuyInfo)paramBundle.getParcelable("_mibuyinfo"));
    this.f = paramBundle.getString("_appid");
    this.g = paramBundle.getString("_appkey");
    this.o = paramBundle.getLong("_callback");
    this.a = ((ListView)findViewById(ResourceUtils.d(this, "lv_pay")));
    this.b = new PayAdapter(this);
    this.a.setAdapter(this.b);
    this.a.setOnItemClickListener(this);
    this.j = new ProgressDialog(this);
    this.j.setMessage("查询订单信息...");
    this.j.setCancelable(false);
    paramBundle = com.xiaomi.gamecenter.sdk.protocol.ServiceToken.a(this.f);
    if (paramBundle != null) {
      new VerifyID(this, this.f, "login", paramBundle.b(), paramBundle.a(), VerifyType.pay).a(new d(this));
    }
    for (;;)
    {
      ReporterUtils.getInstance().report(3088);
      return;
      b();
    }
  }
  
  protected void onDestroy()
  {
    if (this.p != null) {
      this.p.cancel(true);
    }
    if (this.j != null) {
      this.j.dismiss();
    }
    super.onDestroy();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (HyUtils.b()) {
      return;
    }
    paramView = TokenUtils.b(this);
    if (paramView == null)
    {
      a(-1, "ServiceToken is NULL");
      return;
    }
    paramAdapterView = (PaytypeModel)paramAdapterView.getItemAtPosition(paramInt);
    this.i.setVisibility(8);
    OrderPurchase localOrderPurchase = new OrderPurchase();
    localOrderPurchase.setMiOrderId(this.k);
    localOrderPurchase.setDisplayName(this.l);
    localOrderPurchase.setFeeValue(this.m);
    switch (g.a[paramAdapterView.getPayType().ordinal()])
    {
    default: 
      return;
    case 1: 
      ReporterUtils.getInstance().report(3076, paramView.getUid(), this.c.getCpOrderId());
      HyDJ.getInstance().aliPay(this, localOrderPurchase, new e(this));
      return;
    }
    ReporterUtils.getInstance().report(3077, paramView.getUid(), this.c.getCpOrderId());
    HyDJ.getInstance().wxPay(this, localOrderPurchase, new f(this));
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    this.o = paramBundle.getLong("_callback");
    ReporterUtils.getInstance().report(3089);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putLong("_callback", this.o);
  }
  
  final class a
    extends AsyncTask<Integer, Integer, String>
  {
    a() {}
    
    protected final void onPreExecute()
    {
      super.onPreExecute();
      if ((!PayListActivity.this.isFinishing()) && (PayListActivity.c(PayListActivity.this) != null)) {
        PayListActivity.c(PayListActivity.this).show();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\PayListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */