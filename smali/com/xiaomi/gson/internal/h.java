package com.xiaomi.gson.internal;

import java.lang.reflect.Type;

final class h
  implements ah<T>
{
  private final UnsafeAllocator d = UnsafeAllocator.a();
  
  h(ConstructorConstructor paramConstructorConstructor, Class paramClass, Type paramType) {}
  
  public final T a()
  {
    try
    {
      Object localObject = this.d.a(this.a);
      return (T)localObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Unable to invoke no-args constructor for " + this.b + ". Register an InstanceCreator with Gson for this type may fix this problem.", localException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */