package com.mi.milink.sdk.account.manager;

import android.text.TextUtils;
import com.mi.milink.sdk.account.AnonymousAccount;
import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.account.MiAccount;
import com.mi.milink.sdk.base.os.timer.AlarmClockService;
import com.mi.milink.sdk.config.HeartBeatManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.ClientActionEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ClientActionEvent.EventType;
import org.greenrobot.eventbus.EventBus;

public class MiAccountManager
{
  public static final int ACCOUNT_TYPE_ANONYMOUS = 1;
  public static final int ACCOUNT_TYPE_CHANNEL = 2;
  public static final int ACCOUNT_TYPE_STANDARD = 0;
  private static MiAccountManager INSTANCE;
  private static final String TAG = MiAccountManager.class.getSimpleName();
  private boolean mAllowAnonymousMode = false;
  private IAccount mCurrentAccount = MiAccount.getInstance();
  private int mCurrentAccountType = 0;
  private boolean mIsLogining = false;
  private boolean mIsUploadRegIdToServer = false;
  private volatile String mMiPush_RegId = null;
  private boolean mPassportInit = false;
  
  public static MiAccountManager getInstance()
  {
    if (INSTANCE == null) {}
    try
    {
      if (INSTANCE == null) {
        INSTANCE = new MiAccountManager();
      }
      return INSTANCE;
    }
    finally {}
  }
  
  private void switchAccountTypeMode(int paramInt)
  {
    MiLinkLog.d(TAG, "switchAccountTypeMode turn to " + paramInt);
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this.mCurrentAccountType = 0;
      this.mCurrentAccount = MiAccount.getInstance();
      return;
    case 1: 
      this.mCurrentAccountType = 1;
      this.mCurrentAccount = AnonymousAccount.getInstance();
      return;
    }
    this.mCurrentAccountType = 2;
    this.mCurrentAccount = AnonymousAccount.getInstance();
  }
  
  public boolean appHasLogined()
  {
    return !TextUtils.isEmpty(this.mCurrentAccount.getServiceToken());
  }
  
  public byte getBusinessEncByMode()
  {
    switch (this.mCurrentAccountType)
    {
    default: 
      return 0;
    case 1: 
      return 8;
    case 0: 
      return 2;
    }
    return 10;
  }
  
  public IAccount getCurrentAccount()
  {
    return this.mCurrentAccount;
  }
  
  public int getCurrentAccountType()
  {
    return this.mCurrentAccountType;
  }
  
  public String getMiPushRegId()
  {
    return this.mMiPush_RegId;
  }
  
  public boolean getPassportInit()
  {
    MiLinkLog.w(TAG, "getPassportInit mPassportInit=" + this.mPassportInit);
    return this.mPassportInit;
  }
  
  public String getUserId()
  {
    return this.mCurrentAccount.getUserId();
  }
  
  public boolean hasUploadRegIdToServer()
  {
    return this.mIsUploadRegIdToServer;
  }
  
  public void initUseAnonymousMode()
  {
    MiLinkLog.v(TAG, "initUseAnonymousMode");
    this.mAllowAnonymousMode = true;
    switchAccountTypeMode(1);
    this.mCurrentAccount.generateServiceTokenAndSSecurity();
    String str1 = this.mCurrentAccount.getUserId();
    String str2 = this.mCurrentAccount.getB2Token();
    if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
    {
      EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientRequestCheckConnection));
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientRequestLogin));
  }
  
  public void initUserChannelMode()
  {
    MiLinkLog.v(TAG, "initUseChannelMode");
    this.mAllowAnonymousMode = false;
    switchAccountTypeMode(2);
    this.mCurrentAccount.generateServiceTokenAndSSecurity();
    String str1 = this.mCurrentAccount.getUserId();
    String str2 = this.mCurrentAccount.getB2Token();
    if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
    {
      EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientRequestCheckConnection));
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientRequestLogin));
  }
  
  public boolean isAllowAnonymousMode()
  {
    return this.mAllowAnonymousMode;
  }
  
  public boolean isAnonymousModeCurrent()
  {
    return this.mCurrentAccountType == 1;
  }
  
  public boolean isChannelModCurrent()
  {
    return this.mCurrentAccountType == 2;
  }
  
  public boolean isLogining()
  {
    try
    {
      boolean bool = this.mIsLogining;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void login(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramArrayOfByte != null) {}
    for (;;)
    {
      try
      {
        int i = paramArrayOfByte.length;
        String str1 = String.format("login start,st=%s,sSecurity=%s,fastLoginExtra.length=%d", new Object[] { paramString2, paramString3, Integer.valueOf(i) });
        MiLinkLog.w(TAG, str1 + " passportInit:" + paramBoolean);
        switchAccountTypeMode(0);
        if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString3)))
        {
          MiLinkLog.v(TAG, "login but argu is wrong,cancel!!!");
          return;
          i = -1;
          continue;
        }
        str1 = this.mCurrentAccount.getUserId();
        if ((!TextUtils.isEmpty(str1)) && (!str1.equals(paramString1))) {
          EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientNotSameUserLogin));
        }
        String str2 = this.mCurrentAccount.getServiceToken();
        String str3 = this.mCurrentAccount.getSSecurity();
        String str4 = this.mCurrentAccount.getB2Token();
        MiLinkLog.d(TAG, "b2Token=" + str4);
        if ((!TextUtils.isEmpty(str1)) && (str1.equals(paramString1)) && (str2.equals(paramString2)) && (str3.equals(paramString3)) && (!TextUtils.isEmpty(str4)))
        {
          MiLinkLog.d(TAG, "login but mB2Token is not empty");
          this.mCurrentAccount.setFastLoginExtra(paramArrayOfByte);
          this.mCurrentAccount.dataChange();
          EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientRequestCheckConnection));
          continue;
        }
        this.mCurrentAccount.setUserId(paramString1);
      }
      finally {}
      this.mCurrentAccount.setServiceToken(paramString2);
      this.mCurrentAccount.setSSecurity(paramString3);
      this.mCurrentAccount.setFastLoginExtra(paramArrayOfByte);
      if (!this.mPassportInit) {
        this.mPassportInit = paramBoolean;
      }
      this.mCurrentAccount.dataChange();
      EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientRequestLogin));
    }
  }
  
  public void logoff()
  {
    this.mIsLogining = false;
    this.mCurrentAccount.logoff();
    HeartBeatManager.getInstance().saveConfig();
    if (this.mAllowAnonymousMode)
    {
      int i = this.mCurrentAccountType;
      switchAccountTypeMode(1);
      if (i == 0) {
        EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientRequestLogin));
      }
    }
  }
  
  public void logoffMiLink()
  {
    this.mIsLogining = false;
    this.mCurrentAccount.logoffMiLink();
  }
  
  public boolean milinkHasLogined()
  {
    return !TextUtils.isEmpty(this.mCurrentAccount.getB2Token());
  }
  
  public void setAnonymousModeSwitch(boolean paramBoolean)
  {
    this.mAllowAnonymousMode = paramBoolean;
  }
  
  public void setHasUploadRegIdToServer(boolean paramBoolean)
  {
    this.mIsUploadRegIdToServer = paramBoolean;
  }
  
  public void setIsLogining(boolean paramBoolean)
  {
    try
    {
      this.mIsLogining = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void setMipushRegId(String paramString)
  {
    try
    {
      MiLinkLog.v(TAG, "setMiPushRegId:" + paramString);
      if ((!TextUtils.isEmpty(paramString)) && (!paramString.equals(this.mMiPush_RegId)))
      {
        this.mMiPush_RegId = paramString;
        this.mIsUploadRegIdToServer = false;
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void setPassportInit(boolean paramBoolean)
  {
    MiLinkLog.w(TAG, "setPassportInit b=" + paramBoolean);
    this.mPassportInit = paramBoolean;
  }
  
  public void setUserId(String paramString)
  {
    this.mCurrentAccount.setUserId(paramString);
  }
  
  public void userLogoff()
  {
    AlarmClockService.stop();
    EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientRequestLogoff));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\account\manager\MiAccountManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */