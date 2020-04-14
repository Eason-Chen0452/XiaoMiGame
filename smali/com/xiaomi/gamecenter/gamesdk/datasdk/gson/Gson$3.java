package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;

final class Gson$3
  extends TypeAdapter<Number>
{
  public final Number read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return Long.valueOf(paramJsonReader.nextLong());
  }
  
  public final void write(JsonWriter paramJsonWriter, Number paramNumber)
  {
    if (paramNumber == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.value(paramNumber.toString());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\Gson$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */