package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.util.concurrent.atomic.AtomicLong;

final class Gson$4
  extends TypeAdapter<AtomicLong>
{
  Gson$4(TypeAdapter paramTypeAdapter) {}
  
  public final AtomicLong read(JsonReader paramJsonReader)
  {
    return new AtomicLong(((Number)this.val$longAdapter.read(paramJsonReader)).longValue());
  }
  
  public final void write(JsonWriter paramJsonWriter, AtomicLong paramAtomicLong)
  {
    this.val$longAdapter.write(paramJsonWriter, Long.valueOf(paramAtomicLong.get()));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\Gson$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */