package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.concurrent.ConcurrentLinkedQueue;

class SessionManager$6
  implements Runnable
{
  SessionManager$6(SessionManager paramSessionManager) {}
  
  public void run()
  {
    MiLinkLog.v("SessionManager", "milink mLogoffRunnable run");
    if ((!MiAccountManager.getInstance().isAllowAnonymousMode()) || (MiAccountManager.getInstance().isAnonymousModeCurrent())) {
      SessionManager.access$1100(this.this$0);
    }
    MiAccountManager.getInstance().logoff();
    SessionManager.access$1800(this.this$0);
    SessionManager.access$2100(this.this$0).clear();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionManager$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */