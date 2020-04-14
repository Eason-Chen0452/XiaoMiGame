package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.WxCpCallback;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.milink.AutoLoginForSDK;
import com.xiaomi.gamecenter.sdk.protocol.VerifyType;
import com.xiaomi.gamecenter.sdk.ui.ActionTransfor.ActionResult;
import com.xiaomi.gamecenter.sdk.ui.MiLayout;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.j;
import com.xiaomi.gamecenter.sdk.verifyid.VerifyID;
import com.xiaomi.gamecenter.sdk.weblogin.WebLogin;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;

final class a
  extends Handler
{
  a(ViewLoginLayout paramViewLoginLayout, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void dispatchMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      ViewLoginLayout.e(this.a);
      ViewLoginLayout.k(this.a, ActionTransfor.ActionResult.ACTION_OK);
      MiLayout.a(ViewLoginLayout.r(this.a));
    case 20000: 
    case 20003: 
    case 20001: 
    case 20002: 
    case 30001: 
    case 40000: 
    case 50000: 
      do
      {
        return;
        ViewLoginLayout.e(this.a);
        paramMessage = (String)paramMessage.obj;
        ViewLoginLayout.a(this.a, "异常信息:" + paramMessage + "\n当前时间:" + HyUtils.c());
        return;
        ViewLoginLayout.e(this.a);
        String str1 = (String)paramMessage.obj;
        i = paramMessage.arg1;
        ViewLoginLayout.a(this.a, "异常代码:" + i + "\n异常信息:" + str1 + "\n当前时间:" + HyUtils.c());
        return;
        ViewLoginLayout.e(this.a);
        paramMessage = (String)paramMessage.obj;
        this.a.d(paramMessage);
        return;
        ViewLoginLayout.e(this.a);
        return;
        ViewLoginLayout.e(this.a);
        try
        {
          Object localObject = new JSONObject((String)paramMessage.obj);
          long l1 = ((JSONObject)localObject).getLong("uid");
          long l2 = ((JSONObject)localObject).getLong("openId");
          paramMessage = ((JSONObject)localObject).getString("openSession");
          i = ((JSONObject)localObject).getInt("accountType");
          if (!((JSONObject)localObject).getBoolean("isAuto"))
          {
            str1 = ((JSONObject)localObject).getString("serviceToken");
            String str2 = ((JSONObject)localObject).getString("nickname");
            int j = ((JSONObject)localObject).getInt("sex");
            localObject = ((JSONObject)localObject).getString("img");
            HyUtils.a().submit(new b(this, l1, str1, str2, j, (String)localObject));
          }
          if (ViewLoginLayout.a(this.a) != null) {
            ViewLoginLayout.a(this.a).sendMessage(ViewLoginLayout.a(this.a).obtainMessage(20001, "正在检查实名认证..."));
          }
          new VerifyID((Activity)this.a.getContext(), ViewLoginLayout.g(this.a).getAppId(), "login", String.valueOf(l1), paramMessage, VerifyType.login).a(new c(this, l2, paramMessage, i));
          return;
        }
        catch (JSONException paramMessage)
        {
          paramMessage.printStackTrace();
          return;
        }
        paramMessage = (String)paramMessage.obj;
        Log.e("MIO-showTipToast", " msg:" + paramMessage);
        paramMessage = Toast.makeText(this.a.getContext(), paramMessage, 0);
        i = Resources.getSystem().getIdentifier("message", "id", "android");
        ((TextView)paramMessage.getView().findViewById(i)).setGravity(17);
        paramMessage.show();
        return;
        ViewLoginLayout.e(this.a);
        i = paramMessage.arg1;
        if (i == 40001)
        {
          this.a.d("载入中...");
          ReporterUtils.getInstance().xmsdkReport(2060);
          new WebLogin((Activity)this.a.getContext(), AccountType.AccountType_MI).a(new ViewLoginLayout.WebLoginListenerImpl(this.a, this.a, AccountType.AccountType_MI, 4));
          return;
        }
        if (i == 40002)
        {
          this.a.d("载入中...");
          ReporterUtils.getInstance().xmsdkReport(2063);
          new WebLogin((Activity)this.a.getContext(), AccountType.AccountType_QQ).a(new ViewLoginLayout.WebLoginListenerImpl(this.a, this.a, AccountType.AccountType_QQ, 201));
          return;
        }
        if ((!"common".equals("base")) || (i != 40003)) {
          break label815;
        }
        if (MiCommplatform.sWxCpCallBack != null) {
          break;
        }
      } while (ViewLoginLayout.a(this.a) == null);
      ViewLoginLayout.a(this.a).sendMessage(ViewLoginLayout.a(this.a).obtainMessage(40000, "微信登录未注册"));
      return;
      this.a.d("正在登录...");
      ReporterUtils.getInstance().xmsdkReport(2061);
      MiCommplatform.sWxCpCallBack.WxLogin(new d(this), (Activity)this.a.getContext());
      return;
      label815:
      if (i == 11)
      {
        ReporterUtils.getInstance().xmsdkReport(11);
        ViewLoginLayout.e(this.a);
        ViewLoginLayout.e(this.a, ActionTransfor.ActionResult.ACTION_OK);
        MiLayout.a(ViewLoginLayout.k(this.a));
        return;
      }
      if (i == 50003)
      {
        ReporterUtils.getInstance().xmsdkReport(2306);
        ViewLoginLayout.e(this.a);
        ViewLoginLayout.f(this.a, ActionTransfor.ActionResult.ACTION_OK);
        MiLayout.a(ViewLoginLayout.l(this.a));
        return;
      }
      if (i == 50004)
      {
        ReporterUtils.getInstance().xmsdkReport(2306);
        ViewLoginLayout.e(this.a);
        ViewLoginLayout.g(this.a, ActionTransfor.ActionResult.ACTION_OK);
        MiLayout.a(ViewLoginLayout.m(this.a));
        return;
      }
      ViewLoginLayout.e(this.a);
      ViewLoginLayout.h(this.a, ActionTransfor.ActionResult.ACTION_OK);
      MiLayout.a(ViewLoginLayout.n(this.a));
      return;
    }
    ViewLoginLayout.e(this.a);
    int i = paramMessage.arg1;
    if (!j.a(this.a.getContext()))
    {
      if (ViewLoginLayout.a(this.a) != null) {
        ViewLoginLayout.a(this.a).sendMessage(ViewLoginLayout.a(this.a).obtainMessage(40000, "没有网络,登录失败"));
      }
      ViewLoginLayout.i(this.a, ActionTransfor.ActionResult.ACTION_OK);
      MiLayout.a(ViewLoginLayout.o(this.a));
      return;
    }
    if (i == 30001)
    {
      this.a.d("载入中...");
      PackgeInfoHelper.a();
      paramMessage = PackgeInfoHelper.a(ViewLoginLayout.p(this.a).getAppId());
      if (paramMessage == AccountType.AccountType_MI) {
        ReporterUtils.getInstance().xmsdkReport(2060);
      }
      for (;;)
      {
        new AutoLoginForSDK(this.a.getContext(), this.a, ViewLoginLayout.d(this.a));
        return;
        if (paramMessage == AccountType.AccountType_QQ) {
          ReporterUtils.getInstance().xmsdkReport(2063);
        } else if (paramMessage == AccountType.AccountType_WX) {
          ReporterUtils.getInstance().xmsdkReport(2061);
        }
      }
    }
    if (i == 30002)
    {
      ViewLoginLayout.c(this.a);
      return;
    }
    ViewLoginLayout.j(this.a, ActionTransfor.ActionResult.ACTION_OK);
    MiLayout.a(ViewLoginLayout.q(this.a));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */