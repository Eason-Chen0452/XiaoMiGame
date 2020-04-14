package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import java.util.concurrent.atomic.AtomicInteger;

final class ay
  extends TypeAdapter<AtomicInteger>
{
  private static AtomicInteger b(JsonReader paramJsonReader)
  {
    try
    {
      paramJsonReader = new AtomicInteger(paramJsonReader.m());
      return paramJsonReader;
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\ay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */