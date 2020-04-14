package org.greenrobot.eventbus;

final class Subscription
{
  volatile boolean active;
  final Object subscriber;
  final SubscriberMethod subscriberMethod;
  
  Subscription(Object paramObject, SubscriberMethod paramSubscriberMethod)
  {
    this.subscriber = paramObject;
    this.subscriberMethod = paramSubscriberMethod;
    this.active = true;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Subscription))
    {
      paramObject = (Subscription)paramObject;
      bool1 = bool2;
      if (this.subscriber == ((Subscription)paramObject).subscriber)
      {
        bool1 = bool2;
        if (this.subscriberMethod.equals(((Subscription)paramObject).subscriberMethod)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return this.subscriber.hashCode() + this.subscriberMethod.methodString.hashCode();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\greenrobot\eventbus\Subscription.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */