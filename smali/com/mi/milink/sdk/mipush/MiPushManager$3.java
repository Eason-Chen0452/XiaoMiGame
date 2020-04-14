package com.mi.milink.sdk.mipush;

import android.os.PowerManager.WakeLock;
import com.mi.milink.sdk.debug.MiLinkLog;

class MiPushManager$3
  implements Runnable
{
  MiPushManager$3(MiPushManager paramMiPushManager) {}
  
  public void run()
  {
    try
    {
      if (MiPushManager.access$100(this.this$0) != null)
      {
        MiLinkLog.w("MiPushManager", "Wakelock RELEASED By MiPushManger");
        MiPushManager.access$100(this.this$0).release();
        MiPushManager.access$102(this.this$0, null);
      }
      return;
    }
    catch (Exception localException)
    {
      MiPushManager.access$102(this.this$0, null);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\mipush\MiPushManager$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */