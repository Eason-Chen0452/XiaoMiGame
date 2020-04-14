package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;

final class TypeAdapters$32
  implements TypeAdapterFactory
{
  TypeAdapters$32(Class paramClass, TypeAdapter paramTypeAdapter) {}
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (paramTypeToken.getRawType() == this.val$type) {
      return this.val$typeAdapter;
    }
    return null;
  }
  
  public final String toString()
  {
    return "Factory[type=" + this.val$type.getName() + ",adapter=" + this.val$typeAdapter + "]";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$32.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */