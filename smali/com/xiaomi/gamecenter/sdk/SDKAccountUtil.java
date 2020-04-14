package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.content.Context;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.account.MilinkAccountProps;
import com.xiaomi.gamecenter.sdk.entry.LoginType;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.RefreshVipEvent;
import com.xiaomi.gamecenter.sdk.entry.UserLevelAndVipInfo;
import com.xiaomi.gamecenter.sdk.milink.MilinkAccount;
import com.xiaomi.gamecenter.sdk.milink.MilinkForMemInfo;
import com.xiaomi.gamecenter.sdk.milink.MilinkForVipInfo;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.k;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.SocketTouch;
import com.xiaomi.gamecenter.sdk.utils.b;
import java.io.File;
import java.util.concurrent.ExecutorService;
import org.greenrobot.eventbus.EventBus;
import org.xiaomi.gamecenter.milink.msg.VipProtos.GetUserLevelInfoRsp;
import org.xiaomi.gamecenter.milink.msg.VipProtos.QueryVipUserRsp;

public class SDKAccountUtil
{
  public static String a = null;
  private static volatile boolean b = false;
  
  public static long a()
  {
    long l = -1L;
    boolean bool = MiCommplatform.getInstance().getAccountAdapter().b();
    if (!bool) {
      l = MilinkAccount.a(MiCommplatform.appInfo.getAppId()).a();
    }
    while (!bool) {
      return l;
    }
    MilinkAccountProps localMilinkAccountProps = k.b().j();
    if (localMilinkAccountProps == null)
    {
      Logger.d("no milinkAccountProps found");
      k.b().a(null);
      return -1L;
    }
    return localMilinkAccountProps.a();
  }
  
  private static VipProtos.GetUserLevelInfoRsp a(Context paramContext, long paramLong, String paramString, MiAppEntry paramMiAppEntry)
  {
    try
    {
      paramContext = (VipProtos.GetUserLevelInfoRsp)new MilinkForVipInfo(paramContext, paramLong, paramString, paramMiAppEntry).a();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public static void a(Activity paramActivity, OnLoginProcessListener paramOnLoginProcessListener, LoginType paramLoginType, String paramString)
  {
    a = SocketTouch.a();
    try
    {
      ReporterUtils.getInstance().xmsdkReport(1);
      ReporterUtils.FastXmsdkReport(paramActivity, 1);
      SdkAccountAdapter localSdkAccountAdapter = MiCommplatform.getInstance().getAccountAdapter();
      k.b().c();
      if (localSdkAccountAdapter.a())
      {
        ReporterUtils.getInstance().xmsdkReport(2044);
        HyUtils.a().submit(new as(paramActivity, paramOnLoginProcessListener));
        return;
      }
    }
    catch (Exception localException)
    {
      do
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      } while (!localException.b());
      c(paramActivity, paramOnLoginProcessListener, paramLoginType, paramString);
    }
  }
  
  public static void a(Context paramContext)
  {
    try
    {
      b.a(paramContext.getApplicationContext());
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        try
        {
          a.a(paramContext.getApplicationContext(), new File(paramContext.getFilesDir(), "migame.cfg"));
          return;
        }
        catch (Throwable paramContext)
        {
          paramContext.printStackTrace();
        }
        localThrowable = localThrowable;
        localThrowable.printStackTrace();
      }
    }
  }
  
  private static VipProtos.QueryVipUserRsp b(Context paramContext, long paramLong, String paramString, MiAppEntry paramMiAppEntry)
  {
    try
    {
      paramContext = (VipProtos.QueryVipUserRsp)new MilinkForMemInfo(paramContext, paramLong, paramString, paramMiAppEntry).a();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public static void b(Context paramContext)
  {
    String str = null;
    Logger.d("start refreshVipAndMember");
    Object localObject;
    long l;
    boolean bool;
    for (;;)
    {
      try
      {
        localObject = MiCommplatform.getInstance().getAccountAdapter();
        l = 0L;
        MiAppEntry localMiAppEntry = new MiAppEntry(MiCommplatform.appInfo);
        bool = ((SdkAccountAdapter)localObject).b();
        if (!bool)
        {
          localObject = MilinkAccount.a(MiCommplatform.appInfo.getAppId());
          str = ((MilinkAccount)localObject).b();
          l = ((MilinkAccount)localObject).a();
          localObject = a(paramContext, l, str, localMiAppEntry);
          paramContext = b(paramContext, l, str, localMiAppEntry);
          Logger.d("end refreshVipAndMember request");
          if (l == a()) {
            break;
          }
          Logger.d("user changed, ignore");
          return;
        }
        if (!bool) {
          continue;
        }
        localObject = k.b().j();
        if (localObject == null)
        {
          Logger.d("no milinkAccountProps found");
          k.b().a(null);
          return;
        }
      }
      catch (Exception paramContext)
      {
        paramContext = paramContext;
        Logger.d("refreshVipAndMember error " + paramContext.getMessage());
        return;
      }
      finally {}
      str = ((MilinkAccountProps)localObject).b();
      l = ((MilinkAccountProps)localObject).a();
    }
    k.b().a(new UserLevelAndVipInfo(l, bool, (VipProtos.GetUserLevelInfoRsp)localObject, paramContext));
    EventBus.getDefault().post(new RefreshVipEvent(l, bool));
  }
  
  private static void c(Activity paramActivity, OnLoginProcessListener paramOnLoginProcessListener, LoginType paramLoginType, String paramString)
  {
    HyUtils.a().submit(new au(paramActivity, paramOnLoginProcessListener, paramLoginType, paramString));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\SDKAccountUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */