package com.mi.milink.sdk.base;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.data.Option;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class Global
{
  public static long LAST_PACKET_SEND_TIME = System.currentTimeMillis();
  private static final byte PROTOCOL_VERSION = 3;
  public static long STARTUP_TIME = 0L;
  private static final int SUB_VERSION = 1;
  private static final String TAG = "MiLinkServiceBinder";
  private static final int VERSION = 2;
  private static ClientAppInfo clientAppInfo;
  private static String clientIp;
  private static String clientIsp;
  private static HashMap<Integer, ClientAppInfo> clinetInfoMap;
  private static Context context;
  private static boolean isDebug;
  private static boolean isInit = false;
  private static int pid;
  private static AtomicInteger uniqueSeqNO = new AtomicInteger(1);
  
  static
  {
    isDebug = false;
    clientAppInfo = null;
    clinetInfoMap = new HashMap();
    STARTUP_TIME = SystemClock.elapsedRealtime();
  }
  
  public static final void addClientAppInfo(ClientAppInfo paramClientAppInfo)
  {
    if (clientAppInfo == null) {
      clientAppInfo = paramClientAppInfo;
    }
    clinetInfoMap.put(Integer.valueOf(paramClientAppInfo.getAppId()), paramClientAppInfo);
  }
  
  public static final void cancelProtection()
  {
    Option.remove("protect.client");
    MiLinkLog.e("MiLinkServiceBinder", "Client Protection Cleared : " + getClientAppInfo());
  }
  
  public static final String currentProcessName()
  {
    Object localObject = (ActivityManager)getSystemService("activity");
    if (localObject == null) {
      return null;
    }
    localObject = ((ActivityManager)localObject).getRunningAppProcesses();
    if (localObject == null) {
      return null;
    }
    int i = Process.myPid();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
      if (i == localRunningAppProcessInfo.pid) {
        return localRunningAppProcessInfo.processName;
      }
    }
    return null;
  }
  
  public static final Context getApplicationContext()
  {
    return getContext().getApplicationContext();
  }
  
  public static final ApplicationInfo getApplicationInfo()
  {
    return getContext().getApplicationInfo();
  }
  
  public static final AssetManager getAssets()
  {
    return getContext().getAssets();
  }
  
  public static final File getCacheDir()
  {
    return getContext().getCacheDir();
  }
  
  public static final ClientAppInfo getClientAppInfo()
  {
    if (clientAppInfo == null)
    {
      recoveryClient();
      if (clientAppInfo == null) {
        throw new BaseLibException("Global's clientAppInfo is NULL, have your Application in manifest subclasses BaseApplication or Call 'Global.init(this)' in your own Application ? ");
      }
    }
    return clientAppInfo;
  }
  
  public static final ClientAppInfo getClientAppInfo(int paramInt)
  {
    ClientAppInfo localClientAppInfo = (ClientAppInfo)clinetInfoMap.get(Integer.valueOf(paramInt));
    if (localClientAppInfo == null) {
      throw new BaseLibException("Global's clientAppInfo is NULL, have your Application in manifest subclasses BaseApplication or Call 'Global.init(this)' in your own Application " + paramInt);
    }
    return localClientAppInfo;
  }
  
  public static String getClientIp()
  {
    return clientIp;
  }
  
  public static String getClientIsp()
  {
    if (clientIsp != null) {
      return clientIsp;
    }
    return "";
  }
  
  public static final Context getContext()
  {
    if (context == null) {
      throw new BaseLibException("Global's Context is NULL, have your Application in manifest subclasses BaseApplication or Call 'Global.init(this)' in your own Application ? ");
    }
    return context;
  }
  
  public static final File getFilesDir()
  {
    return getContext().getFilesDir();
  }
  
  public static Handler getMainHandler()
  {
    return new Handler(getMainLooper());
  }
  
  public static final Looper getMainLooper()
  {
    return getContext().getMainLooper();
  }
  
  public static final byte getMiLinkProtocolVersion()
  {
    return 3;
  }
  
  public static final int getMiLinkSubVersion()
  {
    return 1;
  }
  
  public static final int getMiLinkVersion()
  {
    return 2;
  }
  
  public static final PackageManager getPackageManager()
  {
    return getContext().getPackageManager();
  }
  
  public static final String getPackageName()
  {
    return getContext().getPackageName();
  }
  
  public static int getPid()
  {
    return pid;
  }
  
  public static final int getSequence()
  {
    return uniqueSeqNO.getAndIncrement();
  }
  
  public static final SharedPreferences getSharedPreferences(String paramString, int paramInt)
  {
    return getContext().getSharedPreferences(paramString, paramInt);
  }
  
  public static final Object getSystemService(String paramString)
  {
    try
    {
      paramString = getContext().getSystemService(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static final void init(Context paramContext)
  {
    isInit = true;
    pid = Process.myPid();
    setContext(paramContext);
  }
  
  public static final void init(Context paramContext, ClientAppInfo paramClientAppInfo)
  {
    isInit = true;
    pid = Process.myPid();
    setContext(paramContext);
    setClientAppInfo(paramClientAppInfo);
  }
  
  public static final boolean isDebug()
  {
    return isDebug;
  }
  
  public static boolean isInit()
  {
    return isInit;
  }
  
  public static final boolean isMainProcess()
  {
    String str = currentProcessName();
    return (str != null) && (str.indexOf(':') <= 0);
  }
  
  public static boolean isSuicideEnable()
  {
    return (getClientAppInfo().getAppId() == 10014) || (getClientAppInfo().getAppId() == 20002) || (getClientAppInfo().getAppId() == 20005);
  }
  
  private static final void protectClient()
  {
    Option.putString("protect.client", getClientAppInfo().toString()).apply();
  }
  
  private static final void recoveryClient()
  {
    String str = Option.getString("protect.client", null);
    if ((str == null) || (str.length() <= 0)) {
      return;
    }
    MiLinkLog.e("MiLinkServiceBinder", "Client Protection Loaded : " + str);
    try
    {
      setClientAppInfo(new ClientAppInfo(str));
      return;
    }
    catch (Exception localException)
    {
      MiLinkLog.e("MiLinkServiceBinder", "Client Protection Failed", localException);
    }
  }
  
  public static final Intent registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    return getContext().registerReceiver(paramBroadcastReceiver, paramIntentFilter);
  }
  
  public static final Intent registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter, String paramString, Handler paramHandler)
  {
    return getContext().registerReceiver(paramBroadcastReceiver, paramIntentFilter, paramString, paramHandler);
  }
  
  public static final void removeStickyBroadcast(Intent paramIntent)
  {
    getContext().removeStickyBroadcast(paramIntent);
  }
  
  public static final void sendBroadcast(Intent paramIntent)
  {
    getContext().sendBroadcast(paramIntent);
  }
  
  public static final void sendBroadcast(Intent paramIntent, String paramString)
  {
    getContext().sendBroadcast(paramIntent, paramString);
  }
  
  public static final void sendOrderedBroadcast(Intent paramIntent, String paramString)
  {
    getContext().sendOrderedBroadcast(paramIntent, paramString);
  }
  
  public static final void sendOrderedBroadcast(Intent paramIntent, String paramString1, BroadcastReceiver paramBroadcastReceiver, Handler paramHandler, int paramInt, String paramString2, Bundle paramBundle)
  {
    getContext().sendOrderedBroadcast(paramIntent, paramString1, paramBroadcastReceiver, paramHandler, paramInt, paramString2, paramBundle);
  }
  
  public static final void sendStickyBroadcast(Intent paramIntent)
  {
    getContext().sendStickyBroadcast(paramIntent);
  }
  
  public static final void sendStickyOrderedBroadcast(Intent paramIntent, BroadcastReceiver paramBroadcastReceiver, Handler paramHandler, int paramInt, String paramString, Bundle paramBundle)
  {
    getContext().sendStickyOrderedBroadcast(paramIntent, paramBroadcastReceiver, paramHandler, paramInt, paramString, paramBundle);
  }
  
  public static final void setClientAppInfo(ClientAppInfo paramClientAppInfo)
  {
    clientAppInfo = paramClientAppInfo;
    clinetInfoMap.put(Integer.valueOf(paramClientAppInfo.getAppId()), paramClientAppInfo);
    protectClient();
  }
  
  public static void setClientIp(String paramString)
  {
    clientIp = paramString;
  }
  
  public static void setClientIsp(String paramString)
  {
    clientIsp = paramString;
  }
  
  public static final void setContext(Context paramContext)
  {
    context = paramContext;
    try
    {
      if ((paramContext.getApplicationInfo().flags & 0x2) != 0) {}
      for (boolean bool = true;; bool = false)
      {
        isDebug = bool;
        if (bool) {
          Log.w("Mns.Global.Runtime", "DEBUG is ON");
        }
        return;
      }
      return;
    }
    catch (Exception paramContext)
    {
      isDebug = false;
    }
  }
  
  public static final long startupTimespan()
  {
    return SystemClock.elapsedRealtime() - STARTUP_TIME;
  }
  
  public static final void unregisterReceiver(BroadcastReceiver paramBroadcastReceiver)
  {
    getContext().unregisterReceiver(paramBroadcastReceiver);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\Global.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */