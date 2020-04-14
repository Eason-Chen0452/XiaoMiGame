package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class n<T>
  extends TypeAdapter<T>
{
  private final Gson a;
  private final TypeAdapter<T> b;
  private final Type c;
  
  n(Gson paramGson, TypeAdapter<T> paramTypeAdapter, Type paramType)
  {
    this.a = paramGson;
    this.b = paramTypeAdapter;
    this.c = paramType;
  }
  
  public final T a(JsonReader paramJsonReader)
  {
    return (T)this.b.a(paramJsonReader);
  }
  
  public final void a(JsonWriter paramJsonWriter, T paramT)
  {
    TypeAdapter localTypeAdapter = this.b;
    Type localType = this.c;
    Object localObject = localType;
    if (paramT != null) {
      if ((localType != Object.class) && (!(localType instanceof TypeVariable)))
      {
        localObject = localType;
        if (!(localType instanceof Class)) {}
      }
      else
      {
        localObject = paramT.getClass();
      }
    }
    if (localObject != this.c)
    {
      localTypeAdapter = this.a.a(br.get((Type)localObject));
      localObject = localTypeAdapter;
      if ((localTypeAdapter instanceof i))
      {
        localObject = localTypeAdapter;
        if ((this.b instanceof i)) {}
      }
    }
    for (localObject = this.b;; localObject = localTypeAdapter)
    {
      ((TypeAdapter)localObject).a(paramJsonWriter, paramT);
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */