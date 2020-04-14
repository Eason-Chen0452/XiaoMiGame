package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.util.concurrent.atomic.AtomicBoolean;

final class TypeAdapters$9
  extends TypeAdapter<AtomicBoolean>
{
  public final AtomicBoolean read(JsonReader paramJsonReader)
  {
    return new AtomicBoolean(paramJsonReader.nextBoolean());
  }
  
  public final void write(JsonWriter paramJsonWriter, AtomicBoolean paramAtomicBoolean)
  {
    paramJsonWriter.value(paramAtomicBoolean.get());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$9.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */