package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import java.lang.reflect.Method;

final class UnsafeAllocator$3
  extends UnsafeAllocator
{
  UnsafeAllocator$3(Method paramMethod) {}
  
  public final <T> T newInstance(Class<T> paramClass)
  {
    assertInstantiable(paramClass);
    return (T)this.val$newInstance.invoke(null, new Object[] { paramClass, Object.class });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\UnsafeAllocator$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */