package com.xiaomi.gamecenter.sdk.protocol;

import android.content.Context;
import cn.com.wali.basetool.io.HttpUtils;
import cn.com.wali.basetool.io.QHttpRequest;
import cn.com.wali.basetool.io.QHttpRequest.RequestMethod;
import cn.com.wali.basetool.io.QHttpResponse;
import org.json.JSONObject;

public class MessageRequestQQLogin
{
  private Context a;
  private String b;
  
  public MessageRequestQQLogin(Context paramContext, String paramString)
  {
    this.a = paramContext;
    this.b = paramString;
  }
  
  public final String a()
  {
    Object localObject1 = QHttpRequest.a("https://graph.qq.com/oauth2.0/me?access_token=" + this.b, QHttpRequest.RequestMethod.GET, null, null, true);
    try
    {
      localObject1 = HttpUtils.a(this.a, (QHttpRequest)localObject1);
      if (localObject1 == null) {
        return null;
      }
    }
    catch (Exception localException1)
    {
      localException1.printStackTrace();
      return null;
    }
    Object localObject2 = localException1.a();
    try
    {
      localObject2 = new JSONObject(new String((byte[])localObject2, "UTF-8").split(" ")[1]);
      String str = ((JSONObject)localObject2).optString("openid");
      ((JSONObject)localObject2).optString("client_id");
      return str;
    }
    catch (Exception localException2)
    {
      localException2.printStackTrace();
    }
    return "";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\MessageRequestQQLogin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */