package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;

final class TypeAdapters$20
  extends TypeAdapter<StringBuffer>
{
  public final StringBuffer read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return new StringBuffer(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, StringBuffer paramStringBuffer)
  {
    if (paramStringBuffer == null) {}
    for (paramStringBuffer = null;; paramStringBuffer = paramStringBuffer.toString())
    {
      paramJsonWriter.value(paramStringBuffer);
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$20.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */