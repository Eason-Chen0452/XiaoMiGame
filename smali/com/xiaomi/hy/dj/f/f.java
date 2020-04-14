package com.xiaomi.hy.dj.f;

import android.os.Handler;

public abstract class f
{
  private static final int e = 1;
  private final long a;
  private final long b;
  private long c;
  private boolean d = false;
  private Handler f = new g(this);
  
  public f(long paramLong1, long paramLong2)
  {
    this.a = paramLong1;
    this.b = paramLong2;
  }
  
  public final void a()
  {
    try
    {
      this.d = true;
      this.f.removeMessages(1);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public abstract void a(long paramLong);
  
  /* Error */
  public final f b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield 22	com/xiaomi/hy/dj/f/f:d	Z
    //   7: aload_0
    //   8: getfield 31	com/xiaomi/hy/dj/f/f:a	J
    //   11: lconst_0
    //   12: lcmp
    //   13: ifgt +11 -> 24
    //   16: aload_0
    //   17: invokevirtual 48	com/xiaomi/hy/dj/f/f:c	()V
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_0
    //   23: areturn
    //   24: aload_0
    //   25: invokestatic 54	android/os/SystemClock:elapsedRealtime	()J
    //   28: aload_0
    //   29: getfield 31	com/xiaomi/hy/dj/f/f:a	J
    //   32: ladd
    //   33: putfield 38	com/xiaomi/hy/dj/f/f:c	J
    //   36: aload_0
    //   37: getfield 29	com/xiaomi/hy/dj/f/f:f	Landroid/os/Handler;
    //   40: aload_0
    //   41: getfield 29	com/xiaomi/hy/dj/f/f:f	Landroid/os/Handler;
    //   44: iconst_1
    //   45: invokevirtual 58	android/os/Handler:obtainMessage	(I)Landroid/os/Message;
    //   48: invokevirtual 62	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   51: pop
    //   52: goto -32 -> 20
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	f
    //   55	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	55	finally
    //   24	52	55	finally
  }
  
  public abstract void c();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */