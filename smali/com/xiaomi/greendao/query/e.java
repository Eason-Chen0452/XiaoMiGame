package com.xiaomi.greendao.query;

import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.DaoLog;
import com.xiaomi.greendao.internal.SqlUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class e<T>
{
  public static boolean a;
  public static boolean b;
  private final l<T> c;
  private StringBuilder d;
  private final List<Object> e;
  private final List<Join<T, ?>> f;
  private final AbstractDao<T, ?> g;
  private final String h;
  private Integer i;
  private Integer j;
  private boolean k;
  
  private e(AbstractDao<T, ?> paramAbstractDao)
  {
    this(paramAbstractDao, "T");
  }
  
  private e(AbstractDao<T, ?> paramAbstractDao, String paramString)
  {
    this.g = paramAbstractDao;
    this.h = paramString;
    this.e = new ArrayList();
    this.f = new ArrayList();
    this.c = new l(paramAbstractDao, paramString);
  }
  
  public static <T2> e<T2> a(AbstractDao<T2, ?> paramAbstractDao)
  {
    return new e(paramAbstractDao);
  }
  
  private void a(String paramString)
  {
    if (a) {
      DaoLog.a("Built SQL for query: " + paramString);
    }
    if (b) {
      DaoLog.a("Values for query: " + this.e);
    }
  }
  
  private void a(StringBuilder paramStringBuilder, String paramString)
  {
    this.e.clear();
    Object localObject = this.f.iterator();
    while (((Iterator)localObject).hasNext())
    {
      Join localJoin = (Join)((Iterator)localObject).next();
      paramStringBuilder.append(" JOIN ").append(localJoin.b.getTablename()).append(' ');
      paramStringBuilder.append(localJoin.e).append(" ON ");
      SqlUtils.a(paramStringBuilder, localJoin.a, localJoin.c).append('=');
      SqlUtils.a(paramStringBuilder, localJoin.e, localJoin.d);
    }
    int m;
    if (!this.c.a())
    {
      m = 1;
      if (m != 0)
      {
        paramStringBuilder.append(" WHERE ");
        this.c.a(paramStringBuilder, paramString, this.e);
      }
      paramString = this.f.iterator();
      label164:
      do
      {
        if (!paramString.hasNext()) {
          break;
        }
        localObject = (Join)paramString.next();
      } while (((Join)localObject).f.a());
      if (m != 0) {
        break label234;
      }
      paramStringBuilder.append(" WHERE ");
      m = 1;
    }
    for (;;)
    {
      ((Join)localObject).f.a(paramStringBuilder, ((Join)localObject).e, this.e);
      break label164;
      m = 0;
      break;
      label234:
      paramStringBuilder.append(" AND ");
    }
  }
  
  public final d<T> a()
  {
    int n = -1;
    Object localObject = new StringBuilder(SqlUtils.a(this.g.getTablename(), this.h, this.g.getAllColumns(), this.k));
    a((StringBuilder)localObject, this.h);
    if ((this.d != null) && (this.d.length() > 0)) {
      ((StringBuilder)localObject).append(" ORDER BY ").append(this.d);
    }
    if (this.i != null)
    {
      ((StringBuilder)localObject).append(" LIMIT ?");
      this.e.add(this.i);
    }
    for (int m = this.e.size() - 1;; m = -1)
    {
      if (this.j != null)
      {
        if (this.i == null) {
          throw new IllegalStateException("Offset cannot be set without limit");
        }
        ((StringBuilder)localObject).append(" OFFSET ?");
        this.e.add(this.j);
        n = this.e.size() - 1;
      }
      localObject = ((StringBuilder)localObject).toString();
      a((String)localObject);
      return d.a(this.g, (String)localObject, this.e.toArray(), m, n);
    }
  }
  
  public final b<T> b()
  {
    Object localObject = new StringBuilder(SqlUtils.a(this.g.getTablename(), this.h));
    a((StringBuilder)localObject, this.h);
    localObject = ((StringBuilder)localObject).toString();
    a((String)localObject);
    return b.a(this.g, (String)localObject, this.e.toArray());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */