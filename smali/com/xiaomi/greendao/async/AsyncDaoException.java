package com.xiaomi.greendao.async;

import com.xiaomi.greendao.DaoException;

public class AsyncDaoException
  extends DaoException
{
  private final a a;
  
  public AsyncDaoException(a parama, Throwable paramThrowable)
  {
    super(paramThrowable);
    this.a = parama;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\async\AsyncDaoException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */