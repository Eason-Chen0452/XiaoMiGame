package com.xiaomi.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

final class u
  extends AbstractSet<Map.Entry<K, V>>
{
  u(LinkedHashTreeMap paramLinkedHashTreeMap) {}
  
  public final void clear()
  {
    this.a.clear();
  }
  
  public final boolean contains(Object paramObject)
  {
    return ((paramObject instanceof Map.Entry)) && (this.a.a((Map.Entry)paramObject) != null);
  }
  
  public final Iterator<Map.Entry<K, V>> iterator()
  {
    return new v(this);
  }
  
  public final boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry)) {}
    do
    {
      return false;
      paramObject = this.a.a((Map.Entry)paramObject);
    } while (paramObject == null);
    this.a.a((z)paramObject, true);
    return true;
  }
  
  public final int size()
  {
    return this.a.d;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */