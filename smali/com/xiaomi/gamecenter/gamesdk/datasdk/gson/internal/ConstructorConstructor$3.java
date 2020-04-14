package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

class ConstructorConstructor$3
  implements ObjectConstructor<T>
{
  ConstructorConstructor$3(ConstructorConstructor paramConstructorConstructor, Constructor paramConstructor) {}
  
  public T construct()
  {
    try
    {
      Object localObject = this.val$constructor.newInstance(null);
      return (T)localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", localInstantiationException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", localInvocationTargetException.getTargetException());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\ConstructorConstructor$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */