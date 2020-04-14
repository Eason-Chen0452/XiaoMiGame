package com.xiaomi.gson;

import com.xiaomi.gamecenter.sdk.br;
import com.xiaomi.gson.internal.ConstructorConstructor;
import com.xiaomi.gson.internal.Excluder;
import com.xiaomi.gson.internal.bind.ArrayTypeAdapter;
import com.xiaomi.gson.internal.bind.CollectionTypeAdapterFactory;
import com.xiaomi.gson.internal.bind.DateTypeAdapter;
import com.xiaomi.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.xiaomi.gson.internal.bind.MapTypeAdapterFactory;
import com.xiaomi.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.xiaomi.gson.internal.bind.SqlDateTypeAdapter;
import com.xiaomi.gson.internal.bind.TimeTypeAdapter;
import com.xiaomi.gson.internal.bind.e;
import com.xiaomi.gson.stream.JsonReader;
import com.xiaomi.gson.stream.JsonToken;
import com.xiaomi.gson.stream.JsonWriter;
import com.xiaomi.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.StringReader;
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
  private static final br<?> a = new h();
  private final ThreadLocal<Map<br<?>, n<?>>> b = new ThreadLocal();
  private final Map<br<?>, TypeAdapter<?>> c = new ConcurrentHashMap();
  private final List<u> d;
  private final ConstructorConstructor e;
  private final Excluder f;
  private final g g;
  private final boolean h;
  private final boolean i;
  private final boolean j;
  private final boolean k;
  private final boolean l;
  
  public Gson()
  {
    this(Excluder.a, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), LongSerializationPolicy.DEFAULT, Collections.emptyList());
  }
  
  private Gson(Excluder paramExcluder, g paramg, Map<Type, o<?>> paramMap, LongSerializationPolicy paramLongSerializationPolicy, List<u> paramList)
  {
    this.e = new ConstructorConstructor(paramMap);
    this.f = paramExcluder;
    this.g = paramg;
    this.h = false;
    this.j = false;
    this.i = true;
    this.k = false;
    this.l = false;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(com.xiaomi.gson.internal.bind.o.Y);
    localArrayList.add(e.a);
    localArrayList.add(paramExcluder);
    localArrayList.addAll(paramList);
    localArrayList.add(com.xiaomi.gson.internal.bind.o.D);
    localArrayList.add(com.xiaomi.gson.internal.bind.o.m);
    localArrayList.add(com.xiaomi.gson.internal.bind.o.g);
    localArrayList.add(com.xiaomi.gson.internal.bind.o.i);
    localArrayList.add(com.xiaomi.gson.internal.bind.o.k);
    if (paramLongSerializationPolicy == LongSerializationPolicy.DEFAULT) {}
    for (paramMap = com.xiaomi.gson.internal.bind.o.t;; paramMap = new k())
    {
      localArrayList.add(com.xiaomi.gson.internal.bind.o.a(Long.TYPE, Long.class, paramMap));
      localArrayList.add(com.xiaomi.gson.internal.bind.o.a(Double.TYPE, Double.class, new i(this)));
      localArrayList.add(com.xiaomi.gson.internal.bind.o.a(Float.TYPE, Float.class, new j(this)));
      localArrayList.add(com.xiaomi.gson.internal.bind.o.x);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.o);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.q);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.a(AtomicLong.class, new l(paramMap).a()));
      localArrayList.add(com.xiaomi.gson.internal.bind.o.a(AtomicLongArray.class, new m(paramMap).a()));
      localArrayList.add(com.xiaomi.gson.internal.bind.o.s);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.z);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.F);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.H);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.a(BigDecimal.class, com.xiaomi.gson.internal.bind.o.B));
      localArrayList.add(com.xiaomi.gson.internal.bind.o.a(BigInteger.class, com.xiaomi.gson.internal.bind.o.C));
      localArrayList.add(com.xiaomi.gson.internal.bind.o.J);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.L);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.P);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.R);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.W);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.N);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.d);
      localArrayList.add(DateTypeAdapter.a);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.U);
      localArrayList.add(TimeTypeAdapter.a);
      localArrayList.add(SqlDateTypeAdapter.a);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.S);
      localArrayList.add(ArrayTypeAdapter.a);
      localArrayList.add(com.xiaomi.gson.internal.bind.o.b);
      localArrayList.add(new CollectionTypeAdapterFactory(this.e));
      localArrayList.add(new MapTypeAdapterFactory(this.e, false));
      localArrayList.add(new JsonAdapterAnnotationTypeAdapterFactory(this.e));
      localArrayList.add(com.xiaomi.gson.internal.bind.o.Z);
      localArrayList.add(new ReflectiveTypeAdapterFactory(this.e, paramg, paramExcluder));
      this.d = Collections.unmodifiableList(localArrayList);
      return;
    }
  }
  
  private JsonWriter a(Writer paramWriter)
  {
    if (this.j) {
      paramWriter.write(")]}'\n");
    }
    paramWriter = new JsonWriter(paramWriter);
    if (this.k) {
      paramWriter.c("  ");
    }
    paramWriter.d(this.h);
    return paramWriter;
  }
  
  /* Error */
  private <T> T a(JsonReader paramJsonReader, Type paramType)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: invokevirtual 316	com/xiaomi/gson/stream/JsonReader:p	()Z
    //   6: istore 4
    //   8: aload_1
    //   9: iconst_1
    //   10: invokevirtual 318	com/xiaomi/gson/stream/JsonReader:a	(Z)V
    //   13: aload_1
    //   14: invokevirtual 321	com/xiaomi/gson/stream/JsonReader:f	()Lcom/xiaomi/gson/stream/JsonToken;
    //   17: pop
    //   18: iconst_0
    //   19: istore_3
    //   20: aload_0
    //   21: aload_2
    //   22: invokestatic 327	com/xiaomi/gamecenter/sdk/br:get	(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;
    //   25: invokevirtual 330	com/xiaomi/gson/Gson:a	(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    //   28: aload_1
    //   29: invokevirtual 335	com/xiaomi/gson/TypeAdapter:a	(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    //   32: astore_2
    //   33: aload_1
    //   34: iload 4
    //   36: invokevirtual 318	com/xiaomi/gson/stream/JsonReader:a	(Z)V
    //   39: aload_2
    //   40: areturn
    //   41: astore_2
    //   42: iload_3
    //   43: ifeq +11 -> 54
    //   46: aload_1
    //   47: iload 4
    //   49: invokevirtual 318	com/xiaomi/gson/stream/JsonReader:a	(Z)V
    //   52: aconst_null
    //   53: areturn
    //   54: new 337	com/xiaomi/gson/JsonSyntaxException
    //   57: dup
    //   58: aload_2
    //   59: invokespecial 340	com/xiaomi/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   62: athrow
    //   63: astore_2
    //   64: aload_1
    //   65: iload 4
    //   67: invokevirtual 318	com/xiaomi/gson/stream/JsonReader:a	(Z)V
    //   70: aload_2
    //   71: athrow
    //   72: astore_2
    //   73: new 337	com/xiaomi/gson/JsonSyntaxException
    //   76: dup
    //   77: aload_2
    //   78: invokespecial 340	com/xiaomi/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   81: athrow
    //   82: astore_2
    //   83: new 337	com/xiaomi/gson/JsonSyntaxException
    //   86: dup
    //   87: aload_2
    //   88: invokespecial 340	com/xiaomi/gson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	Gson
    //   0	92	1	paramJsonReader	JsonReader
    //   0	92	2	paramType	Type
    //   1	42	3	m	int
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
  
  static void a(double paramDouble)
  {
    if ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble))) {
      throw new IllegalArgumentException(paramDouble + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    }
  }
  
  public final <T> TypeAdapter<T> a(br<T> parambr)
  {
    Object localObject3 = this.c;
    if (parambr == null) {}
    for (Object localObject1 = a;; localObject1 = parambr)
    {
      localObject1 = (TypeAdapter)((Map)localObject3).get(localObject1);
      if (localObject1 == null) {
        break;
      }
      return (TypeAdapter<T>)localObject1;
    }
    localObject3 = (Map)this.b.get();
    int m = 0;
    if (localObject3 == null)
    {
      localObject3 = new HashMap();
      this.b.set(localObject3);
      m = 1;
    }
    for (;;)
    {
      Object localObject4 = (n)((Map)localObject3).get(parambr);
      localObject1 = localObject4;
      if (localObject4 != null) {
        break;
      }
      try
      {
        localObject1 = new n();
        ((Map)localObject3).put(parambr, localObject1);
        Iterator localIterator = this.d.iterator();
        for (;;)
        {
          if (localIterator.hasNext())
          {
            localObject4 = ((u)localIterator.next()).a(this, parambr);
            if (localObject4 != null)
            {
              ((n)localObject1).a((TypeAdapter)localObject4);
              this.c.put(parambr, localObject4);
              ((Map)localObject3).remove(parambr);
              localObject1 = localObject4;
              if (m == 0) {
                break;
              }
              this.b.remove();
              return (TypeAdapter<T>)localObject4;
            }
          }
        }
        throw new IllegalArgumentException("GSON cannot handle " + parambr);
      }
      finally
      {
        ((Map)localObject3).remove(parambr);
        if (m != 0) {
          this.b.remove();
        }
      }
    }
  }
  
  public final <T> TypeAdapter<T> a(u paramu, br<T> parambr)
  {
    int m = 0;
    if (!this.d.contains(paramu)) {
      m = 1;
    }
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (u)localIterator.next();
      if (m == 0)
      {
        if (localObject == paramu) {
          m = 1;
        }
      }
      else
      {
        localObject = ((u)localObject).a(this, parambr);
        if (localObject != null) {
          return (TypeAdapter<T>)localObject;
        }
      }
    }
    throw new IllegalArgumentException("GSON cannot serialize " + parambr);
  }
  
  public final <T> TypeAdapter<T> a(Class<T> paramClass)
  {
    return a(br.get(paramClass));
  }
  
  public final <T> T a(String paramString, Type paramType)
  {
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      JsonReader localJsonReader = new JsonReader(new StringReader(paramString));
      localJsonReader.a(this.l);
      paramType = a(localJsonReader, paramType);
      paramString = paramType;
      if (paramType == null) {
        continue;
      }
      paramString = paramType;
      try
      {
        if (localJsonReader.f() == JsonToken.END_DOCUMENT) {
          continue;
        }
        throw new JsonIOException("JSON document was not fully consumed.");
      }
      catch (MalformedJsonException paramString)
      {
        throw new JsonSyntaxException(paramString);
      }
      catch (IOException paramString)
      {
        throw new JsonIOException(paramString);
      }
    }
  }
  
  /* Error */
  public final String a(Object paramObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +135 -> 136
    //   4: getstatic 464	com/xiaomi/gson/JsonNull:a	Lcom/xiaomi/gson/JsonNull;
    //   7: astore 5
    //   9: new 466	java/io/StringWriter
    //   12: dup
    //   13: invokespecial 467	java/io/StringWriter:<init>	()V
    //   16: astore 6
    //   18: aload_0
    //   19: aload 6
    //   21: checkcast 287	java/io/Writer
    //   24: invokespecial 469	com/xiaomi/gson/Gson:a	(Ljava/io/Writer;)Lcom/xiaomi/gson/stream/JsonWriter;
    //   27: astore_1
    //   28: aload_1
    //   29: invokevirtual 471	com/xiaomi/gson/stream/JsonWriter:g	()Z
    //   32: istore_2
    //   33: aload_1
    //   34: iconst_1
    //   35: invokevirtual 473	com/xiaomi/gson/stream/JsonWriter:b	(Z)V
    //   38: aload_1
    //   39: invokevirtual 475	com/xiaomi/gson/stream/JsonWriter:h	()Z
    //   42: istore_3
    //   43: aload_1
    //   44: aload_0
    //   45: getfield 95	com/xiaomi/gson/Gson:i	Z
    //   48: invokevirtual 477	com/xiaomi/gson/stream/JsonWriter:c	(Z)V
    //   51: aload_1
    //   52: invokevirtual 479	com/xiaomi/gson/stream/JsonWriter:i	()Z
    //   55: istore 4
    //   57: aload_1
    //   58: aload_0
    //   59: getfield 91	com/xiaomi/gson/Gson:h	Z
    //   62: invokevirtual 303	com/xiaomi/gson/stream/JsonWriter:d	(Z)V
    //   65: aload 5
    //   67: aload_1
    //   68: invokestatic 484	com/xiaomi/gson/internal/aj:a	(Lcom/xiaomi/gson/JsonElement;Lcom/xiaomi/gson/stream/JsonWriter;)V
    //   71: aload_1
    //   72: iload_2
    //   73: invokevirtual 473	com/xiaomi/gson/stream/JsonWriter:b	(Z)V
    //   76: aload_1
    //   77: iload_3
    //   78: invokevirtual 477	com/xiaomi/gson/stream/JsonWriter:c	(Z)V
    //   81: aload_1
    //   82: iload 4
    //   84: invokevirtual 303	com/xiaomi/gson/stream/JsonWriter:d	(Z)V
    //   87: aload 6
    //   89: invokevirtual 485	java/io/StringWriter:toString	()Ljava/lang/String;
    //   92: areturn
    //   93: astore 5
    //   95: new 453	com/xiaomi/gson/JsonIOException
    //   98: dup
    //   99: aload 5
    //   101: invokespecial 457	com/xiaomi/gson/JsonIOException:<init>	(Ljava/lang/Throwable;)V
    //   104: athrow
    //   105: astore 5
    //   107: aload_1
    //   108: iload_2
    //   109: invokevirtual 473	com/xiaomi/gson/stream/JsonWriter:b	(Z)V
    //   112: aload_1
    //   113: iload_3
    //   114: invokevirtual 477	com/xiaomi/gson/stream/JsonWriter:c	(Z)V
    //   117: aload_1
    //   118: iload 4
    //   120: invokevirtual 303	com/xiaomi/gson/stream/JsonWriter:d	(Z)V
    //   123: aload 5
    //   125: athrow
    //   126: astore_1
    //   127: new 453	com/xiaomi/gson/JsonIOException
    //   130: dup
    //   131: aload_1
    //   132: invokespecial 457	com/xiaomi/gson/JsonIOException:<init>	(Ljava/lang/Throwable;)V
    //   135: athrow
    //   136: aload_1
    //   137: invokevirtual 489	java/lang/Object:getClass	()Ljava/lang/Class;
    //   140: astore 7
    //   142: new 466	java/io/StringWriter
    //   145: dup
    //   146: invokespecial 467	java/io/StringWriter:<init>	()V
    //   149: astore 6
    //   151: aload_0
    //   152: aload 6
    //   154: checkcast 287	java/io/Writer
    //   157: invokespecial 469	com/xiaomi/gson/Gson:a	(Ljava/io/Writer;)Lcom/xiaomi/gson/stream/JsonWriter;
    //   160: astore 5
    //   162: aload_0
    //   163: aload 7
    //   165: invokestatic 327	com/xiaomi/gamecenter/sdk/br:get	(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;
    //   168: invokevirtual 330	com/xiaomi/gson/Gson:a	(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    //   171: astore 7
    //   173: aload 5
    //   175: invokevirtual 471	com/xiaomi/gson/stream/JsonWriter:g	()Z
    //   178: istore_2
    //   179: aload 5
    //   181: iconst_1
    //   182: invokevirtual 473	com/xiaomi/gson/stream/JsonWriter:b	(Z)V
    //   185: aload 5
    //   187: invokevirtual 475	com/xiaomi/gson/stream/JsonWriter:h	()Z
    //   190: istore_3
    //   191: aload 5
    //   193: aload_0
    //   194: getfield 95	com/xiaomi/gson/Gson:i	Z
    //   197: invokevirtual 477	com/xiaomi/gson/stream/JsonWriter:c	(Z)V
    //   200: aload 5
    //   202: invokevirtual 479	com/xiaomi/gson/stream/JsonWriter:i	()Z
    //   205: istore 4
    //   207: aload 5
    //   209: aload_0
    //   210: getfield 91	com/xiaomi/gson/Gson:h	Z
    //   213: invokevirtual 303	com/xiaomi/gson/stream/JsonWriter:d	(Z)V
    //   216: aload 7
    //   218: aload 5
    //   220: aload_1
    //   221: invokevirtual 492	com/xiaomi/gson/TypeAdapter:a	(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    //   224: aload 5
    //   226: iload_2
    //   227: invokevirtual 473	com/xiaomi/gson/stream/JsonWriter:b	(Z)V
    //   230: aload 5
    //   232: iload_3
    //   233: invokevirtual 477	com/xiaomi/gson/stream/JsonWriter:c	(Z)V
    //   236: aload 5
    //   238: iload 4
    //   240: invokevirtual 303	com/xiaomi/gson/stream/JsonWriter:d	(Z)V
    //   243: aload 6
    //   245: invokevirtual 485	java/io/StringWriter:toString	()Ljava/lang/String;
    //   248: areturn
    //   249: astore_1
    //   250: new 453	com/xiaomi/gson/JsonIOException
    //   253: dup
    //   254: aload_1
    //   255: invokespecial 457	com/xiaomi/gson/JsonIOException:<init>	(Ljava/lang/Throwable;)V
    //   258: athrow
    //   259: astore_1
    //   260: aload 5
    //   262: iload_2
    //   263: invokevirtual 473	com/xiaomi/gson/stream/JsonWriter:b	(Z)V
    //   266: aload 5
    //   268: iload_3
    //   269: invokevirtual 477	com/xiaomi/gson/stream/JsonWriter:c	(Z)V
    //   272: aload 5
    //   274: iload 4
    //   276: invokevirtual 303	com/xiaomi/gson/stream/JsonWriter:d	(Z)V
    //   279: aload_1
    //   280: athrow
    //   281: astore_1
    //   282: new 453	com/xiaomi/gson/JsonIOException
    //   285: dup
    //   286: aload_1
    //   287: invokespecial 457	com/xiaomi/gson/JsonIOException:<init>	(Ljava/lang/Throwable;)V
    //   290: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	291	0	this	Gson
    //   0	291	1	paramObject	Object
    //   32	231	2	bool1	boolean
    //   42	227	3	bool2	boolean
    //   55	220	4	bool3	boolean
    //   7	59	5	localJsonNull	JsonNull
    //   93	7	5	localIOException	IOException
    //   105	19	5	localObject1	Object
    //   160	113	5	localJsonWriter	JsonWriter
    //   16	228	6	localStringWriter	java.io.StringWriter
    //   140	77	7	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   65	71	93	java/io/IOException
    //   65	71	105	finally
    //   95	105	105	finally
    //   18	65	126	java/io/IOException
    //   71	87	126	java/io/IOException
    //   107	126	126	java/io/IOException
    //   216	224	249	java/io/IOException
    //   216	224	259	finally
    //   250	259	259	finally
    //   151	216	281	java/io/IOException
    //   224	243	281	java/io/IOException
    //   260	281	281	java/io/IOException
  }
  
  public final String toString()
  {
    return "{serializeNulls:" + this.h + "factories:" + this.d + ",instanceCreators:" + this.e + "}";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\Gson.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */