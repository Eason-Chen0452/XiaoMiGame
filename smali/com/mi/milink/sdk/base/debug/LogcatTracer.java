package com.mi.milink.sdk.base.debug;

import android.util.Log;

public final class LogcatTracer
  extends Tracer
{
  public LogcatTracer()
  {
    setTraceLevel(63);
  }
  
  protected final void doTrace(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    paramThread = paramThread.getName() + "=>" + paramString2;
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      Log.v(paramString1, paramThread, paramThrowable);
      return;
    case 2: 
      Log.d(paramString1, paramThread, paramThrowable);
      return;
    case 4: 
      Log.i(paramString1, paramThread, paramThrowable);
      return;
    case 8: 
      Log.w(paramString1, paramThread, paramThrowable);
      return;
    case 16: 
      Log.e(paramString1, paramThread, paramThrowable);
      return;
    }
    Log.e(paramString1, paramThread, paramThrowable);
  }
  
  protected final void doTrace(String paramString)
  {
    Log.v("", paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\LogcatTracer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */