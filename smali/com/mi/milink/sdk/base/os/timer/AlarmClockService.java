package com.mi.milink.sdk.base.os.timer;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build.VERSION;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.config.HeartBeatManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.lang.reflect.Method;

public class AlarmClockService
{
  private static final String TAG = "AlarmClockService";
  private static long mNextPingTs = 0L;
  static PendingIntent pendingIntent;
  private static boolean sStop = true;
  
  static
  {
    pendingIntent = null;
  }
  
  private static long getNextPing(long paramLong)
  {
    MiLinkLog.w("MiLinkAlarm", "internal=" + paramLong + ",Ts = " + mNextPingTs);
    mNextPingTs = System.currentTimeMillis() + paramLong;
    MiLinkLog.w("MiLinkAlarm", "next Ts = " + mNextPingTs);
    return mNextPingTs;
  }
  
  public static void resetNextPing()
  {
    mNextPingTs = 0L;
  }
  
  private static void setExact(AlarmManager paramAlarmManager, long paramLong, PendingIntent paramPendingIntent)
  {
    try
    {
      AlarmManager.class.getMethod("setExact", new Class[] { Integer.TYPE, Long.TYPE, PendingIntent.class }).invoke(paramAlarmManager, new Object[] { Integer.valueOf(0), Long.valueOf(paramLong), paramPendingIntent });
      return;
    }
    catch (Exception paramAlarmManager)
    {
      MiLinkLog.e("AlarmClockService", paramAlarmManager);
    }
  }
  
  public static boolean start()
  {
    return start(HeartBeatManager.getInstance().getHeartBeatInterval());
  }
  
  public static boolean start(long paramLong)
  {
    sStop = false;
    try
    {
      Object localObject = new Intent("com.milink.sdk.heartbeat");
      ((Intent)localObject).setPackage(Global.getPackageName());
      pendingIntent = PendingIntent.getBroadcast(Global.getContext(), 987, (Intent)localObject, 134217728);
      localObject = (AlarmManager)Global.getSystemService("alarm");
      paramLong = getNextPing(paramLong);
      if (Build.VERSION.SDK_INT >= 19) {
        setExact((AlarmManager)localObject, paramLong, pendingIntent);
      } else {
        ((AlarmManager)localObject).set(0, paramLong, pendingIntent);
      }
    }
    catch (Exception localException)
    {
      return false;
    }
    return true;
  }
  
  public static boolean startIfNeed()
  {
    if (sStop) {
      return start(HeartBeatManager.getInstance().getHeartBeatInterval());
    }
    return false;
  }
  
  public static boolean stop()
  {
    sStop = true;
    try
    {
      AlarmManager localAlarmManager = (AlarmManager)Global.getSystemService("alarm");
      if (pendingIntent != null) {
        localAlarmManager.cancel(pendingIntent);
      }
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\timer\AlarmClockService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */