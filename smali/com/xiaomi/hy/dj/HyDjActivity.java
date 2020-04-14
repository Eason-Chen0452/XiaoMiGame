package com.xiaomi.hy.dj;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import com.xiaomi.hy.dj.config.ResultCode;
import com.xiaomi.hy.dj.e.b;
import com.xiaomi.hy.dj.f.k;
import com.xiaomi.hy.dj.fragment.HyAlipayFragment;
import com.xiaomi.hy.dj.fragment.HyPayEcoFragment;
import com.xiaomi.hy.dj.fragment.HyQQWapFragment;
import com.xiaomi.hy.dj.fragment.HySzfPayFragment;
import com.xiaomi.hy.dj.fragment.HyWxScanFragment;
import com.xiaomi.hy.dj.fragment.HyWxWapFragment;
import com.xiaomi.hy.dj.model.AppInfo;
import com.xiaomi.hy.dj.model.CallModel;
import java.util.Map;

public class HyDjActivity
  extends Activity
{
  private Bundle bundle;
  
  private void addAliPayFragment()
  {
    b.a().a(168);
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    HyAlipayFragment localHyAlipayFragment = new HyAlipayFragment();
    localHyAlipayFragment.setArguments(this.bundle);
    localFragmentTransaction.add(16908290, localHyAlipayFragment, "HyAlipayFragment");
    localFragmentTransaction.commit();
  }
  
  private void addPayEcoFragment()
  {
    b.a().a(186);
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    HyPayEcoFragment localHyPayEcoFragment = new HyPayEcoFragment();
    localHyPayEcoFragment.setArguments(this.bundle);
    localFragmentTransaction.add(16908290, localHyPayEcoFragment, "HyAlipayFragment");
    localFragmentTransaction.commit();
  }
  
  private void addQQPayFragment()
  {
    b.a().a(180);
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    HyQQWapFragment localHyQQWapFragment = new HyQQWapFragment();
    localHyQQWapFragment.setArguments(this.bundle);
    localFragmentTransaction.add(16908290, localHyQQWapFragment, "HyQQWapFragment");
    localFragmentTransaction.commit();
  }
  
  private void addSzfPayFragment()
  {
    b.a().a(190);
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    HySzfPayFragment localHySzfPayFragment = new HySzfPayFragment();
    localHySzfPayFragment.setArguments(this.bundle);
    localFragmentTransaction.add(16908290, localHySzfPayFragment, "HySzfPayFragment");
    localFragmentTransaction.commit();
  }
  
  private void addWxScanFragment()
  {
    b.a().a(176);
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    HyWxScanFragment localHyWxScanFragment = new HyWxScanFragment();
    localHyWxScanFragment.setArguments(this.bundle);
    localFragmentTransaction.add(16908290, localHyWxScanFragment, "HyWxScanFragment");
    localFragmentTransaction.commit();
  }
  
  private void addWxWapFragment()
  {
    b.a().a(172);
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    HyWxWapFragment localHyWxWapFragment = new HyWxWapFragment();
    localHyWxWapFragment.setArguments(this.bundle);
    localFragmentTransaction.add(16908290, localHyWxWapFragment, "HyWxWapFragment");
    localFragmentTransaction.commit();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bundle = getIntent().getBundleExtra("_bundle");
    AppInfo localAppInfo = (AppInfo)this.bundle.getSerializable("_appinfo");
    int i = localAppInfo.getPayType();
    if (i == 1) {
      if ((k.a(this)) && (k.f(this) > 570556416)) {
        if (k.e(this))
        {
          paramBundle = new String[2];
          paramBundle[0] = "WXMWEB";
          paramBundle[1] = "WXAPP";
          localAppInfo.setPaymentList(paramBundle);
          this.bundle.putSerializable("_appinfo", localAppInfo);
          addWxWapFragment();
        }
      }
    }
    do
    {
      return;
      paramBundle = new String[1];
      paramBundle[0] = "WXMWEB";
      break;
      localAppInfo.setPaymentList(new String[] { "WXNATIVE" });
      this.bundle.putSerializable("_appinfo", localAppInfo);
      addWxScanFragment();
      return;
      if (i == 2)
      {
        localAppInfo.setPaymentList(new String[] { "ALIPAY" });
        this.bundle.putSerializable("_appinfo", localAppInfo);
        addAliPayFragment();
        return;
      }
      if (i == 3)
      {
        if ((k.c(this)) || (k.c(this)))
        {
          localAppInfo.setPaymentList(new String[] { "QPAY" });
          this.bundle.putSerializable("_appinfo", localAppInfo);
          addQQPayFragment();
          return;
        }
        CallModel.pop(localAppInfo.getCallId()).onError(3067, (String)ResultCode.errorMap.get(Integer.valueOf(3067)));
        finish();
        overridePendingTransition(0, 0);
        return;
      }
      if (i == 4)
      {
        localAppInfo.setPaymentList(new String[] { "PAYECO" });
        this.bundle.putSerializable("_appinfo", localAppInfo);
        addPayEcoFragment();
        return;
      }
    } while (i != 5);
    localAppInfo.setPaymentList(new String[] { "SZFPAY" });
    this.bundle.putSerializable("_appinfo", localAppInfo);
    addSzfPayFragment();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\HyDjActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */