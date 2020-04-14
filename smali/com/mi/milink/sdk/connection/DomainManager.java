package com.mi.milink.sdk.connection;

import com.mi.milink.sdk.base.os.info.AccessPoint;
import com.mi.milink.sdk.base.os.info.DnsDash;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.base.os.info.WifiDash;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.concurrent.ConcurrentHashMap;

public class DomainManager
{
  public static final int RET_CODE_DNS_LOCAL_EXCEPTION = 10002;
  public static final int RET_CODE_DNS_SUCCESS = 0;
  public static final int RET_CODE_DNS_TIME_OUT = 10001;
  public static final int RET_CODE_DNS_UNKNOWN_HOST = 10000;
  private static final int SLEEP_INTERVAL = 10;
  private static final String TAG = "DomainManager";
  private static final int THREAD_MAX_COUNT = 5;
  private static DomainManager sInstanse = null;
  private ResolveThread[] mDefaultHostThreads = null;
  private ConcurrentHashMap<String, String> mDomainMap = new ConcurrentHashMap();
  private String mKey = AccessPoint.NONE.getName();
  
  public static DomainManager getInstance()
  {
    try
    {
      if (sInstanse == null) {
        sInstanse = new DomainManager();
      }
      DomainManager localDomainManager = sInstanse;
      return localDomainManager;
    }
    finally {}
  }
  
  private String getKey()
  {
    String str;
    if (NetworkDash.isMobile()) {
      str = NetworkDash.getApnName();
    }
    while ("00:00:00:00:00:00".equals(str))
    {
      return null;
      if (NetworkDash.isWifi())
      {
        str = WifiDash.getBSSID();
      }
      else
      {
        MiLinkLog.e("DomainManager", "getKey Network(" + NetworkDash.getType() + ") is unkown");
        str = null;
      }
    }
    return str;
  }
  
  private boolean isNeedResolve()
  {
    String str = getKey();
    if (str == null)
    {
      this.mKey = null;
      return true;
    }
    if (!str.equalsIgnoreCase(this.mKey))
    {
      this.mKey = str;
      return true;
    }
    return false;
  }
  
  private void setDomainIP(String paramString1, String paramString2)
  {
    this.mDomainMap.put(paramString1, paramString2);
  }
  
  private ResolveThread startDnsThread(String paramString)
  {
    int i = 0;
    for (;;)
    {
      if (i < 5) {}
      for (;;)
      {
        try
        {
          if ((this.mDefaultHostThreads[i] != null) && (this.mDefaultHostThreads[i].isAlive())) {
            if (this.mDefaultHostThreads[i].getKey() != this.mKey)
            {
              this.mDefaultHostThreads[i].setExpired(true);
            }
            else
            {
              if (this.mKey != null)
              {
                paramString = this.mDefaultHostThreads[i];
                return paramString;
              }
              this.mDefaultHostThreads[i].setExpired(true);
            }
          }
        }
        finally {}
        MiLinkLog.i("DomainManager", "startDefaultHostThread");
        this.mDefaultHostThreads[i] = new ResolveThread(paramString, this.mKey);
        this.mDefaultHostThreads[i].setDaemon(true);
        this.mDefaultHostThreads[i].start();
        paramString = this.mDefaultHostThreads[i];
        continue;
        if (i == 5) {
          MiLinkLog.e("DomainManager", "startDefaultHostThread running thread is more than 5");
        }
        paramString = null;
      }
      i += 1;
    }
  }
  
  private void statistic(long paramLong, String paramString1, String paramString2, int paramInt)
  {
    paramString2 = "domain [domain = " + paramString1 + ",ip = " + paramString2 + ",client localDNS = " + DnsDash.updateLocalDns() + ", errCode=" + paramInt;
    long l = System.currentTimeMillis();
    MiLinkLog.w("DomainManager", paramString2 + ",timecost = " + (l - paramLong) + "ms]");
    if (paramInt != 0) {
      InternalDataMonitor.getInstance().trace(paramString1, 0, "milink.dnsfail", paramInt, paramLong, l, 0, 0, 0);
    }
  }
  
  public String getDomainIP(String paramString)
  {
    Object localObject2 = (String)this.mDomainMap.get(paramString);
    long l2;
    long l3;
    ResolveThread localResolveThread;
    if (localObject2 == null)
    {
      l2 = ConfigManager.getInstance().getDnsTimeout();
      l3 = System.currentTimeMillis();
      localResolveThread = startDnsThread(paramString);
      if (localResolveThread == null)
      {
        localObject2 = null;
        return (String)localObject2;
      }
    }
    for (;;)
    {
      try
      {
        Thread.sleep(10L);
        Object localObject1;
        localObject1 += 10L;
        String str = (String)this.mDomainMap.get(paramString);
        localObject2 = str;
        if (str != null) {
          break;
        }
        if ((l1 <= l2) && (!localResolveThread.isCompleted())) {
          continue;
        }
        str = (String)this.mDomainMap.get(paramString);
        localObject2 = str;
        if (l1 > l2)
        {
          localObject2 = str;
          if (str == null)
          {
            statistic(l3, paramString, str, 10001);
            localObject2 = str;
          }
        }
        return (String)localObject2;
      }
      catch (InterruptedException paramString)
      {
        MiLinkLog.e("DomainManager", "getDomainIP InterruptedException", paramString);
        return null;
      }
      long l1 = 0L;
    }
  }
  
  public String queryDomainIP(String paramString)
  {
    String str = (String)this.mDomainMap.get(paramString);
    if (str == null) {
      return paramString;
    }
    return str;
  }
  
  public void startResolve(String paramString)
  {
    if (!NetworkDash.isAvailable()) {
      MiLinkLog.i("DomainManager", "startResolve, but network is unavailable");
    }
    do
    {
      return;
      MiLinkLog.i("DomainManager", "startResolve");
    } while (!isNeedResolve());
    this.mDomainMap.clear();
    startDnsThread(paramString);
  }
  
  private class ResolveThread
    extends Thread
  {
    private String mDomain = null;
    private volatile boolean mIsCompleted = false;
    private volatile boolean mIsExpired = false;
    private volatile String mKey = null;
    
    public ResolveThread(String paramString1, String paramString2)
    {
      this.mDomain = paramString1;
      this.mKey = paramString2;
    }
    
    public String getKey()
    {
      return this.mKey;
    }
    
    public boolean isCompleted()
    {
      return this.mIsCompleted;
    }
    
    public void run()
    {
      int j = 0;
      localObject3 = null;
      localObject4 = null;
      localObject2 = null;
      this.mIsCompleted = false;
      long l = System.currentTimeMillis();
      try
      {
        String str = InetAddress.getByName(this.mDomain).getHostAddress();
        localObject1 = str;
        i = j;
        if (str != null)
        {
          localObject1 = str;
          i = j;
          localObject2 = str;
          localObject3 = str;
          localObject4 = str;
          if (!this.mIsExpired)
          {
            localObject2 = str;
            localObject3 = str;
            localObject4 = str;
            DomainManager.this.setDomainIP(this.mDomain, str);
            i = j;
            localObject1 = str;
          }
        }
      }
      catch (UnknownHostException localUnknownHostException)
      {
        for (;;)
        {
          MiLinkLog.e("DomainManager", "Inet Address Analyze fail exception : ", localUnknownHostException);
          i = 10000;
          localObject1 = localObject2;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          MiLinkLog.e("DomainManager", "Inet Address Analyze fail exception : ", localException);
          i = 10002;
          localObject1 = localObject3;
        }
      }
      catch (Error localError)
      {
        for (;;)
        {
          MiLinkLog.e("DomainManager", "Inet Address Analyze fail exception : ", localError);
          int i = 10002;
          Object localObject1 = localObject4;
        }
      }
      this.mIsCompleted = true;
      DomainManager.this.statistic(l, this.mDomain, (String)localObject1, i);
    }
    
    public void setExpired(boolean paramBoolean)
    {
      this.mIsExpired = paramBoolean;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\connection\DomainManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */