package com.xiaomi.gamecenter.sdk.ui.mifloat.report;

import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.report.ReportData;
import com.xiaomi.gamecenter.sdk.ui.mifloat.menu.MiFloatMenuItemInfo;

public class MiFloatDataReport
{
  private static MiAppEntry a;
  
  public static void a()
  {
    ReportData.c("game_main", "mifloat_show", a);
  }
  
  public static void a(MiAppEntry paramMiAppEntry)
  {
    a = paramMiAppEntry;
    ReportData.a();
  }
  
  public static void a(MiFloatMenuItemInfo paramMiFloatMenuItemInfo)
  {
    ReportData.b("game_main", "mifloat_menu_click", paramMiFloatMenuItemInfo.b(), a);
  }
  
  public static void a(String paramString)
  {
    ReportData.d("game_main", "marquee_show", paramString, a);
  }
  
  public static void b()
  {
    ReportData.c("game_main", "mifloat_menu_show", a);
  }
  
  public static void b(String paramString)
  {
    ReportData.b("game_main", "marquee_goto", paramString, a);
  }
  
  public static void c()
  {
    ReportData.b("game_main", "mifloat_menu_click", "mifloat_me", a);
  }
  
  public static void c(String paramString)
  {
    ReportData.b("game_main", "marquee_close", paramString, a);
  }
  
  public static void d()
  {
    ReportData.a("game_main", null, "mifloat_hide", a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\report\MiFloatDataReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */