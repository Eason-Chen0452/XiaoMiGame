package com.xiaomi.gamecenter.gamesdk.datasdk.gson;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.ConstructorConstructor;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.Excluder;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.Primitives;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.Streams;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.ArrayTypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.CollectionTypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.DateTypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.JsonTreeReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.JsonTreeWriter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.MapTypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.ObjectTypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.SqlDateTypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.TimeTypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.TypeAdapters;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.reflect.TypeToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonToken;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

public final class Gson
{
  static final boolean DEFAULT_COMPLEX_MAP_KEYS = false;
  static final boolean DEFAULT_ESCAPE_HTML = true;
  static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
  static final boolean DEFAULT_LENIENT = false;
  static final boolean DEFAULT_PRETTY_PRINT = false;
  static final boolean DEFAULT_SERIALIZE_NULLS = false;
  static final boolean DEFAULT_SPECIALIZE_FLOAT_VALUES = false;
  private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";
  private static final TypeToken<?> NULL_KEY_SURROGATE = TypeToken.get(Object.class);
  final List<TypeAdapterFactory> builderFactories;
  final List<TypeAdapterFactory> builderHierarchyFactories;
  private final ThreadLocal<Map<TypeToken<?>, FutureTypeAdapter<?>>> calls = new ThreadLocal();
  final boolean complexMapKeySerialization;
  private final ConstructorConstructor constructorConstructor;
  final String datePattern;
  final int dateStyle;
  final Excluder excluder;
  final List<TypeAdapterFactory> factories;
  final FieldNamingStrategy fieldNamingStrategy;
  final boolean generateNonExecutableJson;
  final boolean htmlSafe;
  final Map<Type, InstanceCreator<?>> instanceCreators;
  private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;
  final boolean lenient;
  final LongSerializationPolicy longSerializationPolicy;
  final boolean prettyPrinting;
  final boolean serializeNulls;
  final boolean serializeSpecialFloatingPointValues;
  final int timeStyle;
  private final Map<TypeToken<?>, TypeAdapter<?>> typeTokenCache = new ConcurrentHashMap();
  
  public Gson()
  {
    this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, LongSerializationPolicy.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
  }
  
  Gson(Excluder paramExcluder, FieldNamingStrategy paramFieldNamingStrategy, Map<Type, InstanceCreator<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, LongSerializationPolicy paramLongSerializationPolicy, String paramString, int paramInt1, int paramInt2, List<TypeAdapterFactory> paramList1, List<TypeAdapterFactory> paramList2, List<TypeAdapterFactory> paramList3)
  {
    this.excluder = paramExcluder;
    this.fieldNamingStrategy = paramFieldNamingStrategy;
    this.instanceCreators = paramMap;
    this.constructorConstructor = new ConstructorConstructor(paramMap);
    this.serializeNulls = paramBoolean1;
    this.complexMapKeySerialization = paramBoolean2;
    this.generateNonExecutableJson = paramBoolean3;
    this.htmlSafe = paramBoolean4;
    this.prettyPrinting = paramBoolean5;
    this.lenient = paramBoolean6;
    this.serializeSpecialFloatingPointValues = paramBoolean7;
    this.longSerializationPolicy = paramLongSerializationPolicy;
    this.datePattern = paramString;
    this.dateStyle = paramInt1;
    this.timeStyle = paramInt2;
    this.builderFactories = paramList1;
    this.builderHierarchyFactories = paramList2;
    paramMap = new ArrayList();
    paramMap.add(TypeAdapters.JSON_ELEMENT_FACTORY);
    paramMap.add(ObjectTypeAdapter.FACTORY);
    paramMap.add(paramExcluder);
    paramMap.addAll(paramList3);
    paramMap.add(TypeAdapters.STRING_FACTORY);
    paramMap.add(TypeAdapters.INTEGER_FACTORY);
    paramMap.add(TypeAdapters.BOOLEAN_FACTORY);
    paramMap.add(TypeAdapters.BYTE_FACTORY);
    paramMap.add(TypeAdapters.SHORT_FACTORY);
    paramLongSerializationPolicy = longAdapter(paramLongSerializationPolicy);
    paramMap.add(TypeAdapters.newFactory(Long.TYPE, Long.class, paramLongSerializationPolicy));
    paramMap.add(TypeAdapters.newFactory(Double.TYPE, Double.class, doubleAdapter(paramBoolean7)));
    paramMap.add(TypeAdapters.newFactory(Float.TYPE, Float.class, floatAdapter(paramBoolean7)));
    paramMap.add(TypeAdapters.NUMBER_FACTORY);
    paramMap.add(TypeAdapters.ATOMIC_INTEGER_FACTORY);
    paramMap.add(TypeAdapters.ATOMIC_BOOLEAN_FACTORY);
    paramMap.add(TypeAdapters.newFactory(AtomicLong.class, atomicLongAdapter(paramLongSerializationPolicy)));
    paramMap.add(TypeAdapters.newFactory(AtomicLongArray.class, atomicLongArrayAdapter(paramLongSerializationPolicy)));
    paramMap.add(TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY);
    paramMap.add(TypeAdapters.CHARACTER_FACTORY);
    paramMap.add(TypeAdapters.STRING_BUILDER_FACTORY);
    paramMap.add(TypeAdapters.STRING_BUFFER_FACTORY);
    paramMap.add(TypeAdapters.newFactory(BigDecimal.class, TypeAdapters.BIG_DECIMAL));
    paramMap.add(TypeAdapters.newFactory(BigInteger.class, TypeAdapters.BIG_INTEGER));
    paramMap.add(TypeAdapters.URL_FACTORY);
    paramMap.add(TypeAdapters.URI_FACTORY);
    paramMap.add(TypeAdapters.UUID_FACTORY);
    paramMap.add(TypeAdapters.CURRENCY_FACTORY);
    paramMap.add(TypeAdapters.LOCALE_FACTORY);
    paramMap.add(TypeAdapters.INET_ADDRESS_FACTORY);
    paramMap.add(TypeAdapters.BIT_SET_FACTORY);
    paramMap.add(DateTypeAdapter.FACTORY);
    paramMap.add(TypeAdapters.CALENDAR_FACTORY);
    paramMap.add(TimeTypeAdapter.FACTORY);
    paramMap.add(SqlDateTypeAdapter.FACTORY);
    paramMap.add(TypeAdapters.TIMESTAMP_FACTORY);
    paramMap.add(ArrayTypeAdapter.FACTORY);
    paramMap.add(TypeAdapters.CLASS_FACTORY);
    paramMap.add(new CollectionTypeAdapterFactory(this.constructorConstructor));
    paramMap.add(new MapTypeAdapterFactory(this.constructorConstructor, paramBoolean2));
    this.jsonAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(this.constructorConstructor);
    paramMap.add(this.jsonAdapterFactory);
    paramMap.add(TypeAdapters.ENUM_FACTORY);
    paramMap.add(new ReflectiveTypeAdapterFactory(this.constructorConstructor, paramFieldNamingStrategy, paramExcluder, this.jsonAdapterFactory));
    this.factories = Collections.unmodifiableList(paramMap);
  }
  
  private static void assertFullConsumption(Object paramObject, JsonReader paramJsonReader)
  {
    if (paramObject != null) {
      try
      {
        if (paramJsonReader.peek() != JsonToken.END_DOCUMENT) {
          throw new JsonIOException("JSON document was not fully consumed.");
        }
      }
      catch (MalformedJsonException paramObject)
      {
        throw new JsonSyntaxException((Throwable)paramObject);
      }
      catch (IOException paramObject)
      {
        throw new JsonIOException((Throwable)paramObject);
      }
    }
  }
  
  private static TypeAdapter<AtomicLong> atomicLongAdapter(TypeAdapter<Number> paramTypeAdapter)
  {
    return new Gson.4(paramTypeAdapter).nullSafe();
  }
  
  private static TypeAdapter<AtomicLongArray> atomicLongArrayAdapter(TypeAdapter<Number> paramTypeAdapter)
  {
    return new Gson.5(paramTypeAdapter).nullSafe();
  }
  
  static void checkValidFloatingPoint(double paramDouble)
  {
    if ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble))) {
      throw new IllegalArgumentException(paramDouble + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    }
  }
  
  private TypeAdapter<Number> doubleAdapter(boolean paramBoolean)
  {
    if (paramBoolean) {
      return TypeAdapters.DOUBLE;
    }
    return new Gson.1(this);
  }
  
  private TypeAdapter<Number> floatAdapter(boolean paramBoolean)
  {
    if (paramBoolean) {
      return TypeAdapters.FLOAT;
    }
    return new Gson.2(this);
  }
  
  private static TypeAdapter<Number> longAdapter(LongSerializationPolicy paramLongSerializationPolicy)
  {
    if (paramLongSerializationPolicy == LongSerializationPolicy.DEFAULT) {
      return TypeAdapters.LONG;
    }
    return new Gson.3();
  }
  
  public final Excluder excluder()
  {
    return this.excluder;
  }
  
  public final FieldNamingStrategy fieldNamingStrategy()
  {
    return this.fieldNamingStrategy;
  }
  
  public final <T> T fromJson(JsonElement paramJsonElement, Class<T> paramClass)
  {
    paramJsonElement = fromJson(paramJsonElement, paramClass);
    return (T)Primitives.wrap(paramClass).cast(paramJsonElement);
  }
  
  public final <T> T fromJson(JsonElement paramJsonElement, Type paramType)
  {
    if (paramJsonElement == null) {
      return null;
    }
    return (T)fromJson(new JsonTreeReader(paramJsonElement), paramType);
  }
  
  /* Error */
  public final <T> T fromJson(JsonReader paramJsonReader, Type paramType)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: invokevirtual 467	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader:isLenient	()Z
    //   6: istore 4
    //   8: aload_1
    //   9: iconst_1
    //   10: invokevirtual 471	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader:setLenient	(Z)V
    //   13: aload_1
    //   14: invokevirtual 346	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader:peek	()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonToken;
    //   17: pop
    //   18: iconst_0
    //   19: istore_3
    //   20: aload_0
    //   21: aload_2
    //   22: invokestatic 474	com/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken:get	(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;
    //   25: invokevirtual 478	com/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson:getAdapter	(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    //   28: aload_1
    //   29: invokevirtual 484	com/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter:read	(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader;)Ljava/lang/Object;
    //   32: astore_2
    //   33: aload_1
    //   34: iload 4
    //   36: invokevirtual 471	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader:setLenient	(Z)V
    //   39: aload_2
    //   40: areturn
    //   41: astore_2
    //   42: iload_3
    //   43: ifeq +11 -> 54
    //   46: aload_1
    //   47: iload 4
    //   49: invokevirtual 471	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader:setLenient	(Z)V
    //   52: aconst_null
    //   53: areturn
    //   54: new 361	com/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException
    //   57: dup
    //   58: aload_2
    //   59: invokespecial 364	com/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   62: athrow
    //   63: astore_2
    //   64: aload_1
    //   65: iload 4
    //   67: invokevirtual 471	com/xiaomi/gamecenter/gamesdk/datasdk/gson/stream/JsonReader:setLenient	(Z)V
    //   70: aload_2
    //   71: athrow
    //   72: astore_2
    //   73: new 361	com/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException
    //   76: dup
    //   77: aload_2
    //   78: invokespecial 364	com/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   81: athrow
    //   82: astore_2
    //   83: new 361	com/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException
    //   86: dup
    //   87: aload_2
    //   88: invokespecial 364	com/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	Gson
    //   0	92	1	paramJsonReader	JsonReader
    //   0	92	2	paramType	Type
    //   1	42	3	i	int
    //   6	60	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   13	18	41	java/io/EOFException
    //   20	33	41	java/io/EOFException
    //   13	18	63	finally
    //   20	33	63	finally
    //   54	63	63	finally
    //   73	82	63	finally
    //   83	92	63	finally
    //   13	18	72	java/lang/IllegalStateException
    //   20	33	72	java/lang/IllegalStateException
    //   13	18	82	java/io/IOException
    //   20	33	82	java/io/IOException
  }
  
  public final <T> T fromJson(Reader paramReader, Class<T> paramClass)
  {
    paramReader = newJsonReader(paramReader);
    Object localObject = fromJson(paramReader, paramClass);
    assertFullConsumption(localObject, paramReader);
    return (T)Primitives.wrap(paramClass).cast(localObject);
  }
  
  public final <T> T fromJson(Reader paramReader, Type paramType)
  {
    paramReader = newJsonReader(paramReader);
    paramType = fromJson(paramReader, paramType);
    assertFullConsumption(paramType, paramReader);
    return paramType;
  }
  
  public final <T> T fromJson(String paramString, Class<T> paramClass)
  {
    paramString = fromJson(paramString, paramClass);
    return (T)Primitives.wrap(paramClass).cast(paramString);
  }
  
  public final <T> T fromJson(String paramString, Type paramType)
  {
    if (paramString == null) {
      return null;
    }
    return (T)fromJson(new StringReader(paramString), paramType);
  }
  
  public final <T> TypeAdapter<T> getAdapter(TypeToken<T> paramTypeToken)
  {
    Object localObject3 = this.typeTokenCache;
    if (paramTypeToken == null) {}
    for (Object localObject1 = NULL_KEY_SURROGATE;; localObject1 = paramTypeToken)
    {
      localObject1 = (TypeAdapter)((Map)localObject3).get(localObject1);
      if (localObject1 == null) {
        break;
      }
      return (TypeAdapter<T>)localObject1;
    }
    localObject3 = (Map)this.calls.get();
    int i = 0;
    if (localObject3 == null)
    {
      localObject3 = new HashMap();
      this.calls.set(localObject3);
      i = 1;
    }
    for (;;)
    {
      Object localObject4 = (FutureTypeAdapter)((Map)localObject3).get(paramTypeToken);
      localObject1 = localObject4;
      if (localObject4 != null) {
        break;
      }
      try
      {
        localObject1 = new FutureTypeAdapter();
        ((Map)localObject3).put(paramTypeToken, localObject1);
        Iterator localIterator = this.factories.iterator();
        for (;;)
        {
          if (localIterator.hasNext())
          {
            localObject4 = ((TypeAdapterFactory)localIterator.next()).create(this, paramTypeToken);
            if (localObject4 != null)
            {
              ((FutureTypeAdapter)localObject1).setDelegate((TypeAdapter)localObject4);
              this.typeTokenCache.put(paramTypeToken, localObject4);
              ((Map)localObject3).remove(paramTypeToken);
              localObject1 = localObject4;
              if (i == 0) {
                break;
              }
              this.calls.remove();
              return (TypeAdapter<T>)localObject4;
            }
          }
        }
        throw new IllegalArgumentException("GSON cannot handle " + paramTypeToken);
      }
      finally
      {
        ((Map)localObject3).remove(paramTypeToken);
        if (i != 0) {
          this.calls.remove();
        }
      }
    }
  }
  
  public final <T> TypeAdapter<T> getAdapter(Class<T> paramClass)
  {
    return getAdapter(TypeToken.get(paramClass));
  }
  
  public final <T> TypeAdapter<T> getDelegateAdapter(TypeAdapterFactory paramTypeAdapterFactory, TypeToken<T> paramTypeToken)
  {
    Object localObject1 = paramTypeAdapterFactory;
    if (!this.factories.contains(paramTypeAdapterFactory)) {
      localObject1 = this.jsonAdapterFactory;
    }
    paramTypeAdapterFactory = this.factories.iterator();
    int i = 0;
    while (paramTypeAdapterFactory.hasNext())
    {
      Object localObject2 = (TypeAdapterFactory)paramTypeAdapterFactory.next();
      if (i == 0)
      {
        if (localObject2 == localObject1) {
          i = 1;
        }
      }
      else
      {
        localObject2 = ((TypeAdapterFactory)localObject2).create(this, paramTypeToken);
        if (localObject2 != null) {
          return (TypeAdapter<T>)localObject2;
        }
      }
    }
    throw new IllegalArgumentException("GSON cannot serialize " + paramTypeToken);
  }
  
  public final boolean htmlSafe()
  {
    return this.htmlSafe;
  }
  
  public final GsonBuilder newBuilder()
  {
    return new GsonBuilder(this);
  }
  
  public final JsonReader newJsonReader(Reader paramReader)
  {
    paramReader = new JsonReader(paramReader);
    paramReader.setLenient(this.lenient);
    return paramReader;
  }
  
  public final JsonWriter newJsonWriter(Writer paramWriter)
  {
    if (this.generateNonExecutableJson) {
      paramWriter.write(")]}'\n");
    }
    paramWriter = new JsonWriter(paramWriter);
    if (this.prettyPrinting) {
      paramWriter.setIndent("  ");
    }
    paramWriter.setSerializeNulls(this.serializeNulls);
    return paramWriter;
  }
  
  public final boolean serializeNulls()
  {
    return this.serializeNulls;
  }
  
  public final String toJson(JsonElement paramJsonElement)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramJsonElement, localStringWriter);
    return localStringWriter.toString();
  }
  
  public final String toJson(Object paramObject)
  {
    if (paramObject == null) {
      return toJson(JsonNull.INSTANCE);
    }
    return toJson(paramObject, paramObject.getClass());
  }
  
  public final String toJson(Object paramObject, Type paramType)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramObject, paramType, localStringWriter);
    return localStringWriter.toString();
  }
  
  public final void toJson(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
  {
    boolean bool1 = paramJsonWriter.isLenient();
    paramJsonWriter.setLenient(true);
    boolean bool2 = paramJsonWriter.isHtmlSafe();
    paramJsonWriter.setHtmlSafe(this.htmlSafe);
    boolean bool3 = paramJsonWriter.getSerializeNulls();
    paramJsonWriter.setSerializeNulls(this.serializeNulls);
    try
    {
      Streams.write(paramJsonElement, paramJsonWriter);
      return;
    }
    catch (IOException paramJsonElement)
    {
      throw new JsonIOException(paramJsonElement);
    }
    finally
    {
      paramJsonWriter.setLenient(bool1);
      paramJsonWriter.setHtmlSafe(bool2);
      paramJsonWriter.setSerializeNulls(bool3);
    }
  }
  
  public final void toJson(JsonElement paramJsonElement, Appendable paramAppendable)
  {
    try
    {
      toJson(paramJsonElement, newJsonWriter(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException paramJsonElement)
    {
      throw new JsonIOException(paramJsonElement);
    }
  }
  
  public final void toJson(Object paramObject, Appendable paramAppendable)
  {
    if (paramObject != null)
    {
      toJson(paramObject, paramObject.getClass(), paramAppendable);
      return;
    }
    toJson(JsonNull.INSTANCE, paramAppendable);
  }
  
  public final void toJson(Object paramObject, Type paramType, JsonWriter paramJsonWriter)
  {
    paramType = getAdapter(TypeToken.get(paramType));
    boolean bool1 = paramJsonWriter.isLenient();
    paramJsonWriter.setLenient(true);
    boolean bool2 = paramJsonWriter.isHtmlSafe();
    paramJsonWriter.setHtmlSafe(this.htmlSafe);
    boolean bool3 = paramJsonWriter.getSerializeNulls();
    paramJsonWriter.setSerializeNulls(this.serializeNulls);
    try
    {
      paramType.write(paramJsonWriter, paramObject);
      return;
    }
    catch (IOException paramObject)
    {
      throw new JsonIOException((Throwable)paramObject);
    }
    finally
    {
      paramJsonWriter.setLenient(bool1);
      paramJsonWriter.setHtmlSafe(bool2);
      paramJsonWriter.setSerializeNulls(bool3);
    }
  }
  
  public final void toJson(Object paramObject, Type paramType, Appendable paramAppendable)
  {
    try
    {
      toJson(paramObject, paramType, newJsonWriter(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException paramObject)
    {
      throw new JsonIOException((Throwable)paramObject);
    }
  }
  
  public final JsonElement toJsonTree(Object paramObject)
  {
    if (paramObject == null) {
      return JsonNull.INSTANCE;
    }
    return toJsonTree(paramObject, paramObject.getClass());
  }
  
  public final JsonElement toJsonTree(Object paramObject, Type paramType)
  {
    JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
    toJson(paramObject, paramType, localJsonTreeWriter);
    return localJsonTreeWriter.get();
  }
  
  public final String toString()
  {
    return "{serializeNulls:" + this.serializeNulls + ",factories:" + this.factories + ",instanceCreators:" + this.constructorConstructor + "}";
  }
  
  static class FutureTypeAdapter<T>
    extends TypeAdapter<T>
  {
    private TypeAdapter<T> delegate;
    
    public T read(JsonReader paramJsonReader)
    {
      if (this.delegate == null) {
        throw new IllegalStateException();
      }
      return (T)this.delegate.read(paramJsonReader);
    }
    
    public void setDelegate(TypeAdapter<T> paramTypeAdapter)
    {
      if (this.delegate != null) {
        throw new AssertionError();
      }
      this.delegate = paramTypeAdapter;
    }
    
    public void write(JsonWriter paramJsonWriter, T paramT)
    {
      if (this.delegate == null) {
        throw new IllegalStateException();
      }
      this.delegate.write(paramJsonWriter, paramT);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\Gson.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */