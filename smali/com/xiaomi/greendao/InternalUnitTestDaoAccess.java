package com.xiaomi.greendao;

import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.identityscope.a;
import com.xiaomi.greendao.internal.DaoConfig;
import java.lang.reflect.Constructor;

public class InternalUnitTestDaoAccess<T, K>
{
  private final AbstractDao<T, K> a;
  
  public InternalUnitTestDaoAccess(SQLiteDatabase paramSQLiteDatabase, Class<AbstractDao<T, K>> paramClass, a<?, ?> parama)
  {
    paramSQLiteDatabase = new DaoConfig(paramSQLiteDatabase, paramClass);
    paramSQLiteDatabase.a(parama);
    this.a = ((AbstractDao)paramClass.getConstructor(new Class[] { DaoConfig.class }).newInstance(new Object[] { paramSQLiteDatabase }));
  }
  
  public final Property[] a()
  {
    return this.a.getProperties();
  }
  
  public final AbstractDao<T, K> b()
  {
    return this.a;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\InternalUnitTestDaoAccess.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */