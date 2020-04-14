package com.xiaomi.gamecenter.sdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;

final class am
  extends Handler
{
  am(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    }
    do
    {
      do
      {
        return;
      } while (MiCommplatform.sOnInitProcessListener == null);
      if ("common".equals("base"))
      {
        MiCommplatform.sOnInitProcessListener.finishInitProcess(HyUtils.r, HyUtils.p);
        return;
      }
      MiCommplatform.sOnInitProcessListener.finishInitProcess(null, -1);
      return;
    } while (MiCommplatform.sOnInitProcessListener == null);
    MiCommplatform.sOnInitProcessListener.onMiSplashEnd();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */