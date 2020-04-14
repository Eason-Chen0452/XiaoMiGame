package com.wali.gamecenter.report.db;

import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.AbstractDaoSession;
import com.xiaomi.greendao.identityscope.IdentityScopeType;
import com.xiaomi.greendao.identityscope.a;
import com.xiaomi.greendao.internal.DaoConfig;
import java.util.Map;

public class DaoSession
  extends AbstractDaoSession
{
  private final ReportDataDao reportDataDao;
  private final DaoConfig reportDataDaoConfig;
  
  public DaoSession(SQLiteDatabase paramSQLiteDatabase, IdentityScopeType paramIdentityScopeType, Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> paramMap)
  {
    super(paramSQLiteDatabase);
    this.reportDataDaoConfig = ((DaoConfig)paramMap.get(ReportDataDao.class)).a();
    this.reportDataDaoConfig.a(paramIdentityScopeType);
    this.reportDataDao = new ReportDataDao(this.reportDataDaoConfig, this);
    registerDao(ReportData.class, this.reportDataDao);
  }
  
  public void clear()
  {
    this.reportDataDaoConfig.b().a();
  }
  
  public ReportDataDao getReportDataDao()
  {
    return this.reportDataDao;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\db\DaoSession.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */