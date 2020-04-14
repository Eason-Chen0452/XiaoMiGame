package org.greenrobot.eventbus;

import android.util.Log;
import java.util.concurrent.ExecutorService;

final class BackgroundPoster
  implements Runnable
{
  private final EventBus eventBus;
  private volatile boolean executorRunning;
  private final PendingPostQueue queue;
  
  BackgroundPoster(EventBus paramEventBus)
  {
    this.eventBus = paramEventBus;
    this.queue = new PendingPostQueue();
  }
  
  public void enqueue(Subscription paramSubscription, Object paramObject)
  {
    paramSubscription = PendingPost.obtainPendingPost(paramSubscription, paramObject);
    try
    {
      this.queue.enqueue(paramSubscription);
      if (!this.executorRunning)
      {
        this.executorRunning = true;
        this.eventBus.getExecutorService().execute(this);
      }
      return;
    }
    finally {}
  }
  
  public void run()
  {
    try
    {
      PendingPost localPendingPost2 = this.queue.poll(1000);
      localPendingPost1 = localPendingPost2;
      if (localPendingPost2 != null) {}
    }
    catch (InterruptedException localInterruptedException)
    {
      PendingPost localPendingPost1;
      localInterruptedException = localInterruptedException;
      Log.w("Event", Thread.currentThread().getName() + " was interruppted", localInterruptedException);
      return;
    }
    finally
    {
      this.executorRunning = false;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\greenrobot\eventbus\BackgroundPoster.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */