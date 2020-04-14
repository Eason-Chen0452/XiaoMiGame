package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

public enum LongSerializationPolicy
{
  DEFAULT,  STRING;
  
  private LongSerializationPolicy() {}
  
  public abstract JsonElement serialize(Long paramLong);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\LongSerializationPolicy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */