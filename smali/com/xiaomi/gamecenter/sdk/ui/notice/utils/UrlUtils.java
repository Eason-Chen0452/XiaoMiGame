package com.xiaomi.gamecenter.sdk.ui.notice.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.account.MilinkAccountProps;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.protocol.ProDefine;
import com.xiaomi.gamecenter.sdk.ui.UiUtils;
import com.xiaomi.gamecenter.sdk.ui.UiUtils.SchemeType;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.k;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;

public class UrlUtils
{
  public static void a(Context paramContext, String paramString)
  {
    a(paramContext, paramString, null);
  }
  
  public static void a(Context paramContext, String paramString, a parama)
  {
    if (TextUtils.isEmpty(paramString)) {}
    label331:
    do
    {
      do
      {
        do
        {
          Object localObject1;
          do
          {
            return;
            localObject1 = UiUtils.a(paramString);
            if (localObject1 == UiUtils.SchemeType.HTTP)
            {
              parama = new Intent("android.intent.action.VIEW");
              parama.setData(Uri.parse(paramString));
              paramContext.startActivity(parama);
              return;
            }
            if (localObject1 != UiUtils.SchemeType.GAMECENTER) {
              break label331;
            }
            if (!UiUtils.a(paramContext)) {
              break;
            }
            localObject1 = new Intent("android.intent.action.VIEW");
            if (paramString.startsWith(ProDefine.aS))
            {
              parama = Uri.parse(ProDefine.aS);
              ((Intent)localObject1).putExtra("destUrl", paramString.substring(ProDefine.aT.length()));
              ((Intent)localObject1).addFlags(268435456);
              Object localObject2 = MiCommplatform.getInstance().getMiAppInfo();
              MilinkAccountProps localMilinkAccountProps = k.b().j();
              paramString = parama;
              if (localMilinkAccountProps != null)
              {
                ((Intent)localObject1).putExtra("fuid", Long.valueOf(localMilinkAccountProps.a()));
                ((Intent)localObject1).putExtra("token", localMilinkAccountProps.b());
                ((Intent)localObject1).putExtra("nickname", k.b().f());
                ((Intent)localObject1).putExtra("gamename", UiUtils.b(paramContext));
                PackgeInfoHelper.a();
                localObject2 = PackgeInfoHelper.a(((MiAppInfo)localObject2).getAppId());
                paramString = parama;
                if (localObject2 != null) {
                  ((Intent)localObject1).putExtra("logintype", ((AccountType)localObject2).name());
                }
              }
            }
            for (paramString = parama;; paramString = Uri.parse(paramString))
            {
              ((Intent)localObject1).setData(paramString);
              paramString = MiCommplatform.getInstance().getMainActivity();
              if (paramString == null) {
                break;
              }
              paramString.startActivity((Intent)localObject1);
              return;
            }
          } while ((paramContext instanceof Activity));
          ((Intent)localObject1).addFlags(268435456);
          paramContext.startActivity((Intent)localObject1);
          return;
          paramContext = MiCommplatform.getInstance().getMainActivity();
          new AlertDialog.Builder(paramContext).setTitle("提示").setMessage("未安装游戏中心或游戏中心版本过低，是否使用浏览器查看？").setCancelable(true).setPositiveButton("确定", new b(paramContext)).setNegativeButton("取消", new a()).create().show();
          return;
          if (localObject1 != UiUtils.SchemeType.MISERVICESDK) {
            break;
          }
        } while (UiUtils.a(paramString) != UiUtils.SchemeType.MISERVICESDK);
        paramString = Uri.parse(paramString);
        if (!paramString.getHost().equals("openapp")) {
          break;
        }
        paramString = paramString.getQueryParameter("pkgname");
      } while (TextUtils.isEmpty(paramString));
      paramString = paramContext.getPackageManager().getLaunchIntentForPackage(paramString);
      if (paramString == null) {
        break;
      }
      paramContext.startActivity(paramString);
    } while (parama == null);
    return;
    UiUtils.a(paramContext, "手机未安装该应用", 0);
    return;
    try
    {
      parama = new Intent("android.intent.action.VIEW");
      parama.setData(paramString);
      paramContext.startActivity(parama);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      UiUtils.a(paramContext, "手机未安装游戏服务", 0);
      return;
    }
    Logger.a(paramString);
    UiUtils.a(paramContext, "暂不支持这个链接", 1);
  }
  
  public static abstract interface a {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\utils\UrlUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */