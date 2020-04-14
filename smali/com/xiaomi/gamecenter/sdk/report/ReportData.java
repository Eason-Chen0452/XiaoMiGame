package com.xiaomi.gamecenter.sdk.report;

import android.app.Application;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.EventBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.HBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.PageBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.datasdk.DataSDK;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.OSUtils;
import com.xiaomi.gamecenter.sdk.utils.OSUtils.ROM;
import com.xiaomi.gamecenter.sdk.utils.r;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;

public class ReportData
{
  private static HBean a;
  private static PageBean b;
  private static EventBean c;
  private static PageBean d;
  private static ConcurrentLinkedQueue<PageBean> e;
  private static HandlerThread f;
  private static Handler g = new Handler(f.getLooper());
  
  static
  {
    HandlerThread localHandlerThread = new HandlerThread("MiGameSDK.ReportData");
    f = localHandlerThread;
    localHandlerThread.start();
  }
  
  public static void a()
  {
    DataSDK.updataTraceId();
    e = new ConcurrentLinkedQueue();
    a = DataSDK.getHeader();
  }
  
  public static void a(Application paramApplication)
  {
    localHBean = new HBean();
    try
    {
      DataSDK.setLogEnabled(Logger.a);
      DataSDK.initHeader(paramApplication, com.xiaomi.gamecenter.sdk.utils.b.m, com.xiaomi.gamecenter.sdk.utils.b.j, com.xiaomi.gamecenter.sdk.utils.b.n);
      localHBean.setSdkType(Integer.valueOf(2));
      localHBean.setAndroid(Build.VERSION.RELEASE);
      OSUtils.ROM localROM = OSUtils.a();
      StringBuilder localStringBuilder = new StringBuilder().append(localROM.name());
      Object localObject1;
      if (localROM.getBaseVersion() < 0) {
        localObject1 = "";
      }
      for (;;)
      {
        localStringBuilder = localStringBuilder.append((String)localObject1);
        if (localROM.getVersion() == null)
        {
          localObject1 = "";
          localHBean.setOs((String)localObject1);
          localObject1 = paramApplication.getResources().getConfiguration().locale;
          localHBean.setLang(((Locale)localObject1).getLanguage());
          localHBean.setRegion(((Locale)localObject1).getCountry());
          localHBean.setTimeZone(TimeZone.getDefault().getDisplayName(false, 0));
          localHBean.setImeiMd5(com.xiaomi.gamecenter.sdk.utils.b.m);
          localHBean.setImeiSha1(com.xiaomi.gamecenter.sdk.utils.b.j);
          localHBean.setImeiSha2(com.xiaomi.gamecenter.sdk.utils.b.l);
          localHBean.setUa(com.xiaomi.gamecenter.sdk.utils.b.n);
        }
        try
        {
          r.a();
          localHBean.setUnionId(r.b());
          Logger.c("MiGameSDK.ReportData", "initDataSDK  " + paramApplication);
          try
          {
            DataSDK.initDataSDK(paramApplication, localHBean);
            return;
          }
          catch (Exception paramApplication)
          {
            paramApplication.printStackTrace();
            return;
          }
          localObject1 = "|" + localROM.getBaseVersion();
          continue;
          localObject1 = "|" + localROM.getVersion();
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
      }
      try
      {
        DataSDK.initDataSDK(paramApplication, localHBean);
        throw ((Throwable)localObject2);
      }
      catch (Exception paramApplication)
      {
        for (;;)
        {
          paramApplication.printStackTrace();
        }
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable = localThrowable;
      localThrowable.printStackTrace();
      try
      {
        DataSDK.initDataSDK(paramApplication, localHBean);
        return;
      }
      catch (Exception paramApplication)
      {
        paramApplication.printStackTrace();
        return;
      }
    }
    finally {}
  }
  
  public static void a(String paramString, MiAppEntry paramMiAppEntry)
  {
    b(paramString, null, null, null, paramMiAppEntry);
  }
  
  public static void a(String paramString1, String paramString2, MiAppEntry paramMiAppEntry)
  {
    a(paramString1, null, paramString2, null, paramMiAppEntry);
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, MiAppEntry paramMiAppEntry)
  {
    a(paramString1, paramString2, paramString3, null, paramMiAppEntry);
  }
  
  private static void a(String paramString1, String paramString2, String paramString3, String paramString4, MiAppEntry paramMiAppEntry)
  {
    g.post(new a(paramMiAppEntry, paramString1, paramString2, paramString3, paramString4));
  }
  
  public static void b(String paramString1, String paramString2, MiAppEntry paramMiAppEntry)
  {
    b(paramString1, paramString2, null, null, paramMiAppEntry);
  }
  
  public static void b(String paramString1, String paramString2, String paramString3, MiAppEntry paramMiAppEntry)
  {
    a(paramString1, null, paramString2, paramString3, paramMiAppEntry);
  }
  
  private static void b(String paramString1, String paramString2, String paramString3, String paramString4, MiAppEntry paramMiAppEntry)
  {
    try
    {
      c(paramString1, paramString2, paramString3, paramString4, paramMiAppEntry);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public static void c(String paramString1, String paramString2, MiAppEntry paramMiAppEntry)
  {
    b(paramString1, null, paramString2, null, paramMiAppEntry);
  }
  
  public static void c(String paramString1, String paramString2, String paramString3, MiAppEntry paramMiAppEntry)
  {
    a(paramString1, paramString2, paramString3, null, paramMiAppEntry);
  }
  
  private static void c(String paramString1, String paramString2, String paramString3, String paramString4, MiAppEntry paramMiAppEntry)
  {
    try
    {
      g.post(new b(paramMiAppEntry, paramString1, paramString2, paramString3, paramString4));
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public static void d(String paramString1, String paramString2, MiAppEntry paramMiAppEntry)
  {
    g(paramString1, null, paramString2, paramMiAppEntry);
  }
  
  public static void d(String paramString1, String paramString2, String paramString3, MiAppEntry paramMiAppEntry)
  {
    b(paramString1, null, paramString2, paramString3, paramMiAppEntry);
  }
  
  public static void e(String paramString1, String paramString2, String paramString3, MiAppEntry paramMiAppEntry)
  {
    b(paramString1, paramString2, paramString3, null, paramMiAppEntry);
  }
  
  public static void f(String paramString1, String paramString2, String paramString3, MiAppEntry paramMiAppEntry)
  {
    g(paramString1, paramString2, paramString3, paramMiAppEntry);
  }
  
  private static void g(String paramString1, String paramString2, String paramString3, MiAppEntry paramMiAppEntry)
  {
    g.post(new c(paramMiAppEntry, paramString1, paramString2, paramString3));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\report\ReportData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */