package com.xiaomi.hy.dj.model;

import android.content.Context;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.hy.dj.f.b;
import com.xiaomi.hy.dj.f.i;
import com.xiaomi.hy.dj.f.l;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

public class TokenManager
{
  private static final String FILENAME = ".huyugamepaytoken_security_v2";
  private static volatile TokenManager instance;
  private ServiceToken serviceToken;
  
  private String getAESKey(Context paramContext)
  {
    String str2 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    }
    return l.c(str1.getBytes());
  }
  
  public static TokenManager getInstance()
  {
    if (instance == null) {}
    try
    {
      if (instance == null) {
        instance = new TokenManager();
      }
      return instance;
    }
    finally {}
  }
  
  public boolean deleteToken(Context paramContext)
  {
    instance = null;
    this.serviceToken = null;
    return paramContext.deleteFile(".huyugamepaytoken_security_v2");
  }
  
  public ServiceToken getToken(Context paramContext)
  {
    if ((this.serviceToken == null) && (isExist(paramContext)))
    {
      paramContext = readToken(paramContext);
      if (!TextUtils.isEmpty(paramContext)) {
        try
        {
          paramContext = new JSONObject(paramContext);
          this.serviceToken = new ServiceToken();
          this.serviceToken.setSession(paramContext.optString("session"));
          this.serviceToken.setOpenId(paramContext.optString("openId"));
          paramContext = paramContext.optString("uid");
          if (!TextUtils.isEmpty(paramContext)) {
            this.serviceToken.setUid(paramContext);
          }
          paramContext = this.serviceToken;
          return paramContext;
        }
        catch (JSONException paramContext)
        {
          paramContext.printStackTrace();
        }
      }
    }
    return this.serviceToken;
  }
  
  public boolean isExist(Context paramContext)
  {
    boolean bool = false;
    if (new File(paramContext.getFilesDir(), ".huyugamepaytoken_security_v2").exists()) {
      bool = true;
    }
    return bool;
  }
  
  public String readToken(Context paramContext)
  {
    String str = i.c(paramContext, ".huyugamepaytoken_security_v2");
    try
    {
      str = b.b(getAESKey(paramContext), str);
      return str;
    }
    catch (Exception localException)
    {
      i.b(paramContext, ".huyugamepaytoken_security_v2");
      localException.printStackTrace();
    }
    return null;
  }
  
  public boolean save2File(Context paramContext, String paramString)
  {
    return i.a(paramContext, ".huyugamepaytoken_security_v2", b.a(getAESKey(paramContext), paramString));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\model\TokenManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */