package com.alipay.sdk.tid;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.alipay.sdk.encrypt.b;
import java.lang.ref.WeakReference;

public final class a
  extends SQLiteOpenHelper
{
  private static final String a = "msp.db";
  private static final int b = 1;
  private WeakReference<Context> c;
  
  public a(Context paramContext)
  {
    super(paramContext, "msp.db", null, 1);
    this.c = new WeakReference(paramContext);
  }
  
  /* Error */
  private java.util.List<String> a()
  {
    // Byte code:
    //   0: new 32	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 35	java/util/ArrayList:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: invokevirtual 39	com/alipay/sdk/tid/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore_1
    //   13: aload_1
    //   14: ldc 41
    //   16: aconst_null
    //   17: invokevirtual 47	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   20: astore_2
    //   21: aload_2
    //   22: invokeinterface 53 1 0
    //   27: ifeq +78 -> 105
    //   30: aload_2
    //   31: iconst_0
    //   32: invokeinterface 57 2 0
    //   37: astore 4
    //   39: aload 4
    //   41: invokestatic 63	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   44: ifne -23 -> 21
    //   47: aload_3
    //   48: iconst_2
    //   49: aload 4
    //   51: aload_0
    //   52: getfield 26	com/alipay/sdk/tid/a:c	Ljava/lang/ref/WeakReference;
    //   55: invokevirtual 67	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   58: checkcast 69	android/content/Context
    //   61: invokestatic 74	com/alipay/sdk/util/a:c	(Landroid/content/Context;)Ljava/lang/String;
    //   64: invokestatic 79	com/alipay/sdk/encrypt/b:a	(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   67: invokeinterface 85 2 0
    //   72: pop
    //   73: goto -52 -> 21
    //   76: astore 4
    //   78: aload_2
    //   79: ifnull +9 -> 88
    //   82: aload_2
    //   83: invokeinterface 88 1 0
    //   88: aload_1
    //   89: ifnull +14 -> 103
    //   92: aload_1
    //   93: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   96: ifeq +7 -> 103
    //   99: aload_1
    //   100: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   103: aload_3
    //   104: areturn
    //   105: aload_2
    //   106: ifnull +9 -> 115
    //   109: aload_2
    //   110: invokeinterface 88 1 0
    //   115: aload_1
    //   116: ifnull -13 -> 103
    //   119: aload_1
    //   120: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   123: ifeq -20 -> 103
    //   126: aload_1
    //   127: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   130: aload_3
    //   131: areturn
    //   132: astore_2
    //   133: aconst_null
    //   134: astore_1
    //   135: aconst_null
    //   136: astore_3
    //   137: aload_1
    //   138: ifnull +9 -> 147
    //   141: aload_1
    //   142: invokeinterface 88 1 0
    //   147: aload_3
    //   148: ifnull +14 -> 162
    //   151: aload_3
    //   152: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   155: ifeq +7 -> 162
    //   158: aload_3
    //   159: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   162: aload_2
    //   163: athrow
    //   164: astore_2
    //   165: aconst_null
    //   166: astore 4
    //   168: aload_1
    //   169: astore_3
    //   170: aload 4
    //   172: astore_1
    //   173: goto -36 -> 137
    //   176: astore_3
    //   177: aload_2
    //   178: astore 4
    //   180: aload_3
    //   181: astore_2
    //   182: aload_1
    //   183: astore_3
    //   184: aload 4
    //   186: astore_1
    //   187: goto -50 -> 137
    //   190: astore_1
    //   191: aconst_null
    //   192: astore_2
    //   193: aconst_null
    //   194: astore_1
    //   195: goto -117 -> 78
    //   198: astore_2
    //   199: aconst_null
    //   200: astore_2
    //   201: goto -123 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	204	0	this	a
    //   12	175	1	localObject1	Object
    //   190	1	1	localException1	Exception
    //   194	1	1	localObject2	Object
    //   20	90	2	localCursor	Cursor
    //   132	31	2	localObject3	Object
    //   164	14	2	localObject4	Object
    //   181	12	2	localObject5	Object
    //   198	1	2	localException2	Exception
    //   200	1	2	localObject6	Object
    //   7	163	3	localObject7	Object
    //   176	5	3	localObject8	Object
    //   183	1	3	localObject9	Object
    //   37	13	4	str	String
    //   76	1	4	localException3	Exception
    //   166	19	4	localObject10	Object
    // Exception table:
    //   from	to	target	type
    //   21	73	76	java/lang/Exception
    //   8	13	132	finally
    //   13	21	164	finally
    //   21	73	176	finally
    //   8	13	190	java/lang/Exception
    //   13	21	198	java/lang/Exception
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    int j = 0;
    Cursor localCursor = paramSQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
    if (localCursor.getCount() <= 14) {
      localCursor.close();
    }
    for (;;)
    {
      return;
      int m = localCursor.getCount() - 14;
      String[] arrayOfString = new String[m];
      if (localCursor.moveToFirst())
      {
        i = 0;
        int k;
        do
        {
          arrayOfString[i] = localCursor.getString(0);
          k = i + 1;
          if (!localCursor.moveToNext()) {
            break;
          }
          i = k;
        } while (m > k);
      }
      localCursor.close();
      int i = j;
      while (i < m)
      {
        if (!TextUtils.isEmpty(arrayOfString[i])) {
          a(paramSQLiteDatabase, arrayOfString[i]);
        }
        i += 1;
      }
    }
  }
  
  static void a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    try
    {
      paramSQLiteDatabase.delete("tb_tid", "name=?", new String[] { paramString });
      return;
    }
    catch (Exception paramSQLiteDatabase) {}
  }
  
  private static boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2)
  {
    SQLiteDatabase localSQLiteDatabase2 = null;
    SQLiteDatabase localSQLiteDatabase1 = null;
    for (;;)
    {
      try
      {
        paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("select count(*) from tb_tid where name=?", new String[] { c(paramString1, paramString2) });
        localSQLiteDatabase1 = paramSQLiteDatabase;
        localSQLiteDatabase2 = paramSQLiteDatabase;
        if (!paramSQLiteDatabase.moveToFirst()) {
          break label113;
        }
        localSQLiteDatabase1 = paramSQLiteDatabase;
        localSQLiteDatabase2 = paramSQLiteDatabase;
        i = paramSQLiteDatabase.getInt(0);
      }
      catch (Exception paramSQLiteDatabase)
      {
        if (localSQLiteDatabase1 == null) {
          break label105;
        }
        localSQLiteDatabase1.close();
        i = 0;
        continue;
      }
      finally
      {
        if (localSQLiteDatabase2 == null) {
          continue;
        }
        localSQLiteDatabase2.close();
      }
      return i > 0;
      label105:
      int i = 0;
      continue;
      continue;
      label113:
      i = 0;
    }
  }
  
  private void b(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    int j = 0;
    paramString3 = b.a(1, paramString3, com.alipay.sdk.util.a.c((Context)this.c.get()));
    paramSQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[] { c(paramString1, paramString2), paramString3, paramString4 });
    paramString1 = paramSQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
    if (paramString1.getCount() <= 14) {
      paramString1.close();
    }
    for (;;)
    {
      return;
      int m = paramString1.getCount() - 14;
      paramString2 = new String[m];
      if (paramString1.moveToFirst())
      {
        i = 0;
        int k;
        do
        {
          paramString2[i] = paramString1.getString(0);
          k = i + 1;
          if (!paramString1.moveToNext()) {
            break;
          }
          i = k;
        } while (m > k);
      }
      paramString1.close();
      int i = j;
      while (i < m)
      {
        if (!TextUtils.isEmpty(paramString2[i])) {
          a(paramSQLiteDatabase, paramString2[i]);
        }
        i += 1;
      }
    }
  }
  
  static String c(String paramString1, String paramString2)
  {
    return paramString1 + paramString2;
  }
  
  private void d(String paramString1, String paramString2)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      a(localSQLiteDatabase, paramString1, paramString2, "", "");
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      a(localSQLiteDatabase, c(paramString1, paramString2));
      if ((localSQLiteDatabase != null) && (localSQLiteDatabase.isOpen())) {
        localSQLiteDatabase.close();
      }
      return;
    }
    catch (Exception paramString1) {}finally
    {
      if ((localObject2 != null) && (((SQLiteDatabase)localObject2).isOpen())) {
        ((SQLiteDatabase)localObject2).close();
      }
    }
  }
  
  /* Error */
  private long e(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 5
    //   3: aload_0
    //   4: invokevirtual 39	com/alipay/sdk/tid/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 9
    //   9: aload 9
    //   11: ldc -96
    //   13: iconst_1
    //   14: anewarray 103	java/lang/String
    //   17: dup
    //   18: iconst_0
    //   19: aload_1
    //   20: aload_2
    //   21: invokestatic 123	com/alipay/sdk/tid/a:c	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   24: aastore
    //   25: invokevirtual 47	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore_2
    //   29: lload 5
    //   31: lstore_3
    //   32: aload_2
    //   33: invokeinterface 106 1 0
    //   38: ifeq +29 -> 67
    //   41: new 162	java/text/SimpleDateFormat
    //   44: dup
    //   45: ldc -92
    //   47: invokestatic 170	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   50: invokespecial 173	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   53: aload_2
    //   54: iconst_0
    //   55: invokeinterface 57 2 0
    //   60: invokevirtual 177	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   63: invokevirtual 183	java/util/Date:getTime	()J
    //   66: lstore_3
    //   67: aload_2
    //   68: ifnull +9 -> 77
    //   71: aload_2
    //   72: invokeinterface 88 1 0
    //   77: lload_3
    //   78: lstore 7
    //   80: aload 9
    //   82: ifnull +22 -> 104
    //   85: lload_3
    //   86: lstore 7
    //   88: aload 9
    //   90: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   93: ifeq +11 -> 104
    //   96: aload 9
    //   98: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   101: lload_3
    //   102: lstore 7
    //   104: lload 7
    //   106: lreturn
    //   107: astore_1
    //   108: aconst_null
    //   109: astore_2
    //   110: aconst_null
    //   111: astore 9
    //   113: aload_2
    //   114: ifnull +9 -> 123
    //   117: aload_2
    //   118: invokeinterface 88 1 0
    //   123: lload 5
    //   125: lstore 7
    //   127: aload 9
    //   129: ifnull -25 -> 104
    //   132: lload 5
    //   134: lstore 7
    //   136: aload 9
    //   138: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   141: ifeq -37 -> 104
    //   144: aload 9
    //   146: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   149: lconst_0
    //   150: lreturn
    //   151: astore_1
    //   152: aconst_null
    //   153: astore_2
    //   154: aconst_null
    //   155: astore 9
    //   157: aload_2
    //   158: ifnull +9 -> 167
    //   161: aload_2
    //   162: invokeinterface 88 1 0
    //   167: aload 9
    //   169: ifnull +16 -> 185
    //   172: aload 9
    //   174: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   177: ifeq +8 -> 185
    //   180: aload 9
    //   182: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   185: aload_1
    //   186: athrow
    //   187: astore_1
    //   188: aconst_null
    //   189: astore_2
    //   190: goto -33 -> 157
    //   193: astore_1
    //   194: goto -37 -> 157
    //   197: astore_1
    //   198: aconst_null
    //   199: astore_2
    //   200: goto -87 -> 113
    //   203: astore_1
    //   204: goto -91 -> 113
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	207	0	this	a
    //   0	207	1	paramString1	String
    //   0	207	2	paramString2	String
    //   31	71	3	l1	long
    //   1	132	5	l2	long
    //   78	57	7	l3	long
    //   7	174	9	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   3	9	107	java/lang/Exception
    //   3	9	151	finally
    //   9	29	187	finally
    //   32	67	193	finally
    //   9	29	197	java/lang/Exception
    //   32	67	203	java/lang/Exception
  }
  
  /* Error */
  public final String a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 39	com/alipay/sdk/tid/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore_3
    //   8: aload_3
    //   9: ldc -71
    //   11: iconst_1
    //   12: anewarray 103	java/lang/String
    //   15: dup
    //   16: iconst_0
    //   17: aload_1
    //   18: aload_2
    //   19: invokestatic 123	com/alipay/sdk/tid/a:c	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   22: aastore
    //   23: invokevirtual 47	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   26: astore_2
    //   27: aload 4
    //   29: astore_1
    //   30: aload_2
    //   31: invokeinterface 106 1 0
    //   36: ifeq +11 -> 47
    //   39: aload_2
    //   40: iconst_0
    //   41: invokeinterface 57 2 0
    //   46: astore_1
    //   47: aload_2
    //   48: ifnull +9 -> 57
    //   51: aload_2
    //   52: invokeinterface 88 1 0
    //   57: aload_3
    //   58: ifnull +136 -> 194
    //   61: aload_3
    //   62: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   65: ifeq +129 -> 194
    //   68: aload_3
    //   69: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   72: aload_1
    //   73: astore_2
    //   74: aload_1
    //   75: invokestatic 63	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   78: ifne +22 -> 100
    //   81: iconst_2
    //   82: aload_1
    //   83: aload_0
    //   84: getfield 26	com/alipay/sdk/tid/a:c	Ljava/lang/ref/WeakReference;
    //   87: invokevirtual 67	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   90: checkcast 69	android/content/Context
    //   93: invokestatic 74	com/alipay/sdk/util/a:c	(Landroid/content/Context;)Ljava/lang/String;
    //   96: invokestatic 79	com/alipay/sdk/encrypt/b:a	(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   99: astore_2
    //   100: aload_2
    //   101: areturn
    //   102: astore_1
    //   103: aconst_null
    //   104: astore_2
    //   105: aconst_null
    //   106: astore_3
    //   107: aload_2
    //   108: ifnull +9 -> 117
    //   111: aload_2
    //   112: invokeinterface 88 1 0
    //   117: aload_3
    //   118: ifnull +71 -> 189
    //   121: aload_3
    //   122: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   125: ifeq +64 -> 189
    //   128: aload_3
    //   129: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   132: aconst_null
    //   133: astore_1
    //   134: goto -62 -> 72
    //   137: astore_1
    //   138: aconst_null
    //   139: astore_2
    //   140: aconst_null
    //   141: astore_3
    //   142: aload_2
    //   143: ifnull +9 -> 152
    //   146: aload_2
    //   147: invokeinterface 88 1 0
    //   152: aload_3
    //   153: ifnull +14 -> 167
    //   156: aload_3
    //   157: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   160: ifeq +7 -> 167
    //   163: aload_3
    //   164: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   167: aload_1
    //   168: athrow
    //   169: astore_1
    //   170: aconst_null
    //   171: astore_2
    //   172: goto -30 -> 142
    //   175: astore_1
    //   176: goto -34 -> 142
    //   179: astore_1
    //   180: aconst_null
    //   181: astore_2
    //   182: goto -75 -> 107
    //   185: astore_1
    //   186: goto -79 -> 107
    //   189: aconst_null
    //   190: astore_1
    //   191: goto -119 -> 72
    //   194: goto -122 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	197	0	this	a
    //   0	197	1	paramString1	String
    //   0	197	2	paramString2	String
    //   7	157	3	localSQLiteDatabase	SQLiteDatabase
    //   1	27	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	8	102	java/lang/Exception
    //   3	8	137	finally
    //   8	27	169	finally
    //   30	47	175	finally
    //   8	27	179	java/lang/Exception
    //   30	47	185	java/lang/Exception
  }
  
  final void a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    paramSQLiteDatabase.execSQL("update tb_tid set tid=?, key_tid=?, dt=datetime('now', 'localtime') where name=?", new Object[] { b.a(1, paramString3, com.alipay.sdk.util.a.c((Context)this.c.get())), paramString4, c(paramString1, paramString2) });
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    localObject2 = null;
    localObject1 = null;
    for (;;)
    {
      try
      {
        localSQLiteDatabase = getWritableDatabase();
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        if (!a(localSQLiteDatabase, paramString1, paramString2)) {
          continue;
        }
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        a(localSQLiteDatabase, paramString1, paramString2, paramString3, paramString4);
      }
      catch (Exception paramString1)
      {
        SQLiteDatabase localSQLiteDatabase;
        return;
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        int k = paramString1.getCount() - 14;
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        paramString2 = new String[k];
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        if (!paramString1.moveToFirst()) {
          continue;
        }
        int i = 0;
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        paramString2[i] = paramString1.getString(0);
        int j = i + 1;
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        if (!paramString1.moveToNext()) {
          continue;
        }
        i = j;
        if (k > j) {
          continue;
        }
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        paramString1.close();
        i = 0;
        if (i >= k) {
          continue;
        }
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        if (TextUtils.isEmpty(paramString2[i])) {
          continue;
        }
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        a(localSQLiteDatabase, paramString2[i]);
        i += 1;
        continue;
      }
      finally
      {
        if ((localObject2 == null) || (!((SQLiteDatabase)localObject2).isOpen())) {
          continue;
        }
        ((SQLiteDatabase)localObject2).close();
      }
      if ((localSQLiteDatabase != null) && (localSQLiteDatabase.isOpen())) {
        localSQLiteDatabase.close();
      }
      return;
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      paramString3 = b.a(1, paramString3, com.alipay.sdk.util.a.c((Context)this.c.get()));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localSQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[] { c(paramString1, paramString2), paramString3, paramString4 });
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      paramString1 = localSQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      if (paramString1.getCount() > 14) {
        continue;
      }
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      paramString1.close();
    }
  }
  
  /* Error */
  public final String b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: invokevirtual 39	com/alipay/sdk/tid/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: astore_3
    //   11: aload_3
    //   12: ldc -64
    //   14: iconst_1
    //   15: anewarray 103	java/lang/String
    //   18: dup
    //   19: iconst_0
    //   20: aload_1
    //   21: aload_2
    //   22: invokestatic 123	com/alipay/sdk/tid/a:c	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   25: aastore
    //   26: invokevirtual 47	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   29: astore_1
    //   30: aload 5
    //   32: astore_2
    //   33: aload_1
    //   34: invokeinterface 106 1 0
    //   39: ifeq +11 -> 50
    //   42: aload_1
    //   43: iconst_0
    //   44: invokeinterface 57 2 0
    //   49: astore_2
    //   50: aload_1
    //   51: ifnull +9 -> 60
    //   54: aload_1
    //   55: invokeinterface 88 1 0
    //   60: aload_2
    //   61: astore_1
    //   62: aload_3
    //   63: ifnull +18 -> 81
    //   66: aload_2
    //   67: astore_1
    //   68: aload_3
    //   69: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   72: ifeq +9 -> 81
    //   75: aload_3
    //   76: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   79: aload_2
    //   80: astore_1
    //   81: aload_1
    //   82: areturn
    //   83: astore_1
    //   84: aconst_null
    //   85: astore_1
    //   86: aconst_null
    //   87: astore_3
    //   88: aload_1
    //   89: ifnull +9 -> 98
    //   92: aload_1
    //   93: invokeinterface 88 1 0
    //   98: aload 4
    //   100: astore_1
    //   101: aload_3
    //   102: ifnull -21 -> 81
    //   105: aload 4
    //   107: astore_1
    //   108: aload_3
    //   109: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   112: ifeq -31 -> 81
    //   115: aload_3
    //   116: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   119: aconst_null
    //   120: areturn
    //   121: astore_1
    //   122: aconst_null
    //   123: astore_2
    //   124: aconst_null
    //   125: astore_3
    //   126: aload_2
    //   127: ifnull +9 -> 136
    //   130: aload_2
    //   131: invokeinterface 88 1 0
    //   136: aload_3
    //   137: ifnull +14 -> 151
    //   140: aload_3
    //   141: invokevirtual 91	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   144: ifeq +7 -> 151
    //   147: aload_3
    //   148: invokevirtual 92	android/database/sqlite/SQLiteDatabase:close	()V
    //   151: aload_1
    //   152: athrow
    //   153: astore_1
    //   154: aconst_null
    //   155: astore_2
    //   156: goto -30 -> 126
    //   159: astore_2
    //   160: aload_1
    //   161: astore 4
    //   163: aload_2
    //   164: astore_1
    //   165: aload 4
    //   167: astore_2
    //   168: goto -42 -> 126
    //   171: astore_1
    //   172: aconst_null
    //   173: astore_1
    //   174: goto -86 -> 88
    //   177: astore_2
    //   178: goto -90 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	181	0	this	a
    //   0	181	1	paramString1	String
    //   0	181	2	paramString2	String
    //   10	138	3	localSQLiteDatabase	SQLiteDatabase
    //   1	165	4	str	String
    //   4	27	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   6	11	83	java/lang/Exception
    //   6	11	121	finally
    //   11	30	153	finally
    //   33	50	159	finally
    //   11	30	171	java/lang/Exception
    //   33	50	177	java/lang/Exception
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
  }
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("drop table if exists tb_tid");
    onCreate(paramSQLiteDatabase);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\tid\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */