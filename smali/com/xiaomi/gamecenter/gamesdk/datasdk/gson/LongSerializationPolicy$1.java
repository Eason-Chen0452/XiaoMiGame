package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

 enum LongSerializationPolicy$1
{
  LongSerializationPolicy$1()
  {
    super(paramString, paramInt, null);
  }
  
  public final JsonElement serialize(Long paramLong)
  {
    return new JsonPrimitive(paramLong);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\LongSerializationPolicy$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */