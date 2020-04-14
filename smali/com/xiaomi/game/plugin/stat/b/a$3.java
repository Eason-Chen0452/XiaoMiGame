package com.xiaomi.game.plugin.stat.b;

import com.xiaomi.game.plugin.stat.MiGamePluginStatConfig;
import java.util.Map;
import java.util.TreeMap;

class a$3
  implements Runnable
{
  a$3(a parama) {}
  
  public void run()
  {
    try
    {
      Object localObject = new TreeMap();
      ((Map)localObject).put("app_id", a.a(this.a).b());
      ((Map)localObject).put("app_key", a.a(this.a).c());
      ((Map)localObject).put("device_id", d.a(a.a(this.a).a()));
      ((Map)localObject).put("channel", a.a(this.a).e());
      ((Map)localObject).put("version", "31");
      ((Map)localObject).put("stat_value", d.a());
      localObject = com.xiaomi.game.plugin.stat.c.a.a((Map)localObject);
      boolean bool = c.b(a.a(this.a).a(), (String)localObject);
      if (bool) {
        com.xiaomi.game.plugin.stat.c.a.d(a.a(this.a).a());
      }
      com.xiaomi.game.plugin.stat.c.a.b("upload the init: " + bool);
      return;
    }
    catch (Throwable localThrowable)
    {
      do
      {
        com.xiaomi.game.plugin.stat.c.a.b("Upload MiStat data failed:" + localThrowable.getMessage());
      } while (!com.xiaomi.game.plugin.stat.c.a.a());
      localThrowable.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\b\a$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */