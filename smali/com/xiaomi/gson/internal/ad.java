package com.xiaomi.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;

final class ad
  extends AbstractSet<K>
{
  ad(LinkedTreeMap paramLinkedTreeMap) {}
  
  public final void clear()
  {
    this.a.clear();
  }
  
  public final boolean contains(Object paramObject)
  {
    return this.a.containsKey(paramObject);
  }
  
  public final Iterator<K> iterator()
  {
    return new ae(this);
  }
  
  public final boolean remove(Object paramObject)
  {
    return this.a.a(paramObject) != null;
  }
  
  public final int size()
  {
    return this.a.c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\internal\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */