package com.alipay.apmobilesecuritysdk.g;

import java.util.LinkedList;

public final class b
{
  private static b a = new b();
  private Thread b = null;
  private LinkedList<Runnable> c = new LinkedList();
  
  public static b a()
  {
    return a;
  }
  
  public final void a(Runnable paramRunnable)
  {
    try
    {
      this.c.add(paramRunnable);
      if (this.b == null)
      {
        this.b = new Thread(new c(this));
        this.b.start();
      }
      return;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\apmobilesecuritysdk\g\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */