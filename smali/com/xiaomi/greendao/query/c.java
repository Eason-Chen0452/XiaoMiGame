package com.xiaomi.greendao.query;

import android.database.Cursor;
import com.xiaomi.greendao.DaoException;
import com.xiaomi.greendao.InternalQueryDaoAccess;
import java.io.Closeable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.locks.ReentrantLock;

public final class c<E>
  implements Closeable, List<E>
{
  private final InternalQueryDaoAccess<E> a;
  private final Cursor b;
  private final List<E> c;
  private final int d;
  private final ReentrantLock e;
  private volatile int f;
  
  private E a(int paramInt)
  {
    if (!this.b.moveToPosition(paramInt)) {
      throw new DaoException("Could not move to cursor location " + paramInt);
    }
    Object localObject = this.a.a(this.b);
    if (localObject == null) {
      throw new DaoException("Loading of entity failed (null) at position " + paramInt);
    }
    return (E)localObject;
  }
  
  private void a()
  {
    b();
    int j = this.c.size();
    int i = 0;
    while (i < j)
    {
      get(i);
      i += 1;
    }
  }
  
  private void b()
  {
    if (this.c == null) {
      throw new DaoException("This operation only works with cached lazy lists");
    }
  }
  
  public final void add(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean add(E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public final void close()
  {
    this.b.close();
  }
  
  public final boolean contains(Object paramObject)
  {
    a();
    return this.c.contains(paramObject);
  }
  
  public final boolean containsAll(Collection<?> paramCollection)
  {
    a();
    return this.c.containsAll(paramCollection);
  }
  
  public final E get(int paramInt)
  {
    if (this.c != null)
    {
      Object localObject5 = this.c.get(paramInt);
      Object localObject1 = localObject5;
      if (localObject5 == null) {
        this.e.lock();
      }
      try
      {
        localObject5 = this.c.get(paramInt);
        localObject1 = localObject5;
        if (localObject5 == null)
        {
          localObject5 = a(paramInt);
          this.c.set(paramInt, localObject5);
          this.f += 1;
          localObject1 = localObject5;
          if (this.f == this.d)
          {
            this.b.close();
            localObject1 = localObject5;
          }
        }
        return (E)localObject1;
      }
      finally
      {
        this.e.unlock();
      }
    }
    this.e.lock();
    try
    {
      Object localObject3 = a(paramInt);
      return (E)localObject3;
    }
    finally
    {
      this.e.unlock();
    }
  }
  
  public final int indexOf(Object paramObject)
  {
    a();
    return this.c.indexOf(paramObject);
  }
  
  public final boolean isEmpty()
  {
    return this.d == 0;
  }
  
  public final Iterator<E> iterator()
  {
    return new LazyList.LazyIterator(this, 0, false);
  }
  
  public final int lastIndexOf(Object paramObject)
  {
    a();
    return this.c.lastIndexOf(paramObject);
  }
  
  public final ListIterator<E> listIterator(int paramInt)
  {
    return new LazyList.LazyIterator(this, paramInt, false);
  }
  
  public final E remove(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final E set(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  public final int size()
  {
    return this.d;
  }
  
  public final List<E> subList(int paramInt1, int paramInt2)
  {
    b();
    int i = paramInt1;
    while (i < paramInt2)
    {
      get(i);
      i += 1;
    }
    return this.c.subList(paramInt1, paramInt2);
  }
  
  public final Object[] toArray()
  {
    a();
    return this.c.toArray();
  }
  
  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    a();
    return this.c.toArray(paramArrayOfT);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */