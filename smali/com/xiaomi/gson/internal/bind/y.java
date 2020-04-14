package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import java.math.BigInteger;

final class y
  extends TypeAdapter<BigInteger>
{
  private static BigInteger b(JsonReader paramJsonReader)
  {
    if (paramJsonReader.f() == JsonToken.NULL)
    {
      paramJsonReader.j();
      return null;
    }
    try
    {
      paramJsonReader = new BigInteger(paramJsonReader.h());
      return paramJsonReader;
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */