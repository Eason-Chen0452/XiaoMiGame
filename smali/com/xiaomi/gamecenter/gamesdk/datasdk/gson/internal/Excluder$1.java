package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;

class Excluder$1
  extends TypeAdapter<T>
{
  private TypeAdapter<T> delegate;
  
  Excluder$1(Excluder paramExcluder, boolean paramBoolean1, boolean paramBoolean2, Gson paramGson, TypeToken paramTypeToken) {}
  
  private TypeAdapter<T> delegate()
  {
    TypeAdapter localTypeAdapter = this.delegate;
    if (localTypeAdapter != null) {
      return localTypeAdapter;
    }
    localTypeAdapter = this.val$gson.getDelegateAdapter(this.this$0, this.val$type);
    this.delegate = localTypeAdapter;
    return localTypeAdapter;
  }
  
  public T read(JsonReader paramJsonReader)
  {
    if (this.val$skipDeserialize)
    {
      paramJsonReader.skipValue();
      return null;
    }
    return (T)delegate().read(paramJsonReader);
  }
  
  public void write(JsonWriter paramJsonWriter, T paramT)
  {
    if (this.val$skipSerialize)
    {
      paramJsonWriter.nullValue();
      return;
    }
    delegate().write(paramJsonWriter, paramT);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\Excluder$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */