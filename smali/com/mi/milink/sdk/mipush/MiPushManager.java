package com.mi.milink.sdk.mipush;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.data.Option;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.xiaomi.mipush.sdk.Logger;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.mipush.sdk.MiPushMessage;

public class MiPushManager
{
  private static MiPushManager INSTANCE;
  public static final String PREF_KEY_ALIAS = "MIPUSH_ALIAS";
  public static final String PREF_KEY_REGID = "MIPUSH_REG_ID2";
  private static final String TAG = "MiPushManager";
  private MiPushMessageListener l = null;
  private Runnable mAcquireWakeLockRunnable = new MiPushManager.4(this);
  private String mAlias;
  private Handler mHandler;
  private MiPushRegisterListener mMiPushRegisterListener;
  private String mRegId;
  private Runnable mReleaseWakeLockRunnable = new MiPushManager.3(this);
  private PowerManager.WakeLock mWakeLock;
  private boolean registing = false;
  private String userId;
  
  private MiPushManager()
  {
    try
    {
      this.mHandler = new Handler(Global.getMainLooper());
      this.mRegId = Option.getString("MIPUSH_REG_ID2", "");
      this.mAlias = Option.getString("MIPUSH_ALIAS", "");
      MiLinkLog.w("MiPushManager", "MiPushManager() mRegId=" + this.mRegId);
      MiPushManager.1 local1 = new MiPushManager.1(this);
      Logger.setLogger(Global.getContext(), local1);
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public static MiPushManager getInstance()
  {
    if (INSTANCE == null) {}
    try
    {
      if (INSTANCE == null) {
        INSTANCE = new MiPushManager();
      }
      return INSTANCE;
    }
    finally {}
  }
  
  private void tryWakeLock(int paramInt)
  {
    if (this.mHandler != null)
    {
      this.mHandler.removeCallbacks(this.mReleaseWakeLockRunnable);
      this.mHandler.post(this.mAcquireWakeLockRunnable);
      this.mHandler.postDelayed(this.mReleaseWakeLockRunnable, paramInt);
    }
  }
  
  public void bindAliasByUserId()
  {
    try
    {
      if (!TextUtils.isEmpty(this.userId)) {
        MiPushClient.setAlias(Global.getContext(), this.userId, null);
      }
      this.registing = false;
      return;
    }
    finally {}
  }
  
  public void clearAlias()
  {
    MiLinkLog.w("MiPushManager", "clearAlias ");
    this.mAlias = "";
    Option.putString("MIPUSH_ALIAS", this.mAlias).apply();
  }
  
  public void clearNotification(int paramInt)
  {
    if (paramInt < 0)
    {
      MiPushClient.clearNotification(Global.getContext());
      return;
    }
    MiPushClient.clearNotification(Global.getContext(), paramInt);
  }
  
  public void logoff()
  {
    try
    {
      MiLinkLog.w("MiPushManager", "mipush logoff mAlias:" + this.mAlias);
      if (!TextUtils.isEmpty(this.mAlias)) {
        MiPushClient.unsetAlias(Global.getContext(), this.mAlias, null);
      }
      this.mAlias = "";
      Option.putString("MIPUSH_ALIAS", this.mAlias).apply();
      this.mRegId = "";
      Option.putString("MIPUSH_REG_ID2", this.mRegId).apply();
      return;
    }
    finally {}
  }
  
  public void onNotificationMessageArrived(Context paramContext, MiPushMessage paramMiPushMessage)
  {
    if (this.l != null)
    {
      tryWakeLock(500);
      this.l.onNotificationMessageArrived(paramContext, paramMiPushMessage);
    }
  }
  
  public void onNotificationMessageClicked(Context paramContext, MiPushMessage paramMiPushMessage)
  {
    if (this.l != null)
    {
      tryWakeLock(500);
      this.l.onNotificationMessageClicked(paramContext, paramMiPushMessage);
    }
  }
  
  public void onReceivePassThroughMessage(Context paramContext, MiPushMessage paramMiPushMessage)
  {
    if (this.l != null)
    {
      tryWakeLock(500);
      this.l.onReceivePassThroughMessage(paramContext, paramMiPushMessage);
    }
  }
  
  public void registerMiPush(String paramString, MiPushRegisterListener paramMiPushRegisterListener)
  {
    try
    {
      this.userId = paramString;
      this.mMiPushRegisterListener = paramMiPushRegisterListener;
      registerMiPush(false);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void registerMiPush(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        MiLinkLog.w("MiPushManager", "clearRegid==true");
        this.mRegId = "";
        if (!TextUtils.isEmpty(this.mRegId))
        {
          if (TextUtils.isEmpty(this.userId))
          {
            MiLinkLog.w("MiPushManager", " userId==null & mRegId!=null,register cancel");
            return;
          }
          if ((!TextUtils.isEmpty(this.mAlias)) && (this.mAlias.equals(this.userId)))
          {
            MiLinkLog.w("MiPushManager", "mRegId and mAlias not null,register cancel");
            continue;
          }
        }
        MiLinkLog.w("MiPushManager", "request registerMiPush registing=" + this.registing);
      }
      finally {}
      if (this.registing)
      {
        MiLinkLog.w("MiPushManager", "mipush is already registing now ,cancel;");
      }
      else
      {
        this.registing = true;
        this.mHandler.postDelayed(new MiPushManager.2(this), 20000L);
        if (!TextUtils.isEmpty(this.mRegId)) {
          break;
        }
        String str1 = Global.getClientAppInfo().getMiPushAppId();
        String str2 = Global.getClientAppInfo().getMiPushAppKey();
        if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
        {
          MiLinkLog.w("MiPushManager", "register mipush appid=" + str1 + ",appkey=" + str2);
          MiPushClient.registerPush(Global.getContext(), str1, str2);
        }
        if (TextUtils.isEmpty(this.userId)) {
          this.registing = false;
        }
      }
    }
    if (!TextUtils.isEmpty(this.userId))
    {
      if (!this.userId.equals(this.mAlias)) {
        break label286;
      }
      MiLinkLog.w("MiPushManager", "mMiPush_RegAlias == mUserId,no need register");
    }
    for (;;)
    {
      this.registing = false;
      break;
      label286:
      bindAliasByUserId();
    }
  }
  
  public void setAlias(String paramString)
  {
    MiLinkLog.w("MiPushManager", "setMiPushRegId alias=" + paramString);
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.equals(this.mAlias)))
    {
      this.mAlias = paramString;
      Option.putString("MIPUSH_ALIAS", this.mAlias).apply();
    }
  }
  
  public void setMessageListener(MiPushMessageListener paramMiPushMessageListener)
  {
    this.l = paramMiPushMessageListener;
  }
  
  public void setMiPushRegId(String paramString)
  {
    MiLinkLog.w("MiPushManager", "setMiPushRegId regId=" + paramString);
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.equals(this.mRegId)))
    {
      this.mRegId = paramString;
      Option.putString("MIPUSH_REG_ID2", this.mRegId).apply();
      if (this.mMiPushRegisterListener != null) {
        this.mMiPushRegisterListener.onSetMiPushRegId(paramString);
      }
    }
  }
  
  public void setMiPushRegisterListener(MiPushRegisterListener paramMiPushRegisterListener)
  {
    this.mMiPushRegisterListener = paramMiPushRegisterListener;
  }
  
  public void setRegisting(boolean paramBoolean)
  {
    try
    {
      this.registing = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static abstract interface MiPushRegisterListener
  {
    public abstract void onSetMiPushRegId(String paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\mipush\MiPushManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */