package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.Iterator;
import java.util.List;

class SessionManagerForSimpleChannel$2
  implements Runnable
{
  SessionManagerForSimpleChannel$2(SessionManagerForSimpleChannel paramSessionManagerForSimpleChannel) {}
  
  public void run()
  {
    if (!SessionManagerForSimpleChannel.access$500(this.this$0)) {
      return;
    }
    if ((SessionManagerForSimpleChannel.access$600(this.this$0) != null) && (SessionManagerForSimpleChannel.access$600(this.this$0).shouldCheckRequestsTimeout())) {}
    for (int i = 0;; i = 1)
    {
      if (i != 0)
      {
        Iterator localIterator = SessionManagerForSimpleChannel.access$700(this.this$0).iterator();
        while (localIterator.hasNext())
        {
          SessionForSimpleChannel localSessionForSimpleChannel = (SessionForSimpleChannel)localIterator.next();
          int j = localSessionForSimpleChannel.mFlagForSessionManager;
          if (((j == 1) || (j == 4)) && (localSessionForSimpleChannel.shouldCheckRequestsTimeout())) {
            i = 0;
          }
        }
      }
      while (i != 0)
      {
        MiLinkLog.v(SessionManagerForSimpleChannel.access$100(this.this$0), "all session request map is empty, stopTimer");
        SessionManagerForSimpleChannel.access$800(this.this$0);
        return;
      }
      break;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionManagerForSimpleChannel$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */