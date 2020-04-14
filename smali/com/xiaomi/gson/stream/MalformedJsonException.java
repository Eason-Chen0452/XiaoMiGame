package com.xiaomi.gson.stream;

import java.io.IOException;

public final class MalformedJsonException
  extends IOException
{
  public MalformedJsonException(String paramString)
  {
    super(paramString);
  }
  
  public MalformedJsonException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    initCause(paramThrowable);
  }
  
  public MalformedJsonException(Throwable paramThrowable)
  {
    initCause(paramThrowable);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\stream\MalformedJsonException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */