package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import cn.com.wali.basetool.log.Logger;
import java.util.ArrayList;
import java.util.Arrays;

public class CheckApkElementUtil
{
  public static void a(Context paramContext, String[] paramArrayOfString)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    paramContext = paramContext.getPackageName();
    try
    {
      paramArrayOfString = new ArrayList(Arrays.asList(paramArrayOfString));
      paramContext = localPackageManager.getPackageInfo(paramContext, 4096).requestedPermissions;
      if (paramContext != null)
      {
        int j = paramContext.length;
        int i = 0;
        while (i < j)
        {
          paramArrayOfString.remove(paramContext[i]);
          i += 1;
        }
      }
      if (paramArrayOfString.size() > 0) {
        throw new IllegalStateException("请确保在AndroidManifest.xml声明了以下权限:" + paramArrayOfString.toString());
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static void a(Context paramContext, String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3)
  {
    int j = 0;
    Object localObject1 = "";
    int k = paramArrayOfString1.length;
    int i = 0;
    Object localObject2;
    while (i < k)
    {
      String str = paramArrayOfString1[i];
      localObject2 = localObject1;
      if (ResourceUtils.c(paramContext, str) == 0) {
        localObject2 = (String)localObject1 + "\ndrawable/" + str;
      }
      i += 1;
      localObject1 = localObject2;
    }
    k = paramArrayOfString2.length;
    i = 0;
    while (i < k)
    {
      localObject2 = paramArrayOfString2[i];
      paramArrayOfString1 = (String[])localObject1;
      if (ResourceUtils.d(paramContext, (String)localObject2) == 0) {
        paramArrayOfString1 = (String)localObject1 + "\nid/" + (String)localObject2;
      }
      i += 1;
      localObject1 = paramArrayOfString1;
    }
    k = paramArrayOfString3.length;
    i = j;
    while (i < k)
    {
      paramArrayOfString2 = paramArrayOfString3[i];
      paramArrayOfString1 = (String[])localObject1;
      if (ResourceUtils.f(paramContext, paramArrayOfString2) == 0) {
        paramArrayOfString1 = (String)localObject1 + "\nlayout/" + paramArrayOfString2;
      }
      i += 1;
      localObject1 = paramArrayOfString1;
    }
    if (((String)localObject1).length() > 0) {
      throw new IllegalStateException("请确保res目录下有以下文件或id：" + (String)localObject1);
    }
  }
  
  public static void a(String[] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        String str = paramArrayOfString[i];
        try
        {
          Class.forName(str);
          i += 1;
        }
        catch (ClassNotFoundException paramArrayOfString)
        {
          throw new IllegalStateException(str + "缺失，请仔细阅读接入文档，确保使用了正确的依赖。");
        }
        catch (Exception localException)
        {
          for (;;)
          {
            Logger.a("", localException.getMessage());
          }
        }
      }
    }
  }
  
  public static void b(Context paramContext, String[] paramArrayOfString)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    paramContext = paramContext.getPackageName();
    try
    {
      paramArrayOfString = new ArrayList(Arrays.asList(paramArrayOfString));
      paramContext = localPackageManager.getPackageInfo(paramContext, 1).activities;
      if (paramContext != null)
      {
        int j = paramContext.length;
        int i = 0;
        while (i < j)
        {
          paramArrayOfString.remove(paramContext[i].name);
          i += 1;
        }
      }
      if (paramArrayOfString.size() > 0) {
        throw new IllegalStateException("请确保在AndroidManifest.xml声明了以下Activity:" + paramArrayOfString.toString());
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\CheckApkElementUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */