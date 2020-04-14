package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonIOException;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.net.URI;
import java.net.URISyntaxException;

final class TypeAdapters$22
  extends TypeAdapter<URI>
{
  public final URI read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL) {
      paramJsonReader.nextNull();
    }
    for (;;)
    {
      return null;
      try
      {
        paramJsonReader = paramJsonReader.nextString();
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
  
  public final void write(JsonWriter paramJsonWriter, URI paramURI)
  {
    if (paramURI == null) {}
    for (paramURI = null;; paramURI = paramURI.toASCIIString())
    {
      paramJsonWriter.value(paramURI);
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$22.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */