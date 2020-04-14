package com.xiaomi.gson.internal;

import com.xiaomi.gamecenter.sdk.br;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;

public final class ConstructorConstructor
{
  private final Map<Type, com.xiaomi.gson.o<?>> a;
  
  public ConstructorConstructor(Map<Type, com.xiaomi.gson.o<?>> paramMap)
  {
    this.a = paramMap;
  }
  
  private <T> ah<T> a(Class<? super T> paramClass)
  {
    try
    {
      paramClass = paramClass.getDeclaredConstructor(new Class[0]);
      if (!paramClass.isAccessible()) {
        paramClass.setAccessible(true);
      }
      paramClass = new j(this, paramClass);
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  public final <T> ah<T> a(br<T> parambr)
  {
    Type localType = parambr.getType();
    Class localClass = parambr.getRawType();
    parambr = (com.xiaomi.gson.o)this.a.get(localType);
    Object localObject;
    if (parambr != null) {
      localObject = new c(this, parambr, localType);
    }
    do
    {
      return (ah<T>)localObject;
      parambr = (com.xiaomi.gson.o)this.a.get(localClass);
      if (parambr != null) {
        return new i(this, parambr, localType);
      }
      parambr = a(localClass);
      localObject = parambr;
    } while (parambr != null);
    if (Collection.class.isAssignableFrom(localClass)) {
      if (SortedSet.class.isAssignableFrom(localClass)) {
        parambr = new k(this);
      }
    }
    for (;;)
    {
      localObject = parambr;
      if (parambr != null) {
        break;
      }
      return new h(this, localClass, localType);
      if (EnumSet.class.isAssignableFrom(localClass))
      {
        parambr = new l(this, localType);
      }
      else if (Set.class.isAssignableFrom(localClass))
      {
        parambr = new m(this);
      }
      else if (Queue.class.isAssignableFrom(localClass))
      {
        parambr = new n(this);
      }
      else
      {
        parambr = new o(this);
        continue;
        if (Map.class.isAssignableFrom(localClass))
        {
          if (ConcurrentNavigableMap.class.isAssignableFrom(localClass)) {
            parambr = new p(this);
          } else if (ConcurrentMap.class.isAssignableFrom(localClass)) {
            parambr = new d(this);
          } else if (SortedMap.class.isAssignableFrom(localClass)) {
            parambr = new e(this);
          } else if (((localType instanceof ParameterizedType)) && (!String.class.isAssignableFrom(br.get(((ParameterizedType)localType).getActualTypeArguments()[0]).getRawType()))) {
            parambr = new f(this);
          } else {
            parambr = new g(this);
          }
        }
        else {
          parambr = null;
        }
      }
    }
  }
  
  public final String toString()
  {
    return this.a.toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\ConstructorConstructor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */