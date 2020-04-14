package com.xiaomi.gson;

import com.xiaomi.gson.internal.bind.JsonTreeWriter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;
import java.io.IOException;

public abstract class TypeAdapter<T>
{
  public final JsonElement a(T paramT)
  {
    try
    {
      JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
      a(localJsonTreeWriter, paramT);
      paramT = localJsonTreeWriter.a();
      return paramT;
    }
    catch (IOException paramT)
    {
      throw new JsonIOException(paramT);
    }
  }
  
  public final TypeAdapter<T> a()
  {
    return new t(this);
  }
  
  public abstract T a(JsonReader paramJsonReader);
  
  public abstract void a(JsonWriter paramJsonWriter, T paramT);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\TypeAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */