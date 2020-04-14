package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.u;

final class ap
  implements u
{
  ap(Class paramClass1, Class paramClass2, TypeAdapter paramTypeAdapter) {}
  
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    paramGson = parambr.getRawType();
    if ((paramGson == this.a) || (paramGson == this.b)) {
      return this.c;
    }
    return null;
  }
  
  public final String toString()
  {
    return "Factory[type=" + this.b.getName() + "+" + this.a.getName() + ",adapter=" + this.c + "]";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */