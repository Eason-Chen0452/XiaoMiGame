package com.xiaomi.gson;

public final class JsonNull
  extends JsonElement
{
  public static final JsonNull a = new JsonNull();
  
  public final boolean equals(Object paramObject)
  {
    return (this == paramObject) || ((paramObject instanceof JsonNull));
  }
  
  public final int hashCode()
  {
    return JsonNull.class.hashCode();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\JsonNull.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */