package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import com.xiaomi.hy.dj.model.TokenManager;
import org.json.JSONException;
import org.json.JSONObject;

public class TokenUtils
{
  private static com.xiaomi.hy.dj.model.ServiceToken a;
  
  public static void a(Context paramContext)
  {
    TokenManager.getInstance().deleteToken(paramContext);
  }
  
  public static boolean a(Context paramContext, com.xiaomi.gamecenter.sdk.protocol.ServiceToken paramServiceToken, String paramString)
  {
    if (paramServiceToken == null) {
      return false;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("uid", paramServiceToken.b());
      localJSONObject.put("session", paramServiceToken.a());
      localJSONObject.put("openId", paramString);
      com.xiaomi.hy.dj.model.ServiceToken localServiceToken = new com.xiaomi.hy.dj.model.ServiceToken();
      a = localServiceToken;
      localServiceToken.setUid(paramServiceToken.b());
      a.setSession(paramServiceToken.a());
      a.setOpenId(paramString);
      boolean bool = TokenManager.getInstance().save2File(paramContext, localJSONObject.toString());
      return bool;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  public static com.xiaomi.hy.dj.model.ServiceToken b(Context paramContext)
  {
    if (a != null) {
      return a;
    }
    return TokenManager.getInstance().getToken(paramContext);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\TokenUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */