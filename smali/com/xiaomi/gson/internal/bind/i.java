package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.JsonSyntaxException;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.ah;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import com.xiaomi.gson.stream.JsonWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class i<T>
  extends TypeAdapter<T>
{
  private final ah<T> a;
  private final Map<String, j> b;
  
  i(ah<T> paramah, Map<String, j> paramMap)
  {
    this.a = paramah;
    this.b = paramMap;
  }
  
  public final T a(JsonReader paramJsonReader)
  {
    if (paramJsonReader.f() == JsonToken.NULL)
    {
      paramJsonReader.j();
      return null;
    }
    Object localObject1 = this.a.a();
    try
    {
      paramJsonReader.c();
      for (;;)
      {
        if (!paramJsonReader.e()) {
          break label103;
        }
        localObject2 = paramJsonReader.g();
        localObject2 = (j)this.b.get(localObject2);
        if ((localObject2 != null) && (((j)localObject2).i)) {
          break;
        }
        paramJsonReader.n();
      }
    }
    catch (IllegalStateException paramJsonReader)
    {
      for (;;)
      {
        Object localObject2;
        throw new JsonSyntaxException(paramJsonReader);
        ((j)localObject2).a(paramJsonReader, localObject1);
      }
    }
    catch (IllegalAccessException paramJsonReader)
    {
      throw new AssertionError(paramJsonReader);
    }
    label103:
    paramJsonReader.d();
    return (T)localObject1;
  }
  
  public final void a(JsonWriter paramJsonWriter, T paramT)
  {
    if (paramT == null)
    {
      paramJsonWriter.f();
      return;
    }
    paramJsonWriter.d();
    try
    {
      Iterator localIterator = this.b.values().iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        if (localj.a(paramT))
        {
          paramJsonWriter.a(localj.g);
          localj.a(paramJsonWriter, paramT);
        }
      }
      paramJsonWriter.e();
    }
    catch (IllegalAccessException paramJsonWriter)
    {
      throw new AssertionError(paramJsonWriter);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */