package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import java.lang.reflect.Type;

public abstract interface InstanceCreator<T>
{
  public abstract T createInstance(Type paramType);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\InstanceCreator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */