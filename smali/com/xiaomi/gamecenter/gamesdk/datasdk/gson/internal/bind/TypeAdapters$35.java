package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;

final class TypeAdapters$35
  implements TypeAdapterFactory
{
  TypeAdapters$35(Class paramClass, TypeAdapter paramTypeAdapter) {}
  
  public final <T2> TypeAdapter<T2> create(Gson paramGson, TypeToken<T2> paramTypeToken)
  {
    paramGson = paramTypeToken.getRawType();
    if (!this.val$clazz.isAssignableFrom(paramGson)) {
      return null;
    }
    return new TypeAdapters.35.1(this, paramGson);
  }
  
  public final String toString()
  {
    return "Factory[typeHierarchy=" + this.val$clazz.getName() + ",adapter=" + this.val$typeAdapter + "]";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$35.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */