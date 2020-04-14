package com.wali.gamecenter.report.utils;

import android.text.TextUtils;
import java.util.Vector;

public class AutoThreadFactory$TaskQueue
{
  private static final int DEF_MAX_WAIT_TIME = 60000;
  private AutoThreadFactory.TaskQueue.WorkThreads contoller;
  private String name;
  private int priority = 3;
  private long wait_time = 60000L;
  
  AutoThreadFactory$TaskQueue() {}
  
  AutoThreadFactory$TaskQueue(long paramLong, int paramInt, String paramString)
  {
    if ((paramInt <= 0) || (paramInt > 10))
    {
      this.priority = 3;
      if (paramLong >= 60000L) {
        break label61;
      }
    }
    label61:
    for (this.wait_time = 60000L;; this.wait_time = paramLong)
    {
      this.name = paramString;
      return;
      this.priority = paramInt;
      break;
    }
  }
  
  private void checkThreadStatus()
  {
    if (this.contoller == null)
    {
      this.contoller = new AutoThreadFactory.TaskQueue.WorkThreads(this);
      if (!TextUtils.isEmpty(this.name)) {
        this.contoller.setName(this.name);
      }
      this.contoller.setPriority(this.priority);
      this.contoller.start();
    }
    while (AutoThreadFactory.TaskQueue.WorkThreads.access$000(this.contoller)) {
      return;
    }
    this.contoller = null;
    this.contoller = new AutoThreadFactory.TaskQueue.WorkThreads(this);
    if (!TextUtils.isEmpty(this.name)) {
      this.contoller.setName(this.name);
    }
    this.contoller.setPriority(this.priority);
    this.contoller.start();
  }
  
  public void appendTask(Runnable paramRunnable)
  {
    checkThreadStatus();
    if (this.contoller != null) {
      this.contoller.append(paramRunnable);
    }
  }
  
  public void appendTask(Runnable[] paramArrayOfRunnable)
  {
    checkThreadStatus();
    this.contoller.append(paramArrayOfRunnable);
  }
  
  public int getTaskCount()
  {
    if (this.contoller != null) {
      return AutoThreadFactory.TaskQueue.WorkThreads.access$100(this.contoller).size();
    }
    return 0;
  }
  
  public void terminat()
  {
    if (this.contoller != null) {
      this.contoller.cancel();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\utils\AutoThreadFactory$TaskQueue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */