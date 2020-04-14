package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongArray;

final class Gson$5
  extends TypeAdapter<AtomicLongArray>
{
  Gson$5(TypeAdapter paramTypeAdapter) {}
  
  public final AtomicLongArray read(JsonReader paramJsonReader)
  {
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.beginArray();
    while (paramJsonReader.hasNext()) {
      localArrayList.add(Long.valueOf(((Number)this.val$longAdapter.read(paramJsonReader)).longValue()));
    }
    paramJsonReader.endArray();
    int j = localArrayList.size();
    paramJsonReader = new AtomicLongArray(j);
    int i = 0;
    while (i < j)
    {
      paramJsonReader.set(i, ((Long)localArrayList.get(i)).longValue());
      i += 1;
    }
    return paramJsonReader;
  }
  
  public final void write(JsonWriter paramJsonWriter, AtomicLongArray paramAtomicLongArray)
  {
    paramJsonWriter.beginArray();
    int i = 0;
    int j = paramAtomicLongArray.length();
    while (i < j)
    {
      this.val$longAdapter.write(paramJsonWriter, Long.valueOf(paramAtomicLongArray.get(i)));
      i += 1;
    }
    paramJsonWriter.endArray();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\Gson$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */