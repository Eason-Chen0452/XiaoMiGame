package com.xiaomi.gamecenter.sdk.ui.fault;

import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.notice.RequestListener;

final class a
  extends RequestListener
{
  a(ViewFaultNoticeActivity paramViewFaultNoticeActivity) {}
  
  public final void a()
  {
    Logger.a("MiGameSDK.ViewFaultNoticeActivity", "request notice success");
  }
  
  public final void a(String paramString)
  {
    Logger.a("MiGameSDK.ViewFaultNoticeActivity", "request notice error: " + paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\fault\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */