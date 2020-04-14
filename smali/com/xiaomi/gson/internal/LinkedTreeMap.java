package com.xiaomi.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Map.Entry;
import java.util.Set;

public final class LinkedTreeMap<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> g;
  Comparator<? super K> a;
  ag<K, V> b;
  int c = 0;
  int d = 0;
  final ag<K, V> e = new ag();
  private LinkedTreeMap<K, V>.ab h;
  private LinkedTreeMap<K, V>.ad i;
  
  static
  {
    if (!LinkedTreeMap.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      g = new aa();
      return;
    }
  }
  
  public LinkedTreeMap()
  {
    this(g);
  }
  
  public LinkedTreeMap(Comparator<? super K> paramComparator)
  {
    if (paramComparator != null) {}
    for (;;)
    {
      this.a = paramComparator;
      return;
      paramComparator = g;
    }
  }
  
  private ag<K, V> a(K paramK, boolean paramBoolean)
  {
    Object localObject3 = null;
    Comparator localComparator = this.a;
    Object localObject1 = this.b;
    Comparable localComparable;
    int j;
    if (localObject1 != null) {
      if (localComparator == g)
      {
        localComparable = (Comparable)paramK;
        if (localComparable == null) {
          break label69;
        }
        j = localComparable.compareTo(((ag)localObject1).f);
        label52:
        if (j != 0) {
          break label86;
        }
        localObject2 = localObject1;
      }
    }
    label69:
    label86:
    do
    {
      return (ag<K, V>)localObject2;
      localComparable = null;
      break;
      j = localComparator.compare(paramK, ((ag)localObject1).f);
      break label52;
      if (j < 0) {
        localObject2 = ((ag)localObject1).b;
      }
      for (;;)
      {
        if (localObject2 != null)
        {
          localObject1 = localObject2;
          break;
          localObject2 = ((ag)localObject1).c;
          continue;
          j = 0;
        }
      }
      localObject2 = localObject3;
    } while (!paramBoolean);
    Object localObject2 = this.e;
    if (localObject1 == null)
    {
      if ((localComparator == g) && (!(paramK instanceof Comparable))) {
        throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
      }
      paramK = new ag((ag)localObject1, paramK, (ag)localObject2, ((ag)localObject2).e);
      this.b = paramK;
      this.c += 1;
      this.d += 1;
      return paramK;
    }
    paramK = new ag((ag)localObject1, paramK, (ag)localObject2, ((ag)localObject2).e);
    if (j < 0) {
      ((ag)localObject1).b = paramK;
    }
    for (;;)
    {
      b((ag)localObject1, true);
      break;
      ((ag)localObject1).c = paramK;
    }
  }
  
  private void a(ag<K, V> paramag)
  {
    int m = 0;
    ag localag1 = paramag.b;
    ag localag2 = paramag.c;
    ag localag3 = localag2.b;
    ag localag4 = localag2.c;
    paramag.c = localag3;
    if (localag3 != null) {
      localag3.a = paramag;
    }
    a(paramag, localag2);
    localag2.b = paramag;
    paramag.a = localag2;
    int j;
    if (localag1 != null)
    {
      j = localag1.h;
      if (localag3 == null) {
        break label135;
      }
    }
    label135:
    for (int k = localag3.h;; k = 0)
    {
      paramag.h = (Math.max(j, k) + 1);
      k = paramag.h;
      j = m;
      if (localag4 != null) {
        j = localag4.h;
      }
      localag2.h = (Math.max(k, j) + 1);
      return;
      j = 0;
      break;
    }
  }
  
  private void a(ag<K, V> paramag1, ag<K, V> paramag2)
  {
    ag localag = paramag1.a;
    paramag1.a = null;
    if (paramag2 != null) {
      paramag2.a = localag;
    }
    if (localag != null)
    {
      if (localag.b == paramag1)
      {
        localag.b = paramag2;
        return;
      }
      if ((!f) && (localag.c != paramag1)) {
        throw new AssertionError();
      }
      localag.c = paramag2;
      return;
    }
    this.b = paramag2;
  }
  
  private ag<K, V> b(Object paramObject)
  {
    ag localag = null;
    if (paramObject != null) {}
    try
    {
      localag = a(paramObject, false);
      return localag;
    }
    catch (ClassCastException paramObject) {}
    return null;
  }
  
  private void b(ag<K, V> paramag)
  {
    int m = 0;
    ag localag1 = paramag.b;
    ag localag2 = paramag.c;
    ag localag3 = localag1.b;
    ag localag4 = localag1.c;
    paramag.b = localag4;
    if (localag4 != null) {
      localag4.a = paramag;
    }
    a(paramag, localag1);
    localag1.c = paramag;
    paramag.a = localag1;
    int j;
    if (localag2 != null)
    {
      j = localag2.h;
      if (localag4 == null) {
        break label135;
      }
    }
    label135:
    for (int k = localag4.h;; k = 0)
    {
      paramag.h = (Math.max(j, k) + 1);
      k = paramag.h;
      j = m;
      if (localag3 != null) {
        j = localag3.h;
      }
      localag1.h = (Math.max(k, j) + 1);
      return;
      j = 0;
      break;
    }
  }
  
  private void b(ag<K, V> paramag, boolean paramBoolean)
  {
    ag localag1;
    ag localag2;
    int j;
    label27:
    int k;
    label39:
    int m;
    ag localag3;
    if (paramag != null)
    {
      localag1 = paramag.b;
      localag2 = paramag.c;
      if (localag1 != null)
      {
        j = localag1.h;
        if (localag2 == null) {
          break label129;
        }
        k = localag2.h;
        m = j - k;
        if (m != -2) {
          break label179;
        }
        localag1 = localag2.b;
        localag3 = localag2.c;
        if (localag3 == null) {
          break label135;
        }
        j = localag3.h;
        label77:
        if (localag1 == null) {
          break label140;
        }
        k = localag1.h;
        label89:
        j = k - j;
        if ((j != -1) && ((j != 0) || (paramBoolean))) {
          break label146;
        }
        a(paramag);
        label112:
        if (paramBoolean) {
          break label249;
        }
      }
    }
    for (;;)
    {
      paramag = paramag.a;
      break;
      j = 0;
      break label27;
      label129:
      k = 0;
      break label39;
      label135:
      j = 0;
      break label77;
      label140:
      k = 0;
      break label89;
      label146:
      if ((!f) && (j != 1)) {
        throw new AssertionError();
      }
      b(localag2);
      a(paramag);
      break label112;
      label179:
      if (m == 2)
      {
        localag2 = localag1.b;
        localag3 = localag1.c;
        if (localag3 != null)
        {
          j = localag3.h;
          label210:
          if (localag2 == null) {
            break label255;
          }
          k = localag2.h;
          label222:
          j = k - j;
          if ((j != 1) && ((j != 0) || (paramBoolean))) {
            break label261;
          }
          b(paramag);
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
        j = 0;
        break label210;
        k = 0;
        break label222;
        if ((!f) && (j != -1)) {
          throw new AssertionError();
        }
        a(localag1);
        b(paramag);
        break label245;
        break;
        if (m == 0)
        {
          paramag.h = (j + 1);
          if (!paramBoolean) {
            break;
          }
          return;
        }
        if ((!f) && (m != -1) && (m != 1)) {
          throw new AssertionError();
        }
        paramag.h = (Math.max(j, k) + 1);
      } while (!paramBoolean);
    }
  }
  
  final ag<K, V> a(Object paramObject)
  {
    paramObject = b(paramObject);
    if (paramObject != null) {
      a((ag)paramObject, true);
    }
    return (ag<K, V>)paramObject;
  }
  
  final ag<K, V> a(Map.Entry<?, ?> paramEntry)
  {
    int k = 1;
    ag localag = b(paramEntry.getKey());
    if (localag != null)
    {
      Object localObject = localag.g;
      paramEntry = paramEntry.getValue();
      if ((localObject == paramEntry) || ((localObject != null) && (localObject.equals(paramEntry))))
      {
        j = 1;
        if (j == 0) {
          break label73;
        }
      }
    }
    label73:
    for (int j = k;; j = 0)
    {
      if (j == 0) {
        break label78;
      }
      return localag;
      j = 0;
      break;
    }
    label78:
    return null;
  }
  
  final void a(ag<K, V> paramag, boolean paramBoolean)
  {
    int k = 0;
    if (paramBoolean)
    {
      paramag.e.d = paramag.d;
      paramag.d.e = paramag.e;
    }
    Object localObject2 = paramag.b;
    ag localag = paramag.c;
    Object localObject1 = paramag.a;
    int j;
    if ((localObject2 != null) && (localag != null))
    {
      localObject1 = localag;
      if (((ag)localObject2).h > localag.h) {
        for (localObject1 = ((ag)localObject2).c; localObject1 != null; localObject1 = localag)
        {
          localag = ((ag)localObject1).c;
          localObject2 = localObject1;
        }
      }
      do
      {
        localObject1 = localObject2;
        localObject2 = ((ag)localObject1).b;
      } while (localObject2 != null);
      localObject2 = localObject1;
      a((ag)localObject2, false);
      localObject1 = paramag.b;
      if (localObject1 == null) {
        break label299;
      }
      j = ((ag)localObject1).h;
      ((ag)localObject2).b = ((ag)localObject1);
      ((ag)localObject1).a = ((ag)localObject2);
      paramag.b = null;
    }
    for (;;)
    {
      localObject1 = paramag.c;
      if (localObject1 != null)
      {
        k = ((ag)localObject1).h;
        ((ag)localObject2).c = ((ag)localObject1);
        ((ag)localObject1).a = ((ag)localObject2);
        paramag.c = null;
      }
      ((ag)localObject2).h = (Math.max(j, k) + 1);
      a(paramag, (ag)localObject2);
      return;
      if (localObject2 != null)
      {
        a(paramag, (ag)localObject2);
        paramag.b = null;
      }
      for (;;)
      {
        b((ag)localObject1, false);
        this.c -= 1;
        this.d += 1;
        return;
        if (localag != null)
        {
          a(paramag, localag);
          paramag.c = null;
        }
        else
        {
          a(paramag, null);
        }
      }
      label299:
      j = 0;
    }
  }
  
  public final void clear()
  {
    this.b = null;
    this.c = 0;
    this.d += 1;
    ag localag = this.e;
    localag.e = localag;
    localag.d = localag;
  }
  
  public final boolean containsKey(Object paramObject)
  {
    return b(paramObject) != null;
  }
  
  public final Set<Map.Entry<K, V>> entrySet()
  {
    ab localab = this.h;
    if (localab != null) {
      return localab;
    }
    localab = new ab(this);
    this.h = localab;
    return localab;
  }
  
  public final V get(Object paramObject)
  {
    paramObject = b(paramObject);
    if (paramObject != null) {
      return (V)((ag)paramObject).g;
    }
    return null;
  }
  
  public final Set<K> keySet()
  {
    ad localad = this.i;
    if (localad != null) {
      return localad;
    }
    localad = new ad(this);
    this.i = localad;
    return localad;
  }
  
  public final V put(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    paramK = a(paramK, true);
    Object localObject = paramK.g;
    paramK.g = paramV;
    return (V)localObject;
  }
  
  public final V remove(Object paramObject)
  {
    paramObject = a(paramObject);
    if (paramObject != null) {
      return (V)((ag)paramObject).g;
    }
    return null;
  }
  
  public final int size()
  {
    return this.c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\LinkedTreeMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */