package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonSyntaxException;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;

final class TypeAdapters$6
  extends TypeAdapter<Number>
{
  public final Number read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    try
    {
      short s = (short)paramJsonReader.nextInt();
      return Short.valueOf(s);
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
  
  public final void write(JsonWriter paramJsonWriter, Number paramNumber)
  {
    paramJsonWriter.value(paramNumber);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */