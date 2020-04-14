package com.xiaomi.greendao.query;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.DaoException;

public final class b<T>
  extends g<T>
{
  private final j<T> f;
  
  private b(j<T> paramj, AbstractDao<T, ?> paramAbstractDao, String paramString, String[] paramArrayOfString)
  {
    super(paramAbstractDao, paramString, paramArrayOfString);
    this.f = paramj;
  }
  
  static <T2> b<T2> a(AbstractDao<T2, ?> paramAbstractDao, String paramString, Object[] paramArrayOfObject)
  {
    return (b)new j(paramAbstractDao, paramString, a(paramArrayOfObject), (byte)0).a();
  }
  
  public final long a()
  {
    d();
    Cursor localCursor = this.a.getDatabase().rawQuery(this.c, this.d);
    try
    {
      if (!localCursor.moveToNext()) {
        throw new DaoException("No result for count");
      }
    }
    finally
    {
      localCursor.close();
    }
    if (!localCursor.isLast()) {
      throw new DaoException("Unexpected row count: " + localCursor.getCount());
    }
    if (localCursor.getColumnCount() != 1) {
      throw new DaoException("Unexpected column count: " + localCursor.getColumnCount());
    }
    long l = localCursor.getLong(0);
    localCursor.close();
    return l;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */