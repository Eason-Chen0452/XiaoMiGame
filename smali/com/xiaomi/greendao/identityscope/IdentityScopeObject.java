package com.xiaomi.greendao.identityscope;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;

public class IdentityScopeObject<K, T>
  implements a<K, T>
{
  private final HashMap<K, Reference<T>> a = new HashMap();
  private final ReentrantLock b = new ReentrantLock();
  
  public final T a(K paramK)
  {
    this.b.lock();
    try
    {
      paramK = (Reference)this.a.get(paramK);
      this.b.unlock();
      if (paramK != null) {
        return (T)paramK.get();
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
      this.a.clear();
      return;
    }
    finally
    {
      this.b.unlock();
    }
  }
  
  public final void a(int paramInt) {}
  
  public final void a(Iterable<K> paramIterable)
  {
    this.b.lock();
    try
    {
      paramIterable = paramIterable.iterator();
      while (paramIterable.hasNext())
      {
        Object localObject = paramIterable.next();
        this.a.remove(localObject);
      }
    }
    finally
    {
      this.b.unlock();
    }
  }
  
  public final void a(K paramK, T paramT)
  {
    this.b.lock();
    try
    {
      this.a.put(paramK, new WeakReference(paramT));
      return;
    }
    finally
    {
      this.b.unlock();
    }
  }
  
  public final T b(K paramK)
  {
    paramK = (Reference)this.a.get(paramK);
    if (paramK != null) {
      return (T)paramK.get();
    }
    return null;
  }
  
  public final void b()
  {
    this.b.lock();
  }
  
  public final void b(K paramK, T paramT)
  {
    this.a.put(paramK, new WeakReference(paramT));
  }
  
  public final void c()
  {
    this.b.unlock();
  }
  
  public final void c(K paramK)
  {
    this.b.lock();
    try
    {
      this.a.remove(paramK);
      return;
    }
    finally
    {
      this.b.unlock();
    }
  }
  
  public final boolean c(K paramK, T paramT)
  {
    this.b.lock();
    try
    {
      if ((a(paramK) == paramT) && (paramT != null))
      {
        c(paramK);
        return true;
      }
      return false;
    }
    finally
    {
      this.b.unlock();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\identityscope\IdentityScopeObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */