package com.mi.milink.sdk.base.os.dns;

import com.mi.milink.sdk.base.debug.CustomLogcat;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.base.os.info.WifiDash;
import java.net.InetAddress;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class HostCacheManager
{
  private static HostCacheManager manager = null;
  private final int MAX_CACHE_SIZE = 128;
  private Cache<String, HostEntity> data = new Cache(128);
  
  public static HostCacheManager getInstance()
  {
    try
    {
      if (manager == null) {
        manager = new HostCacheManager();
      }
      HostCacheManager localHostCacheManager = manager;
      return localHostCacheManager;
    }
    finally {}
  }
  
  public void addCache(String paramString, InetAddress[] paramArrayOfInetAddress, long paramLong)
  {
    CustomLogcat.i("dnstest", "$$$addCache[" + paramString + "]");
    HostEntity localHostEntity = new HostEntity(null);
    localHostEntity.expireTime = paramLong;
    localHostEntity.address = paramArrayOfInetAddress;
    if (NetworkDash.isMobile()) {}
    for (paramArrayOfInetAddress = NetworkDash.getApnName();; paramArrayOfInetAddress = WifiDash.getBSSID())
    {
      localHostEntity.networkType = paramArrayOfInetAddress;
      if (this.data.containsKey(paramString)) {
        this.data.remove(paramString);
      }
      this.data.put(paramString, localHostEntity);
      return;
    }
  }
  
  public InetAddress[] getCacheItemByHost(String paramString)
  {
    HostEntity localHostEntity = (HostEntity)this.data.get(paramString);
    if (localHostEntity != null)
    {
      if (!localHostEntity.isValid()) {
        this.data.remove(paramString);
      }
    }
    else {
      return null;
    }
    return localHostEntity.address;
  }
  
  private class Cache<K, V>
    extends LinkedHashMap<K, V>
  {
    private static final float DEFAULT_LOAD_FACTOR = 0.75F;
    private static final long serialVersionUID = -6940751117906094384L;
    private int capacity = 5;
    private Object lock = new Object();
    
    public Cache(int paramInt)
    {
      super(0.75F, true);
      if (paramInt > 0) {
        this.capacity = paramInt;
      }
    }
    
    public void clear()
    {
      synchronized (this.lock)
      {
        super.clear();
        return;
      }
    }
    
    public boolean containsKey(Object paramObject)
    {
      synchronized (this.lock)
      {
        boolean bool = super.containsKey(paramObject);
        return bool;
      }
    }
    
    public V get(Object paramObject)
    {
      synchronized (this.lock)
      {
        paramObject = super.get(paramObject);
        return (V)paramObject;
      }
    }
    
    public V put(K paramK, V paramV)
    {
      synchronized (this.lock)
      {
        paramK = super.put(paramK, paramV);
        return paramK;
      }
    }
    
    public void putAll(Map<? extends K, ? extends V> paramMap)
    {
      synchronized (this.lock)
      {
        super.putAll(paramMap);
        return;
      }
    }
    
    public V remove(Object paramObject)
    {
      synchronized (this.lock)
      {
        paramObject = super.remove(paramObject);
        return (V)paramObject;
      }
    }
    
    protected boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
    {
      return size() > this.capacity;
    }
    
    public int size()
    {
      synchronized (this.lock)
      {
        int i = super.size();
        return i;
      }
    }
  }
  
  private class HostEntity
  {
    public InetAddress[] address = null;
    public long expireTime = 0L;
    public String networkType = null;
    
    private HostEntity() {}
    
    public boolean isValid()
    {
      boolean bool;
      if (System.currentTimeMillis() < this.expireTime)
      {
        bool = true;
        if (!bool) {
          return bool;
        }
        if (!NetworkDash.isMobile()) {
          break label38;
        }
      }
      label38:
      for (String str = NetworkDash.getApnName();; str = WifiDash.getBSSID())
      {
        if (str != null) {
          break label45;
        }
        return false;
        bool = false;
        break;
      }
      label45:
      return str.equalsIgnoreCase(this.networkType);
      return bool;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\dns\HostCacheManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */