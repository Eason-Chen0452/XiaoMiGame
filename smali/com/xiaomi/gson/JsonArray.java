package com.xiaomi.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class JsonArray
  extends JsonElement
  implements Iterable<JsonElement>
{
  private final List<JsonElement> a = new ArrayList();
  
  public final Number a()
  {
    if (this.a.size() == 1) {
      return ((JsonElement)this.a.get(0)).a();
    }
    throw new IllegalStateException();
  }
  
  public final void a(JsonElement paramJsonElement)
  {
    Object localObject = paramJsonElement;
    if (paramJsonElement == null) {
      localObject = JsonNull.a;
    }
    this.a.add(localObject);
  }
  
  public final String b()
  {
    if (this.a.size() == 1) {
      return ((JsonElement)this.a.get(0)).b();
    }
    throw new IllegalStateException();
  }
  
  public final double c()
  {
    if (this.a.size() == 1) {
      return ((JsonElement)this.a.get(0)).c();
    }
    throw new IllegalStateException();
  }
  
  public final long d()
  {
    if (this.a.size() == 1) {
      return ((JsonElement)this.a.get(0)).d();
    }
    throw new IllegalStateException();
  }
  
  public final int e()
  {
    if (this.a.size() == 1) {
      return ((JsonElement)this.a.get(0)).e();
    }
    throw new IllegalStateException();
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof JsonArray)) && (((JsonArray)paramObject).a.equals(this.a)));
  }
  
  public final boolean f()
  {
    if (this.a.size() == 1) {
      return ((JsonElement)this.a.get(0)).f();
    }
    throw new IllegalStateException();
  }
  
  public final int hashCode()
  {
    return this.a.hashCode();
  }
  
  public final Iterator<JsonElement> iterator()
  {
    return this.a.iterator();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\JsonArray.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */