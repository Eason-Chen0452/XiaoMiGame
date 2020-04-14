package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.Iterator;
import java.util.List;

class SessionManager$3
  implements Runnable
{
  SessionManager$3(SessionManager paramSessionManager) {}
  
  public void run()
  {
    if (!SessionManager.access$600(this.this$0)) {
      return;
    }
    if ((SessionManager.access$700(this.this$0) != null) && (SessionManager.access$700(this.this$0).shouldCheckRequestsTimeout())) {}
    for (int j = 0;; j = 1)
    {
      int i = j;
      if (j != 0)
      {
        i = j;
        if (SessionManager.access$200(this.this$0))
        {
          i = j;
          if (SessionManager.access$800(this.this$0) != null)
          {
            i = j;
            if (SessionManager.access$800(this.this$0).shouldCheckRequestsTimeout()) {
              i = 0;
            }
          }
        }
      }
      if (i != 0)
      {
        Iterator localIterator = SessionManager.access$900(this.this$0).iterator();
        while (localIterator.hasNext())
        {
          Session localSession = (Session)localIterator.next();
          j = localSession.mFlagForSessionManager;
          if (((j == 1) || (j == 4)) && (localSession.shouldCheckRequestsTimeout())) {
            i = 0;
          }
        }
      }
      while (i != 0)
      {
        MiLinkLog.v("SessionManager", "all session request map is empty, stopTimer");
        SessionManager.access$1000(this.this$0);
        return;
      }
      break;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionManager$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */