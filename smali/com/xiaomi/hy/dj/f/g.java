package com.xiaomi.hy.dj.f;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

class g
  extends Handler
{
  g(f paramf) {}
  
  public void handleMessage(Message arg1)
  {
    for (;;)
    {
      long l1;
      synchronized (this.a)
      {
        if (f.a(this.a)) {
          return;
        }
        l1 = f.b(this.a) - SystemClock.elapsedRealtime();
        if (l1 <= 0L)
        {
          this.a.c();
          return;
        }
      }
      if (l1 < f.c(this.a))
      {
        sendMessageDelayed(obtainMessage(1), l1);
      }
      else
      {
        long l2 = SystemClock.elapsedRealtime();
        this.a.a(l1);
        for (l1 = f.c(this.a) + l2 - SystemClock.elapsedRealtime(); l1 < 0L; l1 += f.c(this.a)) {}
        sendMessageDelayed(obtainMessage(1), l1);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */