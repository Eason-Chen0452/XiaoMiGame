package com.xiaomi.greendao.query;

import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.Property;

public class Join<SRC, DST>
{
  final String a;
  final AbstractDao<DST, ?> b;
  final Property c;
  final Property d;
  final String e;
  final l<DST> f;
  
  public Join(String paramString1, Property paramProperty1, AbstractDao<DST, ?> paramAbstractDao, Property paramProperty2, String paramString2)
  {
    this.a = paramString1;
    this.c = paramProperty1;
    this.b = paramAbstractDao;
    this.d = paramProperty2;
    this.e = paramString2;
    this.f = new l(paramAbstractDao, paramString2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\Join.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */