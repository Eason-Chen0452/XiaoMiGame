package com.mi.milink.sdk.client;

import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.mipush.MiPushManager.MiPushRegisterListener;

final class MiLinkClient$1
  implements MiPushManager.MiPushRegisterListener
{
  public final void onSetMiPushRegId(String paramString)
  {
    MiAccountManager.getInstance().setMipushRegId(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\MiLinkClient$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */