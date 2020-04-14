package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import com.xiaomi.gson.stream.JsonWriter;
import com.xiaomi.gson.u;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public final class ArrayTypeAdapter<E>
  extends TypeAdapter<Object>
{
  public static final u a = new a();
  private final Class<E> b;
  private final TypeAdapter<E> c;
  
  public ArrayTypeAdapter(Gson paramGson, TypeAdapter<E> paramTypeAdapter, Class<E> paramClass)
  {
    this.c = new n(paramGson, paramTypeAdapter, paramClass);
    this.b = paramClass;
  }
  
  public final Object a(JsonReader paramJsonReader)
  {
    if (paramJsonReader.f() == JsonToken.NULL)
    {
      paramJsonReader.j();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.a();
    while (paramJsonReader.e()) {
      localArrayList.add(this.c.a(paramJsonReader));
    }
    paramJsonReader.b();
    paramJsonReader = Array.newInstance(this.b, localArrayList.size());
    int i = 0;
    while (i < localArrayList.size())
    {
      Array.set(paramJsonReader, i, localArrayList.get(i));
      i += 1;
    }
    return paramJsonReader;
  }
  
  public final void a(JsonWriter paramJsonWriter, Object paramObject)
  {
    if (paramObject == null)
    {
      paramJsonWriter.f();
      return;
    }
    paramJsonWriter.b();
    int i = 0;
    int j = Array.getLength(paramObject);
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      this.c.a(paramJsonWriter, localObject);
      i += 1;
    }
    paramJsonWriter.c();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\ArrayTypeAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */