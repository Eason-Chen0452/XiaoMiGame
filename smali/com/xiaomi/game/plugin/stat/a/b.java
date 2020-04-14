package com.xiaomi.game.plugin.stat.a;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.game.plugin.stat.MiGamePluginStatConfig;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class b
{
  private static volatile Timer b = null;
  private ExecutorService a = Executors.newSingleThreadExecutor();
  private MiGamePluginStatConfig c;
  
  public b(MiGamePluginStatConfig paramMiGamePluginStatConfig)
  {
    this.c = paramMiGamePluginStatConfig;
    if (this.c.g()) {
      a();
    }
    b();
    this.a.shutdown();
  }
  
  private void a()
  {
    if (this.c == null) {}
    while ((a(this.c.a().getPackageName())) || (com.xiaomi.game.plugin.stat.c.a.a(this.c.a()))) {
      return;
    }
    if (com.xiaomi.game.plugin.stat.c.a.e(this.c.a()))
    {
      com.xiaomi.game.plugin.stat.c.a.b("Today has uploaded the init. Return don't upload init again! ");
      return;
    }
    a locala = new a(this.c);
    this.a.execute(new b.1(this, locala));
  }
  
  private boolean a(String paramString)
  {
    return (TextUtils.isEmpty(paramString)) || (paramString.startsWith("com.xiaomi.")) || (TextUtils.equals(paramString, "com.wali.live"));
  }
  
  private void b()
  {
    if (this.c == null) {}
    Object localObject1;
    do
    {
      return;
      localObject1 = this.c.a().getPackageName();
    } while ((com.xiaomi.game.plugin.stat.c.a.a(this.c.a())) || (a((String)localObject1)) || (b != null));
    try
    {
      if (b == null)
      {
        localObject1 = new Timer();
        b = (Timer)localObject1;
        ((Timer)localObject1).schedule(new a(null), 0L, 1000L);
        b.purge();
      }
      return;
    }
    finally {}
  }
  
  private class a
    extends TimerTask
  {
    private a() {}
    
    public void run()
    {
      try
      {
        d.a().b();
        return;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */