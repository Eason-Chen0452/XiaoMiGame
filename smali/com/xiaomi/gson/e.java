package com.xiaomi.gson;

import java.lang.reflect.Field;
import java.util.Locale;

 enum e
{
  e()
  {
    super(paramString, 3, (byte)0);
  }
  
  public final String a(Field paramField)
  {
    return a(paramField.getName(), "_").toLowerCase(Locale.ENGLISH);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */