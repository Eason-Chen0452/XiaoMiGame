package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.entry.LifecycleInfo.LifecycleType;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

final class be
  implements Application.ActivityLifecycleCallbacks
{
  be(bd parambd, String paramString) {}
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    bd.a(this.b, new WeakReference(paramActivity));
    bd.a(this.b, paramActivity, paramBundle, this.a, LifecycleInfo.LifecycleType.onActivityCreated);
    if ((bd.a(this.b) != null) && (bd.a(this.b).size() > 0))
    {
      paramBundle = bd.a(this.b).iterator();
      while (paramBundle.hasNext())
      {
        bd.a locala = (bd.a)paramBundle.next();
        if (locala != null)
        {
          this.b.b(paramActivity);
          if ((bd.b(this.b) != null) && (bd.b(this.b).size() > 0))
          {
            Iterator localIterator = bd.b(this.b).iterator();
            while (localIterator.hasNext())
            {
              String str = (String)localIterator.next();
              try
              {
                if (TextUtils.equals(str, paramActivity.getClass().getName())) {
                  locala.c(paramActivity);
                }
              }
              catch (Exception localException) {}
            }
          }
        }
      }
    }
  }
  
  public final void onActivityDestroyed(Activity paramActivity)
  {
    bd.a(this.b, paramActivity, null, this.a, LifecycleInfo.LifecycleType.onActivityDestroyed);
    if ((bd.a(this.b) != null) && (bd.a(this.b).size() > 0))
    {
      Iterator localIterator = bd.a(this.b).iterator();
      while (localIterator.hasNext())
      {
        bd.a locala = (bd.a)localIterator.next();
        if (locala != null) {
          locala.b(paramActivity);
        }
      }
    }
  }
  
  public final void onActivityPaused(Activity paramActivity)
  {
    bd.a(this.b, paramActivity, null, this.a, LifecycleInfo.LifecycleType.onActivityPaused);
    if ((bd.a(this.b) != null) && (bd.a(this.b).size() > 0))
    {
      paramActivity = bd.a(this.b).iterator();
      while (paramActivity.hasNext()) {
        paramActivity.next();
      }
    }
  }
  
  public final void onActivityResumed(Activity paramActivity)
  {
    bd.a(this.b, paramActivity, null, this.a, LifecycleInfo.LifecycleType.onActivityResumed);
    if ((bd.a(this.b) != null) && (bd.a(this.b).size() > 0))
    {
      Iterator localIterator = bd.a(this.b).iterator();
      while (localIterator.hasNext())
      {
        bd.a locala = (bd.a)localIterator.next();
        if (locala != null) {
          locala.a(paramActivity);
        }
      }
    }
  }
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    bd.a(this.b, paramActivity, paramBundle, this.a, LifecycleInfo.LifecycleType.onActivitySaveInstanceState);
    if ((bd.a(this.b) != null) && (bd.a(this.b).size() > 0))
    {
      paramActivity = bd.a(this.b).iterator();
      while (paramActivity.hasNext()) {
        paramActivity.next();
      }
    }
  }
  
  public final void onActivityStarted(Activity paramActivity)
  {
    bd.a(this.b, paramActivity, null, this.a, LifecycleInfo.LifecycleType.onActivityStarted);
    if ((bd.a(this.b) != null) && (bd.a(this.b).size() > 0))
    {
      paramActivity = bd.a(this.b).iterator();
      while (paramActivity.hasNext()) {
        paramActivity.next();
      }
    }
  }
  
  public final void onActivityStopped(Activity paramActivity)
  {
    bd.a(this.b, paramActivity, null, this.a, LifecycleInfo.LifecycleType.onActivityStopped);
    if ((bd.a(this.b) != null) && (bd.a(this.b).size() > 0))
    {
      paramActivity = bd.a(this.b).iterator();
      while (paramActivity.hasNext()) {
        paramActivity.next();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\be.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */