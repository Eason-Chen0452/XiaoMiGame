package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.FieldNamingStrategy;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.Gson;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonSyntaxException;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.annotations.JsonAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.annotations.SerializedName;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal..Gson.Types;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.ConstructorConstructor;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.Excluder;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.ObjectConstructor;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.Primitives;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken<*>;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor constructorConstructor;
  private final Excluder excluder;
  private final FieldNamingStrategy fieldNamingPolicy;
  private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;
  
  public ReflectiveTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, FieldNamingStrategy paramFieldNamingStrategy, Excluder paramExcluder, JsonAdapterAnnotationTypeAdapterFactory paramJsonAdapterAnnotationTypeAdapterFactory)
  {
    this.constructorConstructor = paramConstructorConstructor;
    this.fieldNamingPolicy = paramFieldNamingStrategy;
    this.excluder = paramExcluder;
    this.jsonAdapterFactory = paramJsonAdapterAnnotationTypeAdapterFactory;
  }
  
  private BoundField createBoundField(Gson paramGson, Field paramField, String paramString, TypeToken<?> paramTypeToken, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool2 = Primitives.isPrimitive(paramTypeToken.getRawType());
    Object localObject = (JsonAdapter)paramField.getAnnotation(JsonAdapter.class);
    TypeAdapter localTypeAdapter = null;
    if (localObject != null) {
      localTypeAdapter = this.jsonAdapterFactory.getTypeAdapter(this.constructorConstructor, paramGson, paramTypeToken, (JsonAdapter)localObject);
    }
    if (localTypeAdapter != null) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject = localTypeAdapter;
      if (localTypeAdapter == null) {
        localObject = paramGson.getAdapter(paramTypeToken);
      }
      return new ReflectiveTypeAdapterFactory.1(this, paramString, paramBoolean1, paramBoolean2, paramField, bool1, (TypeAdapter)localObject, paramGson, paramTypeToken, bool2);
    }
  }
  
  static boolean excludeField(Field paramField, boolean paramBoolean, Excluder paramExcluder)
  {
    return (!paramExcluder.excludeClass(paramField.getType(), paramBoolean)) && (!paramExcluder.excludeField(paramField, paramBoolean));
  }
  
  private Map<String, BoundField> getBoundFields(Gson paramGson, TypeToken<?> paramTypeToken, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface()) {
      return localLinkedHashMap;
    }
    Type localType1 = paramTypeToken.getType();
    Object localObject1 = paramClass;
    paramClass = paramTypeToken;
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
        boolean bool1 = excludeField(localField, true);
        boolean bool2 = excludeField(localField, false);
        if ((bool1) || (bool2))
        {
          localField.setAccessible(true);
          Type localType2 = .Gson.Types.resolve(paramClass.getType(), (Class)localObject1, localField.getGenericType());
          List localList = getFieldNames(localField);
          paramTypeToken = null;
          int m = localList.size();
          j = 0;
          label138:
          if (j < m)
          {
            Object localObject2 = (String)localList.get(j);
            if (j != 0) {
              bool1 = false;
            }
            localObject2 = (BoundField)localLinkedHashMap.put(localObject2, createBoundField(paramGson, localField, (String)localObject2, TypeToken.get(localType2), bool1, bool2));
            if (paramTypeToken != null) {
              break label293;
            }
            paramTypeToken = (TypeToken<?>)localObject2;
          }
        }
      }
    }
    label293:
    for (;;)
    {
      j += 1;
      break label138;
      if (paramTypeToken != null) {
        throw new IllegalArgumentException(localType1 + " declares multiple JSON fields named " + paramTypeToken.name);
      }
      i += 1;
      break label52;
      paramClass = TypeToken.get(.Gson.Types.resolve(paramClass.getType(), (Class)localObject1, ((Class)localObject1).getGenericSuperclass()));
      localObject1 = paramClass.getRawType();
      break;
      return localLinkedHashMap;
    }
  }
  
  private List<String> getFieldNames(Field paramField)
  {
    Object localObject = (SerializedName)paramField.getAnnotation(SerializedName.class);
    if (localObject == null)
    {
      paramField = Collections.singletonList(this.fieldNamingPolicy.translateName(paramField));
      return paramField;
    }
    paramField = ((SerializedName)localObject).value();
    String[] arrayOfString = ((SerializedName)localObject).alternate();
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
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    if (!Object.class.isAssignableFrom(localClass)) {
      return null;
    }
    return new Adapter(this.constructorConstructor.get(paramTypeToken), getBoundFields(paramGson, paramTypeToken, localClass));
  }
  
  public final boolean excludeField(Field paramField, boolean paramBoolean)
  {
    return excludeField(paramField, paramBoolean, this.excluder);
  }
  
  public static final class Adapter<T>
    extends TypeAdapter<T>
  {
    private final Map<String, ReflectiveTypeAdapterFactory.BoundField> boundFields;
    private final ObjectConstructor<T> constructor;
    
    Adapter(ObjectConstructor<T> paramObjectConstructor, Map<String, ReflectiveTypeAdapterFactory.BoundField> paramMap)
    {
      this.constructor = paramObjectConstructor;
      this.boundFields = paramMap;
    }
    
    public final T read(JsonReader paramJsonReader)
    {
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        return null;
      }
      Object localObject1 = this.constructor.construct();
      try
      {
        paramJsonReader.beginObject();
        for (;;)
        {
          if (!paramJsonReader.hasNext()) {
            break label103;
          }
          localObject2 = paramJsonReader.nextName();
          localObject2 = (ReflectiveTypeAdapterFactory.BoundField)this.boundFields.get(localObject2);
          if ((localObject2 != null) && (((ReflectiveTypeAdapterFactory.BoundField)localObject2).deserialized)) {
            break;
          }
          paramJsonReader.skipValue();
        }
      }
      catch (IllegalStateException paramJsonReader)
      {
        for (;;)
        {
          Object localObject2;
          throw new JsonSyntaxException(paramJsonReader);
          ((ReflectiveTypeAdapterFactory.BoundField)localObject2).read(paramJsonReader, localObject1);
        }
      }
      catch (IllegalAccessException paramJsonReader)
      {
        throw new AssertionError(paramJsonReader);
      }
      label103:
      paramJsonReader.endObject();
      return (T)localObject1;
    }
    
    public final void write(JsonWriter paramJsonWriter, T paramT)
    {
      if (paramT == null)
      {
        paramJsonWriter.nullValue();
        return;
      }
      paramJsonWriter.beginObject();
      try
      {
        Iterator localIterator = this.boundFields.values().iterator();
        while (localIterator.hasNext())
        {
          ReflectiveTypeAdapterFactory.BoundField localBoundField = (ReflectiveTypeAdapterFactory.BoundField)localIterator.next();
          if (localBoundField.writeField(paramT))
          {
            paramJsonWriter.name(localBoundField.name);
            localBoundField.write(paramJsonWriter, paramT);
          }
        }
        paramJsonWriter.endObject();
      }
      catch (IllegalAccessException paramJsonWriter)
      {
        throw new AssertionError(paramJsonWriter);
      }
    }
  }
  
  static abstract class BoundField
  {
    final boolean deserialized;
    final String name;
    final boolean serialized;
    
    protected BoundField(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.name = paramString;
      this.serialized = paramBoolean1;
      this.deserialized = paramBoolean2;
    }
    
    abstract void read(JsonReader paramJsonReader, Object paramObject);
    
    abstract void write(JsonWriter paramJsonWriter, Object paramObject);
    
    abstract boolean writeField(Object paramObject);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\bind\ReflectiveTypeAdapterFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */