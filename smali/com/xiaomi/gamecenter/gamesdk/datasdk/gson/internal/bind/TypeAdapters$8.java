package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonSyntaxException;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.util.concurrent.atomic.AtomicInteger;

final class TypeAdapters$8
  extends TypeAdapter<AtomicInteger>
{
  public final AtomicInteger read(JsonReader paramJsonReader)
  {
    try
    {
      paramJsonReader = new AtomicInteger(paramJsonReader.nextInt());
      return paramJsonReader;
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
  
  public final void write(JsonWriter paramJsonWriter, AtomicInteger paramAtomicInteger)
  {
    paramJsonWriter.value(paramAtomicInteger.get());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$8.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */