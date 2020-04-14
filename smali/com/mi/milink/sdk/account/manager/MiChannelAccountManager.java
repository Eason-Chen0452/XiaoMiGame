package com.mi.milink.sdk.account.manager;

import android.text.TextUtils;
import com.mi.milink.sdk.account.ChannelAccount;
import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ClientActionEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ClientActionEvent.EventType;
import org.greenrobot.eventbus.EventBus;

public class MiChannelAccountManager
{
  public static boolean hasInit = false;
  private String TAG = MiChannelAccountManager.class.getSimpleName();
  private int appId;
  private EventBus channelEventBus;
  private IAccount mCurrentAccount;
  private int mCurrentAccountType = 2;
  private boolean mIsLogining = false;
  
  public MiChannelAccountManager(EventBus paramEventBus, int paramInt)
  {
    MiLinkLog.v(this.TAG, "new MiChannelAccountManager()");
    this.channelEventBus = paramEventBus;
    this.mCurrentAccount = new ChannelAccount(paramInt);
    hasInit = true;
  }
  
  public byte getBusinessEncByMode()
  {
    switch (this.mCurrentAccountType)
    {
    default: 
      return 0;
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
  
  public int getKeepAliveTime()
  {
    return this.mCurrentAccount.getKeepAliveTime();
  }
  
  public String getUserId()
  {
    return this.mCurrentAccount.getUserId();
  }
  
  public void initUserChannelMode()
  {
    MiLinkLog.v(this.TAG, "initUseChannelMode");
    this.mCurrentAccount.generateServiceTokenAndSSecurity();
    String str1 = this.mCurrentAccount.getUserId();
    String str2 = this.mCurrentAccount.getB2Token();
    if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
    {
      this.channelEventBus.post(new MiLinkEventForSimpleChannel.ClientActionEvent(MiLinkEventForSimpleChannel.ClientActionEvent.EventType.ClientRequestCheckConnection));
      return;
    }
    this.channelEventBus.post(new MiLinkEventForSimpleChannel.ClientActionEvent(MiLinkEventForSimpleChannel.ClientActionEvent.EventType.ClientRequestLogin));
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
  
  public void logoff()
  {
    this.mIsLogining = false;
    this.mCurrentAccount.logoffMiLink();
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
  
  public void setKeepAliveTime(int paramInt)
  {
    this.mCurrentAccount.setKeepAliveTime(paramInt);
  }
  
  public void setUserId(String paramString)
  {
    this.mCurrentAccount.setUserId(paramString);
  }
  
  public void userLogoff()
  {
    this.channelEventBus.post(new MiLinkEventForSimpleChannel.ClientActionEvent(MiLinkEventForSimpleChannel.ClientActionEvent.EventType.ClientRequestLogoff));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\account\manager\MiChannelAccountManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */