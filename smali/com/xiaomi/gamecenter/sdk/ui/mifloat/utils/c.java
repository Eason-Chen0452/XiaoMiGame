package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import android.content.Context;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.protocol.MessageRequest_MiFloatMenuConfig;

final class c
  implements Runnable
{
  c(Context paramContext, MiAppEntry paramMiAppEntry) {}
  
  public final void run()
  {
    try
    {
      new MessageRequest_MiFloatMenuConfig(this.a, this.b).a();
      return;
    }
    catch (Exception localException)
    {
      Logger.c("MiGameSDK.MiFloatHelper", localException.getMessage());
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */