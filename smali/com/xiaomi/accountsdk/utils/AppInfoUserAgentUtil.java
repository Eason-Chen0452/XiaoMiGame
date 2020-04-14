package com.xiaomi.accountsdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;

public class AppInfoUserAgentUtil
{
  private final String a;
  private final Context b;
  
  public AppInfoUserAgentUtil(Context paramContext, String paramString)
  {
    this.a = paramString;
    this.b = paramContext;
  }
  
  public static boolean a(String paramString)
  {
    return (paramString != null) && (paramString.contains("APP/"));
  }
  
  public final String a()
  {
    if (this.b == null) {
      localObject2 = this.a;
    }
    do
    {
      return (String)localObject2;
      localObject2 = this.a;
      localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        localObject1 = System.getProperty("http.agent");
      }
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        return null;
      }
      localObject2 = localObject1;
    } while (a((String)localObject1));
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append(" APP/");
    localObject1 = this.b.getPackageName();
    Object localObject3 = ((String)localObject1).split("\\.");
    if (localObject3.length > 2)
    {
      ((StringBuilder)localObject2).append(localObject3[(localObject3.length - 2)]);
      ((StringBuilder)localObject2).append(".");
      ((StringBuilder)localObject2).append(localObject3[(localObject3.length - 1)]);
    }
    for (;;)
    {
      try
      {
        localObject3 = this.b.getPackageManager().getPackageInfo((String)localObject1, 0);
        if (localObject3 != null) {
          ((StringBuilder)localObject2).append(" APPV/").append(((PackageInfo)localObject3).versionCode);
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        AccountLog.f("AppInfoUserAgentUtil", (String)localObject1 + " NameNotFound");
        continue;
      }
      return ((StringBuilder)localObject2).toString();
      ((StringBuilder)localObject2).append((String)localObject1);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\AppInfoUserAgentUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */