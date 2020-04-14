package com.xiaomi.greendao.test;

import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.AbstractDaoMaster;
import com.xiaomi.greendao.AbstractDaoSession;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public abstract class AbstractDaoSessionTest<T extends AbstractDaoMaster, S extends AbstractDaoSession>
  extends DbTest
{
  protected T a;
  protected S b;
  private final Class<T> c;
  
  public AbstractDaoSessionTest(Class<T> paramClass)
  {
    this(paramClass, true);
  }
  
  public AbstractDaoSessionTest(Class<T> paramClass, boolean paramBoolean)
  {
    super(paramBoolean);
    this.c = paramClass;
  }
  
  protected void setUp()
  {
    super.setUp();
    try
    {
      this.a = ((AbstractDaoMaster)this.c.getConstructor(new Class[] { SQLiteDatabase.class }).newInstance(new Object[] { this.h }));
      this.c.getMethod("createAllTables", new Class[] { SQLiteDatabase.class, Boolean.TYPE }).invoke(null, new Object[] { this.h, Boolean.valueOf(false) });
      this.b = this.a.newSession();
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Could not prepare DAO session test", localException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\test\AbstractDaoSessionTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */