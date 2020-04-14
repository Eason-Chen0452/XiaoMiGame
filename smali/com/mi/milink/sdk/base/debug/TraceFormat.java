package com.mi.milink.sdk.base.debug;

import android.text.format.Time;
import android.util.Log;
import com.mi.milink.sdk.base.Global;

public class TraceFormat
{
  public static final TraceFormat DEFAULT = new TraceFormat();
  public static final String STR_ASSERT = "A";
  public static final String STR_DEBUG = "D";
  public static final String STR_ERROR = "E";
  public static final String STR_INFO = "I";
  public static final String STR_UNKNOWN = "-";
  public static final String STR_VERBOSE = "V";
  public static final String STR_WARN = "W";
  public static final String TRACE_TIME_FORMAT = "%Y-%m-%d %H:%M:%S";
  
  public static final String getLevelPrefix(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "-";
    case 2: 
      return "D";
    case 4: 
      return "I";
    case 8: 
      return "W";
    case 16: 
      return "E";
    case 1: 
      return "V";
    }
    return "A";
  }
  
  public String formatTrace(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    long l = paramLong % 1000L;
    for (;;)
    {
      try
      {
        Time localTime = new Time();
        localTime.set(paramLong);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(getLevelPrefix(paramInt)).append('/').append(localTime.format("%Y-%m-%d %H:%M:%S")).append('.');
        if (l < 10L)
        {
          localStringBuilder.append("00");
          localStringBuilder.append(l).append(' ').append('[').append(Global.getPid()).append(']').append('[');
          if (paramThread == null)
          {
            localStringBuilder.append("N/A");
            localStringBuilder.append(']').append('[').append(paramString1).append(']').append(' ').append(paramString2).append('\n');
            if (paramThrowable != null) {
              localStringBuilder.append("*** Exception : \n").append(Log.getStackTraceString(paramThrowable)).append('\n');
            }
            return localStringBuilder.toString();
          }
        }
        else
        {
          if (l >= 100L) {
            continue;
          }
          localStringBuilder.append('0');
          continue;
        }
        localStringBuilder.append(paramThread.getName());
      }
      catch (OutOfMemoryError paramThread)
      {
        return "";
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\TraceFormat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */