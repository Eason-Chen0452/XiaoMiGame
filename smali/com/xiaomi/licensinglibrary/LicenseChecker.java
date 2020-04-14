package com.xiaomi.licensinglibrary;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.OnInitProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.ScreenOrientation;
import com.xiaomi.gamecenter.sdk.ui.MiAlertDialog;
import com.xiaomi.gamecenter.sdk.ui.MiProgressDialog;
import com.xiaomi.licensinglibrary.util.LicenseValidator;
import com.xiaomi.licensinglibrary.util.PreferenceUtil;

public class LicenseChecker
{
  private static final String LICENSE_CHECKER_LOG_TYPE = "licensechecker";
  private static final int MSG_ID_BUY_GAME = 4;
  private static final int MSG_ID_ESTABLISH_CONNECTION = 3;
  private static final int MSG_ID_SHOWTOAST = 5;
  private static final int MSG_ID_VALIDATOR_CHECK = 1;
  private static final String SERVICE_NAME = "com.xiaomi.licensinglibrary.authfileinfo";
  private static final String SERVICE_PKG_NAME = "com.xiaomi.gamecenter.sdk.service";
  private static final String TAG = "MiGameSDK";
  private static final int sCHECK_BUY_RET_COUNT = 30;
  private final Activity mActivity;
  private String mAppId = null;
  private LicenseCheckerCallback mCallback = null;
  private volatile boolean mChecking = false;
  private ILicenseService mService;
  private LicenseValidator mValidator = null;
  private ValidatorHandler mValidatorHandler;
  private ServiceConnection mValidatorServiceConn = new a(this);
  private a purchaseWindow = null;
  
  public LicenseChecker(Activity paramActivity, String paramString1, String paramString2, String paramString3, LicenseCheckerCallback paramLicenseCheckerCallback, OnInitProcessListener paramOnInitProcessListener)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString3)) || (paramLicenseCheckerCallback == null) || (paramActivity == null) || (TextUtils.isEmpty(paramString2))) {
      throw new IllegalArgumentException("The Argument is illegal.");
    }
    MiAppInfo localMiAppInfo = new MiAppInfo();
    localMiAppInfo.setAppId(paramString1);
    localMiAppInfo.setAppKey(paramString2);
    localMiAppInfo.setOrientation(ScreenOrientation.vertical);
    MiCommplatform.Init(paramActivity, localMiAppInfo, paramOnInitProcessListener);
    this.mActivity = paramActivity;
    paramActivity = new HandlerThread("xiaomi_validator_background_thread");
    paramActivity.start();
    this.mValidatorHandler = new ValidatorHandler(paramActivity.getLooper());
    this.mValidator = new LicenseValidator(this.mActivity, paramString3);
    this.mCallback = paramLicenseCheckerCallback;
    this.mAppId = paramString1;
    this.purchaseWindow = new a((byte)0);
  }
  
  private void cleanupService()
  {
    this.mChecking = false;
    if (this.mService != null) {}
    try
    {
      this.mActivity.unbindService(this.mValidatorServiceConn);
      this.mService = null;
      if (this.purchaseWindow != null) {
        this.purchaseWindow.a();
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        Log.e("MiGameSDK", "Unable to unbind from licensing service (already unbound)");
      }
    }
  }
  
  private void handleServiceConnectionError(LicenseValidator paramLicenseValidator)
  {
    try
    {
      cleanupService();
      return;
    }
    finally
    {
      paramLicenseValidator = finally;
      throw paramLicenseValidator;
    }
  }
  
  /* Error */
  public void checkAccess()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 64	com/xiaomi/licensinglibrary/LicenseChecker:mChecking	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 130	com/xiaomi/licensinglibrary/LicenseChecker:mValidatorHandler	Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;
    //   18: iconst_3
    //   19: invokevirtual 191	com/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler:removeMessages	(I)V
    //   22: aload_0
    //   23: getfield 130	com/xiaomi/licensinglibrary/LicenseChecker:mValidatorHandler	Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;
    //   26: iconst_3
    //   27: invokevirtual 195	com/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler:sendEmptyMessage	(I)Z
    //   30: pop
    //   31: goto -20 -> 11
    //   34: astore_2
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_2
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	LicenseChecker
    //   6	2	1	bool	boolean
    //   34	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	34	finally
    //   14	31	34	finally
  }
  
  public void gotoGameCenterGamePage()
  {
    Object localObject = this.mActivity.getPackageName();
    try
    {
      localObject = new Intent("android.intent.action.VIEW", Uri.parse("migamecenter://details?pkgname=" + (String)localObject));
      ((Intent)localObject).addFlags(268435456);
      this.mActivity.startActivity((Intent)localObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onDestroy()
  {
    try
    {
      cleanupService();
      this.mValidatorHandler.getLooper().quit();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void reportLog(String paramString)
  {
    try
    {
      if ((this.mService != null) && (this.mService.asBinder().isBinderAlive())) {
        this.mService.a("licensechecker", paramString, this.mAppId, 150);
      }
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private class ValidatorHandler
    extends Handler
  {
    public ValidatorHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      int i;
      switch (paramMessage.what)
      {
      case 2: 
      default: 
        return;
      case 1: 
        i = paramMessage.arg1;
        paramMessage = paramMessage.obj;
        if ((paramMessage == null) || (!(paramMessage instanceof Boolean))) {
          break;
        }
      }
      for (boolean bool = ((Boolean)paramMessage).booleanValue(); LicenseChecker.this.mValidator != null; bool = false)
      {
        try
        {
          paramMessage = LicenseChecker.this.mService.a();
          if (LicenseChecker.this.mValidator.a(paramMessage))
          {
            LicenseChecker.this.mCallback.allow(0);
            LicenseChecker.this.reportLog("local_verify_success");
            return;
          }
        }
        catch (RemoteException paramMessage)
        {
          LicenseChecker.this.reportLog("license_verify_remoteException");
          Log.w("MiGameSDK", "RemoteException in checkLicense call.", paramMessage);
          LicenseChecker.this.handleServiceConnectionError(LicenseChecker.this.mValidator);
          LicenseChecker.this.mCallback.applicationError(4005);
          return;
          String str = paramMessage.getString("mid");
          localObject1 = null;
          localObject2 = str;
          if (!TextUtils.isEmpty(str)) {
            break label323;
          }
          localObject1 = com.xiaomi.licensinglibrary.util.a.a().b(LicenseChecker.this.mActivity, LicenseChecker.this.mService);
          if (TextUtils.isEmpty((CharSequence)localObject1))
          {
            LicenseChecker.this.reportLog("server_verify_noxiaomiaccount");
            LicenseChecker.this.mCallback.applicationError(4000);
            return;
          }
        }
        catch (Exception paramMessage)
        {
          LicenseChecker.this.reportLog("license_verify_Exception");
          LicenseChecker.this.handleServiceConnectionError(LicenseChecker.this.mValidator);
          LicenseChecker.this.mCallback.applicationError(4005);
          paramMessage.printStackTrace();
          return;
        }
        paramMessage = LicenseChecker.this.mService.a();
        Object localObject2 = paramMessage.getString("mid");
        try
        {
          label323:
          localObject2 = "firstRunOnthisDevice_" + (String)localObject2;
          if (!PreferenceUtil.b(LicenseChecker.this.mActivity, (String)localObject2))
          {
            if (com.xiaomi.licensinglibrary.util.a.a().a(LicenseChecker.this.mActivity, (String)localObject1, LicenseChecker.this.mService).getInt("errcode") == 5004) {
              LicenseChecker.this.reportLog("server_verify_success_newDevice_bind");
            }
            PreferenceUtil.a(LicenseChecker.this.mActivity, (String)localObject2);
          }
        }
        catch (Exception localException)
        {
          int j;
          for (;;)
          {
            localException.printStackTrace();
          }
          LicenseChecker.this.reportLog("server_verify_failed");
          while ((bool) && (i < 30))
          {
            Log.e("MiGameSDK", "handle_Msg_RunChecks count:" + i);
            removeMessages(1);
            paramMessage = obtainMessage(1);
            paramMessage.obj = Boolean.valueOf(true);
            paramMessage.arg1 = (i + 1);
            sendMessageDelayed(paramMessage, 2000L);
            return;
            if (j == 4002)
            {
              paramMessage = LicenseChecker.this.mValidatorHandler.obtainMessage(5, 4002, 0);
              LicenseChecker.this.mValidatorHandler.sendMessage(paramMessage);
              LicenseChecker.this.reportLog("server_verify_networkerror");
              LicenseChecker.this.mActivity.runOnUiThread(new g(this));
              LicenseChecker.this.mCallback.applicationError(4002);
              return;
            }
          }
          LicenseChecker.this.mActivity.runOnUiThread(new h(this));
          return;
        }
        Object localObject1 = LicenseChecker.this.mActivity.getPackageName();
        j = LicenseChecker.this.mActivity.getPackageManager().getPackageInfo(LicenseChecker.this.mActivity.getPackageName(), 0).versionCode;
        localObject2 = new Bundle();
        ((Bundle)localObject2).putString("pkgName", (String)localObject1);
        ((Bundle)localObject2).putString("appId", LicenseChecker.this.mAppId);
        ((Bundle)localObject2).putInt("versionCode", j);
        ((Bundle)localObject2).putInt("validatorsdkvc", 150);
        localObject1 = LicenseChecker.this.mService.a((Bundle)localObject2);
        j = ((Bundle)localObject1).getInt("errcode");
        if (j == 200) {
          if (LicenseChecker.this.mValidator.a((Bundle)localObject1, paramMessage))
          {
            LicenseChecker.this.reportLog("server_verify_success");
            LicenseChecker.this.mActivity.runOnUiThread(new f(this));
            LicenseChecker.this.mCallback.allow(0);
            return;
          }
        }
        if (LicenseChecker.this.mValidator == null) {
          break;
        }
        if (!MiCommplatform.getInstance().newSDKInstalled(LicenseChecker.this.mActivity)) {
          Log.e("MiGameSDK", "New version SDK installed failed.");
        }
        if (LicenseChecker.this.mService == null) {
          try
          {
            paramMessage = new Intent("com.xiaomi.licensinglibrary.authfileinfo");
            paramMessage.setPackage("com.xiaomi.gamecenter.sdk.service");
            if (LicenseChecker.this.mActivity.getApplicationContext().bindService(paramMessage, LicenseChecker.this.mValidatorServiceConn, 1)) {
              break;
            }
            Log.e("MiGameSDK", "Could not bind to service.");
            LicenseChecker.this.handleServiceConnectionError(LicenseChecker.this.mValidator);
            paramMessage = LicenseChecker.this.mValidatorHandler.obtainMessage(5, 1002, 0);
            LicenseChecker.this.mValidatorHandler.sendMessage(paramMessage);
            LicenseChecker.this.mCallback.applicationError(1002);
            return;
          }
          catch (Exception paramMessage)
          {
            paramMessage.printStackTrace();
            return;
          }
        }
        removeMessages(1);
        sendEmptyMessage(1);
        return;
        try
        {
          i = com.xiaomi.licensinglibrary.util.a.a().a(LicenseChecker.this.mActivity, LicenseChecker.this.mService);
          Log.e("MiGameSDK", "handle_Msg_BUY_GAME ret:" + i);
          LicenseChecker.this.reportLog("buy_license_ret_" + i);
          if ((i == 0) || (i == 5004))
          {
            removeMessages(1);
            paramMessage = obtainMessage(1);
            paramMessage.obj = Boolean.valueOf(true);
            paramMessage.arg1 = 0;
            sendMessage(paramMessage);
            LicenseChecker.this.mActivity.runOnUiThread(new i(this));
            return;
          }
        }
        catch (Exception paramMessage)
        {
          paramMessage.printStackTrace();
          return;
        }
        paramMessage = LicenseChecker.this.mValidatorHandler.obtainMessage(5, i, 0);
        LicenseChecker.this.mValidatorHandler.sendMessage(paramMessage);
        LicenseChecker.this.mCallback.dontAllow(1000);
        return;
        i = paramMessage.arg1;
        LicenseChecker.this.mActivity.runOnUiThread(new e(this, i));
        return;
      }
    }
  }
  
  private final class a
  {
    private AlertDialog b = null;
    private ProgressDialog c = null;
    
    private a() {}
    
    public final void a()
    {
      try
      {
        if (this.c != null)
        {
          if (this.c.isShowing()) {
            this.c.dismiss();
          }
          this.c = null;
        }
        if (this.b != null)
        {
          if (this.b.isShowing()) {
            this.b.dismiss();
          }
          this.b = null;
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    
    public final void a(int paramInt)
    {
      a();
      String str = "";
      switch (paramInt)
      {
      }
      for (;;)
      {
        if (!TextUtils.isEmpty(str)) {
          Toast.makeText(LicenseChecker.this.mActivity, str, 1).show();
        }
        return;
        str = "你已经购买过该游戏";
        continue;
        str = "创建订单失败";
        continue;
        str = "购买失败";
        continue;
        str = "无法使用网络，请检查你的网络连接状态";
        continue;
        str = "未安装小米游戏中心福利助手!";
      }
    }
    
    public final void a(Context paramContext)
    {
      a();
      paramContext = MiAlertDialog.a(paramContext);
      paramContext.setMessage("购买该游戏后，你才能使用该游戏");
      paramContext.setCancelable(true);
      paramContext.setOnCancelListener(new b(this));
      paramContext.setNegativeButton(17039360, new c(this));
      paramContext.setPositiveButton("购买", new d(this));
      this.b = paramContext.create();
      try
      {
        this.b.show();
        return;
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    }
    
    public final void a(Context paramContext, String paramString)
    {
      a();
      this.c = MiProgressDialog.a(paramContext, paramString);
      this.c.setCancelable(true);
      try
      {
        this.c.show();
        return;
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\LicenseChecker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */