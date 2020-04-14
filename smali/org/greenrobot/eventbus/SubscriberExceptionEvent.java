package org.greenrobot.eventbus;

public final class SubscriberExceptionEvent
{
  public final Object causingEvent;
  public final Object causingSubscriber;
  public final EventBus eventBus;
  public final Throwable throwable;
  
  public SubscriberExceptionEvent(EventBus paramEventBus, Throwable paramThrowable, Object paramObject1, Object paramObject2)
  {
    this.eventBus = paramEventBus;
    this.throwable = paramThrowable;
    this.causingEvent = paramObject1;
    this.causingSubscriber = paramObject2;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\greenrobot\eventbus\SubscriberExceptionEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */