package com.xiaomi.licensinglibrary.util;

import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;

final class d
  implements OnLoginProcessListener
{
  d(a parama) {}
  
  public final void finishLoginProcess(int paramInt, MiAccountInfo arg2)
  {
    if ((paramInt == 0) && (??? != null)) {
      a.a(this.a, ???.getUid());
    }
    synchronized (a.a(this.a))
    {
      a.a(this.a).notifyAll();
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\util\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */