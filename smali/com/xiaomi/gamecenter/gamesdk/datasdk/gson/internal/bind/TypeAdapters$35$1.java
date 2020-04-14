package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonSyntaxException;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;

class TypeAdapters$35$1
  extends TypeAdapter<T1>
{
  TypeAdapters$35$1(TypeAdapters.35 param35, Class paramClass) {}
  
  public T1 read(JsonReader paramJsonReader)
  {
    paramJsonReader = this.this$0.val$typeAdapter.read(paramJsonReader);
    if ((paramJsonReader != null) && (!this.val$requestedType.isInstance(paramJsonReader))) {
      throw new JsonSyntaxException("Expected a " + this.val$requestedType.getName() + " but was " + paramJsonReader.getClass().getName());
    }
    return paramJsonReader;
  }
  
  public void write(JsonWriter paramJsonWriter, T1 paramT1)
  {
    this.this$0.val$typeAdapter.write(paramJsonWriter, paramT1);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$35$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */