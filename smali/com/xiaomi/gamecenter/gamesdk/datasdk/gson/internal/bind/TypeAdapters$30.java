package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;

final class TypeAdapters$30
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    paramTypeToken = paramTypeToken.getRawType();
    if ((!Enum.class.isAssignableFrom(paramTypeToken)) || (paramTypeToken == Enum.class)) {
      return null;
    }
    paramGson = paramTypeToken;
    if (!paramTypeToken.isEnum()) {
      paramGson = paramTypeToken.getSuperclass();
    }
    return new TypeAdapters.EnumTypeAdapter(paramGson);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$30.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */