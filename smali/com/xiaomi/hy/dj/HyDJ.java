package com.xiaomi.hy.dj;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.data.ClientAppInfo.Builder;
import com.xiaomi.hy.dj.e.a;
import com.xiaomi.hy.dj.f.k;
import com.xiaomi.hy.dj.f.m;
import com.xiaomi.hy.dj.f.o;
import com.xiaomi.hy.dj.model.AppInfo;
import com.xiaomi.hy.dj.model.CallModel;
import com.xiaomi.hy.dj.purchase.Purchase;

public class HyDJ
{
  private static volatile HyDJ mInstance;
  private String appid;
  private String appkey;
  private Context mContext;
  
  public HyDJ(Context paramContext, String paramString1, String paramString2)
  {
    this.appid = paramString1;
    this.appkey = paramString2;
    this.mContext = paramContext;
    com.xiaomi.hy.dj.e.b.a(paramContext, paramString1);
    com.xiaomi.hy.dj.e.b.a().c();
    o.a(paramContext);
    a.a(paramContext);
    com.xiaomi.hy.dj.a.b.a(paramContext);
    Global.init(paramContext, getMilinkAppInfo());
  }
  
  public static HyDJ getInstance()
  {
    if (mInstance == null) {
      throw new IllegalStateException("please HyDJ.init() in application before use this method");
    }
    return mInstance;
  }
  
  public static void init(Context paramContext, String paramString1, String paramString2)
  {
    if (mInstance == null)
    {
      m.b(paramContext.getApplicationContext());
      mInstance = new HyDJ(paramContext, paramString1, paramString2);
    }
  }
  
  public void aliPay(Activity paramActivity, Purchase paramPurchase, PayResultCallback paramPayResultCallback)
  {
    com.xiaomi.hy.dj.e.b.a().b();
    Intent localIntent = new Intent(paramActivity, HyDjActivity.class);
    AppInfo localAppInfo = new AppInfo();
    localAppInfo.setAppid(this.appid);
    localAppInfo.setAppkey(this.appkey);
    localAppInfo.setCallId(CallModel.add(paramPayResultCallback));
    localAppInfo.setPayType(2);
    paramPayResultCallback = new Bundle();
    paramPayResultCallback.putSerializable("_appinfo", localAppInfo);
    paramPayResultCallback.putSerializable("_purchase", paramPurchase);
    localIntent.putExtra("_bundle", paramPayResultCallback);
    paramActivity.startActivity(localIntent);
  }
  
  public ClientAppInfo getMilinkAppInfo()
  {
    ClientAppInfo.Builder localBuilder = new ClientAppInfo.Builder(20002);
    localBuilder.setAppName("misdk");
    localBuilder.setPackageName(this.mContext.getPackageName());
    localBuilder.setReleaseChannel("RELEASE");
    localBuilder.setVersionName("SDK_VISITOR_DJPAY_1.1.6");
    localBuilder.setVersionCode(k.a("SDK_VISITOR_DJPAY_1.1.6"));
    localBuilder.setLinkMode(1);
    return localBuilder.build();
  }
  
  public void payEco(Activity paramActivity, Purchase paramPurchase, PayResultCallback paramPayResultCallback)
  {
    com.xiaomi.hy.dj.e.b.a().b();
    Intent localIntent = new Intent(paramActivity, HyDjActivity.class);
    AppInfo localAppInfo = new AppInfo();
    localAppInfo.setAppid(this.appid);
    localAppInfo.setAppkey(this.appkey);
    localAppInfo.setCallId(CallModel.add(paramPayResultCallback));
    localAppInfo.setPayType(4);
    paramPayResultCallback = new Bundle();
    paramPayResultCallback.putSerializable("_appinfo", localAppInfo);
    paramPayResultCallback.putSerializable("_purchase", paramPurchase);
    localIntent.putExtra("_bundle", paramPayResultCallback);
    paramActivity.startActivity(localIntent);
  }
  
  public void qqPay(Activity paramActivity, Purchase paramPurchase, PayResultCallback paramPayResultCallback)
  {
    com.xiaomi.hy.dj.e.b.a().b();
    Intent localIntent = new Intent(paramActivity, HyDjActivity.class);
    AppInfo localAppInfo = new AppInfo();
    localAppInfo.setAppid(this.appid);
    localAppInfo.setAppkey(this.appkey);
    localAppInfo.setCallId(CallModel.add(paramPayResultCallback));
    localAppInfo.setPayType(3);
    paramPayResultCallback = new Bundle();
    paramPayResultCallback.putSerializable("_appinfo", localAppInfo);
    paramPayResultCallback.putSerializable("_purchase", paramPurchase);
    localIntent.putExtra("_bundle", paramPayResultCallback);
    paramActivity.startActivity(localIntent);
  }
  
  public void szfPay(Activity paramActivity, Purchase paramPurchase, PayResultCallback paramPayResultCallback)
  {
    com.xiaomi.hy.dj.e.b.a().b();
    Intent localIntent = new Intent(paramActivity, HyDjActivity.class);
    AppInfo localAppInfo = new AppInfo();
    localAppInfo.setAppid(this.appid);
    localAppInfo.setAppkey(this.appkey);
    localAppInfo.setCallId(CallModel.add(paramPayResultCallback));
    localAppInfo.setPayType(5);
    paramPayResultCallback = new Bundle();
    paramPayResultCallback.putSerializable("_appinfo", localAppInfo);
    paramPayResultCallback.putSerializable("_purchase", paramPurchase);
    localIntent.putExtra("_bundle", paramPayResultCallback);
    paramActivity.startActivity(localIntent);
  }
  
  public void wxPay(Activity paramActivity, Purchase paramPurchase, PayResultCallback paramPayResultCallback)
  {
    com.xiaomi.hy.dj.e.b.a().b();
    Intent localIntent = new Intent(paramActivity, HyDjActivity.class);
    AppInfo localAppInfo = new AppInfo();
    localAppInfo.setAppid(this.appid);
    localAppInfo.setAppkey(this.appkey);
    localAppInfo.setCallId(CallModel.add(paramPayResultCallback));
    localAppInfo.setPayType(1);
    paramPayResultCallback = new Bundle();
    paramPayResultCallback.putSerializable("_appinfo", localAppInfo);
    paramPayResultCallback.putSerializable("_purchase", paramPurchase);
    localIntent.putExtra("_bundle", paramPayResultCallback);
    paramActivity.startActivity(localIntent);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\HyDJ.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */