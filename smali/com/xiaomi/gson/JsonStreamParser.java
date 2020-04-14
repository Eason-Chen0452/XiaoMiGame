package com.xiaomi.gson;

import com.xiaomi.gson.internal.aj;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import com.xiaomi.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class JsonStreamParser
  implements Iterator<JsonElement>
{
  private final JsonReader a;
  private final Object b;
  
  public JsonStreamParser(Reader paramReader)
  {
    this.a = new JsonReader(paramReader);
    this.a.a(true);
    this.b = new Object();
  }
  
  public JsonStreamParser(String paramString)
  {
    this(new StringReader(paramString));
  }
  
  private JsonElement a()
  {
    if (!hasNext()) {
      throw new NoSuchElementException();
    }
    try
    {
      JsonElement localJsonElement = aj.a(this.a);
      return localJsonElement;
    }
    catch (StackOverflowError localStackOverflowError)
    {
      throw new JsonParseException("Failed parsing JSON source to Json", localStackOverflowError);
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      throw new JsonParseException("Failed parsing JSON source to Json", localOutOfMemoryError);
    }
    catch (JsonParseException localJsonParseException)
    {
      Object localObject = localJsonParseException;
      if ((localJsonParseException.getCause() instanceof EOFException)) {
        localObject = new NoSuchElementException();
      }
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean hasNext()
  {
    for (;;)
    {
      try
      {
        synchronized (this.b)
        {
          try
          {
            JsonToken localJsonToken1 = this.a.f();
            JsonToken localJsonToken2 = JsonToken.END_DOCUMENT;
            if (localJsonToken1 != localJsonToken2)
            {
              bool = true;
              return bool;
            }
          }
          catch (MalformedJsonException localMalformedJsonException)
          {
            throw new JsonSyntaxException(localMalformedJsonException);
          }
        }
        boolean bool = false;
      }
      catch (IOException localIOException)
      {
        throw new JsonIOException(localIOException);
      }
    }
  }
  
  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\JsonStreamParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */