package com.xiaomi.gson.internal;

import java.lang.reflect.Method;

final class ak
  extends UnsafeAllocator
{
  ak(Method paramMethod, Object paramObject) {}
  
  public final <T> T a(Class<T> paramClass)
  {
    UnsafeAllocator.b(paramClass);
    return (T)this.a.invoke(this.b, new Object[] { paramClass });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */