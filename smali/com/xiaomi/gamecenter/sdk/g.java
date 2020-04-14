package com.xiaomi.gamecenter.sdk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class g
  implements DialogInterface.OnClickListener
{
  g(DownloadHandler paramDownloadHandler) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MiCommplatform.getConfigFromServer();
    MiCommplatform.miLogin(null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */