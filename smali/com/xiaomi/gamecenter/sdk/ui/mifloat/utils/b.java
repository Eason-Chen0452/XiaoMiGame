package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import cn.com.wali.basetool.log.Logger;
import com.google.protobuf.GeneratedMessage;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.PluginVersionCode;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.milink.MilinkAccount;
import com.xiaomi.gamecenter.sdk.ui.UiUtils;
import com.xiaomi.gamecenter.sdk.ui.UiUtils.SchemeType;
import com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow.MiFloatManager;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.Downloader;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import java.net.URLEncoder;
import java.util.concurrent.ExecutorService;

public final class b
{
  private static void a(Context paramContext, Intent paramIntent)
  {
    Activity localActivity = MiCommplatform.getInstance().getMainActivity();
    if (localActivity != null) {
      localActivity.startActivity(paramIntent);
    }
    while ((paramContext instanceof Activity)) {
      return;
    }
    paramIntent.addFlags(268435456);
    paramContext.startActivity(paramIntent);
  }
  
  public static void a(Context paramContext, MiAppEntry paramMiAppEntry)
  {
    HyUtils.a().submit(new c(paramContext, paramMiAppEntry));
  }
  
  private static boolean a()
  {
    Activity localActivity = MiFloatManager.b().a();
    Downloader localDownloader = com.xiaomi.gamecenter.sdk.ui.mifloat.menu.a.a().c();
    if (localDownloader == null) {}
    while ((!localDownloader.e()) && (localDownloader.d() != 2)) {
      return false;
    }
    Logger.a("MiGameSDK.MiFloatHelper", "download task is running");
    if (localActivity != null) {
      localActivity.runOnUiThread(new j(localActivity));
    }
    return true;
  }
  
  public static boolean a(Context paramContext)
  {
    try
    {
      boolean bool = HyUtils.f(paramContext);
      int i = HyUtils.d(paramContext);
      int j;
      if ((bool) && (i < 550000)) {
        j = PluginVersionCode.a();
      }
      return i < j;
    }
    catch (Exception paramContext)
    {
      Logger.a("MiGameSDK.MiFloatHelper", "showFloatInSDK error", paramContext);
    }
    return true;
  }
  
  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    Object localObject1 = null;
    try
    {
      if (UiUtils.a(paramString1) == UiUtils.SchemeType.HTTP)
      {
        paramString2 = new Intent("android.intent.action.VIEW");
        paramString2.setData(Uri.parse(paramString1));
        a(paramContext, paramString2);
        return true;
      }
      if (d(paramContext))
      {
        boolean bool = a();
        if (!bool)
        {
          try
          {
            paramContext = MiCommplatform.getInstance().getMainActivity();
            Logger.c("MiGameSDK.MiFloatHelper", "activity " + paramContext);
            localObject4 = new AlertDialog.Builder(paramContext);
            paramString1 = LayoutInflater.from(paramContext).inflate(ResourceUtils.f(paramContext, "mio_dialog_download_service"), null);
            localObject1 = (Button)paramString1.findViewById(ResourceUtils.d(paramContext, "btn_close"));
            localObject2 = (Button)paramString1.findViewById(ResourceUtils.d(paramContext, "btn_left"));
            localObject3 = (Button)paramString1.findViewById(ResourceUtils.d(paramContext, "btn_right"));
            TextView localTextView = (TextView)paramString1.findViewById(ResourceUtils.d(paramContext, "tv_info"));
            int i = ResourceUtils.b(paramContext, "ask_download_service");
            localTextView.setText(paramContext.getResources().getString(i, new Object[] { paramString2 }));
            paramString2 = ((AlertDialog.Builder)localObject4).create();
            paramString2.show();
            paramString2.getWindow().setContentView(paramString1);
            paramString2.getWindow().setGravity(17);
            paramString2.setCancelable(false);
            paramString2.setCanceledOnTouchOutside(false);
            ((Button)localObject2).setOnClickListener(new d(paramString2));
            ((Button)localObject3).setOnClickListener(new e(paramContext, paramString2));
            ((Button)localObject1).setOnClickListener(new f(paramString2));
            return false;
          }
          catch (Exception paramContext)
          {
            for (;;)
            {
              Logger.a("MiGameSDK.MiFloatHelper", "downloadDialog error", paramContext);
            }
          }
          return true;
        }
      }
    }
    catch (Exception paramContext)
    {
      Logger.a("MiGameSDK.MiFloatHelper", "action error", paramContext);
    }
    paramString2 = paramString1;
    if (paramString1.startsWith("migamecenter://"))
    {
      paramString2 = paramString1;
      if (paramString1.startsWith("migamecenter://acc_exchange")) {
        paramString2 = "miservicesdk://open_gamecenter?url=" + URLEncoder.encode(paramString1, "utf-8");
      }
    }
    Object localObject2 = MiCommplatform.getInstance().getMiAppInfo();
    PackgeInfoHelper.a();
    Object localObject3 = PackgeInfoHelper.a(((MiAppInfo)localObject2).getAppId());
    Object localObject4 = MilinkAccount.a(((MiAppInfo)localObject2).getAppId());
    paramString1 = (String)localObject1;
    if (localObject4 != null)
    {
      paramString1 = (String)localObject1;
      if (((MilinkAccount)localObject4).e() != null) {
        paramString1 = cn.com.wali.basetool.utils.a.a(((MilinkAccount)localObject4).e().toByteArray());
      }
    }
    localObject1 = new Intent("android.intent.action.VIEW");
    ((Intent)localObject1).setData(Uri.parse(paramString2));
    ((Intent)localObject1).putExtra("appInfo", (Parcelable)localObject2);
    ((Intent)localObject1).putExtra("pkgName", paramContext.getPackageName());
    ((Intent)localObject1).putExtra("st", k.b().a());
    ((Intent)localObject1).putExtra("milink", paramString1);
    ((Intent)localObject1).putExtra("lastLoginTime", k.b().h());
    ((Intent)localObject1).putExtra("appName", c(paramContext));
    if (localObject3 == AccountType.AccountType_MI) {
      ((Intent)localObject1).putExtra("accountType", 10);
    }
    for (;;)
    {
      ((Intent)localObject1).putExtra("session", k.b().g());
      Logger.a("MiGameSDK.MiFloatHelper", "appInfo " + localObject2);
      Logger.a("MiGameSDK.MiFloatHelper", "pkgName " + paramContext.getPackageName());
      Logger.a("MiGameSDK.MiFloatHelper", "st " + k.b().a());
      Logger.a("MiGameSDK.MiFloatHelper", "milink " + paramString1);
      Logger.a("MiGameSDK.MiFloatHelper", "lastLoginTime " + k.b().h());
      Logger.a("MiGameSDK.MiFloatHelper", "accountType " + localObject3);
      Logger.a("MiGameSDK.MiFloatHelper", "session " + k.b().g());
      Logger.a("MiGameSDK.MiFloatHelper", "intent " + localObject1);
      a(paramContext, (Intent)localObject1);
      break;
      ((Intent)localObject1).putExtra("accountType", ((AccountType)localObject3).ordinal());
    }
  }
  
  /* Error */
  private static String c(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 458	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   6: astore_1
    //   7: aload_1
    //   8: aload_0
    //   9: invokevirtual 344	android/content/Context:getPackageName	()Ljava/lang/String;
    //   12: iconst_0
    //   13: invokevirtual 464	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   16: astore_0
    //   17: aload_1
    //   18: aload_0
    //   19: invokevirtual 468	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   22: checkcast 278	java/lang/String
    //   25: areturn
    //   26: astore_0
    //   27: aconst_null
    //   28: astore_1
    //   29: aload_2
    //   30: astore_0
    //   31: goto -14 -> 17
    //   34: astore_0
    //   35: aload_2
    //   36: astore_0
    //   37: goto -20 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	paramContext	Context
    //   6	23	1	localPackageManager	android.content.pm.PackageManager
    //   1	35	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	26	android/content/pm/PackageManager$NameNotFoundException
    //   7	17	34	android/content/pm/PackageManager$NameNotFoundException
  }
  
  private static boolean d(Context paramContext)
  {
    boolean bool1 = false;
    try
    {
      boolean bool2 = HyUtils.f(paramContext);
      int i = HyUtils.d(paramContext);
      if ((bool2) && (i >= 550000))
      {
        int j = PluginVersionCode.a();
        if (i >= j) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
    catch (Exception paramContext)
    {
      Logger.a("MiGameSDK.MiFloatHelper", "showFloatInSDK error", paramContext);
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */