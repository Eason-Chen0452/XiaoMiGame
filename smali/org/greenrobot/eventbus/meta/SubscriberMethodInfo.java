package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.ThreadMode;

public class SubscriberMethodInfo
{
  final Class<?> eventType;
  final String methodName;
  final int priority;
  final boolean sticky;
  final ThreadMode threadMode;
  
  public SubscriberMethodInfo(String paramString, Class<?> paramClass)
  {
    this(paramString, paramClass, ThreadMode.POSTING, 0, false);
  }
  
  public SubscriberMethodInfo(String paramString, Class<?> paramClass, ThreadMode paramThreadMode)
  {
    this(paramString, paramClass, paramThreadMode, 0, false);
  }
  
  public SubscriberMethodInfo(String paramString, Class<?> paramClass, ThreadMode paramThreadMode, int paramInt, boolean paramBoolean)
  {
    this.methodName = paramString;
    this.threadMode = paramThreadMode;
    this.eventType = paramClass;
    this.priority = paramInt;
    this.sticky = paramBoolean;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\greenrobot\eventbus\meta\SubscriberMethodInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */