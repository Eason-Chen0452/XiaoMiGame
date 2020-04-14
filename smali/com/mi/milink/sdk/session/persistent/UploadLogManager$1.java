package com.mi.milink.sdk.session.persistent;

final class UploadLogManager$1
  implements SessionForUploadLog.UploadLogListener
{
  public final void failed()
  {
    synchronized (UploadLogManager.lock)
    {
      UploadLogManager.lock.notifyAll();
      return;
    }
  }
  
  public final void success()
  {
    UploadLogManager.uploadStatus = true;
    UploadLogManager.mLastUploadTime = System.currentTimeMillis();
    synchronized (UploadLogManager.lock)
    {
      UploadLogManager.lock.notifyAll();
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\UploadLogManager$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */