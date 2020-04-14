package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonSyntaxException;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerArray;

final class TypeAdapters$10
  extends TypeAdapter<AtomicIntegerArray>
{
  public final AtomicIntegerArray read(JsonReader paramJsonReader)
  {
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.beginArray();
    while (paramJsonReader.hasNext()) {
      try
      {
        localArrayList.add(Integer.valueOf(paramJsonReader.nextInt()));
      }
      catch (NumberFormatException paramJsonReader)
      {
        throw new JsonSyntaxException(paramJsonReader);
      }
    }
    paramJsonReader.endArray();
    int j = localArrayList.size();
    paramJsonReader = new AtomicIntegerArray(j);
    int i = 0;
    while (i < j)
    {
      paramJsonReader.set(i, ((Integer)localArrayList.get(i)).intValue());
      i += 1;
    }
    return paramJsonReader;
  }
  
  public final void write(JsonWriter paramJsonWriter, AtomicIntegerArray paramAtomicIntegerArray)
  {
    paramJsonWriter.beginArray();
    int i = 0;
    int j = paramAtomicIntegerArray.length();
    while (i < j)
    {
      paramJsonWriter.value(paramAtomicIntegerArray.get(i));
      i += 1;
    }
    paramJsonWriter.endArray();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$10.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */