package com.xiaomi.greendao.query;

import android.os.Process;
import android.util.SparseArray;
import com.xiaomi.greendao.AbstractDao;
import java.lang.ref.WeakReference;

abstract class h<T, Q extends g<T>>
{
  final String a;
  final AbstractDao<T, ?> b;
  final String[] c;
  final SparseArray<WeakReference<Q>> d;
  
  h(AbstractDao<T, ?> paramAbstractDao, String paramString, String[] paramArrayOfString)
  {
    this.b = paramAbstractDao;
    this.a = paramString;
    this.c = paramArrayOfString;
    this.d = new SparseArray();
  }
  
  private void c()
  {
    for (;;)
    {
      int i;
      synchronized (this.d)
      {
        i = this.d.size() - 1;
        if (i >= 0)
        {
          if (((WeakReference)this.d.valueAt(i)).get() == null) {
            this.d.remove(this.d.keyAt(i));
          }
        }
        else {
          return;
        }
      }
      i -= 1;
    }
  }
  
  final Q a()
  {
    int i = Process.myTid();
    if (i == 0)
    {
      long l = Thread.currentThread().getId();
      if ((l < 0L) || (l > 2147483647L)) {
        throw new RuntimeException("Cannot handle thread ID: " + l);
      }
      i = (int)l;
    }
    for (;;)
    {
      synchronized (this.d)
      {
        Object localObject1 = (WeakReference)this.d.get(i);
        if (localObject1 == null) {
          break label164;
        }
        localObject1 = (g)((WeakReference)localObject1).get();
        if (localObject1 == null)
        {
          c();
          localObject1 = b();
          this.d.put(i, new WeakReference(localObject1));
          return (Q)localObject1;
        }
        System.arraycopy(this.c, 0, ((g)localObject1).d, 0, this.c.length);
      }
      continue;
      label164:
      Object localObject3 = null;
    }
  }
  
  final Q a(Q paramQ)
  {
    if (Thread.currentThread() == paramQ.e)
    {
      System.arraycopy(this.c, 0, paramQ.d, 0, this.c.length);
      return paramQ;
    }
    return a();
  }
  
  protected abstract Q b();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\query\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */