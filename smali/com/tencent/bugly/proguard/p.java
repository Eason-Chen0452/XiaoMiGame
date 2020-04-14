package com.tencent.bugly.proguard;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public final class p
  extends SQLiteOpenHelper
{
  private static int a = 11;
  private Context b;
  private List<com.tencent.bugly.a> c;
  
  public p(Context paramContext, List<com.tencent.bugly.a> paramList)
  {
    super(paramContext, localStringBuilder.toString(), null, a);
    this.b = paramContext;
    this.c = paramList;
  }
  
  /* Error */
  private boolean a(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: aload_0
    //   4: monitorenter
    //   5: iconst_4
    //   6: anewarray 54	java/lang/String
    //   9: astore 6
    //   11: aload 6
    //   13: iconst_0
    //   14: ldc 56
    //   16: aastore
    //   17: aload 6
    //   19: iconst_1
    //   20: ldc 58
    //   22: aastore
    //   23: aload 6
    //   25: iconst_2
    //   26: ldc 60
    //   28: aastore
    //   29: aload 6
    //   31: iconst_3
    //   32: ldc 62
    //   34: aastore
    //   35: aload 6
    //   37: arraylength
    //   38: istore_3
    //   39: iconst_0
    //   40: istore_2
    //   41: iload 5
    //   43: istore 4
    //   45: iload_2
    //   46: iload_3
    //   47: if_icmpge +52 -> 99
    //   50: aload 6
    //   52: iload_2
    //   53: aaload
    //   54: astore 7
    //   56: aload_1
    //   57: new 20	java/lang/StringBuilder
    //   60: dup
    //   61: ldc 64
    //   63: invokespecial 25	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   66: aload 7
    //   68: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 40	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokevirtual 73	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   77: iload_2
    //   78: iconst_1
    //   79: iadd
    //   80: istore_2
    //   81: goto -40 -> 41
    //   84: astore_1
    //   85: aload_1
    //   86: invokestatic 78	com/tencent/bugly/proguard/w:b	(Ljava/lang/Throwable;)Z
    //   89: ifne +7 -> 96
    //   92: aload_1
    //   93: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   96: iconst_0
    //   97: istore 4
    //   99: aload_0
    //   100: monitorexit
    //   101: iload 4
    //   103: ireturn
    //   104: astore_1
    //   105: aload_0
    //   106: monitorexit
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	p
    //   0	109	1	paramSQLiteDatabase	SQLiteDatabase
    //   40	41	2	i	int
    //   38	10	3	j	int
    //   43	59	4	bool1	boolean
    //   1	41	5	bool2	boolean
    //   9	42	6	arrayOfString	String[]
    //   54	13	7	str	String
    // Exception table:
    //   from	to	target	type
    //   5	11	84	java/lang/Throwable
    //   35	39	84	java/lang/Throwable
    //   56	77	84	java/lang/Throwable
    //   5	11	104	finally
    //   35	39	104	finally
    //   56	77	104	finally
    //   85	96	104	finally
  }
  
  public final SQLiteDatabase getReadableDatabase()
  {
    int i = 0;
    Object localObject = null;
    while ((localObject == null) && (i < 5))
    {
      i += 1;
      try
      {
        SQLiteDatabase localSQLiteDatabase2 = super.getReadableDatabase();
        localObject = localSQLiteDatabase2;
      }
      catch (Throwable localThrowable)
      {
        w.d("try db count %d", new Object[] { Integer.valueOf(i) });
        if (i == 5) {
          w.e("get db fail!", new Object[0]);
        }
        try
        {
          Thread.sleep(200L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
      finally {}
    }
    return localSQLiteDatabase1;
  }
  
  public final SQLiteDatabase getWritableDatabase()
  {
    int i = 0;
    Object localObject = null;
    while ((localObject == null) && (i < 5))
    {
      i += 1;
      try
      {
        SQLiteDatabase localSQLiteDatabase2 = super.getWritableDatabase();
        localObject = localSQLiteDatabase2;
      }
      catch (Throwable localThrowable)
      {
        w.d("try db %d", new Object[] { Integer.valueOf(i) });
        if (i == 5) {
          w.e("get db fail!", new Object[0]);
        }
        try
        {
          Thread.sleep(200L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
      finally {}
    }
    if (localSQLiteDatabase1 == null) {
      w.d("db error delay error record 1min", new Object[0]);
    }
    return localSQLiteDatabase1;
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    for (;;)
    {
      try
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_ui").append(" ( _id").append(" INTEGER PRIMARY KEY").append(" , _tm").append(" int").append(" , _ut").append(" int").append(" , _tp").append(" int").append(" , _dt").append(" blob").append(" , _pc").append(" text").append(" ) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_lr").append(" ( _id").append(" INTEGER PRIMARY KEY").append(" , _tp").append(" int").append(" , _tm").append(" int").append(" , _pc").append(" text").append(" , _th").append(" text").append(" , _dt").append(" blob").append(" ) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_pf").append(" ( _id").append(" integer").append(" , _tp").append(" text").append(" , _tm").append(" int").append(" , _dt").append(" blob").append(",primary key(_id").append(",_tp").append(" )) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_crd").append(" ( _id").append(" integer").append(" , _pc").append(" text").append(" , _tm").append(" int").append(" , _fl").append(" int").append(" , _sv").append(" text").append(" , _av").append(" text").append(" , _uid").append(" integer").append(",primary key(_id").append(",_pc").append(",_uid").append(" )) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS t_cr").append(" ( _id").append(" INTEGER PRIMARY KEY").append(" , _tm").append(" int").append(" , _s1").append(" text").append(" , _up").append(" int").append(" , _me").append(" int").append(" , _uc").append(" int").append(" , _dt").append(" blob").append(" ) ");
        w.c("create %s", new Object[] { localObject });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS dl_1002").append(" (_id").append(" integer primary key autoincrement, _dUrl").append(" varchar(100), _sFile").append(" varchar(100), _sLen").append(" INTEGER, _tLen").append(" INTEGER, _MD5").append(" varchar(100), _DLTIME").append(" INTEGER)");
        w.c("create %s", new Object[] { localObject });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append("CREATE TABLE IF NOT EXISTS ge_1002").append(" (_id").append(" integer primary key autoincrement, _time").append(" INTEGER, _datas").append(" blob)");
        w.c("create %s", new Object[] { localObject });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        ((StringBuilder)localObject).setLength(0);
        ((StringBuilder)localObject).append(" CREATE TABLE IF NOT EXISTS st_1002").append(" ( _id").append(" integer").append(" , _tp").append(" text").append(" , _tm").append(" int").append(" , _dt").append(" blob").append(",primary key(_id").append(",_tp").append(" )) ");
        w.c("create %s", new Object[] { ((StringBuilder)localObject).toString() });
        paramSQLiteDatabase.execSQL(((StringBuilder)localObject).toString());
        localObject = this.c;
        if (localObject == null) {
          return;
        }
      }
      catch (Throwable localThrowable1)
      {
        if (w.b(localThrowable1)) {
          continue;
        }
        localThrowable1.printStackTrace();
        continue;
      }
      finally {}
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        com.tencent.bugly.a locala = (com.tencent.bugly.a)localIterator.next();
        try
        {
          locala.onDbCreate(paramSQLiteDatabase);
        }
        catch (Throwable localThrowable2) {}
        if (!w.b(localThrowable2)) {
          localThrowable2.printStackTrace();
        }
      }
    }
  }
  
  @TargetApi(11)
  public final void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    try
    {
      if (a.d() < 11) {
        break label121;
      }
      w.d("drowngrade %d to %d drop tables!}", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
      if (this.c != null)
      {
        Iterator localIterator = this.c.iterator();
        while (localIterator.hasNext())
        {
          com.tencent.bugly.a locala = (com.tencent.bugly.a)localIterator.next();
          try
          {
            locala.onDbDowngrade(paramSQLiteDatabase, paramInt1, paramInt2);
          }
          catch (Throwable localThrowable) {}
          if (!w.b(localThrowable)) {
            localThrowable.printStackTrace();
          }
        }
      }
      if (!a(paramSQLiteDatabase)) {
        break label124;
      }
    }
    finally {}
    onCreate(paramSQLiteDatabase);
    for (;;)
    {
      label121:
      return;
      label124:
      w.d("drop fail delete db", new Object[0]);
      paramSQLiteDatabase = this.b.getDatabasePath("bugly_db");
      if ((paramSQLiteDatabase != null) && (paramSQLiteDatabase.canWrite())) {
        paramSQLiteDatabase.delete();
      }
    }
  }
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    try
    {
      w.d("upgrade %d to %d , drop tables!", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
      if (this.c != null)
      {
        Iterator localIterator = this.c.iterator();
        while (localIterator.hasNext())
        {
          com.tencent.bugly.a locala = (com.tencent.bugly.a)localIterator.next();
          try
          {
            locala.onDbUpgrade(paramSQLiteDatabase, paramInt1, paramInt2);
          }
          catch (Throwable localThrowable) {}
          if (!w.b(localThrowable)) {
            localThrowable.printStackTrace();
          }
        }
      }
      if (!a(paramSQLiteDatabase)) {
        break label117;
      }
    }
    finally {}
    onCreate(paramSQLiteDatabase);
    for (;;)
    {
      return;
      label117:
      w.d("drop fail delete db", new Object[0]);
      paramSQLiteDatabase = this.b.getDatabasePath("bugly_db");
      if ((paramSQLiteDatabase != null) && (paramSQLiteDatabase.canWrite())) {
        paramSQLiteDatabase.delete();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\tencent\bugly\proguard\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */