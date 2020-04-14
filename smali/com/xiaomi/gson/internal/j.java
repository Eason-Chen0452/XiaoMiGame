package com.xiaomi.gson.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

final class j
  implements ah<T>
{
  j(ConstructorConstructor paramConstructorConstructor, Constructor paramConstructor) {}
  
  public final T a()
  {
    try
    {
      Object localObject = this.a.newInstance(null);
      return (T)localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException("Failed to invoke " + this.a + " with no args", localInstantiationException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException("Failed to invoke " + this.a + " with no args", localInvocationTargetException.getTargetException());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */