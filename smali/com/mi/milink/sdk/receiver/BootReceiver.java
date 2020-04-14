package com.mi.milink.sdk.receiver;

import android.app.job.JobInfo.Builder;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.service.MiLinkJobService;

public class BootReceiver
  extends BroadcastReceiver
{
  private static final String TAG = "BootReceiver";
  private int jobId = 0;
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!MiAccountManager.getInstance().appHasLogined()) {
      return;
    }
    MiLinkLog.v("BootReceiver", "boot broadcast, NetworkReceiver start milink service");
    if (Build.VERSION.SDK_INT >= 26)
    {
      paramIntent = (JobScheduler)paramContext.getSystemService("jobscheduler");
      paramContext = new ComponentName(paramContext, MiLinkJobService.class);
      int i = this.jobId + 1;
      this.jobId = i;
      paramContext = new JobInfo.Builder(i, paramContext);
      paramContext.setMinimumLatency(1L);
      paramContext.setRequiredNetworkType(1);
      paramIntent.schedule(paramContext.build());
      return;
    }
    paramIntent = new Intent();
    paramIntent.putExtra("onStartCommandReturn", 1);
    paramIntent.setComponent(new ComponentName(paramContext, "com.mi.milink.sdk.service.MiLinkService"));
    paramContext.startService(paramIntent);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\receiver\BootReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */