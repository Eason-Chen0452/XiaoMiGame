package com.xiaomi.gson.internal;

import java.lang.reflect.Method;

final class al
  extends UnsafeAllocator
{
  al(Method paramMethod, int paramInt) {}
  
  public final <T> T a(Class<T> paramClass)
  {
    UnsafeAllocator.b(paramClass);
    return (T)this.a.invoke(null, new Object[] { paramClass, Integer.valueOf(this.b) });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */