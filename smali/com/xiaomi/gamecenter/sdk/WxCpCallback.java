package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.content.Context;

public abstract interface WxCpCallback
{
  public abstract void WxLogin(WxCallBack paramWxCallBack, Activity paramActivity);
  
  public abstract boolean isWXAppInstalled(Context paramContext);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\WxCpCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */