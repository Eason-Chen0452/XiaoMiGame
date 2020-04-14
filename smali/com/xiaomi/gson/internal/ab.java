package com.xiaomi.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

final class ab
  extends AbstractSet<Map.Entry<K, V>>
{
  ab(LinkedTreeMap paramLinkedTreeMap) {}
  
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
    return new ac(this);
  }
  
  public final boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry)) {}
    do
    {
      return false;
      paramObject = this.a.a((Map.Entry)paramObject);
    } while (paramObject == null);
    this.a.a((ag)paramObject, true);
    return true;
  }
  
  public final int size()
  {
    return this.a.c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */