package org.greenrobot.eventbus;

import java.lang.reflect.Method;

public class SubscriberMethod
{
  final Class<?> eventType;
  final Method method;
  String methodString;
  final int priority;
  final boolean sticky;
  final ThreadMode threadMode;
  
  public SubscriberMethod(Method paramMethod, Class<?> paramClass, ThreadMode paramThreadMode, int paramInt, boolean paramBoolean)
  {
    this.method = paramMethod;
    this.threadMode = paramThreadMode;
    this.eventType = paramClass;
    this.priority = paramInt;
    this.sticky = paramBoolean;
  }
  
  private void checkMethodString()
  {
    try
    {
      if (this.methodString == null)
      {
        StringBuilder localStringBuilder = new StringBuilder(64);
        localStringBuilder.append(this.method.getDeclaringClass().getName());
        localStringBuilder.append('#').append(this.method.getName());
        localStringBuilder.append('(').append(this.eventType.getName());
        this.methodString = localStringBuilder.toString();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof SubscriberMethod))
    {
      checkMethodString();
      paramObject = (SubscriberMethod)paramObject;
      ((SubscriberMethod)paramObject).checkMethodString();
      return this.methodString.equals(((SubscriberMethod)paramObject).methodString);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.method.hashCode();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\greenrobot\eventbus\SubscriberMethod.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */