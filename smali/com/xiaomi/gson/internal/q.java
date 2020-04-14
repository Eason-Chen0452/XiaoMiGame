package com.xiaomi.gson.internal;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;

final class q
  extends TypeAdapter<T>
{
  private TypeAdapter<T> f;
  
  q(Excluder paramExcluder, boolean paramBoolean1, boolean paramBoolean2, Gson paramGson, br parambr) {}
  
  private TypeAdapter<T> b()
  {
    TypeAdapter localTypeAdapter = this.f;
    if (localTypeAdapter != null) {
      return localTypeAdapter;
    }
    localTypeAdapter = this.c.a(this.e, this.d);
    this.f = localTypeAdapter;
    return localTypeAdapter;
  }
  
  public final T a(JsonReader paramJsonReader)
  {
    if (this.a)
    {
      paramJsonReader.n();
      return null;
    }
    return (T)b().a(paramJsonReader);
  }
  
  public final void a(JsonWriter paramJsonWriter, T paramT)
  {
    if (this.b)
    {
      paramJsonWriter.f();
      return;
    }
    b().a(paramJsonWriter, paramT);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */