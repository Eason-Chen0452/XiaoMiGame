package com.xiaomi.gamecenter.sdk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Process;

final class f
  implements DialogInterface.OnClickListener
{
  f(DownloadHandler paramDownloadHandler) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Process.killProcess(Process.myPid());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */