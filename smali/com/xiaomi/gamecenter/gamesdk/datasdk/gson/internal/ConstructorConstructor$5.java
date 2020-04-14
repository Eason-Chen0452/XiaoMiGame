package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonIOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

class ConstructorConstructor$5
  implements ObjectConstructor<T>
{
  ConstructorConstructor$5(ConstructorConstructor paramConstructorConstructor, Type paramType) {}
  
  public T construct()
  {
    if ((this.val$type instanceof ParameterizedType))
    {
      Type localType = ((ParameterizedType)this.val$type).getActualTypeArguments()[0];
      if ((localType instanceof Class)) {
        return EnumSet.noneOf((Class)localType);
      }
      throw new JsonIOException("Invalid EnumSet type: " + this.val$type.toString());
    }
    throw new JsonIOException("Invalid EnumSet type: " + this.val$type.toString());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\ConstructorConstructor$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */