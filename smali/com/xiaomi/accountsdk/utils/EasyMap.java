package com.xiaomi.accountsdk.utils;

import java.util.HashMap;

public class EasyMap<K, V>
  extends HashMap<K, V>
{
  public EasyMap() {}
  
  public EasyMap(K paramK, V paramV)
  {
    put(paramK, paramV);
  }
  
  public final EasyMap<K, V> a(K paramK, V paramV)
  {
    int j = 0;
    int i = j;
    if (paramK != null)
    {
      i = j;
      if (paramV != null)
      {
        if (!(paramV instanceof String)) {
          break label54;
        }
        if (((String)paramV).isEmpty()) {
          break label49;
        }
        i = 1;
      }
    }
    for (;;)
    {
      if (i != 0) {
        put(paramK, paramV);
      }
      return this;
      label49:
      i = 0;
      continue;
      label54:
      i = 1;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\EasyMap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */