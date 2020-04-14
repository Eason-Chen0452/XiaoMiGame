package com.xiaomi.gson.internal;

import com.xiaomi.gson.JsonElement;
import com.xiaomi.gson.JsonIOException;
import com.xiaomi.gson.JsonNull;
import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.bind.o;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;
import com.xiaomi.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;

public final class aj
{
  public static JsonElement a(JsonReader paramJsonReader)
  {
    int i = 1;
    try
    {
      paramJsonReader.f();
      i = 0;
      paramJsonReader = (JsonElement)o.X.a(paramJsonReader);
      return paramJsonReader;
    }
    catch (EOFException paramJsonReader)
    {
      if (i != 0) {
        return JsonNull.a;
      }
      throw new JsonSyntaxException(paramJsonReader);
    }
    catch (MalformedJsonException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
    catch (IOException paramJsonReader)
    {
      throw new JsonIOException(paramJsonReader);
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
  
  public static void a(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
  {
    o.X.a(paramJsonWriter, paramJsonElement);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */