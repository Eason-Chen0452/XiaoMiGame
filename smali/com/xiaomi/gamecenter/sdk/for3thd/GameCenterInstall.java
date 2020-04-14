package com.xiaomi.gamecenter.sdk.for3thd;

import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;

public final class GameCenterInstall
{
  public static class InstallCallback
    extends IInstallCallback.Stub
  {
    private File file = null;
    private Handler mHandler;
    
    public InstallCallback(String paramString, Handler paramHandler)
    {
      if (!TextUtils.isEmpty(paramString)) {
        this.file = new File(paramString);
      }
      this.mHandler = paramHandler;
    }
    
    public void packageInstalled(int paramInt)
      throws RemoteException
    {
      Log.e("updatetest", "packageInstalled ...returnCode: " + paramInt);
      if (paramInt == 1) {}
      try
      {
        if ((this.file == null) || (!this.file.exists())) {
          return;
        }
        this.file.delete();
        Log.e("updatetest", "install success: " + this.file.getAbsolutePath());
        localMessage = new Message();
        localMessage.what = 5;
        localMessage.obj = "安装完成";
        this.mHandler.sendMessage(localMessage);
        return;
      }
      catch (Exception localException)
      {
        Message localMessage;
        localException.printStackTrace();
      }
      if ((this.file != null) && (this.file.exists()))
      {
        Log.e("updatetest", "install failed: " + this.file.getAbsolutePath());
        localMessage = new Message();
        localMessage.what = 6;
        this.mHandler.sendMessage(localMessage);
        return;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\for3thd\GameCenterInstall.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */