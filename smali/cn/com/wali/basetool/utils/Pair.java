package cn.com.wali.basetool.utils;

import java.util.Map.Entry;

public class Pair<K, V>
  implements Map.Entry<K, V>
{
  private K a;
  private V b;
  
  public Pair(K paramK, V paramV)
  {
    this.a = paramK;
    this.b = paramV;
  }
  
  public K getKey()
  {
    return (K)this.a;
  }
  
  public V getValue()
  {
    return (V)this.b;
  }
  
  public V setValue(V paramV)
  {
    this.b = paramV;
    return (V)this.b;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\utils\Pair.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */