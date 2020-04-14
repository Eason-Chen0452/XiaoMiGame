package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.InstanceCreator;
import java.lang.reflect.Type;

class ConstructorConstructor$2
  implements ObjectConstructor<T>
{
  ConstructorConstructor$2(ConstructorConstructor paramConstructorConstructor, InstanceCreator paramInstanceCreator, Type paramType) {}
  
  public T construct()
  {
    return (T)this.val$rawTypeCreator.createInstance(this.val$type);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\ConstructorConstructor$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */