package com.xiaomi.gamecenter.sdk.gam;

import android.os.Handler;
import android.os.Looper;

public abstract class MiResponseListener
{
  protected abstract void onResponseStatus(int paramInt, String paramString);
  
  public void sendResultCode(int paramInt, String paramString)
  {
    new Handler(Looper.getMainLooper()).post(new c(this, paramInt, paramString));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\gam\MiResponseListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */