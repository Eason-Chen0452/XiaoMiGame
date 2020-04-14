package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.u;
import java.sql.Date;

final class k
  implements u
{
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    if (parambr.getRawType() == Date.class) {
      return new SqlDateTypeAdapter();
    }
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */