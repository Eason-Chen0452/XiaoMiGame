package com.xiaomi.gson.internal.bind;

import com.xiaomi.gamecenter.sdk.bn;
import com.xiaomi.gamecenter.sdk.bo;
import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gamecenter.sdk.br<*>;
import com.xiaomi.gson.Gson;
import com.xiaomi.gson.TypeAdapter;
import com.xiaomi.gson.g;
import com.xiaomi.gson.internal.ConstructorConstructor;
import com.xiaomi.gson.internal.Excluder;
import com.xiaomi.gson.internal.ai;
import com.xiaomi.gson.internal.b;
import com.xiaomi.gson.u;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory
  implements u
{
  private final ConstructorConstructor a;
  private final g b;
  private final Excluder c;
  
  public ReflectiveTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, g paramg, Excluder paramExcluder)
  {
    this.a = paramConstructorConstructor;
    this.b = paramg;
    this.c = paramExcluder;
  }
  
  private List<String> a(Field paramField)
  {
    Object localObject = (bo)paramField.getAnnotation(bo.class);
    if (localObject == null)
    {
      paramField = Collections.singletonList(this.b.a(paramField));
      return paramField;
    }
    paramField = ((bo)localObject).a();
    String[] arrayOfString = ((bo)localObject).b();
    if (arrayOfString.length == 0) {
      return Collections.singletonList(paramField);
    }
    localObject = new ArrayList(arrayOfString.length + 1);
    ((List)localObject).add(paramField);
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      paramField = (Field)localObject;
      if (i >= j) {
        break;
      }
      ((List)localObject).add(arrayOfString[i]);
      i += 1;
    }
  }
  
  private Map<String, j> a(Gson paramGson, br<?> parambr, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface()) {
      return localLinkedHashMap;
    }
    Type localType1 = parambr.getType();
    Object localObject1 = paramClass;
    paramClass = parambr;
    int i;
    label52:
    int j;
    if (localObject1 != Object.class)
    {
      Field[] arrayOfField = ((Class)localObject1).getDeclaredFields();
      int k = arrayOfField.length;
      i = 0;
      if (i < k)
      {
        Field localField = arrayOfField[i];
        boolean bool1 = a(localField, true);
        boolean bool2 = a(localField, false);
        if ((bool1) || (bool2))
        {
          localField.setAccessible(true);
          Type localType2 = b.a(paramClass.getType(), (Class)localObject1, localField.getGenericType());
          List localList = a(localField);
          parambr = null;
          j = 0;
          label129:
          if (j < localList.size())
          {
            Object localObject2 = (String)localList.get(j);
            if (j != 0) {
              bool1 = false;
            }
            br localbr = br.get(localType2);
            localObject2 = (j)localLinkedHashMap.put(localObject2, new h(this, (String)localObject2, bool1, bool2, paramGson, localField, localbr, ai.a(localbr.getRawType())));
            if (parambr != null) {
              break label305;
            }
            parambr = (br<?>)localObject2;
          }
        }
      }
    }
    label305:
    for (;;)
    {
      j += 1;
      break label129;
      if (parambr != null) {
        throw new IllegalArgumentException(localType1 + " declares multiple JSON fields named " + parambr.g);
      }
      i += 1;
      break label52;
      paramClass = br.get(b.a(paramClass.getType(), (Class)localObject1, ((Class)localObject1).getGenericSuperclass()));
      localObject1 = paramClass.getRawType();
      break;
      return localLinkedHashMap;
    }
  }
  
  private boolean a(Field paramField, boolean paramBoolean)
  {
    Excluder localExcluder = this.c;
    return (!localExcluder.a(paramField.getType(), paramBoolean)) && (!localExcluder.a(paramField, paramBoolean));
  }
  
  public final <T> TypeAdapter<T> a(Gson paramGson, br<T> parambr)
  {
    Class localClass = parambr.getRawType();
    if (!Object.class.isAssignableFrom(localClass)) {
      return null;
    }
    return new i(this.a.a(parambr), a(paramGson, parambr, localClass));
  }
  
  final TypeAdapter<?> a(Gson paramGson, Field paramField, br<?> parambr)
  {
    paramField = (bn)paramField.getAnnotation(bn.class);
    if (paramField != null)
    {
      paramField = JsonAdapterAnnotationTypeAdapterFactory.a(this.a, paramGson, parambr, paramField);
      if (paramField != null) {
        return paramField;
      }
    }
    return paramGson.a(parambr);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\bind\ReflectiveTypeAdapterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */