package com.mi.milink.sdk.base.debug;

public class CustomLogcat
  implements TraceLevel
{
  private static volatile Tracer sCustomTracer = new LogcatTracer();
  
  public static void d(String paramString1, String paramString2)
  {
    d(paramString1, paramString2, null);
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (sCustomTracer != null) {
      sCustomTracer.trace(2, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    e(paramString1, paramString2, null);
  }
  
  public static void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (sCustomTracer != null) {
      sCustomTracer.trace(16, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
    }
  }
  
  public static Tracer getCustomTracer()
  {
    return sCustomTracer;
  }
  
  public static void i(String paramString1, String paramString2)
  {
    i(paramString1, paramString2, null);
  }
  
  public static void i(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (sCustomTracer != null) {
      sCustomTracer.trace(4, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void setCustomTracer(Tracer paramTracer)
  {
    if (paramTracer == null)
    {
      sCustomTracer = new LogcatTracer();
      return;
    }
    sCustomTracer = paramTracer;
  }
  
  public static void v(String paramString1, String paramString2)
  {
    v(paramString1, paramString2, null);
  }
  
  public static void v(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (sCustomTracer != null) {
      sCustomTracer.trace(1, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void w(String paramString1, String paramString2)
  {
    w(paramString1, paramString2, null);
  }
  
  public static void w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (sCustomTracer != null) {
      sCustomTracer.trace(8, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\CustomLogcat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */