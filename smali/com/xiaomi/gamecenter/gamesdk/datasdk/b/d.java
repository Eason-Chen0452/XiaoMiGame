package com.xiaomi.gamecenter.gamesdk.datasdk.b;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class d
{
  public static String a()
  {
    Date localDate = new Date();
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.CHINA);
    return Long.parseLong(localSimpleDateFormat.format(localDate));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */