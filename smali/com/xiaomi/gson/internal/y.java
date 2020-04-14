package com.xiaomi.gson.internal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class y<T>
  implements Iterator<T>
{
  z<K, V> b = this.e.c.d;
  z<K, V> c = null;
  int d = this.e.e;
  
  y(LinkedHashTreeMap paramLinkedHashTreeMap) {}
  
  final z<K, V> a()
  {
    z localz = this.b;
    if (localz == this.e.c) {
      throw new NoSuchElementException();
    }
    if (this.e.e != this.d) {
      throw new ConcurrentModificationException();
    }
    this.b = localz.d;
    this.c = localz;
    return localz;
  }
  
  public final boolean hasNext()
  {
    return this.b != this.e.c;
  }
  
  public final void remove()
  {
    if (this.c == null) {
      throw new IllegalStateException();
    }
    this.e.a(this.c, true);
    this.c = null;
    this.d = this.e.e;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */