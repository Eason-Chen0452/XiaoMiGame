package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.u;

final class ar
  implements u
{
  ar(Class paramClass, TypeAdapter paramTypeAdapter) {}
  
  public final <T2> TypeAdapter<T2> a(Gson paramGson, br<T2> parambr)
  {
    paramGson = parambr.getRawType();
    if (!this.a.isAssignableFrom(paramGson)) {
      return null;
    }
    return new as(this, paramGson);
  }
  
  public final String toString()
  {
    return "Factory[typeHierarchy=" + this.a.getName() + ",adapter=" + this.b + "]";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */