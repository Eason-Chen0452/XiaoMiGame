package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import java.lang.reflect.Field;

 enum FieldNamingPolicy$3
{
  FieldNamingPolicy$3()
  {
    super(paramString, paramInt, null);
  }
  
  public final String translateName(Field paramField)
  {
    return upperCaseFirstLetter(separateCamelCase(paramField.getName(), " "));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\FieldNamingPolicy$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */