package com.xiaomi.greendao.query;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.InternalQueryDaoAccess;
import java.util.List;

public final class d<T>
  extends i<T>
{
  private final k<T> h;
  
  private d(k<T> paramk, AbstractDao<T, ?> paramAbstractDao, String paramString, String[] paramArrayOfString, int paramInt1, int paramInt2)
  {
    super(paramAbstractDao, paramString, paramArrayOfString, paramInt1, paramInt2);
    this.h = paramk;
  }
  
  public static <T2> d<T2> a(AbstractDao<T2, ?> paramAbstractDao, String paramString, Object[] paramArrayOfObject)
  {
    return a(paramAbstractDao, paramString, paramArrayOfObject, -1, -1);
  }
  
  static <T2> d<T2> a(AbstractDao<T2, ?> paramAbstractDao, String paramString, Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    return (d)new k(paramAbstractDao, paramString, a(paramArrayOfObject), paramInt1, paramInt2).a();
  }
  
  public final d<T> a()
  {
    return (d)this.h.a(this);
  }
  
  public final List<T> b()
  {
    d();
    Cursor localCursor = this.a.getDatabase().rawQuery(this.c, this.d);
    return this.b.b(localCursor);
  }
  
  public final T c()
  {
    d();
    Cursor localCursor = this.a.getDatabase().rawQuery(this.c, this.d);
    return (T)this.b.c(localCursor);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */