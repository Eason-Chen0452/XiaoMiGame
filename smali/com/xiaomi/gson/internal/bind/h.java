package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;
import java.lang.reflect.Field;

final class h
  extends j
{
  final TypeAdapter<?> a = this.f.a(this.b, this.c, this.d);
  
  h(ReflectiveTypeAdapterFactory paramReflectiveTypeAdapterFactory, String paramString, boolean paramBoolean1, boolean paramBoolean2, Gson paramGson, Field paramField, br parambr, boolean paramBoolean3)
  {
    super(paramString, paramBoolean1, paramBoolean2);
  }
  
  final void a(JsonReader paramJsonReader, Object paramObject)
  {
    paramJsonReader = this.a.a(paramJsonReader);
    if ((paramJsonReader != null) || (!this.e)) {
      this.c.set(paramObject, paramJsonReader);
    }
  }
  
  final void a(JsonWriter paramJsonWriter, Object paramObject)
  {
    paramObject = this.c.get(paramObject);
    new n(this.b, this.a, this.d.getType()).a(paramJsonWriter, paramObject);
  }
  
  public final boolean a(Object paramObject)
  {
    if (!this.h) {}
    while (this.c.get(paramObject) == paramObject) {
      return false;
    }
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */