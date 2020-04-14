package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.JsonNull;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.aj;
import com.xiaomi.gson.p;
import com.xiaomi.gson.q;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;
import com.xiaomi.gson.u;

public final class TreeTypeAdapter<T>
  extends TypeAdapter<T>
{
  private final q<T> a;
  private final p<T> b;
  private final Gson c;
  private final br<T> d;
  private final u e;
  private final TreeTypeAdapter<T>.m f = new m(this, (byte)0);
  private TypeAdapter<T> g;
  
  public TreeTypeAdapter(q<T> paramq, p<T> paramp, Gson paramGson, br<T> parambr, u paramu)
  {
    this.a = paramq;
    this.b = paramp;
    this.c = paramGson;
    this.d = parambr;
    this.e = paramu;
  }
  
  private TypeAdapter<T> b()
  {
    TypeAdapter localTypeAdapter = this.g;
    if (localTypeAdapter != null) {
      return localTypeAdapter;
    }
    localTypeAdapter = this.c.a(this.e, this.d);
    this.g = localTypeAdapter;
    return localTypeAdapter;
  }
  
  public final T a(JsonReader paramJsonReader)
  {
    if (this.b == null) {
      return (T)b().a(paramJsonReader);
    }
    paramJsonReader = aj.a(paramJsonReader);
    if ((paramJsonReader instanceof JsonNull)) {
      return null;
    }
    return (T)this.b.a(paramJsonReader, this.d.getType());
  }
  
  public final void a(JsonWriter paramJsonWriter, T paramT)
  {
    if (this.a == null)
    {
      b().a(paramJsonWriter, paramT);
      return;
    }
    if (paramT == null)
    {
      paramJsonWriter.f();
      return;
    }
    q localq = this.a;
    this.d.getType();
    aj.a(localq.a(paramT), paramJsonWriter);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\TreeTypeAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */