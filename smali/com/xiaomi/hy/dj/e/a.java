package com.xiaomi.hy.dj.e;

import android.content.Context;
import com.xiaomi.game.plugin.stat.MiGamePluginStat;
import com.xiaomi.game.plugin.stat.MiGamePluginStatConfig.Builder;

public class a
{
  public static void a(Context paramContext)
  {
    paramContext = new MiGamePluginStatConfig.Builder().setChannel("mi").setContext(paramContext).setJarVersion("SDK_VISITOR_DJPAY_1.1.6").setReportDAU(true).setMonitorPkgName("com.xiaomi.hy.dj").build();
    MiGamePluginStat.getsInstance().initWithChannelAndPkgNameList(paramContext);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */