package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.u;

final class an
  implements u
{
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    parambr = parambr.getRawType();
    if ((!Enum.class.isAssignableFrom(parambr)) || (parambr == Enum.class)) {
      return null;
    }
    paramGson = parambr;
    if (!parambr.isEnum()) {
      paramGson = parambr.getSuperclass();
    }
    return new TypeAdapters.EnumTypeAdapter(paramGson);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */