package com.wali.gamecenter.report.db;

import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.AbstractDaoMaster;
import com.xiaomi.greendao.identityscope.IdentityScopeType;

public class DaoMaster
  extends AbstractDaoMaster
{
  public static final int SCHEMA_VERSION = 1;
  
  public DaoMaster(SQLiteDatabase paramSQLiteDatabase)
  {
    super(paramSQLiteDatabase, 1);
    registerDaoClass(ReportDataDao.class);
  }
  
  public static void createAllTables(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    ReportDataDao.createTable(paramSQLiteDatabase, paramBoolean);
  }
  
  public static void dropAllTables(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    ReportDataDao.dropTable(paramSQLiteDatabase, paramBoolean);
  }
  
  public DaoSession newSession()
  {
    return new DaoSession(this.db, IdentityScopeType.Session, this.daoConfigMap);
  }
  
  public DaoSession newSession(IdentityScopeType paramIdentityScopeType)
  {
    return new DaoSession(this.db, paramIdentityScopeType, this.daoConfigMap);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\db\DaoMaster.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */