package org.greenrobot.eventbus;

public final class NoSubscriberEvent
{
  public final EventBus eventBus;
  public final Object originalEvent;
  
  public NoSubscriberEvent(EventBus paramEventBus, Object paramObject)
  {
    this.eventBus = paramEventBus;
    this.originalEvent = paramObject;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\greenrobot\eventbus\NoSubscriberEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */