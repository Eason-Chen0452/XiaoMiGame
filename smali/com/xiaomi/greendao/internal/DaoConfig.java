package com.xiaomi.greendao.internal;

import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.AbstractDao;
import com.xiaomi.greendao.DaoException;
import com.xiaomi.greendao.Property;
import com.xiaomi.greendao.identityscope.IdentityScopeLong;
import com.xiaomi.greendao.identityscope.IdentityScopeObject;
import com.xiaomi.greendao.identityscope.IdentityScopeType;
import com.xiaomi.greendao.identityscope.a;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class DaoConfig
  implements Cloneable
{
  public final SQLiteDatabase a;
  public final String b;
  public final Property[] c;
  public final String[] d;
  public final String[] e;
  public final String[] f;
  public final Property g;
  public final boolean h;
  public final TableStatements i;
  private a<?, ?> j;
  
  public DaoConfig(SQLiteDatabase paramSQLiteDatabase, Class<? extends AbstractDao<?, ?>> paramClass)
  {
    this.a = paramSQLiteDatabase;
    for (;;)
    {
      int k;
      try
      {
        this.b = ((String)paramClass.getField("TABLENAME").get(null));
        Property[] arrayOfProperty = a(paramClass);
        this.c = arrayOfProperty;
        this.d = new String[arrayOfProperty.length];
        ArrayList localArrayList1 = new ArrayList();
        ArrayList localArrayList2 = new ArrayList();
        k = 0;
        paramClass = null;
        if (k < arrayOfProperty.length)
        {
          Property localProperty = arrayOfProperty[k];
          String str = localProperty.e;
          this.d[k] = str;
          if (localProperty.d)
          {
            localArrayList1.add(str);
            paramClass = localProperty;
          }
          else
          {
            localArrayList2.add(str);
          }
        }
        else
        {
          this.f = ((String[])localArrayList2.toArray(new String[localArrayList2.size()]));
          this.e = ((String[])localArrayList1.toArray(new String[localArrayList1.size()]));
          if (this.e.length != 1) {
            break label353;
          }
          this.g = paramClass;
          this.i = new TableStatements(paramSQLiteDatabase, this.b, this.d, this.e);
          if (this.g != null)
          {
            paramSQLiteDatabase = this.g.b;
            if ((paramSQLiteDatabase.equals(Long.TYPE)) || (paramSQLiteDatabase.equals(Long.class)) || (paramSQLiteDatabase.equals(Integer.TYPE)) || (paramSQLiteDatabase.equals(Integer.class)) || (paramSQLiteDatabase.equals(Short.TYPE)) || (paramSQLiteDatabase.equals(Short.class)) || (paramSQLiteDatabase.equals(Byte.TYPE))) {
              break label347;
            }
            if (!paramSQLiteDatabase.equals(Byte.class)) {
              break label358;
            }
            break label347;
            this.h = bool;
            return;
          }
          this.h = false;
          return;
        }
      }
      catch (Exception paramSQLiteDatabase)
      {
        throw new DaoException("Could not init DAOConfig", paramSQLiteDatabase);
      }
      k += 1;
      continue;
      label347:
      boolean bool = true;
      continue;
      label353:
      paramClass = null;
      continue;
      label358:
      bool = false;
    }
  }
  
  public DaoConfig(DaoConfig paramDaoConfig)
  {
    this.a = paramDaoConfig.a;
    this.b = paramDaoConfig.b;
    this.c = paramDaoConfig.c;
    this.d = paramDaoConfig.d;
    this.e = paramDaoConfig.e;
    this.f = paramDaoConfig.f;
    this.g = paramDaoConfig.g;
    this.i = paramDaoConfig.i;
    this.h = paramDaoConfig.h;
  }
  
  private static Property[] a(Class<? extends AbstractDao<?, ?>> paramClass)
  {
    Object localObject1 = Class.forName(paramClass.getName() + "$Properties").getDeclaredFields();
    paramClass = new ArrayList();
    int m = localObject1.length;
    int k = 0;
    Object localObject2;
    while (k < m)
    {
      localObject2 = localObject1[k];
      if ((((Field)localObject2).getModifiers() & 0x9) == 9)
      {
        localObject2 = ((Field)localObject2).get(null);
        if ((localObject2 instanceof Property)) {
          paramClass.add((Property)localObject2);
        }
      }
      k += 1;
    }
    localObject1 = new Property[paramClass.size()];
    paramClass = paramClass.iterator();
    while (paramClass.hasNext())
    {
      localObject2 = (Property)paramClass.next();
      if (localObject1[localObject2.a] != null) {
        throw new DaoException("Duplicate property ordinals");
      }
      localObject1[localObject2.a] = localObject2;
    }
    return (Property[])localObject1;
  }
  
  public final DaoConfig a()
  {
    return new DaoConfig(this);
  }
  
  public final void a(IdentityScopeType paramIdentityScopeType)
  {
    if (paramIdentityScopeType == IdentityScopeType.None)
    {
      this.j = null;
      return;
    }
    if (paramIdentityScopeType == IdentityScopeType.Session)
    {
      if (this.h)
      {
        this.j = new IdentityScopeLong();
        return;
      }
      this.j = new IdentityScopeObject();
      return;
    }
    throw new IllegalArgumentException("Unsupported type: " + paramIdentityScopeType);
  }
  
  public final void a(a<?, ?> parama)
  {
    this.j = parama;
  }
  
  public final a<?, ?> b()
  {
    return this.j;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\internal\DaoConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */