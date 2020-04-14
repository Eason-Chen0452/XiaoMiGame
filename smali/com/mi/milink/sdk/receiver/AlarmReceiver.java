package com.mi.milink.sdk.receiver;

import android.app.job.JobInfo.Builder;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.base.os.timer.AlarmClockService;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.SystemNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SystemNotificationEvent.EventType;
import com.mi.milink.sdk.service.MiLinkJobService;
import java.util.Calendar;
import org.greenrobot.eventbus.EventBus;

public class AlarmReceiver
  extends BroadcastReceiver
{
  private int jobId = 0;
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent != null)
    {
      String str = paramIntent.getAction();
      paramIntent = paramIntent.getPackage();
      if ((str != null) && (str.equals("com.milink.sdk.heartbeat")) && (paramIntent != null) && (paramIntent.equals(Global.getPackageName())))
      {
        if (MiAccountManager.getInstance().appHasLogined()) {
          break label65;
        }
        MiLinkLog.w("MiLinkAlarm", "app not login cancel");
        AlarmClockService.stop();
      }
    }
    return;
    label65:
    int j = 0;
    int i = j;
    if (System.currentTimeMillis() - Global.LAST_PACKET_SEND_TIME > 3600000L)
    {
      if (!Global.isSuicideEnable()) {
        break label200;
      }
      i = 1;
    }
    while (i != 0)
    {
      MiLinkLog.w("MiLinkAlarm", "milinkservice will be suicide , after 10s Launch");
      if (!Global.isSuicideEnable()) {
        AlarmClockService.start(10000L);
      }
      i = Process.myPid();
      MiLinkLog.d("MiLinkAlarm", "suicide now!!! pid=" + i);
      if ((!TextUtils.isEmpty(Global.getClientAppInfo().getServiceProcessName())) && (Build.VERSION.SDK_INT >= 26))
      {
        Log.e("MiLinkAlarm", "suicide need to stop jobscheduler");
        paramIntent = (JobScheduler)paramContext.getSystemService("jobscheduler");
        new ComponentName(paramContext, MiLinkJobService.class);
        paramIntent.cancelAll();
      }
      Process.killProcess(i);
      return;
      label200:
      long l = Calendar.getInstance().get(11);
      i = j;
      if (l >= 1L)
      {
        i = j;
        if (l <= 8L) {
          i = 1;
        }
      }
    }
    if (NetworkDash.isAvailable())
    {
      AlarmClockService.start();
      if (!TextUtils.isEmpty(Global.getClientAppInfo().getServiceProcessName()))
      {
        if (Build.VERSION.SDK_INT < 26) {
          break label364;
        }
        Log.e("MiLinkAlarm", "need to start jobscheduler");
        paramIntent = (JobScheduler)paramContext.getSystemService("jobscheduler");
        paramContext = new ComponentName(paramContext, MiLinkJobService.class);
        i = this.jobId + 1;
        this.jobId = i;
        paramContext = new JobInfo.Builder(i, paramContext);
        paramContext.setMinimumLatency(1L);
        paramContext.setRequiredNetworkType(1);
        paramIntent.schedule(paramContext.build());
      }
    }
    for (;;)
    {
      EventBus.getDefault().post(new MiLinkEvent.SystemNotificationEvent(MiLinkEvent.SystemNotificationEvent.EventType.AlarmArrived));
      return;
      AlarmClockService.stop();
      break;
      label364:
      paramIntent = new Intent();
      paramIntent.putExtra("onStartCommandReturn", 1);
      paramIntent.setComponent(new ComponentName(paramContext, "com.mi.milink.sdk.service.MiLinkService"));
      paramContext.startService(paramIntent);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\receiver\AlarmReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */