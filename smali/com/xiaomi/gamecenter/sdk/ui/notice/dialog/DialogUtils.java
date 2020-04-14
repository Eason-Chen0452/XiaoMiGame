package com.xiaomi.gamecenter.sdk.ui.notice.dialog;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Build.VERSION;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.bf;
import com.xiaomi.gamecenter.sdk.bg;
import com.xiaomi.gamecenter.sdk.protocol.result.NoticeConfig;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.UrlUtils.a;
import com.xiaomi.gamecenter.sdk.ui.notice.widget.NoticeDialog;
import com.xiaomi.gamecenter.sdk.ui.notice.widget.NoticeImageDialogView;
import com.xiaomi.gamecenter.sdk.ui.notice.widget.NoticeTextDialogView;

public class DialogUtils
{
  private static AlertDialog a;
  
  public static int a(NoticeConfig paramNoticeConfig)
  {
    int i = -1;
    if (paramNoticeConfig != null) {
      i = paramNoticeConfig.b();
    }
    return i;
  }
  
  public static void a()
  {
    try
    {
      if ((a != null) && (a.isShowing())) {
        a.dismiss();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static void a(AlertDialog paramAlertDialog)
  {
    paramAlertDialog = paramAlertDialog.getWindow();
    paramAlertDialog.setDimAmount(0.8F);
    paramAlertDialog.getDecorView().setPadding(0, 0, 0, 0);
    paramAlertDialog.getDecorView().setBackgroundColor(0);
    paramAlertDialog.setGravity(17);
    WindowManager.LayoutParams localLayoutParams = paramAlertDialog.getAttributes();
    localLayoutParams.width = -1;
    paramAlertDialog.setAttributes(localLayoutParams);
  }
  
  public static void a(Context paramContext, NoticeConfig paramNoticeConfig, bg parambg, bf parambf, UrlUtils.a parama)
  {
    Logger.a("DialogUtils", "showNoticeDialog : " + paramNoticeConfig);
    int i = paramNoticeConfig.b();
    if (i == 0) {
      if (a(paramContext))
      {
        Logger.a("DialogUtils", "showNoticeTextDialog");
        parama = new NoticeTextDialogView(paramContext);
        parama.a(parambg);
        parama.a(paramNoticeConfig);
        paramContext = new NoticeDialog(paramContext);
        parama.a(paramContext);
        parama.a(parambf);
        paramContext.setCancelable(false);
        paramContext.show();
        paramContext.setContentView(parama);
        a(paramContext);
        a = paramContext;
      }
    }
    do
    {
      do
      {
        return;
        if (i != 2) {
          break;
        }
      } while (!a(paramContext));
      Logger.a("DialogUtils", "showNoticeSchemeDialog");
      localObject = new NoticeTextDialogView(paramContext);
      ((NoticeTextDialogView)localObject).a(parambg);
      ((NoticeTextDialogView)localObject).a(parama);
      ((NoticeTextDialogView)localObject).a(paramNoticeConfig);
      paramContext = new NoticeDialog(paramContext);
      ((NoticeTextDialogView)localObject).a(paramContext);
      ((NoticeTextDialogView)localObject).a(parambf);
      paramContext.setCancelable(false);
      paramContext.show();
      paramContext.setContentView((View)localObject);
      a(paramContext);
      a = paramContext;
      return;
    } while ((i != 1) || (!a(paramContext)));
    Logger.a("DialogUtils", "showNoticeImageDialog");
    Object localObject = new NoticeImageDialogView(paramContext);
    ((NoticeImageDialogView)localObject).a(parambg);
    ((NoticeImageDialogView)localObject).a(parama);
    ((NoticeImageDialogView)localObject).a(paramNoticeConfig);
    paramContext = new NoticeDialog(paramContext);
    ((NoticeImageDialogView)localObject).a(paramContext);
    ((NoticeImageDialogView)localObject).a(parambf);
    paramContext.setCancelable(false);
    paramContext.show();
    paramContext.setContentView((View)localObject);
    a = paramContext;
  }
  
  private static boolean a(Context paramContext)
  {
    Logger.a("DialogUtils", "checkContext " + paramContext);
    if (paramContext == null) {
      return false;
    }
    if ((paramContext instanceof Activity))
    {
      Logger.a("DialogUtils", "isFinishing " + ((Activity)paramContext).isFinishing());
      if (((Activity)paramContext).isFinishing()) {
        return false;
      }
      if (Build.VERSION.SDK_INT >= 17)
      {
        Logger.a("DialogUtils", "isDestroyed " + ((Activity)paramContext).isDestroyed());
        if (((Activity)paramContext).isDestroyed()) {
          return false;
        }
      }
    }
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\dialog\DialogUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */