package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.bo;
import com.xiaomi.gson.TypeAdapter;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

final class TypeAdapters$EnumTypeAdapter<T extends Enum<T>>
  extends TypeAdapter<T>
{
  private final Map<String, T> a = new HashMap();
  private final Map<T, String> b = new HashMap();
  
  public TypeAdapters$EnumTypeAdapter(Class<T> paramClass)
  {
    try
    {
      Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
      int k = arrayOfEnum.length;
      int i = 0;
      while (i < k)
      {
        Enum localEnum = arrayOfEnum[i];
        Object localObject1 = localEnum.name();
        Object localObject2 = (bo)paramClass.getField((String)localObject1).getAnnotation(bo.class);
        if (localObject2 != null)
        {
          String str = ((bo)localObject2).a();
          localObject2 = ((bo)localObject2).b();
          int m = localObject2.length;
          int j = 0;
          for (;;)
          {
            localObject1 = str;
            if (j >= m) {
              break;
            }
            localObject1 = localObject2[j];
            this.a.put(localObject1, localEnum);
            j += 1;
          }
        }
        this.a.put(localObject1, localEnum);
        this.b.put(localEnum, localObject1);
        i += 1;
      }
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new AssertionError("Missing field in " + paramClass.getName(), localNoSuchFieldException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\TypeAdapters$EnumTypeAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */