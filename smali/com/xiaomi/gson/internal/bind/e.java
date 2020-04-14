package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.internal.LinkedTreeMap;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;
import com.xiaomi.gson.u;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class e
  extends TypeAdapter<Object>
{
  public static final u a = new f();
  private final Gson b;
  
  e(Gson paramGson)
  {
    this.b = paramGson;
  }
  
  public final Object a(JsonReader paramJsonReader)
  {
    Object localObject = paramJsonReader.f();
    switch (g.a[localObject.ordinal()])
    {
    default: 
      throw new IllegalStateException();
    case 1: 
      localObject = new ArrayList();
      paramJsonReader.a();
      while (paramJsonReader.e()) {
        ((List)localObject).add(a(paramJsonReader));
      }
      paramJsonReader.b();
      return localObject;
    case 2: 
      localObject = new LinkedTreeMap();
      paramJsonReader.c();
      while (paramJsonReader.e()) {
        ((Map)localObject).put(paramJsonReader.g(), a(paramJsonReader));
      }
      paramJsonReader.d();
      return localObject;
    case 3: 
      return paramJsonReader.h();
    case 4: 
      return Double.valueOf(paramJsonReader.k());
    case 5: 
      return Boolean.valueOf(paramJsonReader.i());
    }
    paramJsonReader.j();
    return null;
  }
  
  public final void a(JsonWriter paramJsonWriter, Object paramObject)
  {
    if (paramObject == null)
    {
      paramJsonWriter.f();
      return;
    }
    TypeAdapter localTypeAdapter = this.b.a(paramObject.getClass());
    if ((localTypeAdapter instanceof e))
    {
      paramJsonWriter.d();
      paramJsonWriter.e();
      return;
    }
    localTypeAdapter.a(paramJsonWriter, paramObject);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */