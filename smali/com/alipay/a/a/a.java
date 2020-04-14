package com.alipay.a.a;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public final class a
  implements i, j
{
  public final Object a(Object paramObject)
  {
    paramObject = (Object[])paramObject;
    ArrayList localArrayList = new ArrayList();
    int j = paramObject.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(f.b(paramObject[i]));
      i += 1;
    }
    return localArrayList;
  }
  
  public final Object a(Object paramObject, Type paramType)
  {
    if (!paramObject.getClass().equals(org.json.alipay.a.class))
    {
      paramObject = null;
      return paramObject;
    }
    org.json.alipay.a locala = (org.json.alipay.a)paramObject;
    if ((paramType instanceof GenericArrayType)) {
      throw new IllegalArgumentException("Does not support generic array!");
    }
    Class localClass = ((Class)paramType).getComponentType();
    int j = locala.a();
    paramType = Array.newInstance(localClass, j);
    int i = 0;
    for (;;)
    {
      paramObject = paramType;
      if (i >= j) {
        break;
      }
      Array.set(paramType, i, e.a(locala.a(i), localClass));
      i += 1;
    }
  }
  
  public final boolean a(Class<?> paramClass)
  {
    return paramClass.isArray();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */