package com.xiaomi.gamecenter.sdk.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.text.TextUtils;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.IGameCenterSDK;
import com.xiaomi.gamecenter.sdk.IGameCenterSDK.Stub;
import com.xiaomi.gamecenter.sdk.entry.SdkJarInfo;
import com.xiaomi.gamecenter.sdk.entry.ServiceInfo;
import java.util.List;

public class n
{
  private static final String[] a = { "wZdkKTab_gY-2LNA", "wCxwXphYj3JMoEas", "2jmj7l5rSw0yVb_v" };
  private static n b;
  private a c = null;
  private HandlerThread d = new HandlerThread("ServiceDeviceInfoHelper");
  private Handler e;
  private IGameCenterSDK f;
  private SdkJarInfo g;
  private int h;
  private b i;
  
  private n()
  {
    this.d.start();
    this.e = new o(this, this.d.getLooper());
    this.h = 0;
    this.i = null;
  }
  
  public static n a()
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new n();
      }
      return b;
    }
    finally {}
  }
  
  public static String a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 0).versionName;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  private static String a(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("SdkServiceInfo", 0).getString(paramString, null);
  }
  
  private void a(Context paramContext, IGameCenterSDK paramIGameCenterSDK)
  {
    try
    {
      String str1;
      boolean bool2;
      Object localObject1;
      int k;
      int j;
      if (this.h >= 490690)
      {
        str1 = paramIGameCenterSDK.getDeviceID();
        bool2 = TextUtils.isEmpty(str1);
        localObject1 = a;
        k = localObject1.length;
        j = 0;
      }
      for (;;)
      {
        boolean bool1 = bool2;
        if (j < k)
        {
          if (TextUtils.equals(str1, localObject1[j])) {
            bool1 = true;
          }
        }
        else
        {
          if (!bool1)
          {
            a(paramContext, "service.device_id", str1);
            a(paramContext, "service.imei_sha1", str1);
            b.a(paramContext, str1);
          }
          if (this.h >= 500000)
          {
            Object localObject2 = paramIGameCenterSDK.exchangeInfo(this.g);
            paramIGameCenterSDK = ((ServiceInfo)localObject2).getImeiMd5();
            str1 = ((ServiceInfo)localObject2).getImei();
            localObject1 = ((ServiceInfo)localObject2).getImsi();
            String str2 = ((ServiceInfo)localObject2).getMac();
            String str3 = ((ServiceInfo)localObject2).getUa();
            localObject2 = ((ServiceInfo)localObject2).getUnionId();
            if (!TextUtils.isEmpty(paramIGameCenterSDK)) {
              a(paramContext, "service.imei_md5", paramIGameCenterSDK);
            }
            if (!TextUtils.isEmpty(str1)) {
              a(paramContext, "service.imei", str1);
            }
            if (!TextUtils.isEmpty(str3)) {
              a(paramContext, "service.ua", str3);
            }
            if (!TextUtils.isEmpty(str2)) {
              a(paramContext, "service.mac", str2);
            }
            if (!TextUtils.isEmpty((CharSequence)localObject1)) {
              a(paramContext, "service.imsi", (String)localObject1);
            }
            if (!TextUtils.isEmpty((CharSequence)localObject2)) {
              a(paramContext, "service.union_id", (String)localObject2);
            }
          }
          if (this.c != null) {
            this.c.a();
          }
          return;
        }
        j += 1;
      }
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
      this.c.b();
    }
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = paramContext.getSharedPreferences("SdkServiceInfo", 0).edit();
    paramContext.putString(paramString1, paramString2);
    paramContext.putLong("info.cachedtime", System.currentTimeMillis());
    paramContext.commit();
  }
  
  public static String b(Context paramContext)
  {
    return a(paramContext, "service.device_id");
  }
  
  public static String c(Context paramContext)
  {
    return a(paramContext, "service.imei_md5");
  }
  
  public static String d(Context paramContext)
  {
    return a(paramContext, "service.imei_sha1");
  }
  
  public static String e(Context paramContext)
  {
    return a(paramContext, "service.imei");
  }
  
  public static String f(Context paramContext)
  {
    return a(paramContext, "service.ua");
  }
  
  public static String g(Context paramContext)
  {
    return a(paramContext, "service.mac");
  }
  
  public static String h(Context paramContext)
  {
    return a(paramContext, "service.union_id");
  }
  
  private static boolean i(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getInstalledPackages(0);
      int j = 0;
      while (j < paramContext.size())
      {
        boolean bool = "com.xiaomi.gamecenter.sdk.service".equalsIgnoreCase(((PackageInfo)paramContext.get(j)).packageName);
        if (bool) {
          return true;
        }
        j += 1;
      }
      return false;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static int j(Context paramContext)
  {
    try
    {
      int j = paramContext.getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 0).versionCode;
      return j;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public final void a(Context paramContext, SdkJarInfo paramSdkJarInfo, a parama)
  {
    try
    {
      this.c = parama;
      this.g = paramSdkJarInfo;
      this.h = j(paramContext);
      long l1 = paramContext.getSharedPreferences("SdkServiceInfo", 0).getLong("info.cachedtime", 0L);
      long l2 = System.currentTimeMillis();
      if ((l1 > 0L) && (l2 - l1 < 300000L))
      {
        Logger.b("ServiceDeviceInfoHelper", "cached time less than threshold: " + (l2 - l1) + " < 300000");
        this.c.a();
        return;
      }
      if (!i(paramContext))
      {
        Logger.b("ServiceDeviceInfoHelper", "sdk service not exist.");
        this.c.b();
        return;
      }
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    if (this.h < 490690)
    {
      Logger.b("ServiceDeviceInfoHelper", "sdk service version not valid : " + this.h);
      paramContext = this.c;
      new StringBuilder("sdk service version not valid : ").append(this.h);
      paramContext.b();
      return;
    }
    if (this.f != null)
    {
      Logger.b("ServiceDeviceInfoHelper", "mGameCenterSDK exist .");
      a(paramContext, this.f);
      return;
    }
    Logger.b("ServiceDeviceInfoHelper", "connect sdk service.");
    try
    {
      if (this.i == null) {
        this.i = new b(paramContext);
      }
      paramSdkJarInfo = new Intent("com.xiaomi.gamecenter.sdk.service");
      paramSdkJarInfo.setPackage("com.xiaomi.gamecenter.sdk.service");
      paramContext.getApplicationContext().bindService(paramSdkJarInfo, this.i, 1);
      this.e.sendEmptyMessageDelayed(1001, 2000L);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
  
  private final class b
    implements ServiceConnection
  {
    private Context b;
    
    b(Context paramContext)
    {
      this.b = paramContext;
    }
    
    public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      try
      {
        Logger.c("ServiceDeviceInfoHelper", "connected");
        n.a(n.this, IGameCenterSDK.Stub.asInterface(paramIBinder));
        n.a(n.this, this.b, n.a(n.this));
        Logger.c("ServiceDeviceInfoHelper", "getDeviceId after connect : " + n.b(this.b));
        return;
      }
      catch (Exception paramComponentName)
      {
        paramComponentName.printStackTrace();
      }
    }
    
    public final void onServiceDisconnected(ComponentName paramComponentName)
    {
      n.a(n.this, null);
      if (n.b(n.this) != null) {
        n.b(n.this);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */