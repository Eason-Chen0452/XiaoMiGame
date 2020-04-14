package com.mi.milink.sdk.service;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.Process;
import android.os.SystemClock;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.LevelPromote;
import com.mi.milink.sdk.base.os.timer.AlarmClockService;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.util.PreloadClearUtil;
import com.mi.milink.sdk.util.SystemUtils;

@TargetApi(21)
public class MiLinkJobService
  extends JobService
{
  private static final String TAG = "MiLinkJobService";
  
  private void onJobStoped()
  {
    MiLinkLog.v("MiLinkJobService", "onJobStoped");
    if (Build.VERSION.SDK_INT > 14)
    {
      Object localObject = new Intent(getApplicationContext(), getClass());
      ((Intent)localObject).setPackage(getPackageName());
      localObject = PendingIntent.getService(getApplicationContext(), 1, (Intent)localObject, 1073741824);
      ((AlarmManager)getApplicationContext().getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + 1000L, (PendingIntent)localObject);
    }
  }
  
  private void startWork()
  {
    MiLinkLog.w("MiLinkJobService", "MiLink Service Started ,and onStartCommandReturn=1");
    if (SystemUtils.getPidByProcessName(Global.getPackageName()) == -1)
    {
      Intent localIntent = new Intent("com.mi.milink.ACTION_MSG");
      localIntent.setPackage(Global.getClientAppInfo().getPackageName());
      Global.sendBroadcast(localIntent);
    }
  }
  
  public IBinder onBindService(Intent paramIntent)
  {
    super.onBind(paramIntent);
    MiLinkLog.w("MiLinkJobService", "MiLink Service Binded");
    return MnsServiceBinder.getInstance();
  }
  
  public void onCreate()
  {
    super.onCreate();
    PreloadClearUtil.clearResources();
    LevelPromote.promoteApplicationLevelInMIUI();
    long l1 = System.currentTimeMillis();
    Thread.setDefaultUncaughtExceptionHandler(new MiLinkExceptionHandler());
    Global.STARTUP_TIME = SystemClock.elapsedRealtime();
    AlarmClockService.start();
    long l2 = System.currentTimeMillis();
    MiLinkLog.w("MiLinkJobService", "MiLink Service Created, pid=" + Process.myPid() + ", cost=" + (l2 - l1));
  }
  
  public void onRebind(Intent paramIntent)
  {
    super.onRebind(paramIntent);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    MiLinkLog.w("MiLinkJobService", "MiLink Service Started ,and onStartCommand=1");
    startWork();
    return 1;
  }
  
  public boolean onStartJob(JobParameters paramJobParameters)
  {
    MiLinkLog.w("MiLinkJobService", "MiLink Service Started ,and onStartJob=1");
    startWork();
    return false;
  }
  
  public boolean onStopJob(JobParameters paramJobParameters)
  {
    MiLinkLog.w("MiLinkJobService", "MiLink Service onStopJob");
    onJobStoped();
    return false;
  }
  
  public void onTaskRemoved(Intent paramIntent)
  {
    MiLinkLog.v("MiLinkJobService", "onTaskRemoved");
    if (Build.VERSION.SDK_INT > 14)
    {
      Object localObject = new Intent(getApplicationContext(), getClass());
      ((Intent)localObject).setPackage(getPackageName());
      localObject = PendingIntent.getService(getApplicationContext(), 1, (Intent)localObject, 1073741824);
      ((AlarmManager)getApplicationContext().getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + 1000L, (PendingIntent)localObject);
      super.onTaskRemoved(paramIntent);
    }
  }
  
  public boolean onUnbind(Intent paramIntent)
  {
    MiLinkLog.w("MiLinkJobService", "MiLink JobService UnBinded");
    onJobStoped();
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\service\MiLinkJobService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */