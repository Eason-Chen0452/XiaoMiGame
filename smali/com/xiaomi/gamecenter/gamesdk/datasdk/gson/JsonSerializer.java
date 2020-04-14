package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import java.lang.reflect.Type;

public abstract interface JsonSerializer<T>
{
  public abstract JsonElement serialize(T paramT, Type paramType, JsonSerializationContext paramJsonSerializationContext);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\JsonSerializer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */