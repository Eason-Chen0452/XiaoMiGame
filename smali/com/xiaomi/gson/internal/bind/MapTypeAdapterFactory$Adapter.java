package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.ah;
import java.lang.reflect.Type;
import java.util.Map;

final class MapTypeAdapterFactory$Adapter<K, V>
  extends TypeAdapter<Map<K, V>>
{
  private final TypeAdapter<K> b;
  private final TypeAdapter<V> c;
  private final ah<? extends Map<K, V>> d;
  
  public MapTypeAdapterFactory$Adapter(Gson paramGson, Type paramType1, TypeAdapter<K> paramTypeAdapter, Type paramType2, TypeAdapter<V> paramTypeAdapter1, ah<? extends Map<K, V>> paramah)
  {
    this.b = new n(paramType1, paramType2, paramTypeAdapter);
    this.c = new n(paramType1, paramah, paramTypeAdapter1);
    ah localah;
    this.d = localah;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\MapTypeAdapterFactory$Adapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */