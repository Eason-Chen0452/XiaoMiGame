package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.util.Currency;

final class TypeAdapters$25
  extends TypeAdapter<Currency>
{
  public final Currency read(JsonReader paramJsonReader)
  {
    return Currency.getInstance(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, Currency paramCurrency)
  {
    paramJsonWriter.value(paramCurrency.getCurrencyCode());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$25.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */