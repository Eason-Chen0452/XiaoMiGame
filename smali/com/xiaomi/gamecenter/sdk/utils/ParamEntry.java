package com.xiaomi.gamecenter.sdk.utils;

import java.util.Map.Entry;

public final class ParamEntry
  implements Map.Entry<String, String>
{
  String a;
  String b;
  
  public ParamEntry(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public final String a()
  {
    return this.a;
  }
  
  public final String a(String paramString)
  {
    this.b = paramString;
    return this.b;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\ParamEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */