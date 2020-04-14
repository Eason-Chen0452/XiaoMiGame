package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal..Gson.Types;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;
import java.lang.reflect.GenericArrayType;

final class ArrayTypeAdapter$1
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    paramTypeToken = paramTypeToken.getType();
    if ((!(paramTypeToken instanceof GenericArrayType)) && ((!(paramTypeToken instanceof Class)) || (!((Class)paramTypeToken).isArray()))) {
      return null;
    }
    paramTypeToken = .Gson.Types.getArrayComponentType(paramTypeToken);
    return new ArrayTypeAdapter(paramGson, paramGson.getAdapter(TypeToken.get(paramTypeToken)), .Gson.Types.getRawType(paramTypeToken));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\ArrayTypeAdapter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */