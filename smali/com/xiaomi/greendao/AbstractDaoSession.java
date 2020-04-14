package com.xiaomi.greendao;

import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.async.AsyncSession;
import com.xiaomi.greendao.query.e;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

public class AbstractDaoSession
{
  private final SQLiteDatabase db;
  private final Map<Class<?>, AbstractDao<?, ?>> entityToDao;
  
  public AbstractDaoSession(SQLiteDatabase paramSQLiteDatabase)
  {
    this.db = paramSQLiteDatabase;
    this.entityToDao = new HashMap();
  }
  
  public <V> V callInTx(Callable<V> paramCallable)
  {
    this.db.beginTransaction();
    try
    {
      paramCallable = paramCallable.call();
      this.db.setTransactionSuccessful();
      return paramCallable;
    }
    finally
    {
      this.db.endTransaction();
    }
  }
  
  public <V> V callInTxNoException(Callable<V> paramCallable)
  {
    this.db.beginTransaction();
    try
    {
      paramCallable = paramCallable.call();
      this.db.setTransactionSuccessful();
      return paramCallable;
    }
    catch (Exception paramCallable)
    {
      throw new DaoException("Callable failed", paramCallable);
    }
    finally
    {
      this.db.endTransaction();
    }
  }
  
  public <T> void delete(T paramT)
  {
    getDao(paramT.getClass()).delete(paramT);
  }
  
  public <T> void deleteAll(Class<T> paramClass)
  {
    getDao(paramClass).deleteAll();
  }
  
  public Collection<AbstractDao<?, ?>> getAllDaos()
  {
    return Collections.unmodifiableCollection(this.entityToDao.values());
  }
  
  public AbstractDao<?, ?> getDao(Class<? extends Object> paramClass)
  {
    AbstractDao localAbstractDao = (AbstractDao)this.entityToDao.get(paramClass);
    if (localAbstractDao == null) {
      throw new DaoException("No DAO registered for " + paramClass);
    }
    return localAbstractDao;
  }
  
  public SQLiteDatabase getDatabase()
  {
    return this.db;
  }
  
  public <T> long insert(T paramT)
  {
    return getDao(paramT.getClass()).insert(paramT);
  }
  
  public <T> long insertOrReplace(T paramT)
  {
    return getDao(paramT.getClass()).insertOrReplace(paramT);
  }
  
  public <T, K> T load(Class<T> paramClass, K paramK)
  {
    return (T)getDao(paramClass).load(paramK);
  }
  
  public <T, K> List<T> loadAll(Class<T> paramClass)
  {
    return getDao(paramClass).loadAll();
  }
  
  public <T> e<T> queryBuilder(Class<T> paramClass)
  {
    return getDao(paramClass).queryBuilder();
  }
  
  public <T, K> List<T> queryRaw(Class<T> paramClass, String paramString, String... paramVarArgs)
  {
    return getDao(paramClass).queryRaw(paramString, paramVarArgs);
  }
  
  public <T> void refresh(T paramT)
  {
    getDao(paramT.getClass()).refresh(paramT);
  }
  
  protected <T> void registerDao(Class<T> paramClass, AbstractDao<T, ?> paramAbstractDao)
  {
    this.entityToDao.put(paramClass, paramAbstractDao);
  }
  
  public void runInTx(Runnable paramRunnable)
  {
    this.db.beginTransaction();
    try
    {
      paramRunnable.run();
      this.db.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.db.endTransaction();
    }
  }
  
  public AsyncSession startAsyncSession()
  {
    return new AsyncSession(this);
  }
  
  public <T> void update(T paramT)
  {
    getDao(paramT.getClass()).update(paramT);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\AbstractDaoSession.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */