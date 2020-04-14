package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;
import java.sql.Timestamp;
import java.util.Date;

final class TypeAdapters$26
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (paramTypeToken.getRawType() != Timestamp.class) {
      return null;
    }
    return new TypeAdapters.26.1(this, paramGson.getAdapter(Date.class));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\TypeAdapters$26.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */