package com.xiaomi.gson;

import com.xiaomi.gson.internal.aj;
import com.xiaomi.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

public abstract class JsonElement
{
  public Number a()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public String b()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public double c()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public long d()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public int e()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public boolean f()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public final JsonPrimitive g()
  {
    if ((this instanceof JsonPrimitive)) {
      return (JsonPrimitive)this;
    }
    throw new IllegalStateException("This is not a JSON Primitive.");
  }
  
  public String toString()
  {
    try
    {
      Object localObject = new StringWriter();
      JsonWriter localJsonWriter = new JsonWriter((Writer)localObject);
      localJsonWriter.b(true);
      aj.a(this, localJsonWriter);
      localObject = ((StringWriter)localObject).toString();
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\JsonElement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */