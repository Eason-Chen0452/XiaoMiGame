package com.wali.gamecenter.report;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class ReportManager$1
  extends Handler
{
  ReportManager$1(ReportManager paramReportManager, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (ReportManager.access$000() == paramMessage.what) {
      ReportManager.getInstance().forceSendReport();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\ReportManager$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */