package com.mi.milink.sdk.mipush;

import com.mi.milink.sdk.debug.MiLinkLog;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;

class MiPushManager$1
  implements LoggerInterface
{
  MiPushManager$1(MiPushManager paramMiPushManager) {}
  
  public void log(String paramString)
  {
    MiLinkLog.d("MiPushManager", paramString);
  }
  
  public void log(String paramString, Throwable paramThrowable)
  {
    MiLinkLog.w("MiPushManager", paramString, paramThrowable);
  }
  
  public void setTag(String paramString) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\mipush\MiPushManager$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */