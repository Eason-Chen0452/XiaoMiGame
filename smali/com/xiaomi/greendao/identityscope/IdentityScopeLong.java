package com.xiaomi.greendao.identityscope;

import com.xiaomi.greendao.internal.LongHashMap;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;

public class IdentityScopeLong<T>
  implements a<Long, T>
{
  private final LongHashMap<Reference<T>> a = new LongHashMap();
  private final ReentrantLock b = new ReentrantLock();
  
  private T a(Long paramLong)
  {
    return (T)a(paramLong.longValue());
  }
  
  private boolean a(Long paramLong, T paramT)
  {
    this.b.lock();
    try
    {
      if ((a(paramLong) == paramT) && (paramT != null))
      {
        b(paramLong);
        return true;
      }
      return false;
    }
    finally
    {
      this.b.unlock();
    }
  }
  
  private void b(Long paramLong)
  {
    this.b.lock();
    try
    {
      this.a.b(paramLong.longValue());
      return;
    }
    finally
    {
      this.b.unlock();
    }
  }
  
  public final T a(long paramLong)
  {
    this.b.lock();
    try
    {
      Reference localReference = (Reference)this.a.a(paramLong);
      this.b.unlock();
      if (localReference != null) {
        return (T)localReference.get();
      }
    }
    finally
    {
      this.b.unlock();
    }
    return null;
  }
  
  public final void a()
  {
    this.b.lock();
    try
    {
      this.a.a();
      return;
    }
    finally
    {
      this.b.unlock();
    }
  }
  
  public final void a(int paramInt)
  {
    this.a.a(paramInt * 5 / 3);
  }
  
  public final void a(long paramLong, T paramT)
  {
    this.b.lock();
    try
    {
      this.a.a(paramLong, new WeakReference(paramT));
      return;
    }
    finally
    {
      this.b.unlock();
    }
  }
  
  public final void a(Iterable<Long> paramIterable)
  {
    this.b.lock();
    try
    {
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext())
      {
        Long localLong = (Long)paramIterable.next();
        this.a.b(localLong.longValue());
      }
    }
    finally
    {
      this.b.unlock();
    }
  }
  
  public final T b(long paramLong)
  {
    Reference localReference = (Reference)this.a.a(paramLong);
    if (localReference != null) {
      return (T)localReference.get();
    }
    return null;
  }
  
  public final void b()
  {
    this.b.lock();
  }
  
  public final void b(long paramLong, T paramT)
  {
    this.a.a(paramLong, new WeakReference(paramT));
  }
  
  public final void c()
  {
    this.b.unlock();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\identityscope\IdentityScopeLong.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */