package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.ah;
import java.lang.reflect.Type;
import java.util.Collection;

final class CollectionTypeAdapterFactory$Adapter<E>
  extends TypeAdapter<Collection<E>>
{
  private final TypeAdapter<E> a;
  private final ah<? extends Collection<E>> b;
  
  public CollectionTypeAdapterFactory$Adapter(Gson paramGson, Type paramType, TypeAdapter<E> paramTypeAdapter, ah<? extends Collection<E>> paramah)
  {
    this.a = new n(paramGson, paramTypeAdapter, paramType);
    this.b = paramah;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\CollectionTypeAdapterFactory$Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */