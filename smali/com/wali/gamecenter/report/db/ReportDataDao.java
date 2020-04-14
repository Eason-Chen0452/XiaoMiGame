package com.wali.gamecenter.report.db;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.internal.DaoConfig;

public class ReportDataDao
  extends AbstractDao<ReportData, Long>
{
  public static final String TABLENAME = "REPORT_DATA";
  
  public ReportDataDao(DaoConfig paramDaoConfig)
  {
    super(paramDaoConfig);
  }
  
  public ReportDataDao(DaoConfig paramDaoConfig, DaoSession paramDaoSession)
  {
    super(paramDaoConfig, paramDaoSession);
  }
  
  public static void createTable(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "IF NOT EXISTS ";; str = "")
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE " + str + "'REPORT_DATA' ('_id' INTEGER PRIMARY KEY ,'METHOD' TEXT NOT NULL ,'PARAM' TEXT);");
      return;
    }
  }
  
  public static void dropTable(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder("DROP TABLE ");
    if (paramBoolean) {}
    for (String str = "IF EXISTS ";; str = "")
    {
      paramSQLiteDatabase.execSQL(str + "'REPORT_DATA'");
      return;
    }
  }
  
  protected void bindValues(SQLiteStatement paramSQLiteStatement, ReportData paramReportData)
  {
    paramSQLiteStatement.clearBindings();
    Long localLong = paramReportData.getId();
    if (localLong != null) {
      paramSQLiteStatement.bindLong(1, localLong.longValue());
    }
    paramSQLiteStatement.bindString(2, paramReportData.getMethod());
    paramReportData = paramReportData.getParam();
    if (paramReportData != null) {
      paramSQLiteStatement.bindString(3, paramReportData);
    }
  }
  
  public Long getKey(ReportData paramReportData)
  {
    if (paramReportData != null) {
      return paramReportData.getId();
    }
    return null;
  }
  
  protected boolean isEntityUpdateable()
  {
    return true;
  }
  
  public ReportData readEntity(Cursor paramCursor, int paramInt)
  {
    Object localObject = null;
    Long localLong;
    String str;
    if (paramCursor.isNull(paramInt + 0))
    {
      localLong = null;
      str = paramCursor.getString(paramInt + 1);
      if (!paramCursor.isNull(paramInt + 2)) {
        break label71;
      }
    }
    label71:
    for (paramCursor = (Cursor)localObject;; paramCursor = paramCursor.getString(paramInt + 2))
    {
      return new ReportData(localLong, str, paramCursor);
      localLong = Long.valueOf(paramCursor.getLong(paramInt + 0));
      break;
    }
  }
  
  public void readEntity(Cursor paramCursor, ReportData paramReportData, int paramInt)
  {
    Object localObject = null;
    Long localLong;
    if (paramCursor.isNull(paramInt + 0))
    {
      localLong = null;
      paramReportData.setId(localLong);
      paramReportData.setMethod(paramCursor.getString(paramInt + 1));
      if (!paramCursor.isNull(paramInt + 2)) {
        break label75;
      }
    }
    label75:
    for (paramCursor = (Cursor)localObject;; paramCursor = paramCursor.getString(paramInt + 2))
    {
      paramReportData.setParam(paramCursor);
      return;
      localLong = Long.valueOf(paramCursor.getLong(paramInt + 0));
      break;
    }
  }
  
  public Long readKey(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt + 0)) {
      return null;
    }
    return Long.valueOf(paramCursor.getLong(paramInt + 0));
  }
  
  protected Long updateKeyAfterInsert(ReportData paramReportData, long paramLong)
  {
    paramReportData.setId(Long.valueOf(paramLong));
    return Long.valueOf(paramLong);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\db\ReportDataDao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */