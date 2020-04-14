package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonSyntaxException;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;

final class TypeAdapters$15
  extends TypeAdapter<Character>
{
  public final Character read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    paramJsonReader = paramJsonReader.nextString();
    if (paramJsonReader.length() != 1) {
      throw new JsonSyntaxException("Expecting character, got: " + paramJsonReader);
    }
    return Character.valueOf(paramJsonReader.charAt(0));
  }
  
  public final void write(JsonWriter paramJsonWriter, Character paramCharacter)
  {
    if (paramCharacter == null) {}
    for (paramCharacter = null;; paramCharacter = String.valueOf(paramCharacter))
    {
      paramJsonWriter.value(paramCharacter);
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$15.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */