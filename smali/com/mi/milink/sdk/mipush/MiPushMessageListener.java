package com.mi.milink.sdk.mipush;

import android.content.Context;
import com.xiaomi.mipush.sdk.MiPushMessage;

public abstract interface MiPushMessageListener
{
  public abstract void onNotificationMessageArrived(Context paramContext, MiPushMessage paramMiPushMessage);
  
  public abstract void onNotificationMessageClicked(Context paramContext, MiPushMessage paramMiPushMessage);
  
  public abstract void onReceivePassThroughMessage(Context paramContext, MiPushMessage paramMiPushMessage);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\mipush\MiPushMessageListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */