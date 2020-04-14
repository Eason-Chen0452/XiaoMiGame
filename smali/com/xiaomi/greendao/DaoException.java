package com.xiaomi.greendao;

import android.database.SQLException;

public class DaoException
  extends SQLException
{
  public DaoException() {}
  
  public DaoException(String paramString)
  {
    super(paramString);
  }
  
  public DaoException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    a(paramThrowable);
  }
  
  public DaoException(Throwable paramThrowable)
  {
    a(paramThrowable);
  }
  
  private void a(Throwable paramThrowable)
  {
    try
    {
      initCause(paramThrowable);
      return;
    }
    catch (Throwable localThrowable)
    {
      DaoLog.c("Could not set initial cause", localThrowable);
      DaoLog.c("Initial cause is:", paramThrowable);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\DaoException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */