package com.xiaomi.gson.internal;

final class s<K, V>
{
  private z<K, V> a;
  private int b;
  private int c;
  private int d;
  
  final z<K, V> a()
  {
    z localz = this.a;
    if (localz.a != null) {
      throw new IllegalStateException();
    }
    return localz;
  }
  
  final void a(int paramInt)
  {
    this.b = (Integer.highestOneBit(paramInt) * 2 - 1 - paramInt);
    this.d = 0;
    this.c = 0;
    this.a = null;
  }
  
  final void a(z<K, V> paramz)
  {
    paramz.c = null;
    paramz.a = null;
    paramz.b = null;
    paramz.i = 1;
    if ((this.b > 0) && ((this.d & 0x1) == 0))
    {
      this.d += 1;
      this.b -= 1;
      this.c += 1;
    }
    paramz.a = this.a;
    this.a = paramz;
    this.d += 1;
    if ((this.b > 0) && ((this.d & 0x1) == 0))
    {
      this.d += 1;
      this.b -= 1;
      this.c += 1;
    }
    int i = 4;
    if ((this.d & i - 1) == i - 1)
    {
      z localz1;
      if (this.c == 0)
      {
        paramz = this.a;
        localz1 = paramz.a;
        z localz2 = localz1.a;
        localz1.a = localz2.a;
        this.a = localz1;
        localz1.b = localz2;
        localz1.c = paramz;
        paramz.i += 1;
        localz2.a = localz1;
        paramz.a = localz1;
      }
      for (;;)
      {
        i *= 2;
        break;
        if (this.c == 1)
        {
          paramz = this.a;
          localz1 = paramz.a;
          this.a = localz1;
          localz1.c = paramz;
          paramz.i += 1;
          paramz.a = localz1;
          this.c = 0;
        }
        else if (this.c == 2)
        {
          this.c = 0;
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */