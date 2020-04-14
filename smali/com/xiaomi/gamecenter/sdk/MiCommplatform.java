package com.xiaomi.gamecenter.sdk;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import cn.com.wali.basetool.log.Logger;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.debug.CustomLogcat;
import com.mi.milink.sdk.base.debug.Tracer;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.data.ClientAppInfo.Builder;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.wali.gamecenter.report.ReportManager;
import com.xiaomi.game.plugin.stat.MiGamePluginStat;
import com.xiaomi.gamecenter.sdk.account.MilinkAccountProps;
import com.xiaomi.gamecenter.sdk.entry.AccountStatus;
import com.xiaomi.gamecenter.sdk.entry.Image;
import com.xiaomi.gamecenter.sdk.entry.LoginType;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfoOffline;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfoOnline;
import com.xiaomi.gamecenter.sdk.entry.ScreenOrientation;
import com.xiaomi.gamecenter.sdk.entry.SdkJarInfo;
import com.xiaomi.gamecenter.sdk.gam.MiliaoInfo;
import com.xiaomi.gamecenter.sdk.milink.MiLinkCommand;
import com.xiaomi.gamecenter.sdk.notice.NoticeManager;
import com.xiaomi.gamecenter.sdk.pay.IndependentPay;
import com.xiaomi.gamecenter.sdk.pay.PaySDK;
import com.xiaomi.gamecenter.sdk.report.ReportData;
import com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow.MiFloatManager;
import com.xiaomi.gamecenter.sdk.ui.mifloat.message.MiMsgManager;
import com.xiaomi.gamecenter.sdk.ui.mifloat.message.d;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import com.xiaomi.gamecenter.sdk.utils.PermissionUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;
import com.xiaomi.gamecenter.sdk.utils.RunEnvironmentCheck;
import com.xiaomi.gamecenter.sdk.utils.c;
import com.xiaomi.gamecenter.sdk.utils.j;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import org.xiaomi.gamecenter.milink.msg.NoticeConfigProtos.SdkType;

public final class MiCommplatform
{
  private static final int APPID_ERROR = 7;
  private static final int CALLBACK_INIT_FINISH = 1000;
  private static final int CALLBACK_SPLASH_END = 1001;
  private static final long CONNECT_TIMEOUT_MILLIS = 8000L;
  private static final long DEFAULT_TIMEOUT_MILLIS = 30000L;
  private static final int EXIT_CHECK = 11;
  private static final long GAME_CONFIG_TIMEOUT_MILLIS = 3000L;
  private static final int INIT_WAIT = 8;
  public static final int INVALID_PAYMENT_METHOD = 9;
  public static boolean IS_LOGGED_IN = false;
  private static final long MAX_RELOGIN_TIMES = 2L;
  private static final String MI_PRODUCTCATALOG = "MiProductCatalog.prop";
  private static final int NO_NETWORK = 10;
  private static String[] PERMISSIONS;
  private static final String PERMISSION_GETACCOUNTS = "android.permission.GET_ACCOUNTS";
  private static final long RELOGIN_TIMEOUT_MILLIS = 6000L;
  private static final int REPORT = 1;
  private static final int SERVICE_ERROR_APP_INFO_NULL = 4;
  private static final int SERVICE_ERROR_FAIL = 5;
  private static final int SERVICE_ERROR_NET_ERROR = 0;
  private static final int SERVICE_ERROR_PERMISSION = 1;
  private static final int SERVICE_ERROR_PERMISSION_REBOOT = 3;
  private static final int SERVICE_ERROR_SIGN_ERROR = 2;
  private static final String SERVICE_FILE_NAME = "MiGameCenterSDKService.apk";
  private static final String SERVICE_NAME = "com.xiaomi.gamecenter.sdk.service";
  static final String SERVICE_PKG_NAME = "com.xiaomi.gamecenter.sdk.service";
  private static final int SO_FILES_CHECK_FAIL = 6;
  private static final String TAG = "MiGameSDK.MiCommplatform";
  private static SdkAccountAdapter accountAdapter;
  static MiAppInfo appInfo;
  private static Handler callbackHandler;
  private static Context ctx;
  private static boolean debugLogin;
  private static boolean debugTierCheck;
  private static Handler delayHandler;
  private static boolean mLogin = false;
  private static boolean mPay = false;
  private static int mReLoginTimes;
  private static ServiceConnection openAppConnection = new ap();
  private static Activity sActivity;
  private static Context sApplication;
  private static String sBase;
  private static boolean sCheckSDKElements;
  private static boolean sCheckSoFiles;
  public static DownloadHandler sDownloadHandler;
  private static volatile MiCommplatform sInstance;
  private static boolean sIsForeground;
  private static boolean sIsOnlyLocal;
  private static k sJarCrashExceptionHandler;
  private static long sLastClickTime;
  public static Activity sLoginActivity;
  public static OnInitProcessListener sOnInitProcessListener;
  public static OnLoginProcessListener sOnLoginProcessListener;
  private static long sStartTime;
  private static AlertDialog sTimeoutAlertDialog;
  public static WxCpCallback sWxCpCallBack;
  private static IGameCenterSDK sdk;
  private static ServiceUpdateHandler serviceUpdateHandler;
  private static Handler toastHandler;
  private Object _Lock_ = new Object();
  private Object _check_service_lock_;
  private ServiceConnection checkLoginConnection = new ar(this);
  private volatile int connect_flag = Integer.MIN_VALUE;
  private ServiceConnection connection = new y(this);
  private IGameCenterSDK loginSdk;
  private Activity mCurrentActivity;
  private Activity mMainActivity;
  private boolean mTouch = false;
  private PackageManager manager;
  private MiliaoInfo miliaoInfo = null;
  private Application.ActivityLifecycleCallbacks sActivityLifecycleCallbacks = new l(this);
  private IServiceCallback serviceCallback = new MiCommplatform.8(this);
  private int service_isntall_ask;
  private long systemTime;
  private String useHeartToken = null;
  
  static
  {
    debugLogin = false;
    debugTierCheck = true;
    IS_LOGGED_IN = false;
    sBase = null;
    sStartTime = System.currentTimeMillis();
    sIsForeground = false;
    sCheckSoFiles = true;
    sCheckSDKElements = true;
    sLastClickTime = 0L;
    mReLoginTimes = 0;
    PERMISSIONS = new String[] { "android.permission.READ_PHONE_STATE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE" };
    sIsOnlyLocal = false;
    callbackHandler = new am(Looper.getMainLooper());
    sDownloadHandler = new DownloadHandler(Looper.getMainLooper());
    toastHandler = new an(Looper.getMainLooper());
    delayHandler = new ao(Looper.getMainLooper());
    serviceUpdateHandler = new ServiceUpdateHandler(Looper.getMainLooper());
  }
  
  private MiCommplatform(Context paramContext, MiAppInfo paramMiAppInfo, OnInitProcessListener paramOnInitProcessListener)
  {
    Logger.a = c.a(paramContext);
    if (sCheckSDKElements)
    {
      RunEnvironmentCheck.a(paramContext);
      RunEnvironmentCheck.b(paramContext);
      RunEnvironmentCheck.c(paramContext);
      RunEnvironmentCheck.a();
      RunEnvironmentCheck.d(paramContext);
      MiGamePluginStat.setCheckInitEnv(false);
    }
    ctx = paramContext;
    Object localObject = paramContext.getApplicationContext();
    sApplication = (Context)localObject;
    ((Application)localObject).registerActivityLifecycleCallbacks(this.sActivityLifecycleCallbacks);
    sOnInitProcessListener = paramOnInitProcessListener;
    appInfo = paramMiAppInfo;
    paramMiAppInfo.setSocialGame(false);
    this.manager = paramContext.getPackageManager();
    paramOnInitProcessListener = new SdkJarInfo();
    localObject = c.b(paramContext, "SDK_JAR_VERSION", "SDK_MI_SP_3.1.2");
    paramOnInitProcessListener.setSdkVersion((String)localObject);
    com.xiaomi.gamecenter.sdk.utils.n.a().a(paramContext, paramOnInitProcessListener, new m(this, paramContext, paramMiAppInfo, (String)localObject));
    GeneralStatInfo.a(paramContext, paramMiAppInfo.getAppId(), NoticeConfigProtos.SdkType.MIGAME.getNumber(), (String)localObject);
    ReporterUtils.init(paramContext, paramMiAppInfo.getAppId());
    ReportData.a((Application)sApplication);
    sJarCrashExceptionHandler = new k(paramContext);
    SDKAccountUtil.a(paramContext);
    accountAdapter = new SdkAccountAdapter(paramContext);
    try
    {
      bd.a().a((Application)sApplication);
    }
    catch (Exception paramOnInitProcessListener)
    {
      try
      {
        Image.init(paramContext);
      }
      catch (Throwable paramOnInitProcessListener)
      {
        try
        {
          Global.init(paramContext, getMilinkAppInfo());
          if (!checkWhetherShowMilinkLog())
          {
            MiLinkLog.getInstance().setFileTracerLevel(48);
            if (CustomLogcat.getCustomTracer() != null) {
              CustomLogcat.getCustomTracer().setEnabled(false);
            }
          }
        }
        catch (Throwable paramOnInitProcessListener)
        {
          try
          {
            a.a(paramContext, new File(paramContext.getFilesDir(), "xiaomi.cfg"));
            PackgeInfoHelper.a(paramContext);
          }
          catch (Throwable paramOnInitProcessListener)
          {
            try
            {
              ReportManager.Init(paramContext);
            }
            catch (Throwable paramOnInitProcessListener)
            {
              try
              {
                ReporterUtils.FastXmsdkReport(paramContext, 2020);
                if (delayHandler != null) {
                  delayHandler.sendMessageDelayed(delayHandler.obtainMessage(1), 3000L);
                }
              }
              catch (Exception paramOnInitProcessListener)
              {
                try
                {
                  for (;;)
                  {
                    reqSdkInit(paramContext, paramMiAppInfo);
                    bh.a().a(paramMiAppInfo, new n(this));
                    getConfigFromServer();
                    Log.e("checksdkvc", "sdk vc:3.1.2_12710,build time:20191010094407,commitida95dcf2f63bf3ec626d0eeff85fc57e3b24703b4");
                    com.xiaomi.gamecenter.sdk.ui.mifloat.utils.b.a(paramContext, new MiAppEntry(paramMiAppInfo));
                    paramMiAppInfo = new MiAppEntry(paramMiAppInfo);
                    NoticeManager.a().a(paramContext, new o(this, paramMiAppInfo));
                    return;
                    paramOnInitProcessListener = paramOnInitProcessListener;
                    Logger.c("MiGameSDK.MiCommplatform", paramOnInitProcessListener.getMessage());
                    continue;
                    paramOnInitProcessListener = paramOnInitProcessListener;
                    Logger.c("MiGameSDK.MiCommplatform", paramOnInitProcessListener.getMessage());
                    continue;
                    paramOnInitProcessListener = paramOnInitProcessListener;
                    paramOnInitProcessListener.printStackTrace();
                    continue;
                    paramOnInitProcessListener = paramOnInitProcessListener;
                    paramOnInitProcessListener.printStackTrace();
                    continue;
                    paramOnInitProcessListener = paramOnInitProcessListener;
                    paramOnInitProcessListener.printStackTrace();
                  }
                  paramOnInitProcessListener = paramOnInitProcessListener;
                  paramOnInitProcessListener.printStackTrace();
                }
                catch (Exception paramOnInitProcessListener)
                {
                  for (;;)
                  {
                    paramOnInitProcessListener.printStackTrace();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  @Deprecated
  public static void Init(Context paramContext, MiAppInfo paramMiAppInfo)
  {
    Init(paramContext, paramMiAppInfo, null);
  }
  
  public static void Init(Context paramContext, MiAppInfo paramMiAppInfo, OnInitProcessListener paramOnInitProcessListener)
  {
    if (sInstance == null)
    {
      if (paramMiAppInfo == null) {
        throw new NullPointerException("MiAppInfo is Null");
      }
      try
      {
        if (sInstance == null) {
          sInstance = new MiCommplatform(paramContext, paramMiAppInfo, paramOnInitProcessListener);
        }
        return;
      }
      finally {}
    }
    appInfo = paramMiAppInfo;
  }
  
  private static void SendToastAppIDError(String paramString)
  {
    if (toastHandler != null) {
      toastHandler.sendMessage(toastHandler.obtainMessage(7, paramString));
    }
  }
  
  protected static void cancelSendToastServiceConnTimeOutMsg()
  {
    if (toastHandler != null)
    {
      toastHandler.removeMessages(3);
      hideConnectTimeoutAlertDialog();
    }
  }
  
  private void checkFaultNotice(MiAppInfo paramMiAppInfo)
  {
    HyUtils.a().submit(new p(this, paramMiAppInfo));
  }
  
  private boolean checkPermission(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      int i = paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName());
      if (i == 0) {
        bool = true;
      }
      return bool;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  protected static boolean checkServiceVersion(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode;
      int j = PluginVersionCode.a();
      if (i >= j) {
        return true;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  private static boolean checkWhetherShowMilinkLog()
  {
    return new File(Environment.getExternalStorageDirectory().getPath() + File.separator + ".ThisIsJustForOpenMilinkLog").exists();
  }
  
  private static boolean exitCheck()
  {
    long l = System.currentTimeMillis();
    if (l - sLastClickTime > 3000L)
    {
      sLastClickTime = l;
      if (toastHandler != null) {
        toastHandler.sendEmptyMessage(11);
      }
      return false;
    }
    return true;
  }
  
  public static String getChannel(Context paramContext)
  {
    return com.xiaomi.gamecenter.sdk.utils.b.f(paramContext);
  }
  
  static void getConfigFromServer()
  {
    if ((!sIsOnlyLocal) && (HyUtils.f(ctx)) && (checkServiceVersion(ctx)) && (HyUtils.b(ctx)))
    {
      accountAdapter.a(AccountStatus.SERVICE);
      openAppForInit();
    }
    for (;;)
    {
      ArrayList localArrayList = new ArrayList();
      HyUtils.r = localArrayList;
      localArrayList.add("ALIPAY");
      HyUtils.r.add("WXWAP");
      if (callbackHandler != null) {
        callbackHandler.sendEmptyMessage(1000);
      }
      return;
      accountAdapter.a(AccountStatus.LOCAL);
      PaySDK.a(ctx, appInfo.getAppId(), appInfo.getAppKey());
    }
  }
  
  public static MiCommplatform getInstance()
  {
    if (sInstance == null) {
      throw new IllegalStateException("Please call MiCommplatform.Init () in application onCreate() FIRST and the MiappInfo parameter can not be null");
    }
    return sInstance;
  }
  
  public static ClientAppInfo getMilinkAppInfo()
  {
    Object localObject2 = com.xiaomi.gamecenter.sdk.utils.b.f;
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject1 = com.xiaomi.gamecenter.sdk.utils.b.e;
    }
    int j = com.xiaomi.gamecenter.sdk.utils.b.e;
    int i = j;
    if (j == 0) {
      i = j + 100;
    }
    localObject2 = new ClientAppInfo.Builder(20002);
    ((ClientAppInfo.Builder)localObject2).setAppName("misdk");
    ((ClientAppInfo.Builder)localObject2).setPackageName("com.xiaomi.gamecenter.sdk.service");
    if (isMilinkTestInDcfg()) {
      ((ClientAppInfo.Builder)localObject2).setReleaseChannel("TEST");
    }
    for (;;)
    {
      ((ClientAppInfo.Builder)localObject2).setVersionName((String)localObject1);
      ((ClientAppInfo.Builder)localObject2).setVersionCode(i);
      ((ClientAppInfo.Builder)localObject2).setLinkMode(1);
      localObject1 = ((ClientAppInfo.Builder)localObject2).build();
      Logger.b("MiGameSDK.MiCommplatform", "milink is " + ((ClientAppInfo)localObject1).getReleaseChannel());
      return (ClientAppInfo)localObject1;
      ((ClientAppInfo.Builder)localObject2).setReleaseChannel("RELEASE");
    }
  }
  
  public static String getSdkVersion()
  {
    return "SDK_MI_SP_3.1.2";
  }
  
  private static void hideConnectTimeoutAlertDialog()
  {
    if (sTimeoutAlertDialog != null) {
      sTimeoutAlertDialog.dismiss();
    }
  }
  
  private static boolean isMilinkTestInDcfg()
  {
    return c.a(ctx, "MILINK_TEST", "TRUE");
  }
  
  static boolean isSdkServiceExist(Context paramContext)
  {
    return HyUtils.f(paramContext);
  }
  
  private static void login(Activity paramActivity, OnLoginProcessListener paramOnLoginProcessListener, String paramString)
  {
    ArrayList localArrayList;
    if ((sOnInitProcessListener != null) && ("common".equals("base")))
    {
      if ((!sIsOnlyLocal) && (HyUtils.p == 0)) {
        accountAdapter.a(AccountStatus.SERVICE);
      }
      for (;;)
      {
        SDKAccountUtil.a(paramActivity, paramOnLoginProcessListener, LoginType.LOGIN, paramString);
        return;
        if ((HyUtils.s == null) || (HyUtils.s.size() <= 0))
        {
          localArrayList = new ArrayList();
          HyUtils.s = localArrayList;
          localArrayList.add("QQ");
          HyUtils.s.add("MI");
          HyUtils.s.add("WX");
        }
        accountAdapter.a(AccountStatus.LOCAL);
        PaySDK.a(ctx, appInfo.getAppId(), appInfo.getAppKey());
        IndependentPay.a(paramActivity, appInfo.getAppId(), appInfo.getAppKey());
      }
    }
    if ((!sIsOnlyLocal) && (HyUtils.f(ctx)) && (checkServiceVersion(ctx)) && (HyUtils.b(ctx))) {
      if (accountAdapter.a())
      {
        accountAdapter.a(AccountStatus.SERVICE);
        openAppForInit();
      }
    }
    for (;;)
    {
      localArrayList = new ArrayList();
      HyUtils.s = localArrayList;
      localArrayList.add("QQ");
      HyUtils.s.add("MI");
      if (!"common".equals("base")) {
        break;
      }
      HyUtils.s.add("WX");
      break;
      if (accountAdapter.b())
      {
        accountAdapter.a(AccountStatus.LOCAL);
        PaySDK.a(ctx, appInfo.getAppId(), appInfo.getAppKey());
      }
    }
  }
  
  static void miLogin(String paramString)
  {
    ReporterUtils.ChangeIndex();
    HyUtils.d();
    if ((sOnInitProcessListener != null) && (-1 == HyUtils.p) && ("common".equals("base")))
    {
      if (toastHandler != null) {
        toastHandler.sendEmptyMessage(8);
      }
      new Handler().postDelayed(new s(paramString), 3000L);
      return;
    }
    login(sLoginActivity, sOnLoginProcessListener, paramString);
  }
  
  static void miLogin(boolean paramBoolean)
  {
    sIsOnlyLocal = paramBoolean;
    miLogin(null);
  }
  
  private void miLogout(OnLoginProcessListener paramOnLoginProcessListener)
  {
    if (this.mTouch)
    {
      paramOnLoginProcessListener.finishLoginProcess(47530, null);
      return;
    }
    this.mTouch = true;
    HyUtils.a().submit(new t(this, paramOnLoginProcessListener));
  }
  
  private void miWindow(OnPayProcessListener paramOnPayProcessListener)
  {
    if (this.mTouch)
    {
      paramOnPayProcessListener.finishPayProcess(47530);
      return;
    }
    this.mTouch = true;
    HyUtils.a().submit(new u(this, paramOnPayProcessListener));
  }
  
  private static void openApp(MiAppInfo paramMiAppInfo)
  {
    try
    {
      IGameCenterSDK localIGameCenterSDK = sdk;
      if (localIGameCenterSDK == null) {
        return;
      }
      sdk.openAppReportForInit(paramMiAppInfo, ctx.getPackageName());
      return;
    }
    catch (RemoteException paramMiAppInfo)
    {
      paramMiAppInfo.printStackTrace();
      return;
    }
    finally
    {
      ctx.getApplicationContext().unbindService(openAppConnection);
    }
  }
  
  private static boolean openAppForInit()
  {
    if (!HyUtils.f(ctx)) {}
    for (;;)
    {
      return false;
      Object localObject = ctx.getPackageManager();
      try
      {
        if (((PackageManager)localObject).getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode >= 43070)
        {
          localObject = new Intent("com.xiaomi.gamecenter.sdk.service");
          ((Intent)localObject).setPackage("com.xiaomi.gamecenter.sdk.service");
          boolean bool = ctx.getApplicationContext().bindService((Intent)localObject, openAppConnection, 1);
          return bool;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return false;
  }
  
  public static void registerMilinkUrls(String paramString)
  {
    MiLinkCommand.b(paramString);
  }
  
  public static void registerWxCpCallBack(WxCpCallback paramWxCpCallback)
  {
    sWxCpCallBack = paramWxCpCallback;
  }
  
  public static void reportKeyPath(String paramString)
  {
    ReporterUtils.getInstance().xmsdkReportCp(paramString);
  }
  
  private void reqSdkInit(Context paramContext, MiAppInfo paramMiAppInfo)
  {
    HyUtils.a().submit(new al(this, paramMiAppInfo, paramContext));
  }
  
  protected static void sendToastServiceConnTimeOutMsg()
  {
    if (toastHandler != null) {
      toastHandler.sendMessageDelayed(toastHandler.obtainMessage(3), 8000L);
    }
  }
  
  public static void setCheckSDKElements(boolean paramBoolean)
  {
    sCheckSDKElements = paramBoolean;
  }
  
  public static void setDebugPriceTierCheck(boolean paramBoolean)
  {
    debugTierCheck = paramBoolean;
  }
  
  public static void setNeedCheckPayment(boolean paramBoolean)
  {
    RunEnvironmentCheck.a = paramBoolean;
  }
  
  public static void setNeedToCheckSoFiles(boolean paramBoolean)
  {
    sCheckSoFiles = paramBoolean;
  }
  
  private static void showConnectFailAlertDialog()
  {
    Object localObject = new AlertDialog.Builder(sActivity);
    View localView = LayoutInflater.from(sActivity).inflate(ResourceUtils.f(sActivity, "mio_dialog_login_failure"), null);
    Button localButton1 = (Button)localView.findViewById(ResourceUtils.d(sActivity, "btn_left"));
    Button localButton2 = (Button)localView.findViewById(ResourceUtils.d(sActivity, "btn_right"));
    localObject = ((AlertDialog.Builder)localObject).create();
    ((AlertDialog)localObject).show();
    ((AlertDialog)localObject).getWindow().setContentView(localView);
    ((AlertDialog)localObject).getWindow().setGravity(17);
    ((AlertDialog)localObject).setCancelable(false);
    ((AlertDialog)localObject).setCanceledOnTouchOutside(false);
    localButton1.setOnClickListener(new ad((AlertDialog)localObject));
    localButton2.setOnClickListener(new ae());
  }
  
  private static void showConnectTimeoutAlertDialog()
  {
    getInstance().setTouch(false);
    if (sTimeoutAlertDialog == null)
    {
      localObject = new AlertDialog.Builder(sActivity);
      localView = LayoutInflater.from(sActivity).inflate(ResourceUtils.f(sActivity, "mio_dialog_login_time_out"), null);
      localButton1 = (Button)localView.findViewById(ResourceUtils.d(sActivity, "btn_close"));
      localButton2 = (Button)localView.findViewById(ResourceUtils.d(sActivity, "btn_left"));
      localButton3 = (Button)localView.findViewById(ResourceUtils.d(sActivity, "btn_right"));
      localObject = ((AlertDialog.Builder)localObject).create();
      sTimeoutAlertDialog = (AlertDialog)localObject;
      ((AlertDialog)localObject).show();
      ((AlertDialog)localObject).getWindow().setContentView(localView);
      ((AlertDialog)localObject).getWindow().setGravity(17);
      ((AlertDialog)localObject).setCancelable(false);
      ((AlertDialog)localObject).setCanceledOnTouchOutside(false);
      localButton1.setOnClickListener(new af((AlertDialog)localObject));
      localButton2.setOnClickListener(new ag((AlertDialog)localObject));
      localButton3.setOnClickListener(new ah());
    }
    while (sTimeoutAlertDialog.isShowing())
    {
      Object localObject;
      View localView;
      Button localButton1;
      Button localButton2;
      Button localButton3;
      return;
    }
    sTimeoutAlertDialog.show();
  }
  
  public final boolean canOpenEntrancePage()
  {
    if (!HyUtils.f(ctx)) {}
    for (;;)
    {
      return false;
      PackageManager localPackageManager = ctx.getPackageManager();
      try
      {
        int i = localPackageManager.getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode;
        if (i >= 8) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
      }
    }
    return false;
  }
  
  protected final int checkAndConnect(Context paramContext, boolean paramBoolean)
  {
    if ((paramContext instanceof Activity)) {
      sActivity = (Activity)paramContext;
    }
    if (appInfo == null)
    {
      Log.e("MiCommplatform", "Please call MiCommplatform.Init () in application onCreate() and the MiappInfo parameter can not be null");
      if (toastHandler != null) {
        toastHandler.sendEmptyMessage(4);
      }
      return -1;
    }
    for (;;)
    {
      synchronized (this._Lock_)
      {
        this.connect_flag = Integer.MIN_VALUE;
        Intent localIntent = new Intent("com.xiaomi.gamecenter.sdk.service");
        localIntent.setPackage("com.xiaomi.gamecenter.sdk.service");
        sendToastServiceConnTimeOutMsg();
        paramBoolean = paramContext.getApplicationContext().bindService(localIntent, this.connection, 1);
        if (paramBoolean) {
          try
          {
            this._Lock_.wait();
            if (sdk == null) {
              break;
            }
            Log.i(">>>", "sdk.ConnService");
            switch (this.connect_flag)
            {
            case -1: 
            default: 
              if (toastHandler != null)
              {
                cancelSendToastServiceConnTimeOutMsg();
                toastHandler.sendEmptyMessage(1);
              }
            case 0: 
              return this.connect_flag;
            }
          }
          catch (InterruptedException paramContext)
          {
            paramContext.printStackTrace();
            continue;
          }
        }
      }
      if (toastHandler != null)
      {
        cancelSendToastServiceConnTimeOutMsg();
        toastHandler.sendMessage(toastHandler.obtainMessage(1));
      }
      return -1;
      if (toastHandler != null)
      {
        cancelSendToastServiceConnTimeOutMsg();
        sendToastServiceSignError();
      }
    }
    if (toastHandler != null) {
      toastHandler.sendEmptyMessage(5);
    }
    return -1;
  }
  
  public final boolean checkBonus(Activity paramActivity, RewardListener paramRewardListener)
  {
    String str = paramActivity.getPackageName();
    if (paramActivity.getClass().getName().equals(RunEnvironmentCheck.a(paramActivity, str)))
    {
      Object localObject = paramActivity.getIntent();
      if ((localObject == null) || (paramRewardListener == null)) {
        return false;
      }
      localObject = ((Intent)localObject).getStringExtra("com.xiaomi.gamecenter.launcher_from");
      ReporterUtils.getInstance().xmsdkReportBonus((String)localObject, 2050);
      try
      {
        paramActivity = paramActivity.getPackageManager().getPackageInfo(str, 0);
        if (paramActivity == null)
        {
          ReporterUtils.getInstance().xmsdkReport(2055);
          return false;
        }
      }
      catch (PackageManager.NameNotFoundException paramActivity)
      {
        ReporterUtils.getInstance().xmsdkReportBonus(paramActivity.getMessage(), 2053);
        paramActivity.printStackTrace();
        ReporterUtils.getInstance().xmsdkReport(2055);
        return false;
      }
      HyUtils.a().submit(new ac(this, (String)localObject, paramActivity, paramRewardListener));
      return true;
    }
    ReporterUtils.getInstance().xmsdkReport(2054);
    throw new IllegalStateException("Your activity is not entry activity");
  }
  
  protected final boolean checkUserChanged(Activity paramActivity, int paramInt)
  {
    if ((paramInt == -51) && (HyUtils.e(paramActivity)))
    {
      appInfo.setAccount(null);
      paramActivity.runOnUiThread(new v(this));
      return true;
    }
    return false;
  }
  
  protected final void disconnect()
  {
    try
    {
      if (sdk == null) {
        return;
      }
      ctx.getApplicationContext().unbindService(this.connection);
      sdk.unregistCallBack(this.serviceCallback, getVersion());
      Intent localIntent = new Intent("com.xiaomi.gamecenter.sdk.service");
      localIntent.setPackage("com.xiaomi.gamecenter.sdk.service");
      boolean bool = ctx.getApplicationContext().stopService(localIntent);
      sdk = null;
      Log.i(">>>>", "disconnect:" + bool);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public final String generateCpOrderId()
  {
    return getMD5(UUID.randomUUID().toString().getBytes());
  }
  
  final SdkAccountAdapter getAccountAdapter()
  {
    return accountAdapter;
  }
  
  public final Context getApplicationContext()
  {
    return sApplication;
  }
  
  public final Activity getCurrentActivity()
  {
    return this.mCurrentActivity;
  }
  
  final String getFuidFromService()
  {
    Object localObject6 = null;
    Object localObject5 = null;
    Object localObject4 = null;
    Object localObject1 = localObject6;
    localObject3 = localObject5;
    try
    {
      if (HyUtils.f(sApplication))
      {
        localObject1 = localObject6;
        localObject3 = localObject5;
        if (HyUtils.b(sApplication))
        {
          localObject3 = localObject5;
          int i = sApplication.getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode;
          localObject3 = localObject5;
          Logger.a("MiGameSDK.MiCommplatform", "versionCode " + i);
          localObject1 = localObject6;
          if (i > 520000)
          {
            localObject1 = localObject4;
            localObject3 = localObject5;
            if (checkAndConnect(ctx, false) == 0)
            {
              localObject1 = localObject4;
              localObject3 = localObject5;
              if (sdk != null)
              {
                localObject3 = localObject5;
                localObject1 = sdk.getFuid(appInfo.getAppId());
              }
            }
            localObject3 = localObject1;
            disconnect();
          }
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Logger.a("MiGameSDK.MiCommplatform", "getFuidFromService error", localException);
        Object localObject2 = localObject3;
      }
    }
    Logger.a("MiGameSDK.MiCommplatform", "getFuidFromService " + (String)localObject1);
    return (String)localObject1;
  }
  
  final String getMD5(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject).update(paramArrayOfByte);
        paramArrayOfByte = new StringBuffer();
        localObject = ((MessageDigest)localObject).digest();
        int i = 0;
        while (i < localObject.length)
        {
          int k = localObject[i];
          int j = k;
          if (k < 0) {
            j = k + 256;
          }
          if (j < 25) {
            paramArrayOfByte.append("0");
          }
          paramArrayOfByte.append(Integer.toHexString(j));
          i += 1;
        }
        paramArrayOfByte = paramArrayOfByte.toString().substring(5, 30);
        return paramArrayOfByte;
      }
      catch (NoSuchAlgorithmException paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public final Activity getMainActivity()
  {
    return this.mMainActivity;
  }
  
  public final MiAccountInfo getMiAccountInfo()
  {
    if (appInfo != null) {
      return appInfo.getAccount();
    }
    return null;
  }
  
  public final MiAppInfo getMiAppInfo()
  {
    return appInfo;
  }
  
  final MilinkAccountProps getMilinkAccountProps()
  {
    Object localObject6 = null;
    Object localObject5 = null;
    Object localObject4 = null;
    Object localObject1 = localObject6;
    localObject3 = localObject5;
    try
    {
      if (HyUtils.f(sApplication))
      {
        localObject1 = localObject6;
        localObject3 = localObject5;
        if (HyUtils.b(sApplication))
        {
          localObject3 = localObject5;
          int i = sApplication.getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode;
          localObject3 = localObject5;
          Logger.a("MiGameSDK.MiCommplatform", "versionCode " + i);
          localObject1 = localObject6;
          if (i >= 590000)
          {
            localObject1 = localObject4;
            localObject3 = localObject5;
            if (checkAndConnect(ctx, false) == 0)
            {
              localObject1 = localObject4;
              localObject3 = localObject5;
              if (sdk != null)
              {
                localObject3 = localObject5;
                localObject1 = sdk.getMilinkProps(appInfo.getAppId());
              }
            }
            localObject3 = localObject1;
            disconnect();
          }
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Logger.d("getMilinkProps error");
        localException.printStackTrace();
        Object localObject2 = localObject3;
      }
    }
    Logger.d("getMilinkProps " + localObject1);
    return (MilinkAccountProps)localObject1;
  }
  
  protected final IGameCenterSDK getSDKService()
  {
    return sdk;
  }
  
  protected final String getVersion()
  {
    return "3010002";
  }
  
  @Deprecated
  public final boolean isMiAccountLogin()
  {
    boolean bool2 = false;
    if (ctx == null) {
      throw new NullPointerException("Context is Null, please init SDK");
    }
    if (!checkPermission(ctx, "android.permission.GET_ACCOUNTS")) {
      throw new SecurityException("XiaomiSDK lacks any of android.permission.GET_ACCOUNTS");
    }
    if (accountAdapter.b())
    {
      Account[] arrayOfAccount = AccountManager.get(ctx).getAccountsByType("com.xiaomi");
      boolean bool1 = bool2;
      if (arrayOfAccount != null)
      {
        bool1 = bool2;
        if (arrayOfAccount.length > 0) {
          bool1 = true;
        }
      }
      return bool1;
    }
    accountAdapter.a();
    return false;
  }
  
  protected final boolean isTopActivity(Activity paramActivity)
  {
    String str = paramActivity.getPackageName();
    paramActivity = ((ActivityManager)paramActivity.getSystemService("activity")).getRunningTasks(1);
    return (paramActivity.size() > 0) && (str.equals(((ActivityManager.RunningTaskInfo)paramActivity.get(0)).topActivity.getPackageName()));
  }
  
  public final void miAppExit(Activity paramActivity, OnExitListner paramOnExitListner)
  {
    if (accountAdapter == null) {
      if (exitCheck())
      {
        paramOnExitListner.onExit(10001);
        MiFloatManager.b();
        MiFloatManager.j();
      }
    }
    do
    {
      return;
      if (!accountAdapter.a()) {
        break;
      }
    } while (!exitCheck());
    paramOnExitListner.onExit(10001);
    MiFloatManager.b();
    MiFloatManager.j();
    return;
    if (this.mTouch)
    {
      paramOnExitListner.onExit(47530);
      return;
    }
    this.mTouch = true;
    HyUtils.a().submit(new aa(this, paramActivity, paramOnExitListner));
  }
  
  @Deprecated
  public final void miChangeAccountLogin(Activity paramActivity, OnLoginProcessListener paramOnLoginProcessListener)
  {
    
    if (this.mTouch)
    {
      paramOnLoginProcessListener.finishLoginProcess(47530, null);
      return;
    }
    this.mTouch = true;
    SDKAccountUtil.a(paramActivity, paramOnLoginProcessListener, LoginType.CHANGEACCOUNT, null);
  }
  
  public final void miLogin(Activity paramActivity, OnLoginProcessListener paramOnLoginProcessListener)
  {
    miLogin(paramActivity, paramOnLoginProcessListener, null);
  }
  
  public final void miLogin(Activity paramActivity, OnLoginProcessListener paramOnLoginProcessListener, String paramString)
  {
    if (this.mTouch)
    {
      paramOnLoginProcessListener.finishLoginProcess(47530, null);
      return;
    }
    this.mTouch = true;
    sLoginActivity = paramActivity;
    sOnLoginProcessListener = paramOnLoginProcessListener;
    HyUtils.a().submit(new r(this, paramOnLoginProcessListener, paramString));
  }
  
  public final int miUniPay(Activity paramActivity, MiBuyInfo paramMiBuyInfo, OnPayProcessListener paramOnPayProcessListener)
  {
    return miUniPay(paramActivity, paramMiBuyInfo, paramOnPayProcessListener, null, null);
  }
  
  public final int miUniPay(Activity paramActivity, MiBuyInfo paramMiBuyInfo, OnPayProcessListener paramOnPayProcessListener, String paramString1, String paramString2)
  {
    if (!j.a(paramActivity))
    {
      if (toastHandler != null) {
        toastHandler.sendEmptyMessage(10);
      }
      paramOnPayProcessListener.finishPayProcess(47533);
      return 0;
    }
    if (this.mTouch)
    {
      paramOnPayProcessListener.finishPayProcess(47530);
      return -1;
    }
    this.mTouch = true;
    SDKPaymentUtil.a(paramActivity, paramMiBuyInfo, paramOnPayProcessListener, appInfo);
    return 0;
  }
  
  @Deprecated
  public final int miUniPayOffline(Activity paramActivity, MiBuyInfoOffline paramMiBuyInfoOffline, OnPayProcessListener paramOnPayProcessListener)
    throws RemoteException
  {
    if (this.mTouch)
    {
      paramOnPayProcessListener.finishPayProcess(47530);
      return -1;
    }
    this.mTouch = true;
    MiBuyInfo localMiBuyInfo = new MiBuyInfo();
    localMiBuyInfo.setCpOrderId(paramMiBuyInfoOffline.getCpOrderId());
    localMiBuyInfo.setProductCode(paramMiBuyInfoOffline.getProductCode());
    localMiBuyInfo.setCount(paramMiBuyInfoOffline.getCount());
    SDKPaymentUtil.a(paramActivity, localMiBuyInfo, paramOnPayProcessListener, appInfo);
    return 0;
  }
  
  @Deprecated
  public final int miUniPayOnline(Activity paramActivity, MiBuyInfoOnline paramMiBuyInfoOnline, Bundle paramBundle, OnPayProcessListener paramOnPayProcessListener)
    throws RemoteException
  {
    if (this.mTouch)
    {
      paramOnPayProcessListener.finishPayProcess(47530);
      return -1;
    }
    this.mTouch = true;
    MiBuyInfo localMiBuyInfo = new MiBuyInfo();
    localMiBuyInfo.setCpOrderId(paramMiBuyInfoOnline.getCpOrderId());
    localMiBuyInfo.setAmount(paramMiBuyInfoOnline.getMili());
    localMiBuyInfo.setCpUserInfo(paramMiBuyInfoOnline.getCpUserInfo());
    localMiBuyInfo.setExtraInfo(paramBundle);
    SDKPaymentUtil.a(paramActivity, localMiBuyInfo, paramOnPayProcessListener, appInfo);
    return 0;
  }
  
  public final boolean newSDKInstalled(Activity paramActivity)
  {
    boolean bool = true;
    if (checkAndConnect(paramActivity, true) == 0) {}
    for (;;)
    {
      disconnect();
      return bool;
      bool = false;
    }
  }
  
  public final void onMainActivityCreate(Activity paramActivity)
  {
    try
    {
      PermissionUtils.a(paramActivity, PERMISSIONS);
      this.mMainActivity = paramActivity;
      bd.a().a(paramActivity);
      if (isMilinkTestInDcfg()) {
        Global.init(ctx, getMilinkAppInfo());
      }
      checkFaultNotice(appInfo);
      d.a().a(paramActivity);
      d.a().a(new ai(this, paramActivity));
      MiFloatManager.b().a(paramActivity);
      MiAppEntry localMiAppEntry = new MiAppEntry(appInfo);
      com.xiaomi.gamecenter.sdk.ui.mifloat.menu.a.a().a(paramActivity, localMiAppEntry);
      MiMsgManager.a().a(paramActivity);
      return;
    }
    catch (Throwable paramActivity)
    {
      Logger.a("MiGameSDK.MiCommplatform", "onActivityCreate error", paramActivity);
    }
  }
  
  public final void onMainActivityDestory(Activity paramActivity)
  {
    try
    {
      d.a().a(paramActivity);
      MiFloatManager.b().c();
      com.xiaomi.gamecenter.sdk.ui.mifloat.menu.a.a().b();
      return;
    }
    catch (Throwable paramActivity)
    {
      Logger.a("MiGameSDK.MiCommplatform", "onActivityDestory error", paramActivity);
    }
  }
  
  protected final void sendLogToSDKSerivce(String paramString)
  {
    try
    {
      if (sdk == null) {
        return;
      }
      sdk.sendLogToService(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public final void sendToastMsg()
  {
    if (toastHandler != null) {
      toastHandler.sendEmptyMessage(0);
    }
  }
  
  protected final void sendToastServiceSignError()
  {
    if (toastHandler != null) {
      toastHandler.sendEmptyMessage(2);
    }
  }
  
  protected final void setPay(boolean paramBoolean)
  {
    mPay = paramBoolean;
  }
  
  public final void setTouch(boolean paramBoolean)
  {
    this.mTouch = paramBoolean;
  }
  
  public final void submitRoleData(Activity paramActivity, RoleData paramRoleData)
  {
    if (paramRoleData == null) {
      return;
    }
    HyUtils.a().submit(new aj(this, paramActivity, paramRoleData));
  }
  
  public final void updateScreenOrientation(ScreenOrientation paramScreenOrientation)
  {
    appInfo.setOrientation(paramScreenOrientation);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\MiCommplatform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */