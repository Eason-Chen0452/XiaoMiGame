package com.xiaomi.gamecenter.gamesdk.datasdk.b;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import java.util.List;

final class e
  implements Application.ActivityLifecycleCallbacks
{
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    c.b.add(paramActivity);
    c.a(paramActivity);
  }
  
  public final void onActivityDestroyed(Activity paramActivity)
  {
    c.b.remove(paramActivity);
  }
  
  public final void onActivityPaused(Activity paramActivity) {}
  
  public final void onActivityResumed(Activity paramActivity)
  {
    c.a(paramActivity);
  }
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public final void onActivityStarted(Activity paramActivity)
  {
    c.a(paramActivity);
    c.b();
    if ((c.c() == 1) && (c.d() != null)) {
      c.d();
    }
  }
  
  public final void onActivityStopped(Activity paramActivity)
  {
    c.e();
    if ((c.c() == 0) && (c.d() != null)) {
      c.d();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */