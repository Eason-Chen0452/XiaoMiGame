package com.wali.gamecenter.report.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

public class DBManager
{
  private static final String DB_NAME = "report2.db";
  private static DaoMaster.DevOpenHelper sDB;
  private static DaoMaster sDaoMaster;
  private static DaoSession sDaoSession;
  
  public static DaoSession getDaoSession()
  {
    return sDaoSession;
  }
  
  public static SQLiteDatabase getReadableDB()
  {
    if (sDB != null) {
      return sDB.getReadableDatabase();
    }
    return null;
  }
  
  public static ReportDataDao getReportDao()
  {
    if (getDaoSession() != null) {
      return getDaoSession().getReportDataDao();
    }
    return null;
  }
  
  public static SQLiteDatabase getWritableDB()
  {
    if (sDB != null) {
      return sDB.getWritableDatabase();
    }
    return null;
  }
  
  public static void init(Context paramContext)
  {
    sDB = new DaoMaster.DevOpenHelper(paramContext, "report2.db", null);
    try
    {
      sDaoMaster = new DaoMaster(getWritableDB());
      if (sDaoMaster != null) {
        sDaoSession = sDaoMaster.newSession();
      }
      return;
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\db\DBManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */