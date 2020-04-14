package com.bumptech.glide.load.engine.bitmap_recycle;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.util.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;

public final class LruArrayPool
  implements ArrayPool
{
  static final int DEFAULT_SIZE = 4194304;
  private static final int MAX_OVER_SIZE_MULTIPLE = 8;
  private static final int SINGLE_ARRAY_MAX_SIZE_DIVISOR = 2;
  private final Map<Class<?>, ArrayAdapterInterface<?>> adapters = new HashMap();
  private int currentSize;
  private final GroupedLinkedMap<Key, Object> groupedMap = new GroupedLinkedMap();
  private final KeyPool keyPool = new KeyPool();
  private final int maxSize;
  private final Map<Class<?>, NavigableMap<Integer, Integer>> sortedSizes = new HashMap();
  
  @VisibleForTesting
  public LruArrayPool()
  {
    this.maxSize = 4194304;
  }
  
  public LruArrayPool(int paramInt)
  {
    this.maxSize = paramInt;
  }
  
  private void decrementArrayOfSize(int paramInt, Class<?> paramClass)
  {
    paramClass = getSizesForAdapter(paramClass);
    Integer localInteger = (Integer)paramClass.get(Integer.valueOf(paramInt));
    if (localInteger == null) {
      throw new NullPointerException("Tried to decrement empty size, size: " + paramInt + ", this: " + this);
    }
    if (localInteger.intValue() == 1)
    {
      paramClass.remove(Integer.valueOf(paramInt));
      return;
    }
    paramClass.put(Integer.valueOf(paramInt), Integer.valueOf(localInteger.intValue() - 1));
  }
  
  private void evict()
  {
    evictToSize(this.maxSize);
  }
  
  private void evictToSize(int paramInt)
  {
    while (this.currentSize > paramInt)
    {
      Object localObject = this.groupedMap.removeLast();
      Preconditions.checkNotNull(localObject);
      ArrayAdapterInterface localArrayAdapterInterface = getAdapterFromObject(localObject);
      this.currentSize -= localArrayAdapterInterface.getArrayLength(localObject) * localArrayAdapterInterface.getElementSizeInBytes();
      decrementArrayOfSize(localArrayAdapterInterface.getArrayLength(localObject), localObject.getClass());
      if (Log.isLoggable(localArrayAdapterInterface.getTag(), 2)) {
        Log.v(localArrayAdapterInterface.getTag(), "evicted: " + localArrayAdapterInterface.getArrayLength(localObject));
      }
    }
  }
  
  private <T> ArrayAdapterInterface<T> getAdapterFromObject(T paramT)
  {
    return getAdapterFromType(paramT.getClass());
  }
  
  private <T> ArrayAdapterInterface<T> getAdapterFromType(Class<T> paramClass)
  {
    ArrayAdapterInterface localArrayAdapterInterface = (ArrayAdapterInterface)this.adapters.get(paramClass);
    Object localObject = localArrayAdapterInterface;
    if (localArrayAdapterInterface == null) {
      if (!paramClass.equals(int[].class)) {
        break label51;
      }
    }
    for (localObject = new IntegerArrayAdapter();; localObject = new ByteArrayAdapter())
    {
      this.adapters.put(paramClass, localObject);
      return (ArrayAdapterInterface<T>)localObject;
      label51:
      if (!paramClass.equals(byte[].class)) {
        break;
      }
    }
    throw new IllegalArgumentException("No array pool found for: " + paramClass.getSimpleName());
  }
  
  @Nullable
  private <T> T getArrayForKey(Key paramKey)
  {
    return (T)this.groupedMap.get(paramKey);
  }
  
  private NavigableMap<Integer, Integer> getSizesForAdapter(Class<?> paramClass)
  {
    NavigableMap localNavigableMap = (NavigableMap)this.sortedSizes.get(paramClass);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      this.sortedSizes.put(paramClass, localObject);
    }
    return (NavigableMap<Integer, Integer>)localObject;
  }
  
  private boolean isNoMoreThanHalfFull()
  {
    return (this.currentSize == 0) || (this.maxSize / this.currentSize >= 2);
  }
  
  private boolean isSmallEnoughForReuse(int paramInt)
  {
    return paramInt <= this.maxSize / 2;
  }
  
  private boolean mayFillRequest(int paramInt, Integer paramInteger)
  {
    return (paramInteger != null) && ((isNoMoreThanHalfFull()) || (paramInteger.intValue() <= paramInt * 8));
  }
  
  public void clearMemory()
  {
    try
    {
      evictToSize(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public <T> T get(int paramInt, Class<T> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokespecial 166	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool:getAdapterFromType	(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;
    //   5: astore 4
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: aload_2
    //   11: invokespecial 62	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool:getSizesForAdapter	(Ljava/lang/Class;)Ljava/util/NavigableMap;
    //   14: iload_1
    //   15: invokestatic 68	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   18: invokeinterface 220 2 0
    //   23: checkcast 64	java/lang/Integer
    //   26: astore_3
    //   27: aload_0
    //   28: iload_1
    //   29: aload_3
    //   30: invokespecial 222	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool:mayFillRequest	(ILjava/lang/Integer;)Z
    //   33: ifeq +132 -> 165
    //   36: aload_0
    //   37: getfield 44	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool:keyPool	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;
    //   40: aload_3
    //   41: invokevirtual 104	java/lang/Integer:intValue	()I
    //   44: aload_2
    //   45: invokevirtual 225	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool:get	(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    //   48: astore_3
    //   49: aload_0
    //   50: aload_3
    //   51: invokespecial 227	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool:getArrayForKey	(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;)Ljava/lang/Object;
    //   54: astore_3
    //   55: aload_3
    //   56: ifnull +41 -> 97
    //   59: aload_0
    //   60: aload_0
    //   61: getfield 119	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool:currentSize	I
    //   64: aload 4
    //   66: aload_3
    //   67: invokeinterface 138 2 0
    //   72: aload 4
    //   74: invokeinterface 141 1 0
    //   79: imul
    //   80: isub
    //   81: putfield 119	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool:currentSize	I
    //   84: aload_0
    //   85: aload 4
    //   87: aload_3
    //   88: invokeinterface 138 2 0
    //   93: aload_2
    //   94: invokespecial 147	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool:decrementArrayOfSize	(ILjava/lang/Class;)V
    //   97: aload_0
    //   98: monitorexit
    //   99: aload_3
    //   100: astore_2
    //   101: aload_3
    //   102: ifnonnull +61 -> 163
    //   105: aload 4
    //   107: invokeinterface 150 1 0
    //   112: iconst_2
    //   113: invokestatic 156	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   116: ifeq +38 -> 154
    //   119: aload 4
    //   121: invokeinterface 150 1 0
    //   126: new 78	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   133: ldc -27
    //   135: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: iload_1
    //   139: invokevirtual 88	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   142: ldc -25
    //   144: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokestatic 162	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   153: pop
    //   154: aload 4
    //   156: iload_1
    //   157: invokeinterface 235 2 0
    //   162: astore_2
    //   163: aload_2
    //   164: areturn
    //   165: aload_0
    //   166: getfield 44	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool:keyPool	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;
    //   169: iload_1
    //   170: aload_2
    //   171: invokevirtual 225	com/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool:get	(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    //   174: astore_3
    //   175: goto -126 -> 49
    //   178: astore_2
    //   179: aload_0
    //   180: monitorexit
    //   181: aload_2
    //   182: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	LruArrayPool
    //   0	183	1	paramInt	int
    //   0	183	2	paramClass	Class<T>
    //   26	149	3	localObject	Object
    //   5	150	4	localArrayAdapterInterface	ArrayAdapterInterface
    // Exception table:
    //   from	to	target	type
    //   9	49	178	finally
    //   49	55	178	finally
    //   59	97	178	finally
    //   97	99	178	finally
    //   165	175	178	finally
    //   179	181	178	finally
  }
  
  int getCurrentSize()
  {
    int j = 0;
    Iterator localIterator1 = this.sortedSizes.keySet().iterator();
    if (localIterator1.hasNext())
    {
      Class localClass = (Class)localIterator1.next();
      Iterator localIterator2 = ((NavigableMap)this.sortedSizes.get(localClass)).keySet().iterator();
      int i = j;
      for (;;)
      {
        j = i;
        if (!localIterator2.hasNext()) {
          break;
        }
        Integer localInteger = (Integer)localIterator2.next();
        ArrayAdapterInterface localArrayAdapterInterface = getAdapterFromType(localClass);
        j = localInteger.intValue();
        i += ((Integer)((NavigableMap)this.sortedSizes.get(localClass)).get(localInteger)).intValue() * j * localArrayAdapterInterface.getElementSizeInBytes();
      }
    }
    return j;
  }
  
  public <T> void put(T paramT, Class<T> paramClass)
  {
    for (;;)
    {
      int i;
      try
      {
        Object localObject = getAdapterFromType(paramClass);
        i = ((ArrayAdapterInterface)localObject).getArrayLength(paramT);
        int j = i * ((ArrayAdapterInterface)localObject).getElementSizeInBytes();
        boolean bool = isSmallEnoughForReuse(j);
        if (!bool) {
          return;
        }
        localObject = this.keyPool.get(i, paramClass);
        this.groupedMap.put((Poolable)localObject, paramT);
        paramT = getSizesForAdapter(paramClass);
        paramClass = (Integer)paramT.get(Integer.valueOf(((Key)localObject).size));
        int k = ((Key)localObject).size;
        if (paramClass == null)
        {
          i = 1;
          paramT.put(Integer.valueOf(k), Integer.valueOf(i));
          this.currentSize += j;
          evict();
          continue;
        }
        i = paramClass.intValue();
      }
      finally {}
      i += 1;
    }
  }
  
  public void trimMemory(int paramInt)
  {
    if (paramInt >= 40) {}
    for (;;)
    {
      try
      {
        clearMemory();
        return;
      }
      finally {}
      if (paramInt >= 20) {
        evictToSize(this.maxSize / 2);
      }
    }
  }
  
  private static final class Key
    implements Poolable
  {
    private Class<?> arrayClass;
    private final LruArrayPool.KeyPool pool;
    int size;
    
    Key(LruArrayPool.KeyPool paramKeyPool)
    {
      this.pool = paramKeyPool;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if ((paramObject instanceof Key))
      {
        paramObject = (Key)paramObject;
        bool1 = bool2;
        if (this.size == ((Key)paramObject).size)
        {
          bool1 = bool2;
          if (this.arrayClass == ((Key)paramObject).arrayClass) {
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public int hashCode()
    {
      int j = this.size;
      if (this.arrayClass != null) {}
      for (int i = this.arrayClass.hashCode();; i = 0) {
        return j * 31 + i;
      }
    }
    
    void init(int paramInt, Class<?> paramClass)
    {
      this.size = paramInt;
      this.arrayClass = paramClass;
    }
    
    public void offer()
    {
      this.pool.offer(this);
    }
    
    public String toString()
    {
      return "Key{size=" + this.size + "array=" + this.arrayClass + '}';
    }
  }
  
  private static final class KeyPool
    extends BaseKeyPool<LruArrayPool.Key>
  {
    protected LruArrayPool.Key create()
    {
      return new LruArrayPool.Key(this);
    }
    
    LruArrayPool.Key get(int paramInt, Class<?> paramClass)
    {
      LruArrayPool.Key localKey = (LruArrayPool.Key)get();
      localKey.init(paramInt, paramClass);
      return localKey;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\engine\bitmap_recycle\LruArrayPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */