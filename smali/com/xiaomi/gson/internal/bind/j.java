package com.xiaomi.gson.internal.bind;

import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonWriter;

abstract class j
{
  final String g;
  final boolean h;
  final boolean i;
  
  protected j(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.g = paramString;
    this.h = paramBoolean1;
    this.i = paramBoolean2;
  }
  
  abstract void a(JsonReader paramJsonReader, Object paramObject);
  
  abstract void a(JsonWriter paramJsonWriter, Object paramObject);
  
  abstract boolean a(Object paramObject);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */