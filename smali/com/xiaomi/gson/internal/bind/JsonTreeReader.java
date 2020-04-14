package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonArray;
import com.xiaomi.gson.JsonElement;
import com.xiaomi.gson.JsonNull;
import com.xiaomi.gson.JsonObject;
import com.xiaomi.gson.JsonPrimitive;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonTreeReader
  extends JsonReader
{
  private static final Reader b = new c();
  private static final Object c = new Object();
  private final List<Object> d = new ArrayList();
  
  public JsonTreeReader(JsonElement paramJsonElement)
  {
    super(b);
    this.d.add(paramJsonElement);
  }
  
  private void a(JsonToken paramJsonToken)
  {
    if (f() != paramJsonToken) {
      throw new IllegalStateException("Expected " + paramJsonToken + " but was " + f());
    }
  }
  
  private Object u()
  {
    return this.d.get(this.d.size() - 1);
  }
  
  private Object v()
  {
    return this.d.remove(this.d.size() - 1);
  }
  
  public final void a()
  {
    a(JsonToken.BEGIN_ARRAY);
    JsonArray localJsonArray = (JsonArray)u();
    this.d.add(localJsonArray.iterator());
  }
  
  public final void b()
  {
    a(JsonToken.END_ARRAY);
    v();
    v();
  }
  
  public final void c()
  {
    a(JsonToken.BEGIN_OBJECT);
    JsonObject localJsonObject = (JsonObject)u();
    this.d.add(localJsonObject.h().iterator());
  }
  
  public final void close()
  {
    this.d.clear();
    this.d.add(c);
  }
  
  public final void d()
  {
    a(JsonToken.END_OBJECT);
    v();
    v();
  }
  
  public final boolean e()
  {
    JsonToken localJsonToken = f();
    return (localJsonToken != JsonToken.END_OBJECT) && (localJsonToken != JsonToken.END_ARRAY);
  }
  
  public final JsonToken f()
  {
    Object localObject;
    boolean bool;
    for (;;)
    {
      if (this.d.isEmpty()) {
        return JsonToken.END_DOCUMENT;
      }
      localObject = u();
      if (!(localObject instanceof Iterator)) {
        break label105;
      }
      bool = this.d.get(this.d.size() - 2) instanceof JsonObject;
      localObject = (Iterator)localObject;
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      if (bool) {
        return JsonToken.NAME;
      }
      this.d.add(((Iterator)localObject).next());
    }
    if (bool) {
      return JsonToken.END_OBJECT;
    }
    return JsonToken.END_ARRAY;
    label105:
    if ((localObject instanceof JsonObject)) {
      return JsonToken.BEGIN_OBJECT;
    }
    if ((localObject instanceof JsonArray)) {
      return JsonToken.BEGIN_ARRAY;
    }
    if ((localObject instanceof JsonPrimitive))
    {
      localObject = (JsonPrimitive)localObject;
      if (((JsonPrimitive)localObject).j()) {
        return JsonToken.STRING;
      }
      if (((JsonPrimitive)localObject).h()) {
        return JsonToken.BOOLEAN;
      }
      if (((JsonPrimitive)localObject).i()) {
        return JsonToken.NUMBER;
      }
      throw new AssertionError();
    }
    if ((localObject instanceof JsonNull)) {
      return JsonToken.NULL;
    }
    if (localObject == c) {
      throw new IllegalStateException("JsonReader is closed");
    }
    throw new AssertionError();
  }
  
  public final String g()
  {
    a(JsonToken.NAME);
    Map.Entry localEntry = (Map.Entry)((Iterator)u()).next();
    this.d.add(localEntry.getValue());
    return (String)localEntry.getKey();
  }
  
  public final String h()
  {
    JsonToken localJsonToken = f();
    if ((localJsonToken != JsonToken.STRING) && (localJsonToken != JsonToken.NUMBER)) {
      throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + localJsonToken);
    }
    return ((JsonPrimitive)v()).b();
  }
  
  public final boolean i()
  {
    a(JsonToken.BOOLEAN);
    return ((JsonPrimitive)v()).f();
  }
  
  public final void j()
  {
    a(JsonToken.NULL);
    v();
  }
  
  public final double k()
  {
    JsonToken localJsonToken = f();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING)) {
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    }
    double d1 = ((JsonPrimitive)u()).c();
    if ((!p()) && ((Double.isNaN(d1)) || (Double.isInfinite(d1)))) {
      throw new NumberFormatException("JSON forbids NaN and infinities: " + d1);
    }
    v();
    return d1;
  }
  
  public final long l()
  {
    JsonToken localJsonToken = f();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING)) {
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    }
    long l = ((JsonPrimitive)u()).d();
    v();
    return l;
  }
  
  public final int m()
  {
    JsonToken localJsonToken = f();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING)) {
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    }
    int i = ((JsonPrimitive)u()).e();
    v();
    return i;
  }
  
  public final void n()
  {
    if (f() == JsonToken.NAME)
    {
      g();
      return;
    }
    v();
  }
  
  public final void o()
  {
    a(JsonToken.NAME);
    Map.Entry localEntry = (Map.Entry)((Iterator)u()).next();
    this.d.add(localEntry.getValue());
    this.d.add(new JsonPrimitive((String)localEntry.getKey()));
  }
  
  public final String toString()
  {
    return getClass().getSimpleName();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\JsonTreeReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */