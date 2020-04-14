package com.xiaomi.gamecenter.sdk;

public abstract interface WxCallBack
{
  public abstract void onWxLoginCancel();
  
  public abstract void onWxLoginFail();
  
  public abstract void onWxLoginSuccess(String paramString);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\WxCallBack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */