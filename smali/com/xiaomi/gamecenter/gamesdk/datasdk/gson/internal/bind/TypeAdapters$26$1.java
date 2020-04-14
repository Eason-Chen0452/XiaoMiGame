package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.sql.Timestamp;
import java.util.Date;

class TypeAdapters$26$1
  extends TypeAdapter<Timestamp>
{
  TypeAdapters$26$1(TypeAdapters.26 param26, TypeAdapter paramTypeAdapter) {}
  
  public Timestamp read(JsonReader paramJsonReader)
  {
    paramJsonReader = (Date)this.val$dateTypeAdapter.read(paramJsonReader);
    if (paramJsonReader != null) {
      return new Timestamp(paramJsonReader.getTime());
    }
    return null;
  }
  
  public void write(JsonWriter paramJsonWriter, Timestamp paramTimestamp)
  {
    this.val$dateTypeAdapter.write(paramJsonWriter, paramTimestamp);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$26$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */