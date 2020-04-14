package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

final class l
  implements Application.ActivityLifecycleCallbacks
{
  l(MiCommplatform paramMiCommplatform) {}
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    MiCommplatform.access$002(this.a, paramActivity);
  }
  
  public final void onActivityDestroyed(Activity paramActivity) {}
  
  public final void onActivityPaused(Activity paramActivity)
  {
    if ((paramActivity == null) || (MiCommplatform.access$100() == null)) {}
    while ((MiCommplatform.access$200() == null) || (!paramActivity.getClass().getName().equals(MiCommplatform.access$100().getClass().getName()))) {
      return;
    }
    MiCommplatform.cancelSendToastServiceConnTimeOutMsg();
    MiCommplatform.access$300();
  }
  
  public final void onActivityResumed(Activity paramActivity) {}
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public final void onActivityStarted(Activity paramActivity) {}
  
  public final void onActivityStopped(Activity paramActivity) {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */