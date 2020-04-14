package com.mi.milink.sdk.base;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public abstract class CustomHandlerThread
{
  protected Handler mHandler;
  protected HandlerThread mHandlerThread;
  
  public CustomHandlerThread(String paramString)
  {
    this(paramString, 0);
  }
  
  public CustomHandlerThread(String paramString, int paramInt)
  {
    this.mHandlerThread = new HandlerThread(paramString, paramInt);
    this.mHandlerThread.start();
    this.mHandler = new CustomHandlerThread.1(this, this.mHandlerThread.getLooper());
  }
  
  public void destroy()
  {
    this.mHandlerThread.quit();
  }
  
  public Handler getHandler()
  {
    return this.mHandler;
  }
  
  public HandlerThread getHandlerThread()
  {
    return this.mHandlerThread;
  }
  
  public Looper getLooper()
  {
    return this.mHandlerThread.getLooper();
  }
  
  public Message obtainMessage()
  {
    return this.mHandler.obtainMessage();
  }
  
  public final boolean post(Runnable paramRunnable)
  {
    return this.mHandler.post(paramRunnable);
  }
  
  public final boolean postDelayed(Runnable paramRunnable, long paramLong)
  {
    return this.mHandler.postDelayed(paramRunnable, paramLong);
  }
  
  protected abstract void processMessage(Message paramMessage);
  
  public void removeMessage(int paramInt)
  {
    this.mHandler.removeMessages(paramInt);
  }
  
  public void removeMessage(int paramInt, Object paramObject)
  {
    this.mHandler.removeMessages(paramInt, paramObject);
  }
  
  public void sendMessage(Message paramMessage)
  {
    this.mHandler.sendMessage(paramMessage);
  }
  
  public void sendMessageDelayed(Message paramMessage, long paramLong)
  {
    this.mHandler.sendMessageDelayed(paramMessage, paramLong);
  }
  
  public void setHandler(Handler paramHandler)
  {
    if (paramHandler != null)
    {
      if (paramHandler.getLooper() != getLooper()) {
        throw new IllegalArgumentException("Looper对象不一致，请使用CustomHandlerThread.getLooper()构造Handler对象");
      }
      this.mHandler = paramHandler;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\CustomHandlerThread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */