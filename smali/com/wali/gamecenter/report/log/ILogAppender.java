package com.wali.gamecenter.report.log;

public abstract interface ILogAppender
{
  public abstract void close();
  
  public abstract void debug(String paramString1, String paramString2);
  
  public abstract void error(String paramString1, String paramString2, Throwable paramThrowable);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\log\ILogAppender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */