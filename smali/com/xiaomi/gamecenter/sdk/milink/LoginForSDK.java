package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import cn.com.wali.basetool.log.Logger;
import com.google.protobuf.GeneratedMessage;
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
import org.xiaomi.gamecenter.milink.msg.AccountProto.LoginRsp;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetServiceTokenRsp;

public class LoginForSDK
  implements Runnable
{
  private LoginEvent.OAuthResultEvent a;
  private AccountType b;
  private MiAppEntry c;
  private Context d;
  private c e;
  
  public LoginForSDK(Context paramContext, c paramc, LoginEvent.OAuthResultEvent paramOAuthResultEvent, MiAppEntry paramMiAppEntry)
  {
    this.a = paramOAuthResultEvent;
    this.b = paramOAuthResultEvent.e();
    this.c = paramMiAppEntry;
    this.d = paramContext;
    this.e = paramc;
    HyUtils.a().submit(this);
  }
  
  public void run()
  {
    if (Logger.a) {
      Logger.d("login accountType=======>" + this.b);
    }
    int i = this.a.a();
    Object localObject1 = this.a.c();
    Object localObject2 = this.a.d();
    String str = this.a.b();
    localObject2 = AccountUtils.a(this.d, i, (String)localObject1, (String)localObject2, str, this.c);
    if (localObject2 == null)
    {
      this.e.a("登录返回为空。");
      return;
    }
    if (((AccountProto.LoginRsp)localObject2).getRetCode() != 0)
    {
      this.e.a("登录返回异常。", ((AccountProto.LoginRsp)localObject2).getRetCode());
      return;
    }
    if (Logger.a) {
      Logger.d("oauth uid=====>" + ((AccountProto.LoginRsp)localObject2).getUuid());
    }
    MilinkAccount.a((GeneratedMessage)localObject2, this.b);
    long l = ((AccountProto.LoginRsp)localObject2).getUuid();
    GeneralStatInfo.a(l);
    ReporterUtils.setFuid(String.valueOf(l));
    str = ((AccountProto.LoginRsp)localObject2).getServiceToken();
    localObject1 = MessageFactory.a(this.d, l, str, this.c);
    if (localObject1 == null)
    {
      this.e.a("登录信息为空，可能需要重新登录，甚至清除缓存。");
      return;
    }
    if (((GameLastLoginInfo)localObject1).a() != 200)
    {
      this.e.a("登录信息异常，可能需要重新登录，甚至清除缓存。", ((GameLastLoginInfo)localObject1).a());
      return;
    }
    k.b().a(((GameLastLoginInfo)localObject1).d());
    Object localObject3 = MessageFactory.b(this.d, l, str, this.c);
    i = ((LoginProto.GetServiceTokenRsp)localObject3).getRetCode();
    if (i != 200)
    {
      this.e.a("登录信息异常，可能需要重新登录，甚至清除缓存。", i);
      return;
    }
    Logger.a("MiGameSDK.LoginForSDK", "milink service token " + str);
    localObject3 = ((LoginProto.GetServiceTokenRsp)localObject3).getServiceToken();
    Logger.a("MiGameSDK.LoginForSDK", "GetServiceToken " + (String)localObject3);
    ServiceToken.a(this.b);
    k.b().a((String)localObject3);
    localObject3 = ServiceToken.a((String)localObject3, this.b);
    PackgeInfoHelper.a().a(this.c.getNewAppId(), this.b);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("uid", l);
      localJSONObject.put("openId", ((GameLastLoginInfo)localObject1).b());
      localJSONObject.put("openSession", ((GameLastLoginInfo)localObject1).c());
      localJSONObject.put("accountType", this.b.ordinal());
      localJSONObject.put("isAuto", false);
      localJSONObject.put("serviceToken", str);
      localJSONObject.put("nickname", ((AccountProto.LoginRsp)localObject2).getNickname());
      localJSONObject.put("sex", ((AccountProto.LoginRsp)localObject2).getSex());
      localJSONObject.put("img", ((AccountProto.LoginRsp)localObject2).getHeadimgurl());
      TokenUtils.a(this.d);
      TokenUtils.a(this.d, (ServiceToken)localObject3, String.valueOf(((GameLastLoginInfo)localObject1).b()));
      this.e.c(localJSONObject.toString());
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        this.e.a("JSONException");
        localJSONException.printStackTrace();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\LoginForSDK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */