package com.xiaomi.licensinglibrary.util;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.licensinglibrary.ILicenseService;
import java.util.concurrent.ConcurrentHashMap;

public final class a
{
  private static a b = new a();
  private Object a = new Object();
  private String c = null;
  private String d = null;
  private int e;
  private ConcurrentHashMap<String, Bundle> f = new ConcurrentHashMap();
  private OnLoginProcessListener g = new d(this);
  
  public static a a()
  {
    return b;
  }
  
  public final int a(Activity arg1, ILicenseService paramILicenseService)
    throws Exception
  {
    int i;
    if ((??? == null) || (paramILicenseService == null)) {
      i = 5001;
    }
    for (;;)
    {
      return i;
      try
      {
        b(???, paramILicenseService);
        if (!TextUtils.isEmpty(this.c))
        {
          paramILicenseService = a(???, this.c, paramILicenseService);
          int j = paramILicenseService.getInt("errcode");
          paramILicenseService = paramILicenseService.getString("orderid");
          i = j;
          if (j == 5005)
          {
            ???.runOnUiThread(new b(this, ???, paramILicenseService));
            synchronized (this.a)
            {
              try
              {
                this.a.wait(120000L);
                i = this.e;
              }
              catch (InterruptedException paramILicenseService)
              {
                for (;;)
                {
                  paramILicenseService.printStackTrace();
                }
              }
            }
          }
        }
        else
        {
          i = 5002;
        }
      }
      finally {}
    }
  }
  
  public final Bundle a(Activity paramActivity, String paramString, ILicenseService paramILicenseService)
    throws Exception
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = b(paramActivity, paramILicenseService);
    }
    if (!TextUtils.isEmpty(str))
    {
      paramString = (Bundle)this.f.get(str);
      if (paramString != null) {
        paramActivity = paramString;
      }
    }
    int i;
    do
    {
      do
      {
        return paramActivity;
        i = paramActivity.getPackageManager().getPackageInfo(paramActivity.getPackageName(), 0).versionCode;
        paramString = new Bundle();
        paramString.putString("fuid", str);
        paramString.putString("pkgName", paramActivity.getPackageName());
        paramString.putInt("versionCode", i);
        paramString = paramILicenseService.b(paramString);
        paramILicenseService = paramString.getString("orderid");
        i = paramString.getInt("errcode");
        paramActivity = paramString;
      } while (TextUtils.isEmpty(paramILicenseService));
      paramActivity = paramString;
    } while (i != 5005);
    this.f.put(str, paramString);
    return paramString;
  }
  
  public final String b(Activity arg1, ILicenseService paramILicenseService)
    throws Exception
  {
    String str = paramILicenseService.a().getString("mid");
    if ((!TextUtils.isEmpty(str)) && (TextUtils.equals(str, this.d))) {
      return this.c;
    }
    this.c = null;
    this.d = null;
    MiCommplatform.getInstance().miLogin(???, this.g);
    synchronized (this.a)
    {
      try
      {
        this.a.wait(300000L);
        if (!TextUtils.isEmpty(this.c)) {
          this.d = paramILicenseService.a().getString("mid");
        }
        return this.c;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\util\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */