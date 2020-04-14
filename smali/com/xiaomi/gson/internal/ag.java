package com.xiaomi.gson.internal;

import java.util.Map.Entry;

final class ag<K, V>
  implements Map.Entry<K, V>
{
  ag<K, V> a;
  ag<K, V> b;
  ag<K, V> c;
  ag<K, V> d;
  ag<K, V> e;
  final K f;
  V g;
  int h;
  
  ag()
  {
    this.f = null;
    this.e = this;
    this.d = this;
  }
  
  ag(ag<K, V> paramag1, K paramK, ag<K, V> paramag2, ag<K, V> paramag3)
  {
    this.a = paramag1;
    this.f = paramK;
    this.h = 1;
    this.d = paramag2;
    this.e = paramag3;
    paramag3.d = this;
    paramag2.e = this;
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
        if (this.g != null) {
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
      } while (!this.g.equals(((Map.Entry)paramObject).getValue()));
    }
  }
  
  public final K getKey()
  {
    return (K)this.f;
  }
  
  public final V getValue()
  {
    return (V)this.g;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int i;
    if (this.f == null)
    {
      i = 0;
      if (this.g != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = this.f.hashCode();
      break;
      label33:
      j = this.g.hashCode();
    }
  }
  
  public final V setValue(V paramV)
  {
    Object localObject = this.g;
    this.g = paramV;
    return (V)localObject;
  }
  
  public final String toString()
  {
    return this.f + "=" + this.g;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */