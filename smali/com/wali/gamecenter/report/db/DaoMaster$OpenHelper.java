package com.wali.gamecenter.report.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public abstract class DaoMaster$OpenHelper
  extends SQLiteOpenHelper
{
  public DaoMaster$OpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    super(paramContext, paramString, paramCursorFactory, 1);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    Log.i("greenDAO", "Creating tables for schema version 1");
    DaoMaster.createAllTables(paramSQLiteDatabase, false);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\db\DaoMaster$OpenHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */