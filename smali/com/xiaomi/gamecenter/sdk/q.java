package com.xiaomi.gamecenter.sdk;

import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.notice.RequestListener;

final class q
  extends RequestListener
{
  q(p paramp) {}
  
  public final void a()
  {
    Logger.a("MiGameSDK.MiCommplatform", "request notice success");
  }
  
  public final void a(String paramString)
  {
    Logger.a("MiGameSDK.MiCommplatform", "request notice error: " + paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */