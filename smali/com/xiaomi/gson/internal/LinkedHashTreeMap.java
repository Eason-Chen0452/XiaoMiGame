package com.xiaomi.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map.Entry;
import java.util.Set;

public final class LinkedHashTreeMap<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> h;
  Comparator<? super K> a;
  z<K, V>[] b;
  final z<K, V> c;
  int d = 0;
  int e = 0;
  int f;
  private LinkedHashTreeMap<K, V>.u i;
  private LinkedHashTreeMap<K, V>.w j;
  
  static
  {
    if (!LinkedHashTreeMap.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      h = new r();
      return;
    }
  }
  
  public LinkedHashTreeMap()
  {
    this(h);
  }
  
  public LinkedHashTreeMap(Comparator<? super K> paramComparator)
  {
    if (paramComparator != null) {}
    for (;;)
    {
      this.a = paramComparator;
      this.c = new z();
      this.b = new z[16];
      this.f = (this.b.length / 2 + this.b.length / 4);
      return;
      paramComparator = h;
    }
  }
  
  private z<K, V> a(K paramK, boolean paramBoolean)
  {
    Object localObject3 = null;
    Comparator localComparator = this.a;
    z[] arrayOfz = this.b;
    int k = paramK.hashCode();
    k ^= k >>> 20 ^ k >>> 12;
    int m = k >>> 7 ^ k ^ k >>> 4;
    int n = m & arrayOfz.length - 1;
    Object localObject1 = arrayOfz[n];
    Object localObject2;
    if (localObject1 != null)
    {
      Comparable localComparable;
      if (localComparator == h)
      {
        localComparable = (Comparable)paramK;
        if (localComparable == null) {
          break label115;
        }
      }
      label115:
      for (k = localComparable.compareTo(((z)localObject1).f);; k = localComparator.compare(paramK, ((z)localObject1).f))
      {
        if (k != 0) {
          break label132;
        }
        localObject2 = localObject1;
        return (z<K, V>)localObject2;
        localComparable = null;
        break;
      }
      label132:
      if (k < 0) {}
      for (localObject2 = ((z)localObject1).b;; localObject2 = ((z)localObject1).c)
      {
        if (localObject2 == null) {
          break label165;
        }
        localObject1 = localObject2;
        break;
      }
    }
    for (;;)
    {
      label165:
      localObject2 = localObject3;
      if (!paramBoolean) {
        break;
      }
      localObject2 = this.c;
      if (localObject1 == null)
      {
        if ((localComparator == h) && (!(paramK instanceof Comparable))) {
          throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
        }
        paramK = new z((z)localObject1, paramK, m, (z)localObject2, ((z)localObject2).e);
        arrayOfz[n] = paramK;
        k = this.d;
        this.d = (k + 1);
        if (k > this.f)
        {
          this.b = a(this.b);
          this.f = (this.b.length / 2 + this.b.length / 4);
        }
        this.e += 1;
        return paramK;
      }
      paramK = new z((z)localObject1, paramK, m, (z)localObject2, ((z)localObject2).e);
      if (k < 0) {
        ((z)localObject1).b = paramK;
      }
      for (;;)
      {
        b((z)localObject1, true);
        break;
        ((z)localObject1).c = paramK;
      }
      k = 0;
    }
  }
  
  private void a(z<K, V> paramz)
  {
    int n = 0;
    z localz1 = paramz.b;
    z localz2 = paramz.c;
    z localz3 = localz2.b;
    z localz4 = localz2.c;
    paramz.c = localz3;
    if (localz3 != null) {
      localz3.a = paramz;
    }
    a(paramz, localz2);
    localz2.b = paramz;
    paramz.a = localz2;
    int k;
    if (localz1 != null)
    {
      k = localz1.i;
      if (localz3 == null) {
        break label135;
      }
    }
    label135:
    for (int m = localz3.i;; m = 0)
    {
      paramz.i = (Math.max(k, m) + 1);
      m = paramz.i;
      k = n;
      if (localz4 != null) {
        k = localz4.i;
      }
      localz2.i = (Math.max(m, k) + 1);
      return;
      k = 0;
      break;
    }
  }
  
  private void a(z<K, V> paramz1, z<K, V> paramz2)
  {
    z localz = paramz1.a;
    paramz1.a = null;
    if (paramz2 != null) {
      paramz2.a = localz;
    }
    if (localz != null)
    {
      if (localz.b == paramz1)
      {
        localz.b = paramz2;
        return;
      }
      if ((!g) && (localz.c != paramz1)) {
        throw new AssertionError();
      }
      localz.c = paramz2;
      return;
    }
    int k = paramz1.g;
    int m = this.b.length;
    this.b[(k & m - 1)] = paramz2;
  }
  
  private static <K, V> z<K, V>[] a(z<K, V>[] paramArrayOfz)
  {
    int i1 = paramArrayOfz.length;
    z[] arrayOfz = new z[i1 * 2];
    t localt = new t();
    s locals1 = new s();
    s locals2 = new s();
    int k = 0;
    if (k < i1)
    {
      Object localObject = paramArrayOfz[k];
      if (localObject != null)
      {
        localt.a((z)localObject);
        int n = 0;
        int m = 0;
        for (;;)
        {
          z localz = localt.a();
          if (localz == null) {
            break;
          }
          if ((localz.g & i1) == 0) {
            m += 1;
          } else {
            n += 1;
          }
        }
        locals1.a(m);
        locals2.a(n);
        localt.a((z)localObject);
        for (;;)
        {
          localObject = localt.a();
          if (localObject == null) {
            break;
          }
          if ((((z)localObject).g & i1) == 0) {
            locals1.a((z)localObject);
          } else {
            locals2.a((z)localObject);
          }
        }
        if (m <= 0) {
          break label212;
        }
        localObject = locals1.a();
        label179:
        arrayOfz[k] = localObject;
        if (n <= 0) {
          break label218;
        }
      }
      label212:
      label218:
      for (localObject = locals2.a();; localObject = null)
      {
        arrayOfz[(k + i1)] = localObject;
        k += 1;
        break;
        localObject = null;
        break label179;
      }
    }
    return arrayOfz;
  }
  
  private z<K, V> b(Object paramObject)
  {
    z localz = null;
    if (paramObject != null) {}
    try
    {
      localz = a(paramObject, false);
      return localz;
    }
    catch (ClassCastException paramObject) {}
    return null;
  }
  
  private void b(z<K, V> paramz)
  {
    int n = 0;
    z localz1 = paramz.b;
    z localz2 = paramz.c;
    z localz3 = localz1.b;
    z localz4 = localz1.c;
    paramz.b = localz4;
    if (localz4 != null) {
      localz4.a = paramz;
    }
    a(paramz, localz1);
    localz1.c = paramz;
    paramz.a = localz1;
    int k;
    if (localz2 != null)
    {
      k = localz2.i;
      if (localz4 == null) {
        break label135;
      }
    }
    label135:
    for (int m = localz4.i;; m = 0)
    {
      paramz.i = (Math.max(k, m) + 1);
      m = paramz.i;
      k = n;
      if (localz3 != null) {
        k = localz3.i;
      }
      localz1.i = (Math.max(m, k) + 1);
      return;
      k = 0;
      break;
    }
  }
  
  private void b(z<K, V> paramz, boolean paramBoolean)
  {
    z localz1;
    z localz2;
    int k;
    label27:
    int m;
    label39:
    int n;
    z localz3;
    if (paramz != null)
    {
      localz1 = paramz.b;
      localz2 = paramz.c;
      if (localz1 != null)
      {
        k = localz1.i;
        if (localz2 == null) {
          break label129;
        }
        m = localz2.i;
        n = k - m;
        if (n != -2) {
          break label179;
        }
        localz1 = localz2.b;
        localz3 = localz2.c;
        if (localz3 == null) {
          break label135;
        }
        k = localz3.i;
        label77:
        if (localz1 == null) {
          break label140;
        }
        m = localz1.i;
        label89:
        k = m - k;
        if ((k != -1) && ((k != 0) || (paramBoolean))) {
          break label146;
        }
        a(paramz);
        label112:
        if (paramBoolean) {
          break label249;
        }
      }
    }
    for (;;)
    {
      paramz = paramz.a;
      break;
      k = 0;
      break label27;
      label129:
      m = 0;
      break label39;
      label135:
      k = 0;
      break label77;
      label140:
      m = 0;
      break label89;
      label146:
      if ((!g) && (k != 1)) {
        throw new AssertionError();
      }
      b(localz2);
      a(paramz);
      break label112;
      label179:
      if (n == 2)
      {
        localz2 = localz1.b;
        localz3 = localz1.c;
        if (localz3 != null)
        {
          k = localz3.i;
          label210:
          if (localz2 == null) {
            break label255;
          }
          m = localz2.i;
          label222:
          k = m - k;
          if ((k != 1) && ((k != 0) || (paramBoolean))) {
            break label261;
          }
          b(paramz);
          label245:
          if (!paramBoolean) {
            break label292;
          }
        }
      }
      label249:
      label255:
      label261:
      label292:
      do
      {
        return;
        k = 0;
        break label210;
        m = 0;
        break label222;
        if ((!g) && (k != -1)) {
          throw new AssertionError();
        }
        a(localz1);
        b(paramz);
        break label245;
        break;
        if (n == 0)
        {
          paramz.i = (k + 1);
          if (!paramBoolean) {
            break;
          }
          return;
        }
        if ((!g) && (n != -1) && (n != 1)) {
          throw new AssertionError();
        }
        paramz.i = (Math.max(k, m) + 1);
      } while (!paramBoolean);
    }
  }
  
  final z<K, V> a(Object paramObject)
  {
    paramObject = b(paramObject);
    if (paramObject != null) {
      a((z)paramObject, true);
    }
    return (z<K, V>)paramObject;
  }
  
  final z<K, V> a(Map.Entry<?, ?> paramEntry)
  {
    int m = 1;
    z localz = b(paramEntry.getKey());
    if (localz != null)
    {
      Object localObject = localz.h;
      paramEntry = paramEntry.getValue();
      if ((localObject == paramEntry) || ((localObject != null) && (localObject.equals(paramEntry))))
      {
        k = 1;
        if (k == 0) {
          break label73;
        }
      }
    }
    label73:
    for (int k = m;; k = 0)
    {
      if (k == 0) {
        break label78;
      }
      return localz;
      k = 0;
      break;
    }
    label78:
    return null;
  }
  
  final void a(z<K, V> paramz, boolean paramBoolean)
  {
    int m = 0;
    if (paramBoolean)
    {
      paramz.e.d = paramz.d;
      paramz.d.e = paramz.e;
      paramz.e = null;
      paramz.d = null;
    }
    Object localObject2 = paramz.b;
    z localz = paramz.c;
    Object localObject1 = paramz.a;
    int k;
    if ((localObject2 != null) && (localz != null))
    {
      localObject1 = localz;
      if (((z)localObject2).i > localz.i) {
        for (localObject1 = ((z)localObject2).c; localObject1 != null; localObject1 = localz)
        {
          localz = ((z)localObject1).c;
          localObject2 = localObject1;
        }
      }
      do
      {
        localObject1 = localObject2;
        localObject2 = ((z)localObject1).b;
      } while (localObject2 != null);
      localObject2 = localObject1;
      a((z)localObject2, false);
      localObject1 = paramz.b;
      if (localObject1 == null) {
        break label309;
      }
      k = ((z)localObject1).i;
      ((z)localObject2).b = ((z)localObject1);
      ((z)localObject1).a = ((z)localObject2);
      paramz.b = null;
    }
    for (;;)
    {
      localObject1 = paramz.c;
      if (localObject1 != null)
      {
        m = ((z)localObject1).i;
        ((z)localObject2).c = ((z)localObject1);
        ((z)localObject1).a = ((z)localObject2);
        paramz.c = null;
      }
      ((z)localObject2).i = (Math.max(k, m) + 1);
      a(paramz, (z)localObject2);
      return;
      if (localObject2 != null)
      {
        a(paramz, (z)localObject2);
        paramz.b = null;
      }
      for (;;)
      {
        b((z)localObject1, false);
        this.d -= 1;
        this.e += 1;
        return;
        if (localz != null)
        {
          a(paramz, localz);
          paramz.c = null;
        }
        else
        {
          a(paramz, null);
        }
      }
      label309:
      k = 0;
    }
  }
  
  public final void clear()
  {
    Arrays.fill(this.b, null);
    this.d = 0;
    this.e += 1;
    z localz2 = this.c;
    z localz1;
    for (Object localObject = localz2.d; localObject != localz2; localObject = localz1)
    {
      localz1 = ((z)localObject).d;
      ((z)localObject).e = null;
      ((z)localObject).d = null;
    }
    localz2.e = localz2;
    localz2.d = localz2;
  }
  
  public final boolean containsKey(Object paramObject)
  {
    return b(paramObject) != null;
  }
  
  public final Set<Map.Entry<K, V>> entrySet()
  {
    u localu = this.i;
    if (localu != null) {
      return localu;
    }
    localu = new u(this);
    this.i = localu;
    return localu;
  }
  
  public final V get(Object paramObject)
  {
    paramObject = b(paramObject);
    if (paramObject != null) {
      return (V)((z)paramObject).h;
    }
    return null;
  }
  
  public final Set<K> keySet()
  {
    w localw = this.j;
    if (localw != null) {
      return localw;
    }
    localw = new w(this);
    this.j = localw;
    return localw;
  }
  
  public final V put(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    paramK = a(paramK, true);
    Object localObject = paramK.h;
    paramK.h = paramV;
    return (V)localObject;
  }
  
  public final V remove(Object paramObject)
  {
    paramObject = a(paramObject);
    if (paramObject != null) {
      return (V)((z)paramObject).h;
    }
    return null;
  }
  
  public final int size()
  {
    return this.d;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\LinkedHashTreeMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */