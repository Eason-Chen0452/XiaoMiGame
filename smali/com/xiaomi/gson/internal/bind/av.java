package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;

final class av
  extends TypeAdapter<Number>
{
  private static Number b(JsonReader paramJsonReader)
  {
    if (paramJsonReader.f() == JsonToken.NULL)
    {
      paramJsonReader.j();
      return null;
    }
    try
    {
      byte b = (byte)paramJsonReader.m();
      return Byte.valueOf(b);
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */