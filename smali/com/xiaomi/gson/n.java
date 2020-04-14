package com.xiaomi.gson;

import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;

final class n<T>
  extends TypeAdapter<T>
{
  private TypeAdapter<T> a;
  
  public final T a(JsonReader paramJsonReader)
  {
    if (this.a == null) {
      throw new IllegalStateException();
    }
    return (T)this.a.a(paramJsonReader);
  }
  
  public final void a(TypeAdapter<T> paramTypeAdapter)
  {
    if (this.a != null) {
      throw new AssertionError();
    }
    this.a = paramTypeAdapter;
  }
  
  public final void a(JsonWriter paramJsonWriter, T paramT)
  {
    if (this.a == null) {
      throw new IllegalStateException();
    }
    this.a.a(paramJsonWriter, paramT);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */