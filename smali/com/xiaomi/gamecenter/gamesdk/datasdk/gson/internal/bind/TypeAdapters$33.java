package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;

final class TypeAdapters$33
  implements TypeAdapterFactory
{
  TypeAdapters$33(Class paramClass1, Class paramClass2, TypeAdapter paramTypeAdapter) {}
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    paramGson = paramTypeToken.getRawType();
    if ((paramGson == this.val$unboxed) || (paramGson == this.val$boxed)) {
      return this.val$typeAdapter;
    }
    return null;
  }
  
  public final String toString()
  {
    return "Factory[type=" + this.val$boxed.getName() + "+" + this.val$unboxed.getName() + ",adapter=" + this.val$typeAdapter + "]";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$33.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */