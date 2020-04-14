package org.greenrobot.eventbus;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.meta.SubscriberInfo;
import org.greenrobot.eventbus.meta.SubscriberInfoIndex;

class SubscriberMethodFinder
{
  private static final int BRIDGE = 64;
  private static final FindState[] FIND_STATE_POOL = new FindState[4];
  private static final Map<Class<?>, List<SubscriberMethod>> METHOD_CACHE = new ConcurrentHashMap();
  private static final int MODIFIERS_IGNORE = 5192;
  private static final int POOL_SIZE = 4;
  private static final int SYNTHETIC = 4096;
  private final boolean ignoreGeneratedIndex;
  private final boolean strictMethodVerification;
  private List<SubscriberInfoIndex> subscriberInfoIndexes;
  
  SubscriberMethodFinder(List<SubscriberInfoIndex> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.subscriberInfoIndexes = paramList;
    this.strictMethodVerification = paramBoolean1;
    this.ignoreGeneratedIndex = paramBoolean2;
  }
  
  static void clearCaches()
  {
    METHOD_CACHE.clear();
  }
  
  private List<SubscriberMethod> findUsingInfo(Class<?> paramClass)
  {
    FindState localFindState = prepareFindState();
    localFindState.initForSubscriber(paramClass);
    while (localFindState.clazz != null)
    {
      localFindState.subscriberInfo = getSubscriberInfo(localFindState);
      if (localFindState.subscriberInfo != null)
      {
        paramClass = localFindState.subscriberInfo.getSubscriberMethods();
        int j = paramClass.length;
        int i = 0;
        while (i < j)
        {
          Object localObject = paramClass[i];
          if (localFindState.checkAdd(((SubscriberMethod)localObject).method, ((SubscriberMethod)localObject).eventType)) {
            localFindState.subscriberMethods.add(localObject);
          }
          i += 1;
        }
      }
      findUsingReflectionInSingleClass(localFindState);
      localFindState.moveToSuperclass();
    }
    return getMethodsAndRelease(localFindState);
  }
  
  private List<SubscriberMethod> findUsingReflection(Class<?> paramClass)
  {
    FindState localFindState = prepareFindState();
    localFindState.initForSubscriber(paramClass);
    while (localFindState.clazz != null)
    {
      findUsingReflectionInSingleClass(localFindState);
      localFindState.moveToSuperclass();
    }
    return getMethodsAndRelease(localFindState);
  }
  
  private void findUsingReflectionInSingleClass(FindState paramFindState)
  {
    Method localMethod;
    label259:
    do
    {
      try
      {
        Method[] arrayOfMethod1 = paramFindState.clazz.getDeclaredMethods();
        int j = arrayOfMethod1.length;
        int i = 0;
        for (;;)
        {
          if (i >= j) {
            return;
          }
          localMethod = arrayOfMethod1[i];
          int k = localMethod.getModifiers();
          if (((k & 0x1) == 0) || ((k & 0x1448) != 0)) {
            break label259;
          }
          localObject = localMethod.getParameterTypes();
          if (localObject.length != 1) {
            break;
          }
          Subscribe localSubscribe = (Subscribe)localMethod.getAnnotation(Subscribe.class);
          if (localSubscribe != null)
          {
            localObject = localObject[0];
            if (paramFindState.checkAdd(localMethod, (Class)localObject))
            {
              ThreadMode localThreadMode = localSubscribe.threadMode();
              paramFindState.subscriberMethods.add(new SubscriberMethod(localMethod, (Class)localObject, localThreadMode, localSubscribe.priority(), localSubscribe.sticky()));
            }
          }
          i += 1;
        }
      }
      catch (Throwable localThrowable)
      {
        Object localObject;
        do
        {
          for (;;)
          {
            Method[] arrayOfMethod2 = paramFindState.clazz.getMethods();
            paramFindState.skipSuperClasses = true;
          }
        } while ((!this.strictMethodVerification) || (!localMethod.isAnnotationPresent(Subscribe.class)));
        paramFindState = localMethod.getDeclaringClass().getName() + "." + localMethod.getName();
        throw new EventBusException("@Subscribe method " + paramFindState + "must have exactly 1 parameter but has " + localObject.length);
      }
    } while ((!this.strictMethodVerification) || (!localMethod.isAnnotationPresent(Subscribe.class)));
    paramFindState = localMethod.getDeclaringClass().getName() + "." + localMethod.getName();
    throw new EventBusException(paramFindState + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
  }
  
  private List<SubscriberMethod> getMethodsAndRelease(FindState paramFindState)
  {
    ArrayList localArrayList = new ArrayList(paramFindState.subscriberMethods);
    paramFindState.recycle();
    FindState[] arrayOfFindState = FIND_STATE_POOL;
    int i = 0;
    for (;;)
    {
      if (i < 4) {}
      try
      {
        if (FIND_STATE_POOL[i] == null)
        {
          FIND_STATE_POOL[i] = paramFindState;
          return localArrayList;
        }
      }
      finally {}
      i += 1;
    }
  }
  
  private SubscriberInfo getSubscriberInfo(FindState paramFindState)
  {
    Object localObject;
    if ((paramFindState.subscriberInfo != null) && (paramFindState.subscriberInfo.getSuperSubscriberInfo() != null))
    {
      localObject = paramFindState.subscriberInfo.getSuperSubscriberInfo();
      if (paramFindState.clazz == ((SubscriberInfo)localObject).getSubscriberClass()) {
        return (SubscriberInfo)localObject;
      }
    }
    if (this.subscriberInfoIndexes != null)
    {
      localObject = this.subscriberInfoIndexes.iterator();
      while (((Iterator)localObject).hasNext())
      {
        SubscriberInfo localSubscriberInfo = ((SubscriberInfoIndex)((Iterator)localObject).next()).getSubscriberInfo(paramFindState.clazz);
        if (localSubscriberInfo != null) {
          return localSubscriberInfo;
        }
      }
    }
    return null;
  }
  
  private FindState prepareFindState()
  {
    FindState[] arrayOfFindState = FIND_STATE_POOL;
    int i = 0;
    for (;;)
    {
      if (i < 4) {}
      try
      {
        FindState localFindState = FIND_STATE_POOL[i];
        if (localFindState == null) {
          break label48;
        }
        FIND_STATE_POOL[i] = null;
        return localFindState;
      }
      finally {}
      return new FindState();
      label48:
      i += 1;
    }
  }
  
  List<SubscriberMethod> findSubscriberMethods(Class<?> paramClass)
  {
    List localList = (List)METHOD_CACHE.get(paramClass);
    if (localList != null) {
      return localList;
    }
    if (this.ignoreGeneratedIndex) {}
    for (localList = findUsingReflection(paramClass); localList.isEmpty(); localList = findUsingInfo(paramClass)) {
      throw new EventBusException("Subscriber " + paramClass + " and its super classes have no public methods with the @Subscribe annotation");
    }
    METHOD_CACHE.put(paramClass, localList);
    return localList;
  }
  
  static class FindState
  {
    final Map<Class, Object> anyMethodByEventType = new HashMap();
    Class<?> clazz;
    final StringBuilder methodKeyBuilder = new StringBuilder(128);
    boolean skipSuperClasses;
    Class<?> subscriberClass;
    final Map<String, Class> subscriberClassByMethodKey = new HashMap();
    SubscriberInfo subscriberInfo;
    final List<SubscriberMethod> subscriberMethods = new ArrayList();
    
    private boolean checkAddWithMethodSignature(Method paramMethod, Class<?> paramClass)
    {
      this.methodKeyBuilder.setLength(0);
      this.methodKeyBuilder.append(paramMethod.getName());
      this.methodKeyBuilder.append('>').append(paramClass.getName());
      paramClass = this.methodKeyBuilder.toString();
      paramMethod = paramMethod.getDeclaringClass();
      Class localClass = (Class)this.subscriberClassByMethodKey.put(paramClass, paramMethod);
      if ((localClass == null) || (localClass.isAssignableFrom(paramMethod))) {
        return true;
      }
      this.subscriberClassByMethodKey.put(paramClass, localClass);
      return false;
    }
    
    boolean checkAdd(Method paramMethod, Class<?> paramClass)
    {
      Object localObject = this.anyMethodByEventType.put(paramClass, paramMethod);
      if (localObject == null) {
        return true;
      }
      if ((localObject instanceof Method))
      {
        if (!checkAddWithMethodSignature((Method)localObject, paramClass)) {
          throw new IllegalStateException();
        }
        this.anyMethodByEventType.put(paramClass, this);
      }
      return checkAddWithMethodSignature(paramMethod, paramClass);
    }
    
    void initForSubscriber(Class<?> paramClass)
    {
      this.clazz = paramClass;
      this.subscriberClass = paramClass;
      this.skipSuperClasses = false;
      this.subscriberInfo = null;
    }
    
    void moveToSuperclass()
    {
      if (this.skipSuperClasses) {
        this.clazz = null;
      }
      String str;
      do
      {
        return;
        this.clazz = this.clazz.getSuperclass();
        str = this.clazz.getName();
      } while ((!str.startsWith("java.")) && (!str.startsWith("javax.")) && (!str.startsWith("android.")));
      this.clazz = null;
    }
    
    void recycle()
    {
      this.subscriberMethods.clear();
      this.anyMethodByEventType.clear();
      this.subscriberClassByMethodKey.clear();
      this.methodKeyBuilder.setLength(0);
      this.subscriberClass = null;
      this.clazz = null;
      this.skipSuperClasses = false;
      this.subscriberInfo = null;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\greenrobot\eventbus\SubscriberMethodFinder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */