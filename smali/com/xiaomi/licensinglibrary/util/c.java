package com.xiaomi.licensinglibrary.util;

import com.xiaomi.gamecenter.sdk.OnPayProcessListener;

final class c
  implements OnPayProcessListener
{
  c(b paramb) {}
  
  public final void finishPayProcess(int paramInt)
  {
    if (paramInt == 0) {
      a.a(this.a.c, 0);
    }
    synchronized (a.a(this.a.c))
    {
      a.a(this.a.c).notifyAll();
      return;
      a.a(this.a.c, paramInt);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\util\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */