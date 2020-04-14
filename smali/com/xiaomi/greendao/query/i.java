package com.xiaomi.greendao.query;

import com.xiaomi.greendao.AbstractDao;

abstract class i<T>
  extends g<T>
{
  protected final int f;
  protected final int g;
  
  protected i(AbstractDao<T, ?> paramAbstractDao, String paramString, String[] paramArrayOfString, int paramInt1, int paramInt2)
  {
    super(paramAbstractDao, paramString, paramArrayOfString);
    this.f = paramInt1;
    this.g = paramInt2;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */