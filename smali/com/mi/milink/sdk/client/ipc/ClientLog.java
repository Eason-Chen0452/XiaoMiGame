package com.mi.milink.sdk.client.ipc;

import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import com.mi.milink.sdk.base.debug.FileTracer;
import com.mi.milink.sdk.base.debug.FileTracerReader;
import com.mi.milink.sdk.base.debug.LogcatTracer;
import com.mi.milink.sdk.data.Option;
import com.mi.milink.sdk.debug.MiLinkTracer;
import com.mi.milink.sdk.util.FileUtils;
import java.io.File;

public class ClientLog
  extends MiLinkTracer
{
  private static AsyncTask<Void, Void, Void> generateSystemLogThread = null;
  private static ClientLog sInstance = null;
  
  protected ClientLog()
  {
    this.fileTracer = new FileTracer(CLIENT_CONFIG);
    this.logcatTracer = new LogcatTracer();
    MiLinkTracer.setInstance(this);
    onSharedPreferenceChanged(null, "client.debug.file.tracelevel");
    onSharedPreferenceChanged(null, "client.debug.logcat.tracelevel");
  }
  
  public static final void d(String paramString1, String paramString2)
  {
    getInstance().trace(2, paramString1, paramString2, null);
  }
  
  public static final void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(2, paramString1, paramString2, paramThrowable);
  }
  
  public static final void e(String paramString1, String paramString2)
  {
    getInstance().trace(16, paramString1, paramString2, null);
  }
  
  public static final void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(16, paramString1, paramString2, paramThrowable);
  }
  
  public static void ensureLogsToFile()
  {
    getInstance().flush();
  }
  
  /* Error */
  public static void generateSystemLog()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 15	com/mi/milink/sdk/client/ipc/ClientLog:generateSystemLogThread	Landroid/os/AsyncTask;
    //   6: astore_0
    //   7: aload_0
    //   8: ifnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: new 72	com/mi/milink/sdk/client/ipc/ClientLog$1
    //   18: dup
    //   19: invokespecial 73	com/mi/milink/sdk/client/ipc/ClientLog$1:<init>	()V
    //   22: astore_0
    //   23: aload_0
    //   24: putstatic 15	com/mi/milink/sdk/client/ipc/ClientLog:generateSystemLogThread	Landroid/os/AsyncTask;
    //   27: aload_0
    //   28: iconst_0
    //   29: anewarray 75	java/lang/Void
    //   32: invokevirtual 81	android/os/AsyncTask:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   35: pop
    //   36: goto -25 -> 11
    //   39: astore_0
    //   40: ldc 2
    //   42: monitorexit
    //   43: aload_0
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	22	0	localObject1	Object
    //   39	5	0	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   3	7	39	finally
    //   15	36	39	finally
  }
  
  public static ClientLog getInstance()
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new ClientLog();
      }
      return sInstance;
    }
    finally {}
  }
  
  public static final void i(String paramString1, String paramString2)
  {
    getInstance().trace(4, paramString1, paramString2, null);
  }
  
  public static final void i(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(4, paramString1, paramString2, paramThrowable);
  }
  
  public static boolean packLogs(long paramLong, File paramFile1, File paramFile2)
  {
    return getInstance().pack(paramLong, paramFile1, paramFile2);
  }
  
  public static void setFileTraceLevel(int paramInt)
  {
    int i;
    if (paramInt <= 63)
    {
      i = paramInt;
      if (paramInt >= 0) {}
    }
    else
    {
      i = 63;
    }
    Option.putInt("client.debug.file.tracelevel", i).apply();
  }
  
  public static void setLogcatTraceLevel(int paramInt)
  {
    int i;
    if (paramInt <= 63)
    {
      i = paramInt;
      if (paramInt >= 0) {}
    }
    else
    {
      i = 63;
    }
    Option.putInt("client.debug.logcat.tracelevel", i).apply();
  }
  
  public static void setMaxFolderSize(long paramLong)
  {
    int j = (int)(paramLong / 524288L);
    int i = j;
    if (j <= 0) {
      i = 48;
    }
    Option.putInt("client.debug.file.blockcount", i).apply();
  }
  
  public static void setMaxKeepPeriod(long paramLong)
  {
    long l = paramLong;
    if (paramLong < 86400000L) {
      l = 172800000L;
    }
    Option.putLong("client.debug.file.keepperiod", l).apply();
  }
  
  public static final void v(String paramString1, String paramString2)
  {
    getInstance().trace(1, paramString1, paramString2, null);
  }
  
  public static final void v(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(1, paramString1, paramString2, paramThrowable);
  }
  
  public static final void w(String paramString1, String paramString2)
  {
    getInstance().trace(8, paramString1, paramString2, null);
  }
  
  public static final void w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(8, paramString1, paramString2, paramThrowable);
  }
  
  public boolean pack(long paramLong, File paramFile1, File paramFile2)
  {
    return FileUtils.zip(new File[] { new FileTracerReader(SERVICE_CONFIG).pack(paramLong, paramFile1, false), new FileTracerReader(CLIENT_CONFIG).pack(paramLong, paramFile1, false), new FileTracerReader(CHANNEL_CONFIG).pack(paramLong, paramFile1, false) }, paramFile2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\ClientLog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */