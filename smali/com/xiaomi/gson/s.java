package com.xiaomi.gson;

 enum s
{
  s()
  {
    super(paramString, 1, (byte)0);
  }
  
  public final JsonElement serialize(Long paramLong)
  {
    return new JsonPrimitive(String.valueOf(paramLong));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */