package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;

class TypeAdapter$1
  extends TypeAdapter<T>
{
  TypeAdapter$1(TypeAdapter paramTypeAdapter) {}
  
  public T read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return (T)this.this$0.read(paramJsonReader);
  }
  
  public void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (paramT == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    this.this$0.write(paramJsonWriter, paramT);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\TypeAdapter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */