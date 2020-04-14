package com.mi.milink.sdk.base.debug;

public abstract class Tracer
{
  private volatile boolean mEnabled = true;
  private TraceFormat mTraceFormat = TraceFormat.DEFAULT;
  private volatile int mTraceLevel = 63;
  
  public Tracer()
  {
    this(63, true, TraceFormat.DEFAULT);
  }
  
  public Tracer(int paramInt, boolean paramBoolean, TraceFormat paramTraceFormat)
  {
    setTraceLevel(paramInt);
    setEnabled(paramBoolean);
    setTraceFormat(paramTraceFormat);
  }
  
  protected abstract void doTrace(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable);
  
  protected abstract void doTrace(String paramString);
  
  public TraceFormat getTraceFormat()
  {
    return this.mTraceFormat;
  }
  
  public int getTraceLevel()
  {
    return this.mTraceLevel;
  }
  
  public boolean isEnabled()
  {
    return this.mEnabled;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    this.mEnabled = paramBoolean;
  }
  
  public void setTraceFormat(TraceFormat paramTraceFormat)
  {
    this.mTraceFormat = paramTraceFormat;
  }
  
  public void setTraceLevel(int paramInt)
  {
    this.mTraceLevel = paramInt;
  }
  
  public void trace(int paramInt, String paramString)
  {
    if ((isEnabled()) && (Bit.has(this.mTraceLevel, paramInt))) {
      doTrace(paramString);
    }
  }
  
  public void trace(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((isEnabled()) && (Bit.has(this.mTraceLevel, paramInt))) {}
    try
    {
      doTrace(paramInt, paramThread, paramLong, paramString1, paramString2, paramThrowable);
      return;
    }
    catch (OutOfMemoryError paramThread) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\Tracer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */