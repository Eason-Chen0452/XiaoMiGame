package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.util.Locale;
import java.util.StringTokenizer;

final class TypeAdapters$28
  extends TypeAdapter<Locale>
{
  public final Locale read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    Object localObject = new StringTokenizer(paramJsonReader.nextString(), "_");
    if (((StringTokenizer)localObject).hasMoreElements()) {}
    for (paramJsonReader = ((StringTokenizer)localObject).nextToken();; paramJsonReader = null)
    {
      if (((StringTokenizer)localObject).hasMoreElements()) {}
      for (String str = ((StringTokenizer)localObject).nextToken();; str = null)
      {
        if (((StringTokenizer)localObject).hasMoreElements()) {}
        for (localObject = ((StringTokenizer)localObject).nextToken();; localObject = null)
        {
          if ((str == null) && (localObject == null)) {
            return new Locale(paramJsonReader);
          }
          if (localObject == null) {
            return new Locale(paramJsonReader, str);
          }
          return new Locale(paramJsonReader, str, (String)localObject);
        }
      }
    }
  }
  
  public final void write(JsonWriter paramJsonWriter, Locale paramLocale)
  {
    if (paramLocale == null) {}
    for (paramLocale = null;; paramLocale = paramLocale.toString())
    {
      paramJsonWriter.value(paramLocale);
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$28.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */