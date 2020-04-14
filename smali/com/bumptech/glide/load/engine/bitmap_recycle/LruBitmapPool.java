package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class LruBitmapPool
  implements BitmapPool
{
  private static final Bitmap.Config DEFAULT_CONFIG = Bitmap.Config.ARGB_8888;
  private static final String TAG = "LruBitmapPool";
  private final Set<Bitmap.Config> allowedConfigs;
  private int currentSize;
  private int evictions;
  private int hits;
  private final int initialMaxSize;
  private int maxSize;
  private int misses;
  private int puts;
  private final LruPoolStrategy strategy;
  private final BitmapTracker tracker;
  
  public LruBitmapPool(int paramInt)
  {
    this(paramInt, getDefaultStrategy(), getDefaultAllowedConfigs());
  }
  
  LruBitmapPool(int paramInt, LruPoolStrategy paramLruPoolStrategy, Set<Bitmap.Config> paramSet)
  {
    this.initialMaxSize = paramInt;
    this.maxSize = paramInt;
    this.strategy = paramLruPoolStrategy;
    this.allowedConfigs = paramSet;
    this.tracker = new NullBitmapTracker();
  }
  
  public LruBitmapPool(int paramInt, Set<Bitmap.Config> paramSet)
  {
    this(paramInt, getDefaultStrategy(), paramSet);
  }
  
  private void dump()
  {
    if (Log.isLoggable("LruBitmapPool", 2)) {
      dumpUnchecked();
    }
  }
  
  private void dumpUnchecked()
  {
    Log.v("LruBitmapPool", "Hits=" + this.hits + ", misses=" + this.misses + ", puts=" + this.puts + ", evictions=" + this.evictions + ", currentSize=" + this.currentSize + ", maxSize=" + this.maxSize + "\nStrategy=" + this.strategy);
  }
  
  private void evict()
  {
    trimToSize(this.maxSize);
  }
  
  private static Set<Bitmap.Config> getDefaultAllowedConfigs()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(Arrays.asList(Bitmap.Config.values()));
    if (Build.VERSION.SDK_INT >= 19) {
      localHashSet.add(null);
    }
    return Collections.unmodifiableSet(localHashSet);
  }
  
  private static LruPoolStrategy getDefaultStrategy()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return new SizeConfigStrategy();
    }
    return new AttributeStrategy();
  }
  
  /* Error */
  @android.support.annotation.Nullable
  private Bitmap getDirtyOrNull(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 67	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:strategy	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    //   6: astore 5
    //   8: aload_3
    //   9: ifnull +133 -> 142
    //   12: aload_3
    //   13: astore 4
    //   15: aload 5
    //   17: iload_1
    //   18: iload_2
    //   19: aload 4
    //   21: invokeinterface 184 4 0
    //   26: astore 4
    //   28: aload 4
    //   30: ifnonnull +120 -> 150
    //   33: ldc 21
    //   35: iconst_3
    //   36: invokestatic 83	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   39: ifeq +39 -> 78
    //   42: ldc 21
    //   44: new 88	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 89	java/lang/StringBuilder:<init>	()V
    //   51: ldc -70
    //   53: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_0
    //   57: getfield 67	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:strategy	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    //   60: iload_1
    //   61: iload_2
    //   62: aload_3
    //   63: invokeinterface 190 4 0
    //   68: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokestatic 193	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   77: pop
    //   78: aload_0
    //   79: aload_0
    //   80: getfield 104	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:misses	I
    //   83: iconst_1
    //   84: iadd
    //   85: putfield 104	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:misses	I
    //   88: ldc 21
    //   90: iconst_2
    //   91: invokestatic 83	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   94: ifeq +39 -> 133
    //   97: ldc 21
    //   99: new 88	java/lang/StringBuilder
    //   102: dup
    //   103: invokespecial 89	java/lang/StringBuilder:<init>	()V
    //   106: ldc -61
    //   108: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: aload_0
    //   112: getfield 67	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:strategy	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    //   115: iload_1
    //   116: iload_2
    //   117: aload_3
    //   118: invokeinterface 190 4 0
    //   123: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokestatic 131	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   132: pop
    //   133: aload_0
    //   134: invokespecial 197	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:dump	()V
    //   137: aload_0
    //   138: monitorexit
    //   139: aload 4
    //   141: areturn
    //   142: getstatic 45	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:DEFAULT_CONFIG	Landroid/graphics/Bitmap$Config;
    //   145: astore 4
    //   147: goto -132 -> 15
    //   150: aload_0
    //   151: aload_0
    //   152: getfield 97	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:hits	I
    //   155: iconst_1
    //   156: iadd
    //   157: putfield 97	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:hits	I
    //   160: aload_0
    //   161: aload_0
    //   162: getfield 116	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:currentSize	I
    //   165: aload_0
    //   166: getfield 67	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:strategy	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    //   169: aload 4
    //   171: invokeinterface 201 2 0
    //   176: isub
    //   177: putfield 116	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:currentSize	I
    //   180: aload_0
    //   181: getfield 72	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:tracker	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
    //   184: aload 4
    //   186: invokeinterface 205 2 0
    //   191: aload 4
    //   193: invokestatic 208	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:normalize	(Landroid/graphics/Bitmap;)V
    //   196: goto -108 -> 88
    //   199: astore_3
    //   200: aload_0
    //   201: monitorexit
    //   202: aload_3
    //   203: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	204	0	this	LruBitmapPool
    //   0	204	1	paramInt1	int
    //   0	204	2	paramInt2	int
    //   0	204	3	paramConfig	Bitmap.Config
    //   13	179	4	localObject	Object
    //   6	10	5	localLruPoolStrategy	LruPoolStrategy
    // Exception table:
    //   from	to	target	type
    //   2	8	199	finally
    //   15	28	199	finally
    //   33	78	199	finally
    //   78	88	199	finally
    //   88	133	199	finally
    //   133	137	199	finally
    //   142	147	199	finally
    //   150	196	199	finally
  }
  
  @TargetApi(19)
  private static void maybeSetPreMultiplied(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      paramBitmap.setPremultiplied(true);
    }
  }
  
  private static void normalize(Bitmap paramBitmap)
  {
    paramBitmap.setHasAlpha(true);
    maybeSetPreMultiplied(paramBitmap);
  }
  
  /* Error */
  private void trimToSize(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 116	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:currentSize	I
    //   6: iload_1
    //   7: if_icmple +43 -> 50
    //   10: aload_0
    //   11: getfield 67	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:strategy	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    //   14: invokeinterface 228 1 0
    //   19: astore_2
    //   20: aload_2
    //   21: ifnonnull +32 -> 53
    //   24: ldc 21
    //   26: iconst_5
    //   27: invokestatic 83	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   30: ifeq +15 -> 45
    //   33: ldc 21
    //   35: ldc -26
    //   37: invokestatic 233	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: aload_0
    //   42: invokespecial 86	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:dumpUnchecked	()V
    //   45: aload_0
    //   46: iconst_0
    //   47: putfield 116	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:currentSize	I
    //   50: aload_0
    //   51: monitorexit
    //   52: return
    //   53: aload_0
    //   54: getfield 72	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:tracker	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
    //   57: aload_2
    //   58: invokeinterface 205 2 0
    //   63: aload_0
    //   64: aload_0
    //   65: getfield 116	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:currentSize	I
    //   68: aload_0
    //   69: getfield 67	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:strategy	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    //   72: aload_2
    //   73: invokeinterface 201 2 0
    //   78: isub
    //   79: putfield 116	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:currentSize	I
    //   82: aload_0
    //   83: aload_0
    //   84: getfield 112	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:evictions	I
    //   87: iconst_1
    //   88: iadd
    //   89: putfield 112	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:evictions	I
    //   92: ldc 21
    //   94: iconst_3
    //   95: invokestatic 83	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   98: ifeq +37 -> 135
    //   101: ldc 21
    //   103: new 88	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 89	java/lang/StringBuilder:<init>	()V
    //   110: ldc -21
    //   112: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload_0
    //   116: getfield 67	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:strategy	Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    //   119: aload_2
    //   120: invokeinterface 238 2 0
    //   125: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 193	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   134: pop
    //   135: aload_0
    //   136: invokespecial 197	com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool:dump	()V
    //   139: aload_2
    //   140: invokevirtual 241	android/graphics/Bitmap:recycle	()V
    //   143: goto -141 -> 2
    //   146: astore_2
    //   147: aload_0
    //   148: monitorexit
    //   149: aload_2
    //   150: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	LruBitmapPool
    //   0	151	1	paramInt	int
    //   19	121	2	localBitmap	Bitmap
    //   146	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	146	finally
    //   24	45	146	finally
    //   45	50	146	finally
    //   53	135	146	finally
    //   135	143	146	finally
  }
  
  public void clearMemory()
  {
    if (Log.isLoggable("LruBitmapPool", 3)) {
      Log.d("LruBitmapPool", "clearMemory");
    }
    trimToSize(0);
  }
  
  @NonNull
  public Bitmap get(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap localBitmap = getDirtyOrNull(paramInt1, paramInt2, paramConfig);
    if (localBitmap != null)
    {
      localBitmap.eraseColor(0);
      return localBitmap;
    }
    return Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
  }
  
  @NonNull
  public Bitmap getDirty(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap localBitmap2 = getDirtyOrNull(paramInt1, paramInt2, paramConfig);
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null) {
      localBitmap1 = Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
    }
    return localBitmap1;
  }
  
  public int getMaxSize()
  {
    return this.maxSize;
  }
  
  public void put(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      try
      {
        throw new NullPointerException("Bitmap must not be null");
      }
      finally {}
    }
    if (paramBitmap.isRecycled()) {
      throw new IllegalStateException("Cannot pool recycled bitmap");
    }
    if ((!paramBitmap.isMutable()) || (this.strategy.getSize(paramBitmap) > this.maxSize) || (!this.allowedConfigs.contains(paramBitmap.getConfig())))
    {
      if (Log.isLoggable("LruBitmapPool", 2)) {
        Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.strategy.logBitmap(paramBitmap) + ", is mutable: " + paramBitmap.isMutable() + ", is allowed config: " + this.allowedConfigs.contains(paramBitmap.getConfig()));
      }
      paramBitmap.recycle();
    }
    for (;;)
    {
      return;
      int i = this.strategy.getSize(paramBitmap);
      this.strategy.put(paramBitmap);
      this.tracker.add(paramBitmap);
      this.puts += 1;
      this.currentSize += i;
      if (Log.isLoggable("LruBitmapPool", 2)) {
        Log.v("LruBitmapPool", "Put bitmap in pool=" + this.strategy.logBitmap(paramBitmap));
      }
      dump();
      evict();
    }
  }
  
  public void setSizeMultiplier(float paramFloat)
  {
    try
    {
      this.maxSize = Math.round(this.initialMaxSize * paramFloat);
      evict();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  @SuppressLint({"InlinedApi"})
  public void trimMemory(int paramInt)
  {
    if (Log.isLoggable("LruBitmapPool", 3)) {
      Log.d("LruBitmapPool", "trimMemory, level=" + paramInt);
    }
    if (paramInt >= 40) {
      clearMemory();
    }
    while (paramInt < 20) {
      return;
    }
    trimToSize(this.maxSize / 2);
  }
  
  private static abstract interface BitmapTracker
  {
    public abstract void add(Bitmap paramBitmap);
    
    public abstract void remove(Bitmap paramBitmap);
  }
  
  private static class NullBitmapTracker
    implements LruBitmapPool.BitmapTracker
  {
    public void add(Bitmap paramBitmap) {}
    
    public void remove(Bitmap paramBitmap) {}
  }
  
  private static class ThrowingBitmapTracker
    implements LruBitmapPool.BitmapTracker
  {
    private final Set<Bitmap> bitmaps = Collections.synchronizedSet(new HashSet());
    
    public void add(Bitmap paramBitmap)
    {
      if (this.bitmaps.contains(paramBitmap)) {
        throw new IllegalStateException("Can't add already added bitmap: " + paramBitmap + " [" + paramBitmap.getWidth() + "x" + paramBitmap.getHeight() + "]");
      }
      this.bitmaps.add(paramBitmap);
    }
    
    public void remove(Bitmap paramBitmap)
    {
      if (!this.bitmaps.contains(paramBitmap)) {
        throw new IllegalStateException("Cannot remove bitmap not in tracker");
      }
      this.bitmaps.remove(paramBitmap);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\load\engine\bitmap_recycle\LruBitmapPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */