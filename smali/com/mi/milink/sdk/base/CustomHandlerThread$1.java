package com.mi.milink.sdk.base;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class CustomHandlerThread$1
  extends Handler
{
  CustomHandlerThread$1(CustomHandlerThread paramCustomHandlerThread, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    try
    {
      this.this$0.processMessage(paramMessage);
      return;
    }
    catch (Exception paramMessage)
    {
      paramMessage.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\CustomHandlerThread$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */