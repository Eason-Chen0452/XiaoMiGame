package org.greenrobot.eventbus;

import java.util.concurrent.ExecutorService;

class AsyncPoster
  implements Runnable
{
  private final EventBus eventBus;
  private final PendingPostQueue queue;
  
  AsyncPoster(EventBus paramEventBus)
  {
    this.eventBus = paramEventBus;
    this.queue = new PendingPostQueue();
  }
  
  public void enqueue(Subscription paramSubscription, Object paramObject)
  {
    paramSubscription = PendingPost.obtainPendingPost(paramSubscription, paramObject);
    this.queue.enqueue(paramSubscription);
    this.eventBus.getExecutorService().execute(this);
  }
  
  public void run()
  {
    PendingPost localPendingPost = this.queue.poll();
    if (localPendingPost == null) {
      throw new IllegalStateException("No pending post available");
    }
    this.eventBus.invokeSubscriber(localPendingPost);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\greenrobot\eventbus\AsyncPoster.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */