package com.xiaomi.gson.internal;

final class t<K, V>
{
  private z<K, V> a;
  
  public final z<K, V> a()
  {
    z localz2 = this.a;
    if (localz2 == null) {
      return null;
    }
    Object localObject2 = localz2.a;
    localz2.a = null;
    z localz1;
    for (Object localObject1 = localz2.c; localObject1 != null; localObject1 = localz1)
    {
      ((z)localObject1).a = ((z)localObject2);
      localz1 = ((z)localObject1).b;
      localObject2 = localObject1;
    }
    this.a = ((z)localObject2);
    return localz2;
  }
  
  final void a(z<K, V> paramz)
  {
    z<K, V> localz = null;
    while (paramz != null)
    {
      paramz.a = localz;
      z localz1 = paramz.b;
      localz = paramz;
      paramz = localz1;
    }
    this.a = localz;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */