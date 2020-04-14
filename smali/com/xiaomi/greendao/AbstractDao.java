package com.xiaomi.greendao;

import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.xiaomi.greendao.identityscope.IdentityScopeLong;
import com.xiaomi.greendao.identityscope.a;
import com.xiaomi.greendao.internal.DaoConfig;
import com.xiaomi.greendao.internal.TableStatements;
import com.xiaomi.greendao.query.d;
import com.xiaomi.greendao.query.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractDao<T, K>
{
  protected final DaoConfig config;
  protected final SQLiteDatabase db;
  protected a<K, T> identityScope;
  protected IdentityScopeLong<T> identityScopeLong;
  protected final int pkOrdinal;
  protected final AbstractDaoSession session;
  protected TableStatements statements;
  
  public AbstractDao(DaoConfig paramDaoConfig)
  {
    this(paramDaoConfig, null);
  }
  
  public AbstractDao(DaoConfig paramDaoConfig, AbstractDaoSession paramAbstractDaoSession)
  {
    this.config = paramDaoConfig;
    this.session = paramAbstractDaoSession;
    this.db = paramDaoConfig.a;
    this.identityScope = paramDaoConfig.b();
    if ((this.identityScope instanceof IdentityScopeLong)) {
      this.identityScopeLong = ((IdentityScopeLong)this.identityScope);
    }
    this.statements = paramDaoConfig.i;
    if (paramDaoConfig.g != null) {}
    for (int i = paramDaoConfig.g.a;; i = -1)
    {
      this.pkOrdinal = i;
      return;
    }
  }
  
  private void deleteByKeyInsideSynchronized(K paramK, SQLiteStatement paramSQLiteStatement)
  {
    if ((paramK instanceof Long)) {
      paramSQLiteStatement.bindLong(1, ((Long)paramK).longValue());
    }
    for (;;)
    {
      paramSQLiteStatement.execute();
      return;
      if (paramK == null) {
        throw new DaoException("Cannot delete entity, key is null");
      }
      paramSQLiteStatement.bindString(1, paramK.toString());
    }
  }
  
  private void deleteInTxInternal(Iterable<T> paramIterable, Iterable<K> paramIterable1)
  {
    assertSinglePk();
    SQLiteStatement localSQLiteStatement = this.statements.c();
    ArrayList localArrayList = null;
    this.db.beginTransaction();
    try
    {
      try
      {
        if (this.identityScope != null)
        {
          this.identityScope.b();
          localArrayList = new ArrayList();
        }
        if (paramIterable != null)
        {
          try
          {
            paramIterable = paramIterable.iterator();
            while (paramIterable.hasNext())
            {
              Object localObject = getKeyVerified(paramIterable.next());
              deleteByKeyInsideSynchronized(localObject, localSQLiteStatement);
              if (localArrayList != null) {
                localArrayList.add(localObject);
              }
            }
            paramIterable = finally;
          }
          finally
          {
            if (this.identityScope != null) {
              this.identityScope.c();
            }
          }
          paramIterable = finally;
        }
      }
      finally {}
      if (paramIterable1 == null) {
        break label189;
      }
    }
    finally
    {
      this.db.endTransaction();
    }
    paramIterable = paramIterable1.iterator();
    while (paramIterable.hasNext())
    {
      paramIterable1 = paramIterable.next();
      deleteByKeyInsideSynchronized(paramIterable1, localSQLiteStatement);
      if (localArrayList != null) {
        localArrayList.add(paramIterable1);
      }
    }
    label189:
    if (this.identityScope != null) {
      this.identityScope.c();
    }
    this.db.setTransactionSuccessful();
    if ((localArrayList != null) && (this.identityScope != null)) {
      this.identityScope.a(localArrayList);
    }
    this.db.endTransaction();
  }
  
  /* Error */
  private long executeInsert(T paramT, SQLiteStatement paramSQLiteStatement)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   4: invokevirtual 168	android/database/sqlite/SQLiteDatabase:isDbLockedByCurrentThread	()Z
    //   7: ifeq +32 -> 39
    //   10: aload_2
    //   11: monitorenter
    //   12: aload_0
    //   13: aload_2
    //   14: aload_1
    //   15: invokevirtual 172	com/xiaomi/greendao/AbstractDao:bindValues	(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    //   18: aload_2
    //   19: invokevirtual 174	android/database/sqlite/SQLiteStatement:executeInsert	()J
    //   22: lstore_3
    //   23: aload_2
    //   24: monitorexit
    //   25: aload_0
    //   26: aload_1
    //   27: lload_3
    //   28: iconst_1
    //   29: invokevirtual 178	com/xiaomi/greendao/AbstractDao:updateKeyAfterInsertAndAttach	(Ljava/lang/Object;JZ)V
    //   32: lload_3
    //   33: lreturn
    //   34: astore_1
    //   35: aload_2
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    //   39: aload_0
    //   40: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   43: invokevirtual 116	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   46: aload_2
    //   47: monitorenter
    //   48: aload_0
    //   49: aload_2
    //   50: aload_1
    //   51: invokevirtual 172	com/xiaomi/greendao/AbstractDao:bindValues	(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    //   54: aload_2
    //   55: invokevirtual 174	android/database/sqlite/SQLiteStatement:executeInsert	()J
    //   58: lstore_3
    //   59: aload_2
    //   60: monitorexit
    //   61: aload_0
    //   62: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   65: invokevirtual 159	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   68: aload_0
    //   69: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   72: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   75: goto -50 -> 25
    //   78: astore_1
    //   79: aload_2
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    //   83: astore_1
    //   84: aload_0
    //   85: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   88: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   91: aload_1
    //   92: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	AbstractDao
    //   0	93	1	paramT	T
    //   0	93	2	paramSQLiteStatement	SQLiteStatement
    //   22	37	3	l	long
    // Exception table:
    //   from	to	target	type
    //   12	25	34	finally
    //   35	37	34	finally
    //   48	61	78	finally
    //   79	81	78	finally
    //   46	48	83	finally
    //   61	68	83	finally
    //   81	83	83	finally
  }
  
  private void executeInsertInTx(SQLiteStatement paramSQLiteStatement, Iterable<T> paramIterable, boolean paramBoolean)
  {
    this.db.beginTransaction();
    label108:
    for (;;)
    {
      try
      {
        try
        {
          if (this.identityScope != null) {
            this.identityScope.b();
          }
          try
          {
            paramIterable = paramIterable.iterator();
            if (!paramIterable.hasNext()) {
              break;
            }
            Object localObject = paramIterable.next();
            bindValues(paramSQLiteStatement, localObject);
            if (!paramBoolean) {
              break label108;
            }
            updateKeyAfterInsertAndAttach(localObject, paramSQLiteStatement.executeInsert(), false);
            continue;
            paramIterable = finally;
          }
          finally
          {
            if (this.identityScope != null) {
              this.identityScope.c();
            }
          }
          paramSQLiteStatement = finally;
        }
        finally {}
        paramSQLiteStatement.execute();
      }
      finally
      {
        this.db.endTransaction();
      }
    }
    if (this.identityScope != null) {
      this.identityScope.c();
    }
    this.db.setTransactionSuccessful();
    this.db.endTransaction();
  }
  
  private void loadAllUnlockOnWindowBounds(Cursor paramCursor, CursorWindow paramCursorWindow, List<T> paramList)
  {
    int i = paramCursorWindow.getStartPosition();
    i = paramCursorWindow.getNumRows() + i;
    int j = 0;
    paramList.add(loadCurrent(paramCursor, 0, false));
    j += 1;
    if (j >= i)
    {
      paramCursorWindow = moveToNextUnlocked(paramCursor);
      if (paramCursorWindow != null)
      {
        i = paramCursorWindow.getStartPosition();
        i = paramCursorWindow.getNumRows() + i;
      }
    }
    else
    {
      while (paramCursor.moveToNext())
      {
        j += 1;
        break;
      }
    }
  }
  
  private CursorWindow moveToNextUnlocked(Cursor paramCursor)
  {
    this.identityScope.c();
    try
    {
      if (paramCursor.moveToNext())
      {
        paramCursor = ((CrossProcessCursor)paramCursor).getWindow();
        return paramCursor;
      }
      return null;
    }
    finally
    {
      this.identityScope.b();
    }
  }
  
  protected void assertSinglePk()
  {
    if (this.config.e.length != 1) {
      throw new DaoException(this + " (" + this.config.b + ") does not have a single-column primary key");
    }
  }
  
  protected void attachEntity(T paramT) {}
  
  protected final void attachEntity(K paramK, T paramT, boolean paramBoolean)
  {
    attachEntity(paramT);
    if ((this.identityScope != null) && (paramK != null))
    {
      if (paramBoolean) {
        this.identityScope.a(paramK, paramT);
      }
    }
    else {
      return;
    }
    this.identityScope.b(paramK, paramT);
  }
  
  protected abstract void bindValues(SQLiteStatement paramSQLiteStatement, T paramT);
  
  public long count()
  {
    return DatabaseUtils.queryNumEntries(this.db, "'" + this.config.b + '\'');
  }
  
  public void delete(T paramT)
  {
    assertSinglePk();
    deleteByKey(getKeyVerified(paramT));
  }
  
  public void deleteAll()
  {
    this.db.execSQL("DELETE FROM '" + this.config.b + "'");
    if (this.identityScope != null) {
      this.identityScope.a();
    }
  }
  
  /* Error */
  public void deleteByKey(K paramK)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 105	com/xiaomi/greendao/AbstractDao:assertSinglePk	()V
    //   4: aload_0
    //   5: getfield 56	com/xiaomi/greendao/AbstractDao:statements	Lcom/xiaomi/greendao/internal/TableStatements;
    //   8: invokevirtual 111	com/xiaomi/greendao/internal/TableStatements:c	()Landroid/database/sqlite/SQLiteStatement;
    //   11: astore_2
    //   12: aload_0
    //   13: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   16: invokevirtual 168	android/database/sqlite/SQLiteDatabase:isDbLockedByCurrentThread	()Z
    //   19: ifeq +36 -> 55
    //   22: aload_2
    //   23: monitorenter
    //   24: aload_0
    //   25: aload_1
    //   26: aload_2
    //   27: invokespecial 145	com/xiaomi/greendao/AbstractDao:deleteByKeyInsideSynchronized	(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V
    //   30: aload_2
    //   31: monitorexit
    //   32: aload_0
    //   33: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   36: ifnull +13 -> 49
    //   39: aload_0
    //   40: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   43: aload_1
    //   44: invokeinterface 274 2 0
    //   49: return
    //   50: astore_1
    //   51: aload_2
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    //   55: aload_0
    //   56: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   59: invokevirtual 116	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   62: aload_2
    //   63: monitorenter
    //   64: aload_0
    //   65: aload_1
    //   66: aload_2
    //   67: invokespecial 145	com/xiaomi/greendao/AbstractDao:deleteByKeyInsideSynchronized	(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;)V
    //   70: aload_2
    //   71: monitorexit
    //   72: aload_0
    //   73: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   76: invokevirtual 159	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   79: aload_0
    //   80: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   83: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   86: goto -54 -> 32
    //   89: astore_1
    //   90: aload_2
    //   91: monitorexit
    //   92: aload_1
    //   93: athrow
    //   94: astore_1
    //   95: aload_0
    //   96: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   99: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   102: aload_1
    //   103: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	this	AbstractDao
    //   0	104	1	paramK	K
    //   11	80	2	localSQLiteStatement	SQLiteStatement
    // Exception table:
    //   from	to	target	type
    //   24	32	50	finally
    //   51	53	50	finally
    //   64	72	89	finally
    //   90	92	89	finally
    //   62	64	94	finally
    //   72	79	94	finally
    //   92	94	94	finally
  }
  
  public void deleteByKeyInTx(Iterable<K> paramIterable)
  {
    deleteInTxInternal(null, paramIterable);
  }
  
  public void deleteByKeyInTx(K... paramVarArgs)
  {
    deleteInTxInternal(null, Arrays.asList(paramVarArgs));
  }
  
  public void deleteInTx(Iterable<T> paramIterable)
  {
    deleteInTxInternal(paramIterable, null);
  }
  
  public void deleteInTx(T... paramVarArgs)
  {
    deleteInTxInternal(Arrays.asList(paramVarArgs), null);
  }
  
  public boolean detach(T paramT)
  {
    if (this.identityScope != null)
    {
      Object localObject = getKeyVerified(paramT);
      return this.identityScope.c(localObject, paramT);
    }
    return false;
  }
  
  public void detachAll()
  {
    if (this.identityScope != null) {
      this.identityScope.a();
    }
  }
  
  public String[] getAllColumns()
  {
    return this.config.d;
  }
  
  public SQLiteDatabase getDatabase()
  {
    return this.db;
  }
  
  protected abstract K getKey(T paramT);
  
  protected K getKeyVerified(T paramT)
  {
    Object localObject = getKey(paramT);
    if (localObject == null)
    {
      if (paramT == null) {
        throw new NullPointerException("Entity may not be null");
      }
      throw new DaoException("Entity has no key");
    }
    return (K)localObject;
  }
  
  public String[] getNonPkColumns()
  {
    return this.config.f;
  }
  
  public String[] getPkColumns()
  {
    return this.config.e;
  }
  
  public Property getPkProperty()
  {
    return this.config.g;
  }
  
  public Property[] getProperties()
  {
    return this.config.c;
  }
  
  public AbstractDaoSession getSession()
  {
    return this.session;
  }
  
  TableStatements getStatements()
  {
    return this.config.i;
  }
  
  public String getTablename()
  {
    return this.config.b;
  }
  
  public long insert(T paramT)
  {
    return executeInsert(paramT, this.statements.a());
  }
  
  public void insertInTx(Iterable<T> paramIterable)
  {
    insertInTx(paramIterable, isEntityUpdateable());
  }
  
  public void insertInTx(Iterable<T> paramIterable, boolean paramBoolean)
  {
    executeInsertInTx(this.statements.a(), paramIterable, paramBoolean);
  }
  
  public void insertInTx(T... paramVarArgs)
  {
    insertInTx(Arrays.asList(paramVarArgs), isEntityUpdateable());
  }
  
  public long insertOrReplace(T paramT)
  {
    return executeInsert(paramT, this.statements.b());
  }
  
  public void insertOrReplaceInTx(Iterable<T> paramIterable)
  {
    insertOrReplaceInTx(paramIterable, isEntityUpdateable());
  }
  
  public void insertOrReplaceInTx(Iterable<T> paramIterable, boolean paramBoolean)
  {
    executeInsertInTx(this.statements.b(), paramIterable, paramBoolean);
  }
  
  public void insertOrReplaceInTx(T... paramVarArgs)
  {
    insertOrReplaceInTx(Arrays.asList(paramVarArgs), isEntityUpdateable());
  }
  
  /* Error */
  public long insertWithoutSettingPk(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 56	com/xiaomi/greendao/AbstractDao:statements	Lcom/xiaomi/greendao/internal/TableStatements;
    //   4: invokevirtual 335	com/xiaomi/greendao/internal/TableStatements:a	()Landroid/database/sqlite/SQLiteStatement;
    //   7: astore 4
    //   9: aload_0
    //   10: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   13: invokevirtual 168	android/database/sqlite/SQLiteDatabase:isDbLockedByCurrentThread	()Z
    //   16: ifeq +30 -> 46
    //   19: aload 4
    //   21: monitorenter
    //   22: aload_0
    //   23: aload 4
    //   25: aload_1
    //   26: invokevirtual 172	com/xiaomi/greendao/AbstractDao:bindValues	(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    //   29: aload 4
    //   31: invokevirtual 174	android/database/sqlite/SQLiteStatement:executeInsert	()J
    //   34: lstore_2
    //   35: aload 4
    //   37: monitorexit
    //   38: lload_2
    //   39: lreturn
    //   40: astore_1
    //   41: aload 4
    //   43: monitorexit
    //   44: aload_1
    //   45: athrow
    //   46: aload_0
    //   47: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   50: invokevirtual 116	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   53: aload 4
    //   55: monitorenter
    //   56: aload_0
    //   57: aload 4
    //   59: aload_1
    //   60: invokevirtual 172	com/xiaomi/greendao/AbstractDao:bindValues	(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    //   63: aload 4
    //   65: invokevirtual 174	android/database/sqlite/SQLiteStatement:executeInsert	()J
    //   68: lstore_2
    //   69: aload 4
    //   71: monitorexit
    //   72: aload_0
    //   73: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   76: invokevirtual 159	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   79: aload_0
    //   80: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   83: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   86: lload_2
    //   87: lreturn
    //   88: astore_1
    //   89: aload 4
    //   91: monitorexit
    //   92: aload_1
    //   93: athrow
    //   94: astore_1
    //   95: aload_0
    //   96: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   99: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   102: aload_1
    //   103: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	this	AbstractDao
    //   0	104	1	paramT	T
    //   34	53	2	l	long
    //   7	83	4	localSQLiteStatement	SQLiteStatement
    // Exception table:
    //   from	to	target	type
    //   22	38	40	finally
    //   41	44	40	finally
    //   56	72	88	finally
    //   89	92	88	finally
    //   53	56	94	finally
    //   72	79	94	finally
    //   92	94	94	finally
  }
  
  protected abstract boolean isEntityUpdateable();
  
  public T load(K paramK)
  {
    assertSinglePk();
    if (paramK == null) {
      localObject1 = null;
    }
    Object localObject2;
    do
    {
      return (T)localObject1;
      if (this.identityScope == null) {
        break;
      }
      localObject2 = this.identityScope.a(paramK);
      localObject1 = localObject2;
    } while (localObject2 != null);
    Object localObject1 = this.statements.f();
    paramK = paramK.toString();
    return (T)loadUniqueAndCloseCursor(this.db.rawQuery((String)localObject1, new String[] { paramK }));
  }
  
  public List<T> loadAll()
  {
    return loadAllAndCloseCursor(this.db.rawQuery(this.statements.e(), null));
  }
  
  protected List<T> loadAllAndCloseCursor(Cursor paramCursor)
  {
    try
    {
      List localList = loadAllFromCursor(paramCursor);
      return localList;
    }
    finally
    {
      paramCursor.close();
    }
  }
  
  /* Error */
  protected List<T> loadAllFromCursor(Cursor paramCursor)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 390 1 0
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +11 -> 19
    //   11: new 122	java/util/ArrayList
    //   14: dup
    //   15: invokespecial 123	java/util/ArrayList:<init>	()V
    //   18: areturn
    //   19: new 122	java/util/ArrayList
    //   22: dup
    //   23: iload_3
    //   24: invokespecial 393	java/util/ArrayList:<init>	(I)V
    //   27: astore 7
    //   29: aconst_null
    //   30: astore 5
    //   32: aload_1
    //   33: instanceof 209
    //   36: ifeq +166 -> 202
    //   39: aload_1
    //   40: checkcast 209	android/database/CrossProcessCursor
    //   43: invokeinterface 213 1 0
    //   48: astore 6
    //   50: aload 6
    //   52: astore 5
    //   54: aload 6
    //   56: ifnull +146 -> 202
    //   59: aload 6
    //   61: invokevirtual 193	android/database/CursorWindow:getNumRows	()I
    //   64: iload_3
    //   65: if_icmpne +98 -> 163
    //   68: new 395	com/xiaomi/greendao/internal/FastCursor
    //   71: dup
    //   72: aload 6
    //   74: invokespecial 398	com/xiaomi/greendao/internal/FastCursor:<init>	(Landroid/database/CursorWindow;)V
    //   77: astore_1
    //   78: iconst_1
    //   79: istore_2
    //   80: aload 6
    //   82: astore 5
    //   84: aload_1
    //   85: invokeinterface 401 1 0
    //   90: ifeq +70 -> 160
    //   93: aload_0
    //   94: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   97: ifnull +22 -> 119
    //   100: aload_0
    //   101: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   104: invokeinterface 120 1 0
    //   109: aload_0
    //   110: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   113: iload_3
    //   114: invokeinterface 403 2 0
    //   119: iload_2
    //   120: ifne +87 -> 207
    //   123: aload 5
    //   125: ifnull +82 -> 207
    //   128: aload_0
    //   129: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   132: ifnull +75 -> 207
    //   135: aload_0
    //   136: aload_1
    //   137: aload 5
    //   139: aload 7
    //   141: invokespecial 405	com/xiaomi/greendao/AbstractDao:loadAllUnlockOnWindowBounds	(Landroid/database/Cursor;Landroid/database/CursorWindow;Ljava/util/List;)V
    //   144: aload_0
    //   145: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   148: ifnull +12 -> 160
    //   151: aload_0
    //   152: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   155: invokeinterface 153 1 0
    //   160: aload 7
    //   162: areturn
    //   163: new 219	java/lang/StringBuilder
    //   166: dup
    //   167: ldc_w 407
    //   170: invokespecial 251	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   173: aload 6
    //   175: invokevirtual 193	android/database/CursorWindow:getNumRows	()I
    //   178: invokevirtual 410	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   181: ldc_w 412
    //   184: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: iload_3
    //   188: invokevirtual 410	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   191: invokevirtual 235	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 417	com/xiaomi/greendao/DaoLog:a	(Ljava/lang/String;)I
    //   197: pop
    //   198: aload 6
    //   200: astore 5
    //   202: iconst_0
    //   203: istore_2
    //   204: goto -120 -> 84
    //   207: aload 7
    //   209: aload_0
    //   210: aload_1
    //   211: iconst_0
    //   212: iconst_0
    //   213: invokevirtual 197	com/xiaomi/greendao/AbstractDao:loadCurrent	(Landroid/database/Cursor;IZ)Ljava/lang/Object;
    //   216: invokeinterface 151 2 0
    //   221: pop
    //   222: aload_1
    //   223: invokeinterface 206 1 0
    //   228: istore 4
    //   230: iload 4
    //   232: ifne -25 -> 207
    //   235: goto -91 -> 144
    //   238: astore_1
    //   239: aload_0
    //   240: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   243: ifnull +12 -> 255
    //   246: aload_0
    //   247: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   250: invokeinterface 153 1 0
    //   255: aload_1
    //   256: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	257	0	this	AbstractDao
    //   0	257	1	paramCursor	Cursor
    //   79	125	2	i	int
    //   6	182	3	j	int
    //   228	3	4	bool	boolean
    //   30	171	5	localObject	Object
    //   48	151	6	localCursorWindow	CursorWindow
    //   27	181	7	localArrayList	ArrayList
    // Exception table:
    //   from	to	target	type
    //   128	144	238	finally
    //   207	230	238	finally
  }
  
  public T loadByRowId(long paramLong)
  {
    String str = Long.toString(paramLong);
    return (T)loadUniqueAndCloseCursor(this.db.rawQuery(this.statements.g(), new String[] { str }));
  }
  
  protected final T loadCurrent(Cursor paramCursor, int paramInt, boolean paramBoolean)
  {
    Object localObject1 = null;
    if (this.identityScopeLong != null) {
      if ((paramInt == 0) || (!paramCursor.isNull(this.pkOrdinal + paramInt))) {}
    }
    label112:
    do
    {
      Object localObject3;
      do
      {
        return (T)localObject1;
        long l = paramCursor.getLong(this.pkOrdinal + paramInt);
        if (paramBoolean) {}
        for (localObject2 = this.identityScopeLong.a(l);; localObject2 = this.identityScopeLong.b(l))
        {
          localObject1 = localObject2;
          if (localObject2 != null) {
            break;
          }
          paramCursor = readEntity(paramCursor, paramInt);
          attachEntity(paramCursor);
          if (!paramBoolean) {
            break label112;
          }
          this.identityScopeLong.a(l, paramCursor);
          return paramCursor;
        }
        this.identityScopeLong.b(l, paramCursor);
        return paramCursor;
        if (this.identityScope == null) {
          break;
        }
        localObject3 = readKey(paramCursor, paramInt);
      } while ((paramInt != 0) && (localObject3 == null));
      if (paramBoolean) {}
      for (Object localObject2 = this.identityScope.a(localObject3);; localObject2 = this.identityScope.b(localObject3))
      {
        localObject1 = localObject2;
        if (localObject2 != null) {
          break;
        }
        paramCursor = readEntity(paramCursor, paramInt);
        attachEntity(localObject3, paramCursor, paramBoolean);
        return paramCursor;
      }
    } while ((paramInt != 0) && (readKey(paramCursor, paramInt) == null));
    paramCursor = readEntity(paramCursor, paramInt);
    attachEntity(paramCursor);
    return paramCursor;
  }
  
  protected final <O> O loadCurrentOther(AbstractDao<O, ?> paramAbstractDao, Cursor paramCursor, int paramInt)
  {
    return (O)paramAbstractDao.loadCurrent(paramCursor, paramInt, true);
  }
  
  protected T loadUnique(Cursor paramCursor)
  {
    if (!paramCursor.moveToFirst()) {
      return null;
    }
    if (!paramCursor.isLast()) {
      throw new DaoException("Expected unique result, but count was " + paramCursor.getCount());
    }
    return (T)loadCurrent(paramCursor, 0, true);
  }
  
  protected T loadUniqueAndCloseCursor(Cursor paramCursor)
  {
    try
    {
      Object localObject1 = loadUnique(paramCursor);
      return (T)localObject1;
    }
    finally
    {
      paramCursor.close();
    }
  }
  
  public e<T> queryBuilder()
  {
    return e.a(this);
  }
  
  public List<T> queryRaw(String paramString, String... paramVarArgs)
  {
    return loadAllAndCloseCursor(this.db.rawQuery(this.statements.e() + paramString, paramVarArgs));
  }
  
  public d<T> queryRawCreate(String paramString, Object... paramVarArgs)
  {
    return queryRawCreateListArgs(paramString, Arrays.asList(paramVarArgs));
  }
  
  public d<T> queryRawCreateListArgs(String paramString, Collection<Object> paramCollection)
  {
    return d.a(this, this.statements.e() + paramString, paramCollection.toArray());
  }
  
  protected abstract T readEntity(Cursor paramCursor, int paramInt);
  
  protected abstract void readEntity(Cursor paramCursor, T paramT, int paramInt);
  
  protected abstract K readKey(Cursor paramCursor, int paramInt);
  
  public void refresh(T paramT)
  {
    assertSinglePk();
    Object localObject1 = getKeyVerified(paramT);
    Object localObject2 = this.statements.f();
    String str = localObject1.toString();
    localObject2 = this.db.rawQuery((String)localObject2, new String[] { str });
    try
    {
      if (!((Cursor)localObject2).moveToFirst()) {
        throw new DaoException("Entity does not exist in the database anymore: " + paramT.getClass() + " with key " + localObject1);
      }
    }
    finally
    {
      ((Cursor)localObject2).close();
    }
    if (!((Cursor)localObject2).isLast()) {
      throw new DaoException("Expected unique result, but count was " + ((Cursor)localObject2).getCount());
    }
    readEntity((Cursor)localObject2, paramT, 0);
    attachEntity(localObject1, paramT, true);
    ((Cursor)localObject2).close();
  }
  
  /* Error */
  public void update(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 105	com/xiaomi/greendao/AbstractDao:assertSinglePk	()V
    //   4: aload_0
    //   5: getfield 56	com/xiaomi/greendao/AbstractDao:statements	Lcom/xiaomi/greendao/internal/TableStatements;
    //   8: invokevirtual 511	com/xiaomi/greendao/internal/TableStatements:d	()Landroid/database/sqlite/SQLiteStatement;
    //   11: astore_2
    //   12: aload_0
    //   13: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   16: invokevirtual 168	android/database/sqlite/SQLiteDatabase:isDbLockedByCurrentThread	()Z
    //   19: ifeq +20 -> 39
    //   22: aload_2
    //   23: monitorenter
    //   24: aload_0
    //   25: aload_1
    //   26: aload_2
    //   27: iconst_1
    //   28: invokevirtual 515	com/xiaomi/greendao/AbstractDao:updateInsideSynchronized	(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    //   31: aload_2
    //   32: monitorexit
    //   33: return
    //   34: astore_1
    //   35: aload_2
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    //   39: aload_0
    //   40: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   43: invokevirtual 116	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   46: aload_2
    //   47: monitorenter
    //   48: aload_0
    //   49: aload_1
    //   50: aload_2
    //   51: iconst_1
    //   52: invokevirtual 515	com/xiaomi/greendao/AbstractDao:updateInsideSynchronized	(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    //   55: aload_2
    //   56: monitorexit
    //   57: aload_0
    //   58: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   61: invokevirtual 159	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   64: aload_0
    //   65: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   68: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   71: return
    //   72: astore_1
    //   73: aload_2
    //   74: monitorexit
    //   75: aload_1
    //   76: athrow
    //   77: astore_1
    //   78: aload_0
    //   79: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   82: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   85: aload_1
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	AbstractDao
    //   0	87	1	paramT	T
    //   11	63	2	localSQLiteStatement	SQLiteStatement
    // Exception table:
    //   from	to	target	type
    //   24	33	34	finally
    //   35	37	34	finally
    //   48	57	72	finally
    //   73	75	72	finally
    //   46	48	77	finally
    //   57	64	77	finally
    //   75	77	77	finally
  }
  
  /* Error */
  public void updateInTx(Iterable<T> paramIterable)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 56	com/xiaomi/greendao/AbstractDao:statements	Lcom/xiaomi/greendao/internal/TableStatements;
    //   4: invokevirtual 511	com/xiaomi/greendao/internal/TableStatements:d	()Landroid/database/sqlite/SQLiteStatement;
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   12: invokevirtual 116	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   15: aload_2
    //   16: monitorenter
    //   17: aload_0
    //   18: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   21: ifnull +12 -> 33
    //   24: aload_0
    //   25: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   28: invokeinterface 120 1 0
    //   33: aload_1
    //   34: invokeinterface 129 1 0
    //   39: astore_1
    //   40: aload_1
    //   41: invokeinterface 135 1 0
    //   46: ifeq +51 -> 97
    //   49: aload_0
    //   50: aload_1
    //   51: invokeinterface 139 1 0
    //   56: aload_2
    //   57: iconst_0
    //   58: invokevirtual 515	com/xiaomi/greendao/AbstractDao:updateInsideSynchronized	(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    //   61: goto -21 -> 40
    //   64: astore_1
    //   65: aload_0
    //   66: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   69: ifnull +12 -> 81
    //   72: aload_0
    //   73: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   76: invokeinterface 153 1 0
    //   81: aload_1
    //   82: athrow
    //   83: astore_1
    //   84: aload_2
    //   85: monitorexit
    //   86: aload_1
    //   87: athrow
    //   88: astore_1
    //   89: aload_0
    //   90: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   93: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   96: return
    //   97: aload_0
    //   98: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   101: ifnull +12 -> 113
    //   104: aload_0
    //   105: getfield 47	com/xiaomi/greendao/AbstractDao:identityScope	Lcom/xiaomi/greendao/identityscope/a;
    //   108: invokeinterface 153 1 0
    //   113: aload_2
    //   114: monitorexit
    //   115: aload_0
    //   116: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   119: invokevirtual 159	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   122: aload_0
    //   123: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   126: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   129: return
    //   130: astore_1
    //   131: aload_1
    //   132: athrow
    //   133: astore_2
    //   134: ldc_w 520
    //   137: aload_2
    //   138: invokestatic 523	com/xiaomi/greendao/DaoLog:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   141: pop
    //   142: aload_1
    //   143: athrow
    //   144: astore_1
    //   145: aload_0
    //   146: getfield 41	com/xiaomi/greendao/AbstractDao:db	Landroid/database/sqlite/SQLiteDatabase;
    //   149: invokevirtual 156	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   152: aload_1
    //   153: athrow
    //   154: astore_1
    //   155: aload_1
    //   156: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	this	AbstractDao
    //   0	157	1	paramIterable	Iterable<T>
    //   7	107	2	localSQLiteStatement	SQLiteStatement
    //   133	5	2	localRuntimeException	RuntimeException
    // Exception table:
    //   from	to	target	type
    //   33	40	64	finally
    //   40	61	64	finally
    //   17	33	83	finally
    //   65	81	83	finally
    //   81	83	83	finally
    //   84	86	83	finally
    //   97	113	83	finally
    //   113	115	83	finally
    //   15	17	88	java/lang/RuntimeException
    //   86	88	88	java/lang/RuntimeException
    //   115	122	88	java/lang/RuntimeException
    //   122	129	130	java/lang/RuntimeException
    //   89	96	133	java/lang/RuntimeException
    //   15	17	144	finally
    //   86	88	144	finally
    //   115	122	144	finally
    //   145	152	154	java/lang/RuntimeException
  }
  
  public void updateInTx(T... paramVarArgs)
  {
    updateInTx(Arrays.asList(paramVarArgs));
  }
  
  protected void updateInsideSynchronized(T paramT, SQLiteStatement paramSQLiteStatement, boolean paramBoolean)
  {
    bindValues(paramSQLiteStatement, paramT);
    int i = this.config.d.length + 1;
    Object localObject = getKey(paramT);
    if ((localObject instanceof Long)) {
      paramSQLiteStatement.bindLong(i, ((Long)localObject).longValue());
    }
    for (;;)
    {
      paramSQLiteStatement.execute();
      attachEntity(localObject, paramT, paramBoolean);
      return;
      if (localObject == null) {
        throw new DaoException("Cannot update entity without key - was it inserted before?");
      }
      paramSQLiteStatement.bindString(i, localObject.toString());
    }
  }
  
  protected abstract K updateKeyAfterInsert(T paramT, long paramLong);
  
  protected void updateKeyAfterInsertAndAttach(T paramT, long paramLong, boolean paramBoolean)
  {
    if (paramLong != -1L)
    {
      attachEntity(updateKeyAfterInsert(paramT, paramLong), paramT, paramBoolean);
      return;
    }
    DaoLog.c("Could not insert row (executeInsert returned -1)");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\AbstractDao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */