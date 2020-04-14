package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.text.TextUtils;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.GeneralStatInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.protocol.GameLastLoginInfo;
import com.xiaomi.gamecenter.sdk.protocol.MessageFactory;
import com.xiaomi.gamecenter.sdk.protocol.ServiceToken;
import com.xiaomi.gamecenter.sdk.ui.c;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.k;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.TokenUtils;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetServiceTokenRsp;

public class AutoLoginForSDK
  implements Runnable
{
  private static String a = "MiGameSDK.AutoLoginForSDK";
  private MiAppEntry b;
  private String c;
  private AccountType d;
  private Context e;
  private c f;
  
  public AutoLoginForSDK(Context paramContext, c paramc, MiAppEntry paramMiAppEntry)
  {
    this.b = paramMiAppEntry;
    this.e = paramContext;
    this.f = paramc;
    HyUtils.a().submit(this);
  }
  
  public void run()
  {
    if (this.b == null)
    {
      this.f.b("appInfo为空");
      return;
    }
    this.c = this.b.getNewAppId();
    if (TextUtils.isEmpty(this.c))
    {
      this.f.b("appId为空");
      return;
    }
    PackgeInfoHelper.a();
    this.d = PackgeInfoHelper.a(this.c);
    if (this.d == null)
    {
      this.f.b("AccountType为空");
      return;
    }
    if (AccountType.AccountType_NOACCOUNT == this.d)
    {
      this.f.b("AccountType is NOACCOUNT");
      return;
    }
    Object localObject1 = MilinkAccount.a(this.d);
    if (localObject1 == null)
    {
      this.f.b("MilinkAccount为空");
      return;
    }
    long l = ((MilinkAccount)localObject1).a();
    GeneralStatInfo.a(l);
    ReporterUtils.setFuid(String.valueOf(l));
    Object localObject2 = ((MilinkAccount)localObject1).b();
    localObject1 = MessageFactory.a(this.e, l, (String)localObject2, this.b);
    Logger.a(a, "GameLastLoginInfo " + localObject1);
    if (localObject1 == null)
    {
      this.f.b("登录信息为空");
      return;
    }
    if (((GameLastLoginInfo)localObject1).a() != 200)
    {
      this.f.b("登录信息异常", ((GameLastLoginInfo)localObject1).a());
      return;
    }
    Object localObject3 = MessageFactory.b(this.e, l, (String)localObject2, this.b);
    int i = ((LoginProto.GetServiceTokenRsp)localObject3).getRetCode();
    if (i != 200)
    {
      this.f.a("登录信息异常，可能需要重新登录，甚至清除缓存。", i);
      return;
    }
    Logger.a(a, "milink service token " + (String)localObject2);
    localObject2 = ((LoginProto.GetServiceTokenRsp)localObject3).getServiceToken();
    Logger.a(a, "GetServiceToken " + (String)localObject2);
    ServiceToken.a(this.d);
    k.b().a((String)localObject2);
    localObject2 = ServiceToken.a((String)localObject2, this.d);
    localObject3 = new JSONObject();
    try
    {
      ((JSONObject)localObject3).put("uid", l);
      ((JSONObject)localObject3).put("openId", ((GameLastLoginInfo)localObject1).b());
      ((JSONObject)localObject3).put("openSession", ((GameLastLoginInfo)localObject1).c());
      ((JSONObject)localObject3).put("accountType", this.d.ordinal());
      ((JSONObject)localObject3).put("isAuto", true);
      TokenUtils.a(this.e);
      TokenUtils.a(this.e, (ServiceToken)localObject2, String.valueOf(((GameLastLoginInfo)localObject1).b()));
      this.f.c(((JSONObject)localObject3).toString());
      return;
    }
    catch (JSONException localJSONException)
    {
      this.f.b("JSONException");
      localJSONException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\AutoLoginForSDK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */