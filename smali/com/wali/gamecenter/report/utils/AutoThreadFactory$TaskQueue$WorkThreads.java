package com.wali.gamecenter.report.utils;

import java.util.Vector;

public class AutoThreadFactory$TaskQueue$WorkThreads
  extends Thread
{
  private Object _lock_ = new Object();
  private volatile boolean running = true;
  private Runnable working;
  private Vector<Runnable> works = new Vector(5);
  
  public AutoThreadFactory$TaskQueue$WorkThreads(AutoThreadFactory.TaskQueue paramTaskQueue) {}
  
  public void append(Runnable paramRunnable)
  {
    synchronized (this._lock_)
    {
      this.works.add(paramRunnable);
      this._lock_.notifyAll();
      return;
    }
  }
  
  public void append(Runnable[] paramArrayOfRunnable)
  {
    synchronized (this._lock_)
    {
      int j = paramArrayOfRunnable.length;
      int i = 0;
      while (i < j)
      {
        Runnable localRunnable = paramArrayOfRunnable[i];
        this.works.add(localRunnable);
        i += 1;
      }
      this._lock_.notifyAll();
      return;
    }
  }
  
  public void cancel()
  {
    synchronized (this._lock_)
    {
      this.running = false;
      this._lock_.notifyAll();
      return;
    }
  }
  
  public void cancel(Runnable paramRunnable)
  {
    synchronized (this._lock_)
    {
      if (this.working == paramRunnable) {
        return;
      }
      this.works.remove(paramRunnable);
      return;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 36	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:running	Z
    //   4: ifeq +138 -> 142
    //   7: aload_0
    //   8: getfield 29	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:works	Ljava/util/Vector;
    //   11: invokevirtual 64	java/util/Vector:size	()I
    //   14: ifle +31 -> 45
    //   17: aload_0
    //   18: getfield 29	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:works	Ljava/util/Vector;
    //   21: invokevirtual 68	java/util/Vector:firstElement	()Ljava/lang/Object;
    //   24: checkcast 70	java/lang/Runnable
    //   27: astore 4
    //   29: aload 4
    //   31: invokeinterface 72 1 0
    //   36: aload_0
    //   37: getfield 29	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:works	Ljava/util/Vector;
    //   40: iconst_0
    //   41: invokevirtual 75	java/util/Vector:remove	(I)Ljava/lang/Object;
    //   44: pop
    //   45: aload_0
    //   46: getfield 29	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:works	Ljava/util/Vector;
    //   49: invokevirtual 64	java/util/Vector:size	()I
    //   52: ifne -52 -> 0
    //   55: aload_0
    //   56: getfield 34	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:_lock_	Ljava/lang/Object;
    //   59: astore 4
    //   61: aload 4
    //   63: monitorenter
    //   64: invokestatic 81	java/lang/System:currentTimeMillis	()J
    //   67: lstore_2
    //   68: aload_0
    //   69: getfield 34	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:_lock_	Ljava/lang/Object;
    //   72: aload_0
    //   73: getfield 19	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:this$0	Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;
    //   76: invokestatic 87	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue:access$200	(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;)J
    //   79: invokevirtual 91	java/lang/Object:wait	(J)V
    //   82: aload_0
    //   83: getfield 29	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:works	Ljava/util/Vector;
    //   86: invokevirtual 64	java/util/Vector:size	()I
    //   89: istore_1
    //   90: iload_1
    //   91: ifle +27 -> 118
    //   94: aload 4
    //   96: monitorexit
    //   97: goto -97 -> 0
    //   100: astore 5
    //   102: aload 4
    //   104: monitorexit
    //   105: aload 5
    //   107: athrow
    //   108: astore 4
    //   110: aload 4
    //   112: invokevirtual 94	java/lang/Throwable:printStackTrace	()V
    //   115: goto -79 -> 36
    //   118: invokestatic 81	java/lang/System:currentTimeMillis	()J
    //   121: lload_2
    //   122: lsub
    //   123: aload_0
    //   124: getfield 19	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:this$0	Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;
    //   127: invokestatic 87	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue:access$200	(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;)J
    //   130: lcmp
    //   131: iflt +30 -> 161
    //   134: aload_0
    //   135: iconst_0
    //   136: putfield 36	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:running	Z
    //   139: aload 4
    //   141: monitorexit
    //   142: aload_0
    //   143: getfield 29	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:works	Ljava/util/Vector;
    //   146: invokevirtual 97	java/util/Vector:clear	()V
    //   149: aload_0
    //   150: getfield 19	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads:this$0	Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;
    //   153: aconst_null
    //   154: invokestatic 101	com/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue:access$302	(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;)Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;
    //   157: pop
    //   158: return
    //   159: astore 5
    //   161: aload 4
    //   163: monitorexit
    //   164: goto -164 -> 0
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	167	0	this	WorkThreads
    //   89	2	1	i	int
    //   67	55	2	l	long
    //   108	54	4	localThrowable1	Throwable
    //   100	6	5	localObject2	Object
    //   159	1	5	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   64	90	100	finally
    //   94	97	100	finally
    //   102	105	100	finally
    //   118	139	100	finally
    //   139	142	100	finally
    //   161	164	100	finally
    //   29	36	108	java/lang/Throwable
    //   64	90	159	java/lang/Throwable
    //   118	139	159	java/lang/Throwable
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\utils\AutoThreadFactory$TaskQueue$WorkThreads.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */