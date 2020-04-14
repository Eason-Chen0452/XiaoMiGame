package com.wali.gamecenter.report.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.util.Log;

public class DaoMaster$DevOpenHelper
  extends DaoMaster.OpenHelper
{
  public DaoMaster$DevOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    super(paramContext, paramString, paramCursorFactory);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Log.i("greenDAO", "Upgrading schema from version " + paramInt1 + " to " + paramInt2 + " by dropping all tables");
    DaoMaster.dropAllTables(paramSQLiteDatabase, true);
    onCreate(paramSQLiteDatabase);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\db\DaoMaster$DevOpenHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */