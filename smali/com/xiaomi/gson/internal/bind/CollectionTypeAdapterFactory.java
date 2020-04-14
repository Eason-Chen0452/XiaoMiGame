package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.ConstructorConstructor;
import com.xiaomi.gson.internal.b;
import com.xiaomi.gson.u;
import java.lang.reflect.Type;
import java.util.Collection;

public final class CollectionTypeAdapterFactory
  implements u
{
  private final ConstructorConstructor a;
  
  public CollectionTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor)
  {
    this.a = paramConstructorConstructor;
  }
  
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    Type localType = parambr.getType();
    Class localClass = parambr.getRawType();
    if (!Collection.class.isAssignableFrom(localClass)) {
      return null;
    }
    localType = b.a(localType, localClass);
    return new CollectionTypeAdapterFactory.Adapter(paramGson, localType, paramGson.a(br.get(localType)), this.a.a(parambr));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\CollectionTypeAdapterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */