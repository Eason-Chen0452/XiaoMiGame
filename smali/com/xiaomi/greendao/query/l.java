package com.xiaomi.greendao.query;

import com.xiaomi.greendao.AbstractDao;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

final class l<T>
{
  private final AbstractDao<T, ?> a;
  private final List<f> b;
  private final String c;
  
  l(AbstractDao<T, ?> paramAbstractDao, String paramString)
  {
    this.a = paramAbstractDao;
    this.c = paramString;
    this.b = new ArrayList();
  }
  
  final void a(StringBuilder paramStringBuilder, String paramString, List<Object> paramList)
  {
    ListIterator localListIterator = this.b.listIterator();
    while (localListIterator.hasNext())
    {
      if (localListIterator.hasPrevious()) {
        paramStringBuilder.append(" AND ");
      }
      f localf = (f)localListIterator.next();
      localf.a(paramStringBuilder, paramString);
      localf.a(paramList);
    }
  }
  
  final boolean a()
  {
    return this.b.isEmpty();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */