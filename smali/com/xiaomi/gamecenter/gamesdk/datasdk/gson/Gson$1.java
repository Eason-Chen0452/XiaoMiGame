package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;

class Gson$1
  extends TypeAdapter<Number>
{
  Gson$1(Gson paramGson) {}
  
  public Double read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return Double.valueOf(paramJsonReader.nextDouble());
  }
  
  public void write(JsonWriter paramJsonWriter, Number paramNumber)
  {
    if (paramNumber == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    Gson.checkValidFloatingPoint(paramNumber.doubleValue());
    paramJsonWriter.value(paramNumber);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\Gson$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */