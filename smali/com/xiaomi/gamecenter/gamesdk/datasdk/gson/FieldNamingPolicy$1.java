package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import java.lang.reflect.Field;

 enum FieldNamingPolicy$1
{
  FieldNamingPolicy$1()
  {
    super(paramString, paramInt, null);
  }
  
  public final String translateName(Field paramField)
  {
    return paramField.getName();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\FieldNamingPolicy$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */