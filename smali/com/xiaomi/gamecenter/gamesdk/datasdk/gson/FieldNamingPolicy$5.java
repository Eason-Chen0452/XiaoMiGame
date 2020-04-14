package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import java.lang.reflect.Field;
import java.util.Locale;

 enum FieldNamingPolicy$5
{
  FieldNamingPolicy$5()
  {
    super(paramString, paramInt, null);
  }
  
  public final String translateName(Field paramField)
  {
    return separateCamelCase(paramField.getName(), "-").toLowerCase(Locale.ENGLISH);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\FieldNamingPolicy$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */