package com.xiaomi.greendao.test;

import android.app.Application;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.test.AndroidTestCase;
import java.util.Random;

public abstract class DbTest
  extends AndroidTestCase
{
  private Application a;
  protected final Random f;
  protected final boolean g;
  protected SQLiteDatabase h;
  
  public DbTest()
  {
    this(true);
  }
  
  public DbTest(boolean paramBoolean)
  {
    this.g = paramBoolean;
    this.f = new Random();
  }
  
  protected void setUp()
  {
    super.setUp();
    if (this.g) {}
    for (SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.create(null);; localSQLiteDatabase = getContext().openOrCreateDatabase("greendao-unittest-db.temp", 0, null))
    {
      this.h = localSQLiteDatabase;
      return;
      getContext().deleteDatabase("greendao-unittest-db.temp");
    }
  }
  
  protected void tearDown()
  {
    if (this.a != null)
    {
      assertNotNull("Application not yet created", this.a);
      this.a.onTerminate();
      this.a = null;
    }
    this.h.close();
    if (!this.g) {
      getContext().deleteDatabase("greendao-unittest-db.temp");
    }
    super.tearDown();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\test\DbTest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */