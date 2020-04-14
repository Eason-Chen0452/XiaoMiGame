package com.xiaomi.greendao.query;

import java.util.NoSuchElementException;

public class LazyList$LazyIterator
  implements a<E>
{
  private int b;
  private final boolean c;
  
  public LazyList$LazyIterator(c paramc, int paramInt, boolean paramBoolean)
  {
    this.b = paramInt;
    this.c = paramBoolean;
  }
  
  public void add(E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  public void close()
  {
    this.a.close();
  }
  
  public boolean hasNext()
  {
    return this.b < c.a(this.a);
  }
  
  public boolean hasPrevious()
  {
    return this.b > 0;
  }
  
  public E next()
  {
    if (this.b >= c.a(this.a)) {
      throw new NoSuchElementException();
    }
    Object localObject = this.a.get(this.b);
    this.b += 1;
    if ((this.b == c.a(this.a)) && (this.c)) {
      close();
    }
    return (E)localObject;
  }
  
  public int nextIndex()
  {
    return this.b;
  }
  
  public E previous()
  {
    if (this.b <= 0) {
      throw new NoSuchElementException();
    }
    this.b -= 1;
    return (E)this.a.get(this.b);
  }
  
  public int previousIndex()
  {
    return this.b - 1;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
  
  public void set(E paramE)
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\LazyList$LazyIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */