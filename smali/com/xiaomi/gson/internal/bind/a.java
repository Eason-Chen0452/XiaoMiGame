package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.b;
import com.xiaomi.gson.u;
import java.lang.reflect.GenericArrayType;

final class a
  implements u
{
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    parambr = parambr.getType();
    if ((!(parambr instanceof GenericArrayType)) && ((!(parambr instanceof Class)) || (!((Class)parambr).isArray()))) {
      return null;
    }
    parambr = b.d(parambr);
    return new ArrayTypeAdapter(paramGson, paramGson.a(br.get(parambr)), b.b(parambr));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */