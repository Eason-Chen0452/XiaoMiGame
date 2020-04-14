package com.xiaomi.gson.internal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class af<T>
  implements Iterator<T>
{
  ag<K, V> b = this.e.e.d;
  ag<K, V> c = null;
  int d = this.e.d;
  
  af(LinkedTreeMap paramLinkedTreeMap) {}
  
  final ag<K, V> a()
  {
    ag localag = this.b;
    if (localag == this.e.e) {
      throw new NoSuchElementException();
    }
    if (this.e.d != this.d) {
      throw new ConcurrentModificationException();
    }
    this.b = localag.d;
    this.c = localag;
    return localag;
  }
  
  public final boolean hasNext()
  {
    return this.b != this.e.e;
  }
  
  public final void remove()
  {
    if (this.c == null) {
      throw new IllegalStateException();
    }
    this.e.a(this.c, true);
    this.c = null;
    this.d = this.e.d;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */