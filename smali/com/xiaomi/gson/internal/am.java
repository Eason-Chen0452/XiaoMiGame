package com.xiaomi.gson.internal;

import java.lang.reflect.Method;

final class am
  extends UnsafeAllocator
{
  am(Method paramMethod) {}
  
  public final <T> T a(Class<T> paramClass)
  {
    UnsafeAllocator.b(paramClass);
    return (T)this.a.invoke(null, new Object[] { paramClass, Object.class });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */