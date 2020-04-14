package com.mi.milink.sdk.debug;

import android.content.SharedPreferences.Editor;
import com.mi.milink.sdk.base.debug.FileTracer;
import com.mi.milink.sdk.base.debug.LogcatTracer;
import com.mi.milink.sdk.data.Option;

public final class MiLinkLog
  extends MiLinkTracer
{
  private static volatile MiLinkLog sInstance = null;
  
  protected MiLinkLog()
  {
    try
    {
      this.fileTracer = new FileTracer(SERVICE_CONFIG);
      this.logcatTracer = new LogcatTracer();
      MiLinkTracer.setInstance(this);
      onSharedPreferenceChanged(null, "debug.file.tracelevel");
      onSharedPreferenceChanged(null, "debug.logcat.tracelevel");
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void d(String paramString1, String paramString2)
  {
    getInstance().trace(2, paramString1, paramString2, null);
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(2, paramString1, paramString2, paramThrowable);
  }
  
  public static void e(String paramString1, String paramString2)
  {
    getInstance().trace(16, paramString1, paramString2, null);
  }
  
  public static void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(16, paramString1, paramString2, paramThrowable);
  }
  
  public static void e(String paramString, Throwable paramThrowable)
  {
    getInstance().trace(16, paramString, "", paramThrowable);
  }
  
  public static MiLinkLog getInstance()
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new MiLinkLog();
      }
      return sInstance;
    }
    finally {}
  }
  
  public static void i(String paramString1, String paramString2)
  {
    getInstance().trace(4, paramString1, paramString2, null);
  }
  
  public static void i(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(4, paramString1, paramString2, paramThrowable);
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
    Option.putInt("debug.file.tracelevel", i).apply();
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
    Option.putInt("debug.logcat.tracelevel", i).apply();
  }
  
  public static void setMaxFolderSize(long paramLong)
  {
    int j = (int)(paramLong / 524288L);
    int i = j;
    if (j <= 0) {
      i = 48;
    }
    Option.putInt("debug.file.blockcount", i).apply();
  }
  
  public static void setMaxKeepPeriod(long paramLong)
  {
    long l = paramLong;
    if (paramLong < 86400000L) {
      l = 172800000L;
    }
    Option.putLong("debug.file.keepperiod", l).apply();
  }
  
  public static void v(String paramString1, String paramString2)
  {
    getInstance().trace(1, paramString1, paramString2, null);
  }
  
  public static void v(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(1, paramString1, paramString2, paramThrowable);
  }
  
  public static void w(String paramString1, String paramString2)
  {
    getInstance().trace(8, paramString1, paramString2, null);
  }
  
  public static void w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    getInstance().trace(8, paramString1, paramString2, paramThrowable);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\debug\MiLinkLog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */