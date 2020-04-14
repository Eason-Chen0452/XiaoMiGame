package com.xiaomi.greendao.test;

import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.InternalUnitTestDaoAccess;
import com.xiaomi.greendao.Property;
import java.util.HashSet;
import java.util.Set;

public abstract class AbstractDaoTestSinglePk<D extends AbstractDao<T, K>, T, K>
  extends AbstractDaoTest<D, T, K>
{
  protected Set<K> e = new HashSet();
  private Property i;
  
  public AbstractDaoTestSinglePk(Class<D> paramClass)
  {
    super(paramClass);
  }
  
  protected void setUp()
  {
    super.setUp();
    Property[] arrayOfProperty = this.c.a();
    int k = arrayOfProperty.length;
    int j = 0;
    while (j < k)
    {
      Property localProperty = arrayOfProperty[j];
      if (localProperty.d)
      {
        if (this.i != null) {
          throw new RuntimeException("Test does not work with multiple PK columns");
        }
        this.i = localProperty;
      }
      j += 1;
    }
    if (this.i == null) {
      throw new RuntimeException("Test does not work without a PK column");
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\test\AbstractDaoTestSinglePk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */