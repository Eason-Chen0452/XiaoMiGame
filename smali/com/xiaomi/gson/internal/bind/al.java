package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonArray;
import com.xiaomi.gson.JsonElement;
import com.xiaomi.gson.JsonNull;
import com.xiaomi.gson.JsonObject;
import com.xiaomi.gson.JsonPrimitive;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.LazilyParsedNumber;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class al
  extends TypeAdapter<JsonElement>
{
  private void a(JsonWriter paramJsonWriter, JsonElement paramJsonElement)
  {
    if ((paramJsonElement == null) || ((paramJsonElement instanceof JsonNull)))
    {
      paramJsonWriter.f();
      return;
    }
    if ((paramJsonElement instanceof JsonPrimitive))
    {
      paramJsonElement = paramJsonElement.g();
      if (paramJsonElement.i())
      {
        paramJsonWriter.a(paramJsonElement.a());
        return;
      }
      if (paramJsonElement.h())
      {
        paramJsonWriter.a(paramJsonElement.f());
        return;
      }
      paramJsonWriter.b(paramJsonElement.b());
      return;
    }
    if ((paramJsonElement instanceof JsonArray))
    {
      paramJsonWriter.b();
      if ((paramJsonElement instanceof JsonArray))
      {
        paramJsonElement = ((JsonArray)paramJsonElement).iterator();
        while (paramJsonElement.hasNext()) {
          a(paramJsonWriter, (JsonElement)paramJsonElement.next());
        }
      }
      throw new IllegalStateException("This is not a JSON Array.");
      paramJsonWriter.c();
      return;
    }
    if ((paramJsonElement instanceof JsonObject))
    {
      paramJsonWriter.d();
      if ((paramJsonElement instanceof JsonObject))
      {
        paramJsonElement = ((JsonObject)paramJsonElement).h().iterator();
        while (paramJsonElement.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramJsonElement.next();
          paramJsonWriter.a((String)localEntry.getKey());
          a(paramJsonWriter, (JsonElement)localEntry.getValue());
        }
      }
      throw new IllegalStateException("Not a JSON Object: " + paramJsonElement);
      paramJsonWriter.e();
      return;
    }
    throw new IllegalArgumentException("Couldn't write " + paramJsonElement.getClass());
  }
  
  private JsonElement b(JsonReader paramJsonReader)
  {
    switch (at.a[paramJsonReader.f().ordinal()])
    {
    default: 
      throw new IllegalArgumentException();
    case 3: 
      return new JsonPrimitive(paramJsonReader.h());
    case 1: 
      return new JsonPrimitive(new LazilyParsedNumber(paramJsonReader.h()));
    case 2: 
      return new JsonPrimitive(Boolean.valueOf(paramJsonReader.i()));
    case 4: 
      paramJsonReader.j();
      return JsonNull.a;
    case 5: 
      localObject = new JsonArray();
      paramJsonReader.a();
      while (paramJsonReader.e()) {
        ((JsonArray)localObject).a(b(paramJsonReader));
      }
      paramJsonReader.b();
      return (JsonElement)localObject;
    }
    Object localObject = new JsonObject();
    paramJsonReader.c();
    while (paramJsonReader.e()) {
      ((JsonObject)localObject).a(paramJsonReader.g(), b(paramJsonReader));
    }
    paramJsonReader.d();
    return (JsonElement)localObject;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */