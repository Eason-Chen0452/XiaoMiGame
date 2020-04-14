package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerArray;

final class q
  extends TypeAdapter<AtomicIntegerArray>
{
  private static AtomicIntegerArray b(JsonReader paramJsonReader)
  {
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.a();
    while (paramJsonReader.e()) {
      try
      {
        localArrayList.add(Integer.valueOf(paramJsonReader.m()));
      }
      catch (NumberFormatException paramJsonReader)
      {
        throw new JsonSyntaxException(paramJsonReader);
      }
    }
    paramJsonReader.b();
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
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */