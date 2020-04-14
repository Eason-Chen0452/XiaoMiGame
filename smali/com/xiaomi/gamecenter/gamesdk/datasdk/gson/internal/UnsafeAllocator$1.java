package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import java.lang.reflect.Method;

final class UnsafeAllocator$1
  extends UnsafeAllocator
{
  UnsafeAllocator$1(Method paramMethod, Object paramObject) {}
  
  public final <T> T newInstance(Class<T> paramClass)
  {
    assertInstantiable(paramClass);
    return (T)this.val$allocateInstance.invoke(this.val$unsafe, new Object[] { paramClass });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\UnsafeAllocator$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */