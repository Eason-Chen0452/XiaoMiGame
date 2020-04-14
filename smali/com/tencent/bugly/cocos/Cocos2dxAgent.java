package com.tencent.bugly.cocos;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Cocos2dxAgent
{
  private static final String TAG = "Cocos2dxAgent";
  private static final String VERSION = "1.2.0";
  private static boolean isDebug;
  private static Handler mHandler;
  private static String sAppChannel = null;
  private static String sAppVersion;
  private static long sDelayTime = 0L;
  public static String sdkPackageName = "com.tencent.bugly";
  
  static
  {
    isDebug = true;
    mHandler = null;
    sAppVersion = null;
  }
  
  private Cocos2dxAgent()
  {
    try
    {
      mHandler = new Handler(Looper.getMainLooper());
      return;
    }
    catch (Exception localException)
    {
      printLog(2, "[cocos2d-x] Get the main looper handler Failed.");
      localException.printStackTrace();
    }
  }
  
  private static String convertToCanonicalName(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (sdkPackageName == null) {
      sdkPackageName = "com.tencent.bugly";
    }
    localStringBuilder.append(sdkPackageName);
    localStringBuilder.append(".");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  private static void delayExit(long paramLong)
  {
    paramLong = Math.max(0L, paramLong);
    if (mHandler != null)
    {
      mHandler.postDelayed(new Runnable()
      {
        public void run() {}
      }, paramLong);
      return;
    }
    try
    {
      Thread.sleep(paramLong);
      exitApplication();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
  
  public static void exitApplication()
  {
    int i = Process.myPid();
    printLog(2, String.format("Exit application by kill process[%d]", new Object[] { Integer.valueOf(i) }));
    Process.killProcess(i);
  }
  
  public static void initCrashReport(Context paramContext, String paramString, boolean paramBoolean)
  {
    initCrashReport(paramContext, paramString, paramBoolean, sAppChannel, sAppVersion, null, sDelayTime);
  }
  
  private static void initCrashReport(Context paramContext, String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    if (paramContext == null) {
      printLog(3, "context is null. bugly initialize terminated.");
    }
    isDebug = paramBoolean;
    if (TextUtils.isEmpty(paramString1))
    {
      printLog(2, "Please input appid when initCrashReport.");
      return;
    }
    if ((paramContext == null) || (TextUtils.isEmpty(paramString1)))
    {
      Log.w("Cocos2dxAgent", "Fail to init the crash report");
      return;
    }
    paramString3 = newStrategy(paramContext, paramString2, paramString3, paramLong);
    if (paramString3 != null) {}
    for (;;)
    {
      try
      {
        paramString2 = Class.forName(convertToCanonicalName("crashreport.CrashReport$UserStrategy"));
        if (paramString2 != null)
        {
          String str = convertToCanonicalName("crashreport.CrashReport");
          Class localClass = Boolean.TYPE;
          Reflection.invokeStaticMethod(str, "initCrashReport", new Object[] { paramContext, paramString1, Boolean.valueOf(paramBoolean), paramString3 }, new Class[] { Context.class, String.class, localClass, paramString2 });
          i = 1;
          if (i == 0)
          {
            paramString2 = convertToCanonicalName("crashreport.CrashReport");
            paramString3 = Boolean.TYPE;
            Reflection.invokeStaticMethod(paramString2, "initCrashReport", new Object[] { paramContext, paramString1, Boolean.valueOf(paramBoolean) }, new Class[] { Context.class, String.class, paramString3 });
          }
          if (TextUtils.isEmpty(paramString4)) {
            break;
          }
          Reflection.invokeStaticMethod(convertToCanonicalName("crashreport.CrashReport"), "setUserId", new Object[] { paramString4 }, new Class[] { String.class });
          return;
        }
      }
      catch (ClassNotFoundException paramString2)
      {
        paramString2.printStackTrace();
        paramString2 = null;
        continue;
      }
      catch (Exception paramString2)
      {
        paramString2.printStackTrace();
        paramString2 = null;
        continue;
      }
      int i = 0;
    }
  }
  
  private static Object newStrategy(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    if ((paramContext == null) || ((TextUtils.isEmpty(paramString1)) && (TextUtils.isEmpty(paramString2)))) {
      return null;
    }
    paramContext = Reflection.newInstance(convertToCanonicalName("crashreport.CrashReport$UserStrategy"), new Object[] { paramContext }, new Class[] { Context.class });
    Class localClass;
    if (paramContext != null) {
      localClass = paramContext.getClass();
    }
    try
    {
      localClass.getDeclaredMethod("setAppChannel", new Class[] { String.class }).invoke(paramContext, new Object[] { paramString1 });
      localClass.getDeclaredMethod("setAppVersion", new Class[] { String.class }).invoke(paramContext, new Object[] { paramString2 });
      localClass.getDeclaredMethod("setAppReportDelay", new Class[] { Long.TYPE }).invoke(paramContext, new Object[] { Long.valueOf(paramLong) });
      return paramContext;
    }
    catch (NoSuchMethodException paramContext)
    {
      paramContext.printStackTrace();
      return null;
    }
    catch (IllegalAccessException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
    catch (IllegalArgumentException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
    catch (InvocationTargetException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  public static void postException(int paramInt, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    try
    {
      if (paramString3.startsWith("stack traceback"))
      {
        String str1 = paramString3.substring(paramString3.indexOf("\n") + 1, paramString3.length()).trim();
        str3 = str1;
        try
        {
          i = str1.indexOf("\n");
          paramString3 = str1;
          if (i > 0)
          {
            str3 = str1;
            paramString3 = str1.substring(i + 1, str1.length());
          }
          str3 = paramString3;
          i = paramString3.indexOf("\n");
          if (i <= 0) {
            break label280;
          }
          str3 = paramString3;
          str5 = paramString3.substring(0, i);
        }
        catch (Throwable paramString3)
        {
          for (;;)
          {
            int i;
            String str4;
            continue;
            String str5 = paramString3;
          }
        }
        str3 = paramString3;
        i = str5.indexOf("]:");
        if (paramString1 != null)
        {
          str4 = paramString3;
          str1 = paramString1;
          str3 = paramString3;
          if (paramString1.length() != 0) {}
        }
        else
        {
          if (i == -1) {
            break label234;
          }
          str3 = paramString3;
          str1 = str5.substring(0, i + 1);
        }
        for (str4 = paramString3;; str4 = paramString3)
        {
          paramString1 = convertToCanonicalName("crashreport.inner.InnerAPI");
          paramString3 = Integer.TYPE;
          Reflection.invokeStaticMethod(paramString1, "postCocos2dxCrashAsync", new Object[] { Integer.valueOf(paramInt), str1, paramString2, str4 }, new Class[] { paramString3, String.class, String.class, String.class });
          if (paramBoolean) {
            delayExit(3000L);
          }
          return;
          label234:
          str1 = paramString2;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        String str3 = paramString3;
        String str2;
        if (paramString1 != null)
        {
          str4 = str3;
          str2 = paramString1;
          if (paramString1.length() != 0) {}
        }
        else
        {
          str2 = paramString2;
          str4 = str3;
          continue;
          label280:
          str2 = paramString3;
        }
      }
    }
  }
  
  public static void printLog(int paramInt, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return;
      if ((isDebug) && (paramInt == 0)) {
        sdkLog("d", paramString);
      }
      if (paramInt == 1) {
        sdkLog("i", paramString);
      }
      if (paramInt == 2) {
        sdkLog("w", paramString);
      }
    } while (paramInt < 3);
    sdkLog("e", paramString);
  }
  
  public static void printLog(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    printLog(2, paramString);
  }
  
  public static void putUserData(Context paramContext, String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {}
    while (paramContext == null) {
      return;
    }
    Reflection.invokeStaticMethod(convertToCanonicalName("crashreport.CrashReport"), "putUserData", new Object[] { paramContext, paramString1, paramString2 }, new Class[] { Context.class, String.class, String.class });
  }
  
  public static void removeUserData(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (paramContext == null) {
      return;
    }
    Reflection.invokeStaticMethod(convertToCanonicalName("crashreport.CrashReport"), "removeUserData", new Object[] { paramContext, paramString }, new Class[] { Context.class, String.class });
  }
  
  private static void sdkLog(String paramString1, String paramString2)
  {
    Reflection.invokeStaticMethod(convertToCanonicalName("crashreport.BuglyLog"), paramString1, new Object[] { "", paramString2 }, new Class[] { String.class, String.class });
  }
  
  public static void setAppChannel(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    sAppChannel = paramString;
  }
  
  public static void setAppVersion(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    sAppVersion = paramString;
  }
  
  public static void setDelayTime(long paramLong)
  {
    if (paramLong <= 0L) {
      return;
    }
    sDelayTime = paramLong;
  }
  
  public static void setLog(int paramInt, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {}
    for (;;)
    {
      return;
      String str = null;
      switch (paramInt)
      {
      }
      while (str != null)
      {
        Reflection.invokeStaticMethod(convertToCanonicalName("crashreport.BuglyLog"), str, new Object[] { paramString1, paramString2 }, new Class[] { String.class, String.class });
        return;
        str = "v";
        continue;
        str = "d";
        continue;
        str = "i";
        continue;
        str = "w";
        continue;
        str = "e";
      }
    }
  }
  
  public static void setSDKPackagePrefixName(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    sdkPackageName = paramString;
  }
  
  public static void setUserId(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    Reflection.invokeStaticMethod(convertToCanonicalName("crashreport.CrashReport"), "setUserId", new Object[] { paramString }, new Class[] { String.class });
  }
  
  public static void setUserSceneTag(Context paramContext, int paramInt)
  {
    if (paramContext != null)
    {
      String str = convertToCanonicalName("crashreport.CrashReport");
      Class localClass = Integer.TYPE;
      Reflection.invokeStaticMethod(str, "setUserSceneTag", new Object[] { paramContext, Integer.valueOf(paramInt) }, new Class[] { Context.class, localClass });
    }
  }
  
  public String getVersion()
  {
    return "1.2.0";
  }
  
  private static class Reflection
  {
    public static Object invokeStaticMethod(String paramString1, String paramString2, Object[] paramArrayOfObject, Class<?>... paramVarArgs)
    {
      try
      {
        paramString1 = Class.forName(paramString1).getDeclaredMethod(paramString2, paramVarArgs);
        paramString1.setAccessible(true);
        paramString1 = paramString1.invoke(null, paramArrayOfObject);
        return paramString1;
      }
      catch (ClassNotFoundException paramString1)
      {
        paramString1.printStackTrace();
        return null;
      }
      catch (NoSuchMethodException paramString1)
      {
        paramString1.printStackTrace();
        return null;
      }
      catch (InvocationTargetException paramString1)
      {
        paramString1.printStackTrace();
        return null;
      }
      catch (IllegalAccessException paramString1)
      {
        paramString1.printStackTrace();
        return null;
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
      }
      return null;
    }
    
    public static Object newInstance(String paramString, Object[] paramArrayOfObject, Class<?>... paramVarArgs)
    {
      try
      {
        paramString = Class.forName(paramString);
        if (paramArrayOfObject == null) {
          return paramString.newInstance();
        }
        paramString = paramString.getConstructor(paramVarArgs).newInstance(paramArrayOfObject);
        return paramString;
      }
      catch (ClassNotFoundException paramString)
      {
        paramString.printStackTrace();
        return null;
      }
      catch (NoSuchMethodException paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
        }
      }
      catch (InstantiationException paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
        }
      }
      catch (IllegalAccessException paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
        }
      }
      catch (InvocationTargetException paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
        }
      }
      catch (Exception paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\tencent\bugly\cocos\Cocos2dxAgent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */