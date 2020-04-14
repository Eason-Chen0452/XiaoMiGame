package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.ConstructorConstructor;
import com.xiaomi.gson.internal.b;
import com.xiaomi.gson.u;
import java.lang.reflect.Type;
import java.util.Map;

public final class MapTypeAdapterFactory
  implements u
{
  final boolean a;
  private final ConstructorConstructor b;
  
  public MapTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, boolean paramBoolean)
  {
    this.b = paramConstructorConstructor;
    this.a = paramBoolean;
  }
  
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    Object localObject = parambr.getType();
    if (!Map.class.isAssignableFrom(parambr.getRawType())) {
      return null;
    }
    Type[] arrayOfType = b.b((Type)localObject, b.b((Type)localObject));
    localObject = arrayOfType[0];
    if ((localObject == Boolean.TYPE) || (localObject == Boolean.class)) {}
    for (localObject = o.f;; localObject = paramGson.a(br.get((Type)localObject)))
    {
      TypeAdapter localTypeAdapter = paramGson.a(br.get(arrayOfType[1]));
      parambr = this.b.a(parambr);
      return new MapTypeAdapterFactory.Adapter(this, paramGson, arrayOfType[0], (TypeAdapter)localObject, arrayOfType[1], localTypeAdapter, parambr);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\MapTypeAdapterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */