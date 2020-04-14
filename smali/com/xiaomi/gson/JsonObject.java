package com.xiaomi.gson;

import com.xiaomi.gson.internal.LinkedTreeMap;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonObject
  extends JsonElement
{
  private final LinkedTreeMap<String, JsonElement> a = new LinkedTreeMap();
  
  public final void a(String paramString, JsonElement paramJsonElement)
  {
    Object localObject = paramJsonElement;
    if (paramJsonElement == null) {
      localObject = JsonNull.a;
    }
    this.a.put(paramString, localObject);
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof JsonObject)) && (((JsonObject)paramObject).a.equals(this.a)));
  }
  
  public final Set<Map.Entry<String, JsonElement>> h()
  {
    return this.a.entrySet();
  }
  
  public final int hashCode()
  {
    return this.a.hashCode();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\JsonObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */