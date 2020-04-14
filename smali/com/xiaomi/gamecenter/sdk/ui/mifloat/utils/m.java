package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.provider.Settings.Global;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import cn.com.wali.basetool.log.Logger;
import cn.com.wali.basetool.utils.SystemConfig;
import java.lang.reflect.Method;

public final class m
{
  private static int a = 0;
  
  public static int a(Context paramContext)
  {
    if (paramContext == null) {
      return 0;
    }
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext = g(paramContext).getDefaultDisplay();
    try
    {
      if (Build.VERSION.SDK_INT >= 17) {
        paramContext.getRealMetrics(localDisplayMetrics);
      }
      for (;;)
      {
        return localDisplayMetrics.widthPixels;
        paramContext.getMetrics(localDisplayMetrics);
      }
      return paramContext.getWidth();
    }
    catch (Exception localException) {}
  }
  
  public static boolean a(Activity paramActivity)
  {
    return (paramActivity.getWindow().getAttributes().flags & 0x400) == 0;
  }
  
  public static int b(Context paramContext)
  {
    if (paramContext == null) {
      return 0;
    }
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext = g(paramContext).getDefaultDisplay();
    try
    {
      if (Build.VERSION.SDK_INT >= 17) {
        paramContext.getRealMetrics(localDisplayMetrics);
      }
      for (;;)
      {
        return localDisplayMetrics.heightPixels;
        paramContext.getMetrics(localDisplayMetrics);
      }
      return paramContext.getHeight();
    }
    catch (Exception localException) {}
  }
  
  public static boolean b(Activity paramActivity)
  {
    if ((SystemConfig.a("ro.miui.notch") != 1) && (!h(paramActivity)) && (!paramActivity.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism")) && (!i(paramActivity)))
    {
      Object localObject2 = paramActivity.getWindow().getDecorView();
      Object localObject1 = null;
      paramActivity = (Activity)localObject1;
      if (localObject2 != null)
      {
        paramActivity = (Activity)localObject1;
        if (Build.VERSION.SDK_INT >= 28)
        {
          localObject2 = ((View)localObject2).getRootWindowInsets();
          Logger.a("MiGameSDK.ScreenUtils", "isAndroidP windowInsets " + localObject2);
          paramActivity = (Activity)localObject1;
          if (localObject2 != null) {
            paramActivity = ((WindowInsets)localObject2).getDisplayCutout();
          }
        }
      }
      Logger.a("MiGameSDK.ScreenUtils", "isAndroidP displayCutout " + paramActivity);
    }
    return paramActivity != null;
  }
  
  public static int c(Context paramContext)
  {
    int j = 1;
    int i;
    if (Build.VERSION.SDK_INT >= 17)
    {
      Display localDisplay = g(paramContext).getDefaultDisplay();
      Point localPoint1 = new Point();
      Point localPoint2 = new Point();
      localDisplay.getSize(localPoint1);
      localDisplay.getRealSize(localPoint2);
      i = j;
      if (localPoint2.x == localPoint1.x)
      {
        if (localPoint2.y == localPoint1.y) {
          break label89;
        }
        i = j;
      }
    }
    while (i == 0)
    {
      return 0;
      label89:
      i = 0;
      continue;
      boolean bool1 = ViewConfiguration.get(paramContext).hasPermanentMenuKey();
      boolean bool2 = KeyCharacterMap.deviceHasKey(4);
      if (!bool1)
      {
        i = j;
        if (!bool2) {}
      }
      else
      {
        i = 0;
      }
    }
    paramContext = paramContext.getResources();
    return paramContext.getDimensionPixelSize(paramContext.getIdentifier("navigation_bar_height", "dimen", "android"));
  }
  
  public static int d(Context paramContext)
  {
    int i = 0;
    int j = paramContext.getResources().getIdentifier("status_bar_height", "dimen", "android");
    if (j > 0) {
      i = paramContext.getResources().getDimensionPixelSize(j);
    }
    return i;
  }
  
  public static boolean e(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().orientation == 2;
  }
  
  public static boolean f(Context paramContext)
  {
    boolean bool = false;
    if (Settings.Global.getInt(paramContext.getContentResolver(), "force_fsg_nav_bar", 0) != 0) {
      bool = true;
    }
    Logger.a("MiGameSDK.ScreenUtils", "isHideNavBar " + bool);
    return bool;
  }
  
  private static WindowManager g(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    return (WindowManager)paramContext.getSystemService("window");
  }
  
  private static boolean h(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
      boolean bool = ((Boolean)paramContext.getMethod("hasNotchInScreen", new Class[0]).invoke(paramContext, new Object[0])).booleanValue();
      return bool;
    }
    catch (ClassNotFoundException paramContext)
    {
      paramContext = paramContext;
      Logger.a("MiGameSDK.ScreenUtils", "hasNotchAtHuawei ClassNotFoundException");
      return false;
    }
    catch (NoSuchMethodException paramContext)
    {
      paramContext = paramContext;
      Logger.a("MiGameSDK.ScreenUtils", "hasNotchAtHuawei NoSuchMethodException");
      return false;
    }
    catch (Exception paramContext)
    {
      paramContext = paramContext;
      Logger.a("MiGameSDK.ScreenUtils", "hasNotchAtHuawei Exception");
      return false;
    }
    finally {}
    return false;
  }
  
  private static boolean i(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getClassLoader().loadClass("android.util.FtFeature");
      boolean bool = ((Boolean)paramContext.getMethod("isFeatureSupport", new Class[] { Integer.TYPE }).invoke(paramContext, new Object[] { Integer.valueOf(32) })).booleanValue();
      return bool;
    }
    catch (ClassNotFoundException paramContext)
    {
      paramContext = paramContext;
      Logger.a("MiGameSDK.ScreenUtils", "hasNotchAtVivo ClassNotFoundException");
      return false;
    }
    catch (NoSuchMethodException paramContext)
    {
      paramContext = paramContext;
      Logger.a("MiGameSDK.ScreenUtils", "hasNotchAtVivo NoSuchMethodException");
      return false;
    }
    catch (Exception paramContext)
    {
      paramContext = paramContext;
      Logger.a("MiGameSDK.ScreenUtils", "hasNotchAtVivo Exception");
      return false;
    }
    finally {}
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */