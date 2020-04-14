package com.xiaomi.greendao;

import android.database.Cursor;
import java.util.List;

public final class InternalQueryDaoAccess<T>
{
  private final AbstractDao<T, ?> a;
  
  public InternalQueryDaoAccess(AbstractDao<T, ?> paramAbstractDao)
  {
    this.a = paramAbstractDao;
  }
  
  public final T a(Cursor paramCursor)
  {
    return (T)this.a.loadCurrent(paramCursor, 0, true);
  }
  
  public final List<T> b(Cursor paramCursor)
  {
    return this.a.loadAllAndCloseCursor(paramCursor);
  }
  
  public final T c(Cursor paramCursor)
  {
    return (T)this.a.loadUniqueAndCloseCursor(paramCursor);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\InternalQueryDaoAccess.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */