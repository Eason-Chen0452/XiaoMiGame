package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonIOException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import java.net.URI;
import java.net.URISyntaxException;

final class ad
  extends TypeAdapter<URI>
{
  private static URI b(JsonReader paramJsonReader)
  {
    if (paramJsonReader.f() == JsonToken.NULL) {
      paramJsonReader.j();
    }
    for (;;)
    {
      return null;
      try
      {
        paramJsonReader = paramJsonReader.h();
        if ("null".equals(paramJsonReader)) {
          continue;
        }
        paramJsonReader = new URI(paramJsonReader);
        return paramJsonReader;
      }
      catch (URISyntaxException paramJsonReader)
      {
        throw new JsonIOException(paramJsonReader);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */