package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.bn;
import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.ConstructorConstructor;
import com.xiaomi.gson.internal.ah;
import com.xiaomi.gson.u;

public final class JsonAdapterAnnotationTypeAdapterFactory
  implements u
{
  private final ConstructorConstructor a;
  
  public JsonAdapterAnnotationTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor)
  {
    this.a = paramConstructorConstructor;
  }
  
  static TypeAdapter<?> a(ConstructorConstructor paramConstructorConstructor, Gson paramGson, br<?> parambr, bn parambn)
  {
    parambn = parambn.a();
    if (TypeAdapter.class.isAssignableFrom(parambn)) {}
    for (paramConstructorConstructor = (TypeAdapter)paramConstructorConstructor.a(br.get(parambn)).a();; paramConstructorConstructor = ((u)paramConstructorConstructor.a(br.get(parambn)).a()).a(paramGson, parambr))
    {
      paramGson = paramConstructorConstructor;
      if (paramConstructorConstructor != null) {
        paramGson = paramConstructorConstructor.a();
      }
      return paramGson;
      if (!u.class.isAssignableFrom(parambn)) {
        break;
      }
    }
    throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
  }
  
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    bn localbn = (bn)parambr.getRawType().getAnnotation(bn.class);
    if (localbn == null) {
      return null;
    }
    return a(this.a, paramGson, parambr, localbn);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\JsonAdapterAnnotationTypeAdapterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */