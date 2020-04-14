package com.xiaomi.greendao.test;

import com.xiaomi.greendao.AbstractDao;

public abstract class AbstractDaoTestLongPk<D extends AbstractDao<T, Long>, T>
  extends AbstractDaoTestSinglePk<D, T, Long>
{
  public AbstractDaoTestLongPk(Class<D> paramClass)
  {
    super(paramClass);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\test\AbstractDaoTestLongPk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */