package com.xiaomi.game.plugin.stat;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.game.plugin.stat.a.b;
import com.xiaomi.game.plugin.stat.a.d;

public final class MiGamePluginStat
{
  private static volatile MiGamePluginStat a;
  private static boolean b = true;
  
  private MiGamePluginStat()
  {
    Log.e("migamesdk_plugin", "build time:20170714164513,branch:mistat_170713,commitid:7b7394ef2e0b566b2cfdd40a8c6a94f773ec2cf0,version:31");
  }
  
  public static MiGamePluginStat getsInstance()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new MiGamePluginStat();
      }
      return a;
    }
    finally {}
  }
  
  public static void setCheckInitEnv(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public static void setDebug(boolean paramBoolean)
  {
    com.xiaomi.game.plugin.stat.c.a.a(paramBoolean);
  }
  
  public static void verifyEntry()
  {
    StackTraceElement[] arrayOfStackTraceElement = new Throwable().getStackTrace();
    int i;
    StackTraceElement localStackTraceElement;
    if (arrayOfStackTraceElement != null)
    {
      int j = arrayOfStackTraceElement.length;
      i = 0;
      if (i >= j) {
        break label108;
      }
      localStackTraceElement = arrayOfStackTraceElement[i];
      if ((localStackTraceElement == null) || (TextUtils.isEmpty(localStackTraceElement.getMethodName())) || (!"onCreate".equals(localStackTraceElement.getMethodName()))) {}
    }
    for (;;)
    {
      try
      {
        boolean bool = Application.class.isAssignableFrom(Class.forName(localStackTraceElement.getClassName()));
        if (bool)
        {
          i = 1;
          if (i != 0) {
            break label107;
          }
          throw new IllegalStateException("MUST CALL FROM APPLICATION ONCREATE METHOD!!!");
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      i += 1;
      break;
      label107:
      return;
      label108:
      i = 0;
    }
  }
  
  public final void initWithChannelAndPkgNameList(MiGamePluginStatConfig paramMiGamePluginStatConfig)
  {
    if (b) {
      verifyEntry();
    }
    com.xiaomi.game.plugin.stat.c.a.a(paramMiGamePluginStatConfig.f(), paramMiGamePluginStatConfig.d());
    d.a(paramMiGamePluginStatConfig);
    com.xiaomi.game.plugin.stat.b.a.a().a(paramMiGamePluginStatConfig);
    new b(paramMiGamePluginStatConfig);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\MiGamePluginStat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */