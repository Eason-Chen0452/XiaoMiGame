package com.xiaomi.gson.internal;

import com.xiaomi.gson.JsonIOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

final class l
  implements ah<T>
{
  l(ConstructorConstructor paramConstructorConstructor, Type paramType) {}
  
  public final T a()
  {
    if ((this.a instanceof ParameterizedType))
    {
      Type localType = ((ParameterizedType)this.a).getActualTypeArguments()[0];
      if ((localType instanceof Class)) {
        return EnumSet.noneOf((Class)localType);
      }
      throw new JsonIOException("Invalid EnumSet type: " + this.a.toString());
    }
    throw new JsonIOException("Invalid EnumSet type: " + this.a.toString());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */