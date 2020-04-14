package com.xiaomi.greendao.async;

import android.database.sqlite.SQLiteDatabase;
import com.xiaomi.greendao.AbstractDao;

public final class a
{
  final AsyncOperation.OperationType a;
  final AbstractDao<Object, Object> b;
  final Object c;
  final int d;
  volatile long e;
  volatile long f;
  volatile Throwable g;
  volatile Object h;
  volatile int i;
  private final SQLiteDatabase j;
  private volatile boolean k;
  
  public final boolean a()
  {
    return (this.d & 0x1) != 0;
  }
  
  final boolean a(a parama)
  {
    return (parama != null) && (a()) && (parama.a()) && (b() == parama.b());
  }
  
  final SQLiteDatabase b()
  {
    if (this.j != null) {
      return this.j;
    }
    return this.b.getDatabase();
  }
  
  final void c()
  {
    try
    {
      this.k = true;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void d()
  {
    this.e = 0L;
    this.f = 0L;
    this.k = false;
    this.g = null;
    this.h = null;
    this.i = 0;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\async\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */