package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;

final class as
  extends TypeAdapter<T1>
{
  as(ar paramar, Class paramClass) {}
  
  public final T1 a(JsonReader paramJsonReader)
  {
    paramJsonReader = this.b.b.a(paramJsonReader);
    if ((paramJsonReader != null) && (!this.a.isInstance(paramJsonReader))) {
      throw new JsonSyntaxException("Expected a " + this.a.getName() + " but was " + paramJsonReader.getClass().getName());
    }
    return paramJsonReader;
  }
  
  public final void a(JsonWriter paramJsonWriter, T1 paramT1)
  {
    this.b.b.a(paramJsonWriter, paramT1);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */