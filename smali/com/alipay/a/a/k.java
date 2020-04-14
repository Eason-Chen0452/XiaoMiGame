package com.alipay.a.a;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.json.alipay.a;

public final class k
  implements i
{
  public final Object a(Object paramObject, Type paramType)
  {
    int i = 0;
    if (!paramObject.getClass().equals(a.class)) {
      return null;
    }
    a locala = (a)paramObject;
    HashSet localHashSet = new HashSet();
    if ((paramType instanceof ParameterizedType)) {
      paramObject = ((ParameterizedType)paramType).getActualTypeArguments()[0];
    }
    while (i < locala.a())
    {
      localHashSet.add(e.a(locala.a(i), (Type)paramObject));
      i += 1;
      continue;
      paramObject = Object.class;
    }
    return localHashSet;
  }
  
  public final boolean a(Class<?> paramClass)
  {
    return Set.class.isAssignableFrom(paramClass);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\a\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */