package com.xiaomi.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class UnsafeAllocator
{
  public static UnsafeAllocator a()
  {
    try
    {
      Object localObject1 = Class.forName("sun.misc.Unsafe");
      Object localObject4 = ((Class)localObject1).getDeclaredField("theUnsafe");
      ((Field)localObject4).setAccessible(true);
      localObject4 = ((Field)localObject4).get(null);
      localObject1 = new ak(((Class)localObject1).getMethod("allocateInstance", new Class[] { Class.class }), localObject4);
      return (UnsafeAllocator)localObject1;
    }
    catch (Exception localException1)
    {
      try
      {
        Object localObject2 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", new Class[] { Class.class });
        ((Method)localObject2).setAccessible(true);
        int i = ((Integer)((Method)localObject2).invoke(null, new Object[] { Object.class })).intValue();
        localObject2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Integer.TYPE });
        ((Method)localObject2).setAccessible(true);
        localObject2 = new al((Method)localObject2, i);
        return (UnsafeAllocator)localObject2;
      }
      catch (Exception localException2)
      {
        try
        {
          Object localObject3 = ObjectInputStream.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Class.class });
          ((Method)localObject3).setAccessible(true);
          localObject3 = new am((Method)localObject3);
          return (UnsafeAllocator)localObject3;
        }
        catch (Exception localException3) {}
      }
    }
    return new an();
  }
  
  public abstract <T> T a(Class<T> paramClass);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\UnsafeAllocator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */