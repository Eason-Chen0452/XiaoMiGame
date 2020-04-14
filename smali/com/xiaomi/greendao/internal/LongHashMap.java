package com.xiaomi.greendao.internal;

import java.util.Arrays;

public final class LongHashMap<T>
{
  private a<T>[] a;
  private int b;
  private int c;
  private int d;
  
  public LongHashMap()
  {
    this(16);
  }
  
  public LongHashMap(int paramInt)
  {
    this.b = paramInt;
    this.c = (paramInt * 4 / 3);
    this.a = new a[paramInt];
  }
  
  public final T a(long paramLong)
  {
    int i = (int)(paramLong >>> 32);
    int j = (int)paramLong;
    int k = this.b;
    for (a locala = this.a[(((i ^ j) & 0x7FFFFFFF) % k)]; locala != null; locala = locala.c) {
      if (locala.a == paramLong) {
        return (T)locala.b;
      }
    }
    return null;
  }
  
  public final T a(long paramLong, T paramT)
  {
    int i = (((int)(paramLong >>> 32) ^ (int)paramLong) & 0x7FFFFFFF) % this.b;
    Object localObject2 = this.a[i];
    for (Object localObject1 = localObject2; localObject1 != null; localObject1 = ((a)localObject1).c) {
      if (((a)localObject1).a == paramLong)
      {
        localObject2 = ((a)localObject1).b;
        ((a)localObject1).b = paramT;
        return (T)localObject2;
      }
    }
    this.a[i] = new a(paramLong, paramT, (a)localObject2);
    this.d += 1;
    if (this.d > this.c) {
      a(this.b * 2);
    }
    return null;
  }
  
  public final void a()
  {
    this.d = 0;
    Arrays.fill(this.a, null);
  }
  
  public final void a(int paramInt)
  {
    a[] arrayOfa = new a[paramInt];
    int j = this.a.length;
    int i = 0;
    while (i < j)
    {
      a locala;
      for (Object localObject = this.a[i]; localObject != null; localObject = locala)
      {
        long l = ((a)localObject).a;
        int k = (((int)(l >>> 32) ^ (int)l) & 0x7FFFFFFF) % paramInt;
        locala = ((a)localObject).c;
        ((a)localObject).c = arrayOfa[k];
        arrayOfa[k] = localObject;
      }
      i += 1;
    }
    this.a = arrayOfa;
    this.b = paramInt;
    this.c = (paramInt * 4 / 3);
  }
  
  public final T b(long paramLong)
  {
    Object localObject4 = null;
    int i = (((int)(paramLong >>> 32) ^ (int)paramLong) & 0x7FFFFFFF) % this.b;
    Object localObject1 = this.a[i];
    Object localObject2 = null;
    for (;;)
    {
      Object localObject3 = localObject4;
      if (localObject1 != null)
      {
        localObject3 = ((a)localObject1).c;
        if (((a)localObject1).a != paramLong) {
          break label100;
        }
        if (localObject2 != null) {
          break label90;
        }
        this.a[i] = localObject3;
      }
      for (;;)
      {
        this.d -= 1;
        localObject3 = ((a)localObject1).b;
        return (T)localObject3;
        label90:
        ((a)localObject2).c = ((a)localObject3);
      }
      label100:
      localObject2 = localObject1;
      localObject1 = localObject3;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\internal\LongHashMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */