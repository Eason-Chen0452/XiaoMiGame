package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.ResourceUtil;
import java.util.Iterator;
import java.util.List;

public class RunEnvironmentCheck
{
  public static boolean a = true;
  public static final String[] b = { "com.xiaomi.permission.AUTH_SERVICE", "android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.ACCESS_WIFI_STATE", "com.xiaomi.sdk.permission.PAYMENT" };
  public static final String[] c = { "com.xiaomi.permission.AUTH_SERVICE", "android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.ACCESS_WIFI_STATE" };
  public static final String[] d = { "com.xiaomi.gamecenter.sdk.ui.MiActivity", "com.xiaomi.gamecenter.sdk.ui.PayListActivity", "com.xiaomi.hy.dj.HyDjActivity", "com.alipay.sdk.app.H5PayActivity", "com.xiaomi.gamecenter.sdk.ui.notice.NoticeActivity", "com.xiaomi.gamecenter.sdk.ui.fault.ViewFaultNoticeActivity" };
  public static final String[] e = { "mio_progress_horizontal", "mio_selector_dialog_cancel_blue", "mio_selector_dialog_cancel_white", "mio_selector_login_item", "mio_selector_mipayment_item", "mio_shape_alert_background", "mio_shape_auto_login_dialog_bg", "mio_shape_auto_login_dialog_change_button", "mio_shape_dialog_cancel_blue_nor", "mio_shape_dialog_cancel_blue_press", "mio_shape_dialog_cancel_white_nor", "mio_shape_dialog_cancel_white_press", "mio_shape_last_login_tip", "mio_shape_login_normal", "mio_shape_login_press", "mio_shape_simple_dialog_left_btn", "mio_shape_simple_dialog_right_btn", "mio_auto_login_icon", "mio_close_button", "mio_close", "mio_connect_failure", "mio_download_failure", "mio_icon_login_wait", "mio_img_title", "mio_install", "mio_list_item_single_bg_60_n", "mio_list_item_single_bg_60_p", "mio_login_failure", "mio_login_msg_back", "mio_login_third_account_mi", "mio_login_third_account_mi_pure", "mio_login_third_account_qq", "mio_login_third_account_qq_pure", "mio_login_third_account_wb", "mio_login_third_account_wechat_disable", "mio_login_third_account_wechat", "mio_login_third_account_weibo_disable", "mio_login_third_account_weibo", "mio_login_third_account_wx", "mio_login_wait_default_icon", "mio_mipay_payment_alipay", "mio_mipay_payment_arrow", "mio_mipay_payment_wx", "mio_time_out", "mio_wechat_disable", "mio_weibo_disable" };
  public static final String[] f = { "iv_logo", "tv_name", "tv_purchase_name", "tv_price", "ll_container", "lv_pay" };
  public static final String[] g = { "mio_item_pay", "mio_auto_login", "mio_dialog_cancel_login", "mio_dialog_download_failure", "mio_dialog_install", "mio_dialog_login_error", "mio_dialog_login_failure", "mio_dialog_login_time_out", "mio_download_progress", "mio_login", "mio_activity_paylist", "mio_layout_splash", "mio_notice_image_dialog", "mio_notice_text_dialog", "mio_layout_float_view", "mifloat_menu_layout", "mifloat_meun_icon_item", "float_new_msg_layout", "float_window_close", "float_window_hide" };
  private static final String[] h = { "android.arch.core.internal.FastSafeIterableMap", "android.arch.core.util.Function", "android.arch.lifecycle.Lifecycle", "android.arch.lifecycle.Observer", "android.arch.lifecycle.ReportFragment", "android.arch.lifecycle.ViewModel", "android.support.v4.app.Fragment", "android.support.annotation.AnimatorRes", "android.support.v4.app.ActivityCompat", "android.support.design.widget.CoordinatorLayout", "android.support.v4.app.AppLaunchChecker", "android.support.v4.app.BackStackState" };
  private static String i = "请确保在AndroidManifest.xml正确声明了以下Provider:\n<provider\n            android:name=\"android.support.v4.content.FileProvider\"\n            android:authorities=\"${applicationId}.fileprovider\"\n            android:exported=\"false\"\n            android:grantUriPermissions=\"true\">\n            <meta-data\n                android:name=\"android.support.FILE_PROVIDER_PATHS\"\n                android:resource=\"@xml/file_paths\" />\n        </provider>";
  
  public static String a(Context paramContext, String paramString)
  {
    Object localObject = new Intent("android.intent.action.MAIN", null);
    ((Intent)localObject).addCategory("android.intent.category.LAUNCHER");
    ((Intent)localObject).addFlags(268435456);
    paramContext = paramContext.getPackageManager().queryIntentActivities((Intent)localObject, 0).iterator();
    while (paramContext.hasNext())
    {
      localObject = (ResolveInfo)paramContext.next();
      if (((ResolveInfo)localObject).activityInfo.packageName.equals(paramString)) {
        return ((ResolveInfo)localObject).activityInfo.name;
      }
    }
    return "no " + paramString;
  }
  
  public static void a()
  {
    CheckApkElementUtil.a(h);
  }
  
  public static void a(Context paramContext)
  {
    if (a) {
      CheckApkElementUtil.a(paramContext, b);
    }
    for (;;)
    {
      CheckApkElementUtil.b(paramContext, d);
      return;
      CheckApkElementUtil.a(paramContext, c);
    }
  }
  
  public static void b(Context paramContext)
  {
    CheckApkElementUtil.a(paramContext, e, f, g);
    if (ResourceUtil.d(paramContext, "RecyclerView") == null) {
      throw new IllegalStateException("请确保引入了mio_support_values.xml，并且App的R文件未被混淆");
    }
  }
  
  public static void c(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    paramContext = paramContext.getPackageName();
    Object localObject;
    int n;
    int m;
    int j;
    label171:
    int k;
    try
    {
      localObject = localPackageManager.getPackageInfo(paramContext, 4).services;
      if (localObject == null) {
        break label344;
      }
      n = localObject.length;
      m = 0;
      j = 0;
      if (m >= n) {
        break label362;
      }
      Iterator localIterator = localObject[m];
      if ((!localIterator.name.equals("com.xiaomi.gamecenter.push.GamePushService")) || (!localIterator.exported)) {
        break label341;
      }
      localIterator = localPackageManager.queryIntentServices(new Intent(paramContext + ".MI_GAME_PUSH"), 64).iterator();
      ResolveInfo localResolveInfo;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localResolveInfo = (ResolveInfo)localIterator.next();
      } while ((!localResolveInfo.serviceInfo.packageName.equals(paramContext)) || (!localResolveInfo.serviceInfo.name.equals("com.xiaomi.gamecenter.push.GamePushService")));
      j = 1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    if (k == 0) {
      throw new IllegalStateException("请确保在AndroidManifest.xml正确声明了以下Service:com.xiaomi.gamecenter.push.GamePushService (注意是:你的包名.MI_GAME_PUSH)");
    }
    label215:
    label341:
    label344:
    label349:
    label355:
    label362:
    label367:
    label373:
    label380:
    label383:
    for (;;)
    {
      return;
      paramContext = localPackageManager.getPackageInfo(paramContext, 2).receivers;
      if (paramContext != null)
      {
        n = paramContext.length;
        m = 0;
        j = 0;
        if (m >= n) {
          break label380;
        }
        localObject = paramContext[m];
        if ((((ActivityInfo)localObject).name.equals("com.xiaomi.gamecenter.push.OnClickReceiver")) && (((ActivityInfo)localObject).exported))
        {
          localObject = localPackageManager.queryBroadcastReceivers(new Intent("com.xiaomi.hy.push.client.ONCLICK"), 64).iterator();
          while (((Iterator)localObject).hasNext()) {
            if (((ResolveInfo)((Iterator)localObject).next()).activityInfo.name.equals("com.xiaomi.gamecenter.push.OnClickReceiver"))
            {
              j = 1;
              break;
            }
          }
        }
      }
      for (;;)
      {
        if (k != 0) {
          break label383;
        }
        throw new IllegalStateException("请确保在AndroidManifest.xml正确声明了以下Receivers:com.xiaomi.gamecenter.push.OnClickReceiver");
        break label367;
        break label373;
        k = 0;
        continue;
        break label349;
        break label355;
        k = 0;
        break label171;
        k = j;
        if (j != 0) {
          break label171;
        }
        m += 1;
        break;
        k = j;
        break label171;
        k = j;
        if (j == 0)
        {
          m += 1;
          break label215;
          k = j;
        }
      }
    }
  }
  
  public static void d(Context paramContext)
  {
    int m = 0;
    Object localObject = paramContext.getPackageManager();
    String str = paramContext.getPackageName();
    try
    {
      paramContext = ((PackageManager)localObject).getPackageInfo(str, 8).providers;
      if ((paramContext != null) && (paramContext.length != 0)) {
        break label53;
      }
      throw new IllegalStateException(i);
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return;
    label53:
    localObject = str + ".fileprovider";
    int n = paramContext.length;
    int j = 0;
    for (;;)
    {
      int k = m;
      if (j < n)
      {
        str = paramContext[j];
        if (("android.support.v4.content.FileProvider".equals(str.name)) && (((String)localObject).equals(str.authority)) && (!str.exported) && (str.grantUriPermissions)) {
          k = 1;
        }
      }
      else
      {
        if (k != 0) {
          break;
        }
        throw new IllegalStateException(i);
      }
      j += 1;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\RunEnvironmentCheck.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */