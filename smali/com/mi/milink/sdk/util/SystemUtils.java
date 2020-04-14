package com.mi.milink.sdk.util;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import com.mi.milink.sdk.base.Global;
import java.util.Iterator;
import java.util.List;

public class SystemUtils
{
  public static int getPidByProcessName(String paramString)
  {
    try
    {
      Object localObject = (ActivityManager)Global.getSystemService("activity");
      if (localObject == null) {
        return -1;
      }
      localObject = ((ActivityManager)localObject).getRunningAppProcesses();
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
          if (localRunningAppProcessInfo.processName.equals(paramString))
          {
            int i = localRunningAppProcessInfo.pid;
            return i;
          }
        }
      }
      return -1;
    }
    catch (Exception paramString) {}
    return -1;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\SystemUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */