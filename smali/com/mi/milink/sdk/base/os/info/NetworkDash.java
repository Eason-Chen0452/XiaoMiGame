package com.mi.milink.sdk.base.os.info;

import android.content.Context;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.debug.CustomLogcat;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NetworkDash
{
  private static final NetworkObserver OBSERVER;
  private static final List<WeakReference<NetworkStateListener>> OBSERVER_LIST;
  private static NetworkState sCurrState;
  private static ServiceProvider sImsiProvider = null;
  private static NetworkState sLastState;
  private static Handler sMainHandler;
  
  static
  {
    OBSERVER = new NetworkDash.1();
    OBSERVER_LIST = new ArrayList();
    updateNetworkState();
    OBSERVER.startListen();
  }
  
  public static void addListener(NetworkStateListener paramNetworkStateListener)
  {
    synchronized (OBSERVER_LIST)
    {
      OBSERVER_LIST.add(new WeakReference(paramNetworkStateListener));
      return;
    }
  }
  
  public static AccessPoint getAccessPoint()
  {
    NetworkState localNetworkState = getCurrState();
    if (localNetworkState != null) {
      return localNetworkState.getAccessPoint();
    }
    return AccessPoint.NONE;
  }
  
  public static String getApnName()
  {
    NetworkState localNetworkState = getCurrState();
    if (localNetworkState != null) {
      return localNetworkState.getApnName();
    }
    return "";
  }
  
  public static String getApnNameOrWifi()
  {
    if (!isAvailable()) {
      return "";
    }
    if (isWifi()) {
      return "wifi";
    }
    return getApnName();
  }
  
  public static String getApnNameOrWifiOrEthernet()
  {
    if (!isAvailable()) {
      return "";
    }
    if (isWifi()) {
      return "wifi";
    }
    if (isEthernet()) {
      return "ethernet";
    }
    return getApnName();
  }
  
  public static int getApnType()
  {
    NetworkState localNetworkState = getCurrState();
    if (localNetworkState != null) {
      return localNetworkState.getApnType();
    }
    return -1;
  }
  
  public static int getCellLevel()
  {
    return OBSERVER.getCellLevel();
  }
  
  public static NetworkState getCurrState()
  {
    return sCurrState;
  }
  
  public static String getDeviceIdBySlot(Context paramContext, int paramInt)
  {
    CustomLogcat.v("NetworkDash", "isDeviceIdBySlot:" + paramInt);
    if (paramContext == null) {}
    while ((paramInt < 0) || (paramInt > 1)) {
      return null;
    }
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      paramContext = Class.forName("android.telephony.TelephonyManager").getMethod("getSimOperatorGemini", new Class[] { Integer.TYPE }).invoke(paramContext, new Object[] { Integer.valueOf(paramInt) });
      if (paramContext == null) {
        break label94;
      }
      paramContext = paramContext.toString();
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
    return paramContext;
  }
  
  public static String getIMSI()
  {
    try
    {
      Object localObject2 = ((TelephonyManager)Global.getSystemService("phone")).getSimOperator();
      Object localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        localObject1 = getDeviceIdBySlot(Global.getContext(), 0);
      }
      localObject2 = localObject1;
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        localObject2 = getDeviceIdBySlot(Global.getContext(), 1);
      }
      return (String)localObject2;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public static ServiceProvider getIMSIProvider()
  {
    if (sImsiProvider == null) {
      updateIMSIProvider();
    }
    return sImsiProvider;
  }
  
  protected static NetworkState getLastState()
  {
    return sLastState;
  }
  
  public static ServiceProvider getProvider()
  {
    NetworkState localNetworkState = getCurrState();
    if (localNetworkState != null) {
      return localNetworkState.getAccessPoint().getProvider();
    }
    return ServiceProvider.NONE;
  }
  
  public static ServiceProvider getProvider(boolean paramBoolean)
  {
    ServiceProvider localServiceProvider = ServiceProvider.NONE;
    if (paramBoolean)
    {
      localServiceProvider = getIMSIProvider();
      if (!ServiceProvider.NONE.equals(localServiceProvider)) {
        return localServiceProvider;
      }
    }
    return getProvider();
  }
  
  public static NetworkType getType()
  {
    NetworkState localNetworkState = getCurrState();
    if (localNetworkState != null) {
      return localNetworkState.getType();
    }
    return NetworkType.NONE;
  }
  
  public static boolean is2G()
  {
    NetworkType localNetworkType = getType();
    return NetworkType.MOBILE_2G.equals(localNetworkType);
  }
  
  public static boolean is3G()
  {
    NetworkType localNetworkType = getType();
    return NetworkType.MOBILE_3G.equals(localNetworkType);
  }
  
  public static boolean isAvailable()
  {
    updateNetworkState();
    if (getCurrState() != null) {
      return getCurrState().isAvailable();
    }
    return false;
  }
  
  public static boolean isEthernet()
  {
    return NetworkType.ETHERNET.equals(getType());
  }
  
  public static boolean isMobile()
  {
    NetworkType localNetworkType = getType();
    return (NetworkType.MOBILE_3G.equals(localNetworkType)) || (NetworkType.MOBILE_2G.equals(localNetworkType));
  }
  
  public static boolean isWap()
  {
    return getAccessPoint().isWap();
  }
  
  public static boolean isWifi()
  {
    return NetworkType.WIFI.equals(getType());
  }
  
  private static void notifyNetworkStateChange()
  {
    if (OBSERVER_LIST == null) {
      return;
    }
    synchronized (OBSERVER_LIST)
    {
      Iterator localIterator = OBSERVER_LIST.iterator();
      while (localIterator.hasNext())
      {
        NetworkStateListener localNetworkStateListener = (NetworkStateListener)((WeakReference)localIterator.next()).get();
        if (localNetworkStateListener != null) {
          localNetworkStateListener.onNetworkStateChanged(getLastState(), getCurrState());
        }
      }
    }
  }
  
  public static void removeListener(NetworkStateListener paramNetworkStateListener)
  {
    for (;;)
    {
      synchronized (OBSERVER_LIST)
      {
        Iterator localIterator = OBSERVER_LIST.iterator();
        if (localIterator.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          NetworkStateListener localNetworkStateListener = (NetworkStateListener)localWeakReference.get();
          if ((localNetworkStateListener == null) || (!localNetworkStateListener.equals(paramNetworkStateListener))) {
            continue;
          }
          paramNetworkStateListener = localWeakReference;
          OBSERVER_LIST.remove(paramNetworkStateListener);
          return;
        }
      }
      paramNetworkStateListener = null;
    }
  }
  
  protected static boolean setCurrState(NetworkState paramNetworkState)
  {
    boolean bool2 = true;
    boolean bool1 = false;
    for (;;)
    {
      try
      {
        if (sCurrState == null)
        {
          sLastState = sCurrState;
          sCurrState = paramNetworkState;
          bool1 = true;
        }
        if (!sCurrState.equals(paramNetworkState))
        {
          sLastState = sCurrState;
          sCurrState = paramNetworkState;
          bool1 = bool2;
          if (bool1)
          {
            CustomLogcat.w("NetworkObserver", "LAST -> " + sLastState);
            CustomLogcat.w("NetworkObserver", "CURR -> " + sCurrState);
          }
          return bool1;
        }
      }
      finally {}
    }
  }
  
  public static ServiceProvider updateIMSIProvider()
  {
    try
    {
      try
      {
        Object localObject1 = getIMSI();
        sImsiProvider = ServiceProvider.fromIMSI((String)localObject1);
        CustomLogcat.w("NetworkObserver", (String)localObject1 + " => " + sImsiProvider);
        localObject1 = sImsiProvider;
        return (ServiceProvider)localObject1;
      }
      finally {}
      return ServiceProvider.NONE;
    }
    catch (Exception localException) {}
  }
  
  /* Error */
  public static boolean updateNetworkState()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc_w 306
    //   6: invokestatic 178	com/mi/milink/sdk/base/Global:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   9: checkcast 308	android/net/ConnectivityManager
    //   12: astore_1
    //   13: aload_1
    //   14: ifnonnull +8 -> 22
    //   17: ldc 2
    //   19: monitorexit
    //   20: iconst_0
    //   21: ireturn
    //   22: aload_1
    //   23: invokevirtual 312	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   26: astore_1
    //   27: aload_1
    //   28: invokestatic 316	com/mi/milink/sdk/base/os/info/NetworkState:fromNetworkInfo	(Landroid/net/NetworkInfo;)Lcom/mi/milink/sdk/base/os/info/NetworkState;
    //   31: invokestatic 318	com/mi/milink/sdk/base/os/info/NetworkDash:setCurrState	(Lcom/mi/milink/sdk/base/os/info/NetworkState;)Z
    //   34: istore_0
    //   35: iload_0
    //   36: ifeq +40 -> 76
    //   39: invokestatic 198	com/mi/milink/sdk/base/os/info/NetworkDash:updateIMSIProvider	()Lcom/mi/milink/sdk/base/os/info/ServiceProvider;
    //   42: pop
    //   43: getstatic 320	com/mi/milink/sdk/base/os/info/NetworkDash:sMainHandler	Landroid/os/Handler;
    //   46: ifnonnull +16 -> 62
    //   49: new 322	android/os/Handler
    //   52: dup
    //   53: invokestatic 326	com/mi/milink/sdk/base/Global:getMainLooper	()Landroid/os/Looper;
    //   56: invokespecial 329	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   59: putstatic 320	com/mi/milink/sdk/base/os/info/NetworkDash:sMainHandler	Landroid/os/Handler;
    //   62: getstatic 320	com/mi/milink/sdk/base/os/info/NetworkDash:sMainHandler	Landroid/os/Handler;
    //   65: new 331	com/mi/milink/sdk/base/os/info/NetworkDash$2
    //   68: dup
    //   69: invokespecial 332	com/mi/milink/sdk/base/os/info/NetworkDash$2:<init>	()V
    //   72: invokevirtual 336	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   75: pop
    //   76: ldc 2
    //   78: monitorexit
    //   79: iload_0
    //   80: ireturn
    //   81: astore_1
    //   82: ldc 2
    //   84: monitorexit
    //   85: aload_1
    //   86: athrow
    //   87: astore_1
    //   88: aconst_null
    //   89: astore_1
    //   90: goto -63 -> 27
    //   93: astore_1
    //   94: aconst_null
    //   95: astore_1
    //   96: goto -69 -> 27
    // Local variable table:
    //   start	length	slot	name	signature
    //   34	46	0	bool	boolean
    //   12	16	1	localObject1	Object
    //   81	5	1	localObject2	Object
    //   87	1	1	localError	Error
    //   89	1	1	localObject3	Object
    //   93	1	1	localException	Exception
    //   95	1	1	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   3	13	81	finally
    //   17	20	81	finally
    //   22	27	81	finally
    //   27	35	81	finally
    //   39	62	81	finally
    //   62	76	81	finally
    //   76	79	81	finally
    //   82	85	81	finally
    //   3	13	87	java/lang/Error
    //   22	27	87	java/lang/Error
    //   3	13	93	java/lang/Exception
    //   22	27	93	java/lang/Exception
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\info\NetworkDash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */