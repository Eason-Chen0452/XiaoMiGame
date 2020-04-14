package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.account.MilinkAccountProps;
import com.xiaomi.gamecenter.sdk.entry.LoginResult;
import com.xiaomi.gamecenter.sdk.entry.LoginType;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow.MiFloatManager;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.k;
import com.xiaomi.gamecenter.sdk.utils.OSUtils;
import com.xiaomi.gamecenter.sdk.utils.OSUtils.ROM;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class au
  implements Runnable
{
  au(Activity paramActivity, OnLoginProcessListener paramOnLoginProcessListener, LoginType paramLoginType, String paramString) {}
  
  public final void run()
  {
    boolean bool1 = true;
    for (;;)
    {
      try
      {
        Object localObject1 = OSUtils.a();
        if ((!"MIUI".equalsIgnoreCase(((OSUtils.ROM)localObject1).name())) && (!"ColorOS".equalsIgnoreCase(((OSUtils.ROM)localObject1).name())))
        {
          localObject1 = new Intent();
          localObject4 = new ComponentName("com.xiaomi.gamecenter.sdk.service", "com.xiaomi.gamecenter.sdk.ui.EntryActivity");
        }
        try
        {
          ((Intent)localObject1).setComponent((ComponentName)localObject4);
          ((Intent)localObject1).setAction("com.xiaomi.gamecenter.sdk.service.START");
          this.a.startActivity((Intent)localObject1);
          Thread.sleep(500L);
          localObject1 = MiCommplatform.getInstance();
          ((MiCommplatform)localObject1).setPay(true);
          if (((MiCommplatform)localObject1).checkAndConnect(this.a, true) != 0)
          {
            MiCommplatform.getInstance().setTouch(false);
            ReporterUtils.getInstance().xmsdkReport(4010);
            this.b.finishLoginProcess(-102, null);
            MiFloatManager.b();
            MiFloatManager.j();
            return;
          }
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
          continue;
        }
        Object localObject5;
        boolean bool2;
        Object localObject2;
        label617:
        label632:
        ReporterUtils.getInstance().xmsdkReport(4012);
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        MiCommplatform.getInstance().setTouch(false);
        MiCommplatform.getInstance();
        if (!MiCommplatform.isSdkServiceExist(this.a)) {
          break label793;
        }
        ReporterUtils.getInstance().xmsdkReport(4013, localException2);
        this.b.finishLoginProcess(-102, null);
        MiFloatManager.b();
        MiFloatManager.j();
        return;
        ReporterUtils.getInstance().xmsdkReport(2011);
        localObject4 = new Bundle();
        ((Bundle)localObject4).putString("loginType", this.c.toString());
        if (!TextUtils.isEmpty(this.d)) {
          ((Bundle)localObject4).putString("accountType", this.d);
        }
        ((Bundle)localObject4).putString("sdkVersion", "SDK_MI_SP_3.1.2");
        localObject4 = localException2.getSDKService().miLogin(localException2.getVersion(), null, (Bundle)localObject4);
        Logger.a("LoginResult : " + localObject4);
        k.b().a((LoginResult)localObject4);
        ReporterUtils.getInstance().xmsdkReport(2012);
        localException2.setTouch(false);
        localException2.setPay(false);
        if (localObject4 == null) {
          break label762;
        }
        localException2.disconnect();
        if (((LoginResult)localObject4).getErrcode() == 47528)
        {
          localException2.sendToastMsg();
          ReporterUtils.getInstance().xmsdkReport(4011);
          this.b.finishLoginProcess(-102, null);
          MiFloatManager.b();
          MiFloatManager.j();
          return;
        }
        if (((LoginResult)localObject4).getErrcode() == 0)
        {
          ReporterUtils.FastXmsdkReport(this.a, 20, ((LoginResult)localObject4).getAccount().getUid());
          ReporterUtils.getInstance().xmsdkReport(20, ((LoginResult)localObject4).getAccount().getUid());
          ReporterUtils.getInstance().xmsdkReportOpenId(((LoginResult)localObject4).getAccount().getUid());
          MiFloatManager.b().k();
          localObject5 = localException2.getFuidFromService();
          ReporterUtils.setFuid((String)localObject5);
          bool2 = TextUtils.isEmpty((CharSequence)localObject5);
          if (!bool2) {
            try
            {
              GeneralStatInfo.a(Long.parseLong((String)localObject5));
              if (((LoginResult)localObject4).getErrcode() == -116) {
                break;
              }
              localObject5 = ((LoginResult)localObject4).getAccount();
              localException2.getMiAppInfo().setAccount((MiAccountInfo)localObject5);
              k.b().a(null);
              localObject2 = localException2.getMilinkAccountProps();
              if (localObject2 != null) {
                k.b().a((MilinkAccountProps)localObject2);
              }
              SDKAccountUtil.b(this.a);
              this.b.finishLoginProcess(((LoginResult)localObject4).getErrcode(), ((LoginResult)localObject4).getAccount());
              localObject2 = new StringBuilder("code").append(((LoginResult)localObject4).getErrcode()).append("account is null:");
              if (((LoginResult)localObject4).getAccount() != null) {
                break label928;
              }
              Log.e("MIO-LoginInfo", bool1);
              return;
            }
            catch (Exception localException4) {}
          }
          GeneralStatInfo.a(0L);
          continue;
        }
      }
      finally
      {
        MiCommplatform.getInstance().setTouch(false);
        MiCommplatform.getInstance().disconnect();
      }
      MiFloatManager.b();
      MiFloatManager.j();
    }
    this.b.finishLoginProcess(((LoginResult)localObject4).getErrcode(), ((MiCommplatform)localObject3).getMiAccountInfo());
    Object localObject4 = new StringBuilder("code").append(((LoginResult)localObject4).getErrcode()).append("platform account is null:");
    if (((MiCommplatform)localObject3).getMiAccountInfo() == null) {}
    for (bool1 = true;; bool1 = false)
    {
      Log.e("MIO-LoginInfo", bool1);
      break label632;
      label762:
      ReporterUtils.getInstance().xmsdkReport(4012);
      this.b.finishLoginProcess(-102, null);
      MiFloatManager.b();
      MiFloatManager.j();
      break label632;
      try
      {
        for (;;)
        {
          label793:
          bool1 = MiCommplatform.getInstance().isTopActivity(this.a);
          if (bool1) {
            break;
          }
          try
          {
            Thread.sleep(500L);
          }
          catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }
      catch (Exception localException3)
      {
        this.b.finishLoginProcess(-102, null);
        MiFloatManager.b();
        MiFloatManager.j();
        localException3.printStackTrace();
      }
      MiCommplatform.getInstance();
      if (MiCommplatform.isSdkServiceExist(this.a))
      {
        ReporterUtils.getInstance().xmsdkReport(2010);
        SDKAccountUtil.b(this.a, this.b, this.c, this.d);
        break;
      }
      ReporterUtils.getInstance().xmsdkReport(4014);
      this.b.finishLoginProcess(-102, null);
      MiFloatManager.b();
      MiFloatManager.j();
      break;
      label928:
      bool1 = false;
      break label617;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */