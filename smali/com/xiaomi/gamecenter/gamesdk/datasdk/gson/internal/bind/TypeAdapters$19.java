package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;

final class TypeAdapters$19
  extends TypeAdapter<StringBuilder>
{
  public final StringBuilder read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return new StringBuilder(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, StringBuilder paramStringBuilder)
  {
    if (paramStringBuilder == null) {}
    for (paramStringBuilder = null;; paramStringBuilder = paramStringBuilder.toString())
    {
      paramJsonWriter.value(paramStringBuilder);
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$19.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */