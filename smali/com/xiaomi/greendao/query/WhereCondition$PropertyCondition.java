package com.xiaomi.greendao.query;

import com.xiaomi.greendao.DaoException;
import com.xiaomi.greendao.Property;
import com.xiaomi.greendao.internal.SqlUtils;
import java.util.Date;

public class WhereCondition$PropertyCondition
  extends WhereCondition.AbstractCondition
{
  public final Property d;
  public final String e;
  
  public WhereCondition$PropertyCondition(Property paramProperty, String paramString)
  {
    this.d = paramProperty;
    this.e = paramString;
  }
  
  public WhereCondition$PropertyCondition(Property paramProperty, String paramString, Object paramObject)
  {
    super(a(paramProperty, paramObject));
    this.d = paramProperty;
    this.e = paramString;
  }
  
  public WhereCondition$PropertyCondition(Property paramProperty, String paramString, Object[] paramArrayOfObject)
  {
    super(a(paramProperty, paramArrayOfObject));
    this.d = paramProperty;
    this.e = paramString;
  }
  
  private static Object a(Property paramProperty, Object paramObject)
  {
    if ((paramObject != null) && (paramObject.getClass().isArray())) {
      throw new DaoException("Illegal value: found array, but simple object required");
    }
    Object localObject;
    if (paramProperty.b == Date.class) {
      if ((paramObject instanceof Date)) {
        localObject = Long.valueOf(((Date)paramObject).getTime());
      }
    }
    do
    {
      int i;
      do
      {
        do
        {
          do
          {
            do
            {
              return localObject;
              localObject = paramObject;
            } while ((paramObject instanceof Long));
            throw new DaoException("Illegal date value: expected java.util.Date or Long for value " + paramObject);
            if (paramProperty.b == Boolean.TYPE) {
              break;
            }
            localObject = paramObject;
          } while (paramProperty.b != Boolean.class);
          if ((paramObject instanceof Boolean))
          {
            if (((Boolean)paramObject).booleanValue()) {}
            for (i = 1;; i = 0) {
              return Integer.valueOf(i);
            }
          }
          if (!(paramObject instanceof Number)) {
            break;
          }
          i = ((Number)paramObject).intValue();
          localObject = paramObject;
        } while (i == 0);
        localObject = paramObject;
      } while (i == 1);
      throw new DaoException("Illegal boolean value: numbers must be 0 or 1, but was " + paramObject);
      localObject = paramObject;
    } while (!(paramObject instanceof String));
    paramProperty = (String)paramObject;
    if ("TRUE".equalsIgnoreCase(paramProperty)) {
      return Integer.valueOf(1);
    }
    if ("FALSE".equalsIgnoreCase(paramProperty)) {
      return Integer.valueOf(0);
    }
    throw new DaoException("Illegal boolean value: Strings must be \"TRUE\" or \"FALSE\" (case insensitive), but was " + paramObject);
  }
  
  private static Object[] a(Property paramProperty, Object[] paramArrayOfObject)
  {
    int i = 0;
    while (i < paramArrayOfObject.length)
    {
      paramArrayOfObject[i] = a(paramProperty, paramArrayOfObject[i]);
      i += 1;
    }
    return paramArrayOfObject;
  }
  
  public final void a(StringBuilder paramStringBuilder, String paramString)
  {
    SqlUtils.a(paramStringBuilder, paramString, this.d).append(this.e);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\WhereCondition$PropertyCondition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */