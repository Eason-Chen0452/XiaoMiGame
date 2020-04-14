package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.LinkedTreeMap;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class ObjectTypeAdapter
  extends TypeAdapter<Object>
{
  public static final TypeAdapterFactory FACTORY = new ObjectTypeAdapter.1();
  private final Gson gson;
  
  ObjectTypeAdapter(Gson paramGson)
  {
    this.gson = paramGson;
  }
  
  public final Object read(JsonReader paramJsonReader)
  {
    Object localObject = paramJsonReader.peek();
    switch (ObjectTypeAdapter.2.$SwitchMap$com$xiaomi$gamecenter$gamesdk$datasdk$gson$stream$JsonToken[localObject.ordinal()])
    {
    default: 
      throw new IllegalStateException();
    case 1: 
      localObject = new ArrayList();
      paramJsonReader.beginArray();
      while (paramJsonReader.hasNext()) {
        ((List)localObject).add(read(paramJsonReader));
      }
      paramJsonReader.endArray();
      return localObject;
    case 2: 
      localObject = new LinkedTreeMap();
      paramJsonReader.beginObject();
      while (paramJsonReader.hasNext()) {
        ((Map)localObject).put(paramJsonReader.nextName(), read(paramJsonReader));
      }
      paramJsonReader.endObject();
      return localObject;
    case 3: 
      return paramJsonReader.nextString();
    case 4: 
      return Double.valueOf(paramJsonReader.nextDouble());
    case 5: 
      return Boolean.valueOf(paramJsonReader.nextBoolean());
    }
    paramJsonReader.nextNull();
    return null;
  }
  
  public final void write(JsonWriter paramJsonWriter, Object paramObject)
  {
    if (paramObject == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    TypeAdapter localTypeAdapter = this.gson.getAdapter(paramObject.getClass());
    if ((localTypeAdapter instanceof ObjectTypeAdapter))
    {
      paramJsonWriter.beginObject();
      paramJsonWriter.endObject();
      return;
    }
    localTypeAdapter.write(paramJsonWriter, paramObject);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\ObjectTypeAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */