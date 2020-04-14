package com.wali.gamecenter.report.io;

class HttpConnectionManager$IdleConnectionMonitorThread
  extends Thread
{
  private static IdleConnectionMonitorThread thread = null;
  private final int checkIntervalSeconds;
  private final int idleTimeoutSeconds;
  private final HttpConnectionManager.ClientConnectionManager manager;
  
  public HttpConnectionManager$IdleConnectionMonitorThread(HttpConnectionManager.ClientConnectionManager paramClientConnectionManager, int paramInt1, int paramInt2)
  {
    this.manager = paramClientConnectionManager;
    this.idleTimeoutSeconds = paramInt1;
    this.checkIntervalSeconds = paramInt2;
  }
  
  public static void ensureRunning(HttpConnectionManager.ClientConnectionManager paramClientConnectionManager, int paramInt1, int paramInt2)
  {
    try
    {
      if (thread == null)
      {
        paramClientConnectionManager = new IdleConnectionMonitorThread(paramClientConnectionManager, paramInt1, paramInt2);
        thread = paramClientConnectionManager;
        paramClientConnectionManager.start();
      }
      return;
    }
    finally
    {
      paramClientConnectionManager = finally;
      throw paramClientConnectionManager;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 26	com/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread:checkIntervalSeconds	I
    //   7: sipush 1000
    //   10: imul
    //   11: i2l
    //   12: invokevirtual 41	java/lang/Object:wait	(J)V
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_0
    //   18: getfield 22	com/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread:manager	Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;
    //   21: invokevirtual 46	com/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager:closeExpiredConnections	()V
    //   24: aload_0
    //   25: getfield 22	com/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread:manager	Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;
    //   28: aload_0
    //   29: getfield 24	com/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread:idleTimeoutSeconds	I
    //   32: i2l
    //   33: getstatic 52	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   36: invokevirtual 56	com/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager:closeIdleConnections	(JLjava/util/concurrent/TimeUnit;)V
    //   39: ldc 2
    //   41: monitorenter
    //   42: aload_0
    //   43: getfield 22	com/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread:manager	Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;
    //   46: invokevirtual 60	com/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager:getConnectionsInPool	()I
    //   49: ifne +22 -> 71
    //   52: aconst_null
    //   53: putstatic 15	com/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread:thread	Lcom/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread;
    //   56: ldc 2
    //   58: monitorexit
    //   59: return
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    //   65: astore_1
    //   66: aconst_null
    //   67: putstatic 15	com/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread:thread	Lcom/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread;
    //   70: return
    //   71: ldc 2
    //   73: monitorexit
    //   74: goto -74 -> 0
    //   77: astore_1
    //   78: ldc 2
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	IdleConnectionMonitorThread
    //   60	4	1	localObject1	Object
    //   65	1	1	localThrowable	Throwable
    //   77	5	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	17	60	finally
    //   61	63	60	finally
    //   0	2	65	java/lang/Throwable
    //   17	42	65	java/lang/Throwable
    //   63	65	65	java/lang/Throwable
    //   81	83	65	java/lang/Throwable
    //   42	59	77	finally
    //   71	74	77	finally
    //   78	81	77	finally
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\io\HttpConnectionManager$IdleConnectionMonitorThread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */