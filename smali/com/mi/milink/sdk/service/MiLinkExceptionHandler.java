package com.mi.milink.sdk.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.text.format.Formatter;
import android.text.format.Time;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.io.PrintWriter;
import java.io.StringWriter;

public class MiLinkExceptionHandler
  implements Thread.UncaughtExceptionHandler
{
  private static String TAG = MiLinkExceptionHandler.class.getName();
  private static final Thread.UncaughtExceptionHandler sDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
  private String mPhoneModel = Build.MODEL;
  private String mPhoneSdk = Build.VERSION.SDK;
  
  private void arouseMiLink()
  {
    Object localObject = new Intent();
    ((Intent)localObject).putExtra("onStartCommandReturn", 1);
    ((Intent)localObject).setComponent(new ComponentName(Global.getContext(), "com.mi.milink.sdk.service.MiLinkService"));
    localObject = PendingIntent.getService(Global.getContext(), 0, (Intent)localObject, 134217728);
    ((AlarmManager)Global.getContext().getSystemService("alarm")).set(1, System.currentTimeMillis() + 500L, (PendingIntent)localObject);
    MiLinkLog.i(TAG, "arouseMiLink");
  }
  
  private String getMemoryInfo(Context paramContext)
  {
    Object localObject1 = "";
    try
    {
      Object localObject2 = "" + "\ntotalMemory()=" + toMib(paramContext, Runtime.getRuntime().totalMemory());
      localObject1 = localObject2;
      localObject2 = (String)localObject2 + "\nmaxMemory()=" + toMib(paramContext, Runtime.getRuntime().maxMemory());
      localObject1 = localObject2;
      paramContext = (String)localObject2 + "\nfreeMemory()=" + toMib(paramContext, Runtime.getRuntime().freeMemory());
      localObject1 = paramContext;
      localObject2 = new Debug.MemoryInfo();
      localObject1 = paramContext;
      Debug.getMemoryInfo((Debug.MemoryInfo)localObject2);
      localObject1 = paramContext;
      paramContext = paramContext + "\ndbg.mi.dalvikPrivateDirty=" + toMib(((Debug.MemoryInfo)localObject2).dalvikPrivateDirty);
      localObject1 = paramContext;
      paramContext = paramContext + "\ndbg.mi.dalvikPss=" + toMib(((Debug.MemoryInfo)localObject2).dalvikPss);
      localObject1 = paramContext;
      paramContext = paramContext + "\ndbg.mi.dalvikSharedDirty=" + toMib(((Debug.MemoryInfo)localObject2).dalvikSharedDirty);
      localObject1 = paramContext;
      paramContext = paramContext + "\ndbg.mi.nativePrivateDirty=" + toMib(((Debug.MemoryInfo)localObject2).nativePrivateDirty);
      localObject1 = paramContext;
      paramContext = paramContext + "\ndbg.mi.nativePss=" + toMib(((Debug.MemoryInfo)localObject2).nativePss);
      localObject1 = paramContext;
      paramContext = paramContext + "\ndbg.mi.nativeSharedDirty=" + toMib(((Debug.MemoryInfo)localObject2).nativeSharedDirty);
      localObject1 = paramContext;
      paramContext = paramContext + "\ndbg.mi.otherPrivateDirty=" + toMib(((Debug.MemoryInfo)localObject2).otherPrivateDirty);
      localObject1 = paramContext;
      paramContext = paramContext + "\ndbg.mi.otherPss" + toMib(((Debug.MemoryInfo)localObject2).otherPss);
      localObject1 = paramContext;
      paramContext = paramContext + "\ndbg.mi.otherSharedDirty=" + toMib(((Debug.MemoryInfo)localObject2).otherSharedDirty);
      localObject1 = paramContext;
      paramContext = paramContext + "\nTotalPrivateDirty=" + toMib(((Debug.MemoryInfo)localObject2).getTotalPrivateDirty());
      localObject1 = paramContext;
      paramContext = paramContext + "\nTotalPss=" + toMib(((Debug.MemoryInfo)localObject2).getTotalPss());
      localObject1 = paramContext;
      paramContext = paramContext + "\nTotalSharedDirty=" + toMib(((Debug.MemoryInfo)localObject2).getTotalSharedDirty());
      return paramContext;
    }
    catch (Exception paramContext) {}
    return (String)localObject1;
  }
  
  private String toMib(int paramInt)
  {
    return String.format("%.2fMB", new Object[] { Double.valueOf(paramInt / 1024.0D) });
  }
  
  private String toMib(Context paramContext, long paramLong)
  {
    return Formatter.formatFileSize(paramContext, paramLong);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = new Time();
    ((Time)localObject).setToNow();
    localObject = ((Time)localObject).format("%Y-%m-%d %H:%M:%S");
    localStringBuilder.append("\t\n==================LOG=================\t\n");
    localStringBuilder.append("PHONE_MODEL:" + this.mPhoneModel + "\t\n");
    localStringBuilder.append("ANDROID_SDK:" + this.mPhoneSdk + "\t\n");
    localStringBuilder.append((String)localObject + "\t\n");
    localStringBuilder.append(localStringWriter.toString());
    localStringBuilder.append("\t\n==================MemoryInfo=================\t\n");
    localStringBuilder.append(getMemoryInfo(Global.getContext()));
    localStringBuilder.append("\t\n--------------------------------------\t\n");
    MiLinkLog.i(TAG, localStringBuilder.toString());
    MiLinkLog.getInstance().flush();
    try
    {
      Thread.sleep(300L);
      MiLinkLog.i(TAG, "sDefaultHandler=" + sDefaultHandler);
      arouseMiLink();
      if (sDefaultHandler != null) {
        sDefaultHandler.uncaughtException(paramThread, paramThrowable);
      }
      MiLinkLog.getInstance().stop();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\service\MiLinkExceptionHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */