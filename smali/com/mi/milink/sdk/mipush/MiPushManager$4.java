package com.mi.milink.sdk.mipush;

import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.debug.MiLinkLog;

class MiPushManager$4
  implements Runnable
{
  MiPushManager$4(MiPushManager paramMiPushManager) {}
  
  public void run()
  {
    try
    {
      Object localObject = Global.getApplicationContext();
      if ((localObject != null) && (MiPushManager.access$100(this.this$0) == null))
      {
        MiLinkLog.w("MiPushManager", "Wakelock ACQUIRED By MiPushManger");
        localObject = (PowerManager)((Context)localObject).getApplicationContext().getSystemService("power");
        MiPushManager.access$102(this.this$0, ((PowerManager)localObject).newWakeLock(1, "formipush"));
        MiPushManager.access$100(this.this$0).acquire();
      }
      return;
    }
    catch (Exception localException)
    {
      MiLinkLog.e("MiPushManager", "acquireWakeLock exception", localException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\mipush\MiPushManager$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */