package com.xiaomi.game.plugin.stat.b;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class b
  implements Thread.UncaughtExceptionHandler
{
  private static volatile b c;
  private Context a;
  private Thread.UncaughtExceptionHandler b;
  
  private b(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.b = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }
  
  public static void a(Context paramContext)
  {
    if (c == null) {
      try
      {
        if (c == null) {
          c = new b(paramContext);
        }
        return;
      }
      finally {}
    }
  }
  
  private void a(Thread paramThread, Context paramContext, Throwable paramThrowable)
  {
    for (;;)
    {
      try
      {
        paramContext = Log.getStackTraceString(paramThrowable);
        if ((!TextUtils.isEmpty(paramContext)) && (com.xiaomi.game.plugin.stat.c.a.a != null))
        {
          Iterator localIterator = com.xiaomi.game.plugin.stat.c.a.a.entrySet().iterator();
          if (!localIterator.hasNext()) {
            break label155;
          }
          String str = (String)((Map.Entry)localIterator.next()).getKey();
          if ((TextUtils.isEmpty(str)) || (!paramContext.contains(str)) || (str.equals("com.xiaomi.game"))) {
            continue;
          }
          a.a().a(paramThrowable, com.xiaomi.game.plugin.stat.c.a.a(str));
          i = 1;
          if ((i == 0) && (paramContext.contains("com.xiaomi.game"))) {
            a.a().a(paramThrowable, "31");
          }
        }
        if (this.b != null) {
          this.b.uncaughtException(paramThread, paramThrowable);
        }
        return;
      }
      catch (Throwable paramThread)
      {
        paramThread.printStackTrace();
        return;
      }
      label155:
      int i = 0;
    }
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return;
    }
    a(paramThread, this.a, paramThrowable);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */