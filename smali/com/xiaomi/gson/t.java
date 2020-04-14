package com.xiaomi.gson;

import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import com.xiaomi.gson.stream.JsonWriter;

final class t
  extends TypeAdapter<T>
{
  t(TypeAdapter paramTypeAdapter) {}
  
  public final T a(JsonReader paramJsonReader)
  {
    if (paramJsonReader.f() == JsonToken.NULL)
    {
      paramJsonReader.j();
      return null;
    }
    return (T)this.a.a(paramJsonReader);
  }
  
  public final void a(JsonWriter paramJsonWriter, T paramT)
  {
    if (paramT == null)
    {
      paramJsonWriter.f();
      return;
    }
    this.a.a(paramJsonWriter, paramT);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */