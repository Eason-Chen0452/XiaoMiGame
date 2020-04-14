package com.xiaomi.greendao.test;

import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.DaoLog;
import com.xiaomi.greendao.InternalUnitTestDaoAccess;
import com.xiaomi.greendao.identityscope.a;
import java.lang.reflect.Method;

public abstract class AbstractDaoTest<D extends AbstractDao<T, K>, T, K>
  extends DbTest
{
  protected final Class<D> a;
  protected D b;
  protected InternalUnitTestDaoAccess<T, K> c;
  protected a<K, T> d;
  
  public AbstractDaoTest(Class<D> paramClass)
  {
    this(paramClass, true);
  }
  
  public AbstractDaoTest(Class<D> paramClass, boolean paramBoolean)
  {
    super(paramBoolean);
    this.a = paramClass;
  }
  
  protected void setUp()
  {
    super.setUp();
    try
    {
      this.a.getMethod("createTable", new Class[] { SQLiteDatabase.class, Boolean.TYPE }).invoke(null, new Object[] { this.h, Boolean.valueOf(false) });
      this.c = new InternalUnitTestDaoAccess(this.h, this.a, this.d);
      this.b = this.c.b();
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        DaoLog.b("No createTable method");
      }
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Could not prepare DAO Test", localException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\test\AbstractDaoTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */