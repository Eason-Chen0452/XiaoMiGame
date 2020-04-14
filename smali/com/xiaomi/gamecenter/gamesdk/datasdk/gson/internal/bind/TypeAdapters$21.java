package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.net.URL;

final class TypeAdapters$21
  extends TypeAdapter<URL>
{
  public final URL read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL) {
      paramJsonReader.nextNull();
    }
    do
    {
      return null;
      paramJsonReader = paramJsonReader.nextString();
    } while ("null".equals(paramJsonReader));
    return new URL(paramJsonReader);
  }
  
  public final void write(JsonWriter paramJsonWriter, URL paramURL)
  {
    if (paramURL == null) {}
    for (paramURL = null;; paramURL = paramURL.toExternalForm())
    {
      paramJsonWriter.value(paramURL);
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */