package com.xiaomi.gson.internal;

import java.util.Map.Entry;

final class z<K, V>
  implements Map.Entry<K, V>
{
  z<K, V> a;
  z<K, V> b;
  z<K, V> c;
  z<K, V> d;
  z<K, V> e;
  final K f;
  final int g;
  V h;
  int i;
  
  z()
  {
    this.f = null;
    this.g = -1;
    this.e = this;
    this.d = this;
  }
  
  z(z<K, V> paramz1, K paramK, int paramInt, z<K, V> paramz2, z<K, V> paramz3)
  {
    this.a = paramz1;
    this.f = paramK;
    this.g = paramInt;
    this.i = 1;
    this.d = paramz2;
    this.e = paramz3;
    paramz3.d = this;
    paramz2.e = this;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      if (this.f != null) {
        break label56;
      }
      bool1 = bool2;
      if (((Map.Entry)paramObject).getKey() == null)
      {
        if (this.h != null) {
          break label77;
        }
        bool1 = bool2;
        if (((Map.Entry)paramObject).getValue() != null) {}
      }
    }
    for (;;)
    {
      bool1 = true;
      label56:
      label77:
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!this.f.equals(((Map.Entry)paramObject).getKey()));
        break;
        bool1 = bool2;
      } while (!this.h.equals(((Map.Entry)paramObject).getValue()));
    }
  }
  
  public final K getKey()
  {
    return (K)this.f;
  }
  
  public final V getValue()
  {
    return (V)this.h;
  }
  
  public final int hashCode()
  {
    int k = 0;
    int j;
    if (this.f == null)
    {
      j = 0;
      if (this.h != null) {
        break label33;
      }
    }
    for (;;)
    {
      return j ^ k;
      j = this.f.hashCode();
      break;
      label33:
      k = this.h.hashCode();
    }
  }
  
  public final V setValue(V paramV)
  {
    Object localObject = this.h;
    this.h = paramV;
    return (V)localObject;
  }
  
  public final String toString()
  {
    return this.f + "=" + this.h;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */