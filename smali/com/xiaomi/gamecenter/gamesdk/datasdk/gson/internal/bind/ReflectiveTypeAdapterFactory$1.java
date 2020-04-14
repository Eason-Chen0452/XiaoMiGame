package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.lang.reflect.Field;

class ReflectiveTypeAdapterFactory$1
  extends ReflectiveTypeAdapterFactory.BoundField
{
  ReflectiveTypeAdapterFactory$1(ReflectiveTypeAdapterFactory paramReflectiveTypeAdapterFactory, String paramString, boolean paramBoolean1, boolean paramBoolean2, Field paramField, boolean paramBoolean3, TypeAdapter paramTypeAdapter, Gson paramGson, TypeToken paramTypeToken, boolean paramBoolean4)
  {
    super(paramString, paramBoolean1, paramBoolean2);
  }
  
  void read(JsonReader paramJsonReader, Object paramObject)
  {
    paramJsonReader = this.val$typeAdapter.read(paramJsonReader);
    if ((paramJsonReader != null) || (!this.val$isPrimitive)) {
      this.val$field.set(paramObject, paramJsonReader);
    }
  }
  
  void write(JsonWriter paramJsonWriter, Object paramObject)
  {
    Object localObject = this.val$field.get(paramObject);
    if (this.val$jsonAdapterPresent) {}
    for (paramObject = this.val$typeAdapter;; paramObject = new TypeAdapterRuntimeTypeWrapper(this.val$context, this.val$typeAdapter, this.val$fieldType.getType()))
    {
      ((TypeAdapter)paramObject).write(paramJsonWriter, localObject);
      return;
    }
  }
  
  public boolean writeField(Object paramObject)
  {
    if (!this.serialized) {}
    while (this.val$field.get(paramObject) == paramObject) {
      return false;
    }
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\ReflectiveTypeAdapterFactory$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */