package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;

public abstract class JsonReaderInternalAccess
{
  public static JsonReaderInternalAccess INSTANCE;
  
  public abstract void promoteNameToValue(JsonReader paramJsonReader);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\JsonReaderInternalAccess.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */