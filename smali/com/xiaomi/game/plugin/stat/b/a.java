package com.xiaomi.game.plugin.stat.b;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.game.plugin.stat.MiGamePluginStatConfig;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class a
{
  private static a b = null;
  private ExecutorService a = Executors.newSingleThreadExecutor();
  private String c;
  private MiGamePluginStatConfig d;
  
  public static a a()
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new a();
      }
      return b;
    }
    finally {}
  }
  
  private boolean a(String paramString)
  {
    if (com.xiaomi.game.plugin.stat.c.a.a(this.d.a())) {
      return false;
    }
    if (!d.d(this.d.a()))
    {
      com.xiaomi.game.plugin.stat.c.a.b("has uploaded crash in 1 minute. Don't upload crash in 1 min. ");
      return false;
    }
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        com.xiaomi.game.plugin.stat.c.a.b("upload  crash: " + paramString);
        if (c.a(this.d.a(), paramString))
        {
          com.xiaomi.game.plugin.stat.c.a.b("upload  crash success.");
          d.a(this.d.a(), null);
        }
        for (;;)
        {
          d.e(this.d.a());
          break;
          com.xiaomi.game.plugin.stat.c.a.b("upload  crash failed.");
        }
      }
      return true;
    }
    catch (Throwable paramString)
    {
      if (com.xiaomi.game.plugin.stat.c.a.a())
      {
        paramString.printStackTrace();
        break label133;
        com.xiaomi.game.plugin.stat.c.a.b("no  crash .");
      }
    }
  }
  
  private boolean b()
  {
    if (com.xiaomi.game.plugin.stat.c.a.a(this.d.a())) {
      return false;
    }
    if (com.xiaomi.game.plugin.stat.c.a.c(this.d.a()))
    {
      com.xiaomi.game.plugin.stat.c.a.b("Today has uploaded the init. Return don't upload init again! ");
      return true;
    }
    this.a.execute(new a.3(this));
    return true;
  }
  
  public void a(MiGamePluginStatConfig paramMiGamePluginStatConfig)
  {
    this.c = String.valueOf(System.currentTimeMillis());
    this.d = paramMiGamePluginStatConfig;
    this.a.execute(new a.1(this));
    b.a(this.d.a());
    b();
    paramMiGamePluginStatConfig = d.c(this.d.a());
    this.a.execute(new a.2(this, paramMiGamePluginStatConfig));
  }
  
  boolean a(Throwable paramThrowable, String paramString)
  {
    if (paramThrowable == null) {
      return false;
    }
    com.xiaomi.game.plugin.stat.c.a.b("begin uploadCrash: " + paramThrowable);
    String str = Log.getStackTraceString(paramThrowable);
    if (TextUtils.isEmpty(str))
    {
      com.xiaomi.game.plugin.stat.c.a.b("callstack cannot be empty!");
      return false;
    }
    for (;;)
    {
      try
      {
        if (Looper.getMainLooper() != Looper.myLooper()) {
          continue;
        }
        com.xiaomi.game.plugin.stat.c.a.b("目前是主线程...,需要做些额外处理才能及时搜集crash");
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().build());
        localTreeMap = new TreeMap();
        localTreeMap.put("app_id", this.d.b());
        localTreeMap.put("app_key", this.d.c());
        localTreeMap.put("device_uuid", d.a(this.d.a()));
        localTreeMap.put("device_os", "Android " + Build.VERSION.SDK_INT);
        localTreeMap.put("device_model", Build.MODEL);
        localTreeMap.put("app_version", paramString);
        localTreeMap.put("app_channel", this.d.e());
        localTreeMap.put("app_start_time", this.c);
        localTreeMap.put("app_crash_time", String.valueOf(System.currentTimeMillis()));
        localTreeMap.put("crash_exception_type", paramThrowable.getClass().getName() + ":" + paramThrowable.getMessage());
        if (!(paramThrowable instanceof OutOfMemoryError)) {
          continue;
        }
        paramThrowable = "OutOfMemoryError";
      }
      catch (Throwable paramThrowable)
      {
        TreeMap localTreeMap;
        com.xiaomi.game.plugin.stat.c.a.b("Error to upload the exception " + paramThrowable.getMessage());
        if (!com.xiaomi.game.plugin.stat.c.a.a()) {
          break label388;
        }
        paramThrowable.printStackTrace();
        break label388;
        paramThrowable = str;
        continue;
      }
      localTreeMap.put("crash_exception_desc", paramThrowable);
      localTreeMap.put("crash_callstack", str);
      paramThrowable = com.xiaomi.game.plugin.stat.c.a.a(localTreeMap);
      d.a(this.d.a(), paramThrowable);
      a(paramThrowable);
      break label388;
      com.xiaomi.game.plugin.stat.c.a.b("目前是非UI线程...,不需要做些额外处理也能及时搜集crash");
    }
    label388:
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */