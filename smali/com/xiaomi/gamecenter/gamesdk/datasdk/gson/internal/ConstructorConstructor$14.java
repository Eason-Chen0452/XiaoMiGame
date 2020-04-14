package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import java.lang.reflect.Type;

class ConstructorConstructor$14
  implements ObjectConstructor<T>
{
  private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();
  
  ConstructorConstructor$14(ConstructorConstructor paramConstructorConstructor, Class paramClass, Type paramType) {}
  
  public T construct()
  {
    try
    {
      Object localObject = this.unsafeAllocator.newInstance(this.val$rawType);
      return (T)localObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Unable to invoke no-args constructor for " + this.val$type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", localException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\ConstructorConstructor$14.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */