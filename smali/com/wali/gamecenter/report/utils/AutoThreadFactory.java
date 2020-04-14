package com.wali.gamecenter.report.utils;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class AutoThreadFactory
{
  private static final int DEFAULT_MAX_LIFE = 60000;
  private static HashMap<String, AutoThreadFactory.TaskQueue> _group = new HashMap(2);
  
  public static void AppendTask(String paramString, Runnable paramRunnable, int paramInt)
  {
    synchronized (_group)
    {
      AutoThreadFactory.TaskQueue localTaskQueue2 = (AutoThreadFactory.TaskQueue)_group.get(paramString);
      AutoThreadFactory.TaskQueue localTaskQueue1 = localTaskQueue2;
      if (localTaskQueue2 == null)
      {
        localTaskQueue1 = new AutoThreadFactory.TaskQueue(60000L, paramInt, paramString);
        _group.put(paramString, localTaskQueue1);
      }
      localTaskQueue1.appendTask(paramRunnable);
      return;
    }
  }
  
  public static void ClearTask(String paramString)
  {
    synchronized (_group)
    {
      paramString = (AutoThreadFactory.TaskQueue)_group.get(paramString);
      if (paramString != null) {
        paramString.terminat();
      }
      return;
    }
  }
  
  public static int GetTaskCount(String paramString)
  {
    paramString = (AutoThreadFactory.TaskQueue)_group.get(paramString);
    if (paramString != null) {
      return paramString.getTaskCount();
    }
    return 0;
  }
  
  public static void clearTasks()
  {
    synchronized (_group)
    {
      Iterator localIterator = _group.values().iterator();
      if (localIterator.hasNext()) {
        ((AutoThreadFactory.TaskQueue)localIterator.next()).terminat();
      }
    }
    _group.clear();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\utils\AutoThreadFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */