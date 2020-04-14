package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import java.math.BigDecimal;

final class x
  extends TypeAdapter<BigDecimal>
{
  private static BigDecimal b(JsonReader paramJsonReader)
  {
    if (paramJsonReader.f() == JsonToken.NULL)
    {
      paramJsonReader.j();
      return null;
    }
    try
    {
      paramJsonReader = new BigDecimal(paramJsonReader.h());
      return paramJsonReader;
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */