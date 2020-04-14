package com.xiaomi.greendao.query;

import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.DaoException;
import com.xiaomi.greendao.InternalQueryDaoAccess;

abstract class g<T>
{
  protected final AbstractDao<T, ?> a;
  protected final InternalQueryDaoAccess<T> b;
  protected final String c;
  protected final String[] d;
  protected final Thread e;
  
  protected g(AbstractDao<T, ?> paramAbstractDao, String paramString, String[] paramArrayOfString)
  {
    this.a = paramAbstractDao;
    this.b = new InternalQueryDaoAccess(paramAbstractDao);
    this.c = paramString;
    this.d = paramArrayOfString;
    this.e = Thread.currentThread();
  }
  
  protected static String[] a(Object[] paramArrayOfObject)
  {
    int j = paramArrayOfObject.length;
    String[] arrayOfString = new String[j];
    int i = 0;
    if (i < j)
    {
      Object localObject = paramArrayOfObject[i];
      if (localObject != null) {
        arrayOfString[i] = localObject.toString();
      }
      for (;;)
      {
        i += 1;
        break;
        arrayOfString[i] = null;
      }
    }
    return arrayOfString;
  }
  
  protected final void d()
  {
    if (Thread.currentThread() != this.e) {
      throw new DaoException("Method may be called only in owner thread, use forCurrentThread to get an instance for this thread");
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */