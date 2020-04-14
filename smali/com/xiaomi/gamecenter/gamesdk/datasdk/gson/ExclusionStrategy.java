package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

public abstract interface ExclusionStrategy
{
  public abstract boolean shouldSkipClass(Class<?> paramClass);
  
  public abstract boolean shouldSkipField(FieldAttributes paramFieldAttributes);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\ExclusionStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */