package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.u;

final class ao
  implements u
{
  ao(Class paramClass, TypeAdapter paramTypeAdapter) {}
  
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    if (parambr.getRawType() == this.a) {
      return this.b;
    }
    return null;
  }
  
  public final String toString()
  {
    return "Factory[type=" + this.a.getName() + ",adapter=" + this.b + "]";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */