package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.debug.MiLinkLog;

class SessionManager$2
  implements Runnable
{
  SessionManager$2(SessionManager paramSessionManager) {}
  
  public void run()
  {
    MiLinkLog.v("SessionManager", "internalAutoOpen mOpenSessionTryTimes=" + SessionManager.access$300(this.this$0) + ",mState=" + SessionManager.access$400(this.this$0));
    if ((SessionManager.access$300(this.this$0) < 5) && (SessionManager.access$400(this.this$0) == 0))
    {
      SessionManager.access$308(this.this$0);
      SessionManager.access$500(this.this$0);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionManager$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */