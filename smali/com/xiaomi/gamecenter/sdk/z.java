package com.xiaomi.gamecenter.sdk;

import android.util.Log;
import com.xiaomi.gamecenter.sdk.utils.b;

final class z
  implements Runnable
{
  z(y paramy) {}
  
  public final void run()
  {
    try
    {
      i = MiCommplatform.access$400().ConnServiceNew(MiCommplatform.appInfo, this.a.a.getVersion());
      if (i != 0) {
        break label211;
      }
      MiCommplatform.access$502(this.a.a, 0);
      if ((MiCommplatform.access$400() == null) || (MiCommplatform.access$600(this.a.a) == null)) {
        break label159;
      }
      MiCommplatform.access$400().registCallback(MiCommplatform.access$600(this.a.a), this.a.a.getVersion());
      b.a(MiCommplatform.access$700(), MiCommplatform.access$400().getDeviceID());
    }
    catch (Exception localException)
    {
      synchronized (MiCommplatform.access$800(this.a.a))
      {
        for (;;)
        {
          int i;
          MiCommplatform.access$800(this.a.a).notify();
          return;
          label159:
          this.a.a.sendToastMsg();
          MiCommplatform.access$502(this.a.a, 2);
          continue;
          localException = localException;
          this.a.a.sendToastServiceSignError();
          MiCommplatform.access$502(this.a.a, -2);
          continue;
          label211:
          if (i != 2) {
            break;
          }
          this.a.a.sendToastMsg();
          MiCommplatform.access$502(this.a.a, -2);
        }
        this.a.a.sendToastServiceSignError();
        MiCommplatform.access$502(this.a.a, -2);
      }
    }
    Log.i(">>>>", "Service Connected " + MiCommplatform.access$500(this.a.a));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */