package com.xiaomi.hy.dj.c;

import com.mi.milink.sdk.client.MiLinkObserver;

class d
  extends MiLinkObserver
{
  d(b paramb) {}
  
  public void onInternalError(int paramInt, String paramString) {}
  
  public void onLoginStateUpdate(int paramInt)
  {
    if (2 == paramInt)
    {
      b.a(this.a, true);
      synchronized (b.b(this.a))
      {
        try
        {
          b.b(this.a).notifyAll();
          return;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
      }
    }
    b.a(this.a, false);
  }
  
  public void onServerStateUpdate(int paramInt1, int paramInt2) {}
  
  public void onServiceConnected(long paramLong)
  {
    System.currentTimeMillis();
    b.a(this.a);
  }
  
  public void onSuicideTime(int paramInt) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */