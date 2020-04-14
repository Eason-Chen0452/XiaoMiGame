package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonArray;
import com.xiaomi.gson.JsonElement;
import com.xiaomi.gson.JsonNull;
import com.xiaomi.gson.JsonObject;
import com.xiaomi.gson.JsonPrimitive;
import com.xiaomi.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class JsonTreeWriter
  extends JsonWriter
{
  private static final Writer a = new d();
  private static final JsonPrimitive b = new JsonPrimitive("closed");
  private final List<JsonElement> c = new ArrayList();
  private String d;
  private JsonElement e = JsonNull.a;
  
  public JsonTreeWriter()
  {
    super(a);
  }
  
  private void a(JsonElement paramJsonElement)
  {
    if (this.d != null)
    {
      if ((!(paramJsonElement instanceof JsonNull)) || (i())) {
        ((JsonObject)j()).a(this.d, paramJsonElement);
      }
      this.d = null;
      return;
    }
    if (this.c.isEmpty())
    {
      this.e = paramJsonElement;
      return;
    }
    JsonElement localJsonElement = j();
    if ((localJsonElement instanceof JsonArray))
    {
      ((JsonArray)localJsonElement).a(paramJsonElement);
      return;
    }
    throw new IllegalStateException();
  }
  
  private JsonElement j()
  {
    return (JsonElement)this.c.get(this.c.size() - 1);
  }
  
  public final JsonElement a()
  {
    if (!this.c.isEmpty()) {
      throw new IllegalStateException("Expected one JSON element but was " + this.c);
    }
    return this.e;
  }
  
  public final JsonWriter a(long paramLong)
  {
    a(new JsonPrimitive(Long.valueOf(paramLong)));
    return this;
  }
  
  public final JsonWriter a(Boolean paramBoolean)
  {
    if (paramBoolean == null) {
      return f();
    }
    a(new JsonPrimitive(paramBoolean));
    return this;
  }
  
  public final JsonWriter a(Number paramNumber)
  {
    if (paramNumber == null) {
      return f();
    }
    if (!g())
    {
      double d1 = paramNumber.doubleValue();
      if ((Double.isNaN(d1)) || (Double.isInfinite(d1))) {
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramNumber);
      }
    }
    a(new JsonPrimitive(paramNumber));
    return this;
  }
  
  public final JsonWriter a(String paramString)
  {
    if ((this.c.isEmpty()) || (this.d != null)) {
      throw new IllegalStateException();
    }
    if ((j() instanceof JsonObject))
    {
      this.d = paramString;
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final JsonWriter a(boolean paramBoolean)
  {
    a(new JsonPrimitive(Boolean.valueOf(paramBoolean)));
    return this;
  }
  
  public final JsonWriter b()
  {
    JsonArray localJsonArray = new JsonArray();
    a(localJsonArray);
    this.c.add(localJsonArray);
    return this;
  }
  
  public final JsonWriter b(String paramString)
  {
    if (paramString == null) {
      return f();
    }
    a(new JsonPrimitive(paramString));
    return this;
  }
  
  public final JsonWriter c()
  {
    if ((this.c.isEmpty()) || (this.d != null)) {
      throw new IllegalStateException();
    }
    if ((j() instanceof JsonArray))
    {
      this.c.remove(this.c.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final void close()
  {
    if (!this.c.isEmpty()) {
      throw new IOException("Incomplete document");
    }
    this.c.add(b);
  }
  
  public final JsonWriter d()
  {
    JsonObject localJsonObject = new JsonObject();
    a(localJsonObject);
    this.c.add(localJsonObject);
    return this;
  }
  
  public final JsonWriter e()
  {
    if ((this.c.isEmpty()) || (this.d != null)) {
      throw new IllegalStateException();
    }
    if ((j() instanceof JsonObject))
    {
      this.c.remove(this.c.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final JsonWriter f()
  {
    a(JsonNull.a);
    return this;
  }
  
  public final void flush() {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\JsonTreeWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */