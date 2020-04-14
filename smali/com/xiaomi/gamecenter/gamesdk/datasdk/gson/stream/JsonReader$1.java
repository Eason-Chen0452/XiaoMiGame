package com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.JsonReaderInternalAccess;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.JsonTreeReader;

final class JsonReader$1
  extends JsonReaderInternalAccess
{
  public final void promoteNameToValue(JsonReader paramJsonReader)
  {
    if ((paramJsonReader instanceof JsonTreeReader))
    {
      ((JsonTreeReader)paramJsonReader).promoteNameToValue();
      return;
    }
    int j = paramJsonReader.peeked;
    int i = j;
    if (j == 0) {
      i = paramJsonReader.doPeek();
    }
    if (i == 13)
    {
      paramJsonReader.peeked = 9;
      return;
    }
    if (i == 12)
    {
      paramJsonReader.peeked = 8;
      return;
    }
    if (i == 14)
    {
      paramJsonReader.peeked = 10;
      return;
    }
    throw new IllegalStateException("Expected a name but was " + paramJsonReader.peek() + paramJsonReader.locationString());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\stream\JsonReader$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */