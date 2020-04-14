package com.xiaomi.greendao.test;

import com.xiaomi.greendao.AbstractDao;

public abstract class AbstractDaoTestStringPk<D extends AbstractDao<T, String>, T>
  extends AbstractDaoTestSinglePk<D, T, String>
{
  public AbstractDaoTestStringPk(Class<D> paramClass)
  {
    super(paramClass);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\test\AbstractDaoTestStringPk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */