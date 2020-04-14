package com.xiaomi.accountsdk.utils;

import java.lang.ref.SoftReference;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class c
{
  public static final TimeZone a;
  private static final String[] b = { "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE, dd MMM yyyy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy" };
  private static final Date c;
  
  static
  {
    a = TimeZone.getTimeZone("GMT");
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeZone(a);
    localCalendar.set(2000, 0, 1, 0, 0, 0);
    localCalendar.set(14, 0);
    c = localCalendar.getTime();
  }
  
  public static Date a(String paramString)
    throws ParseException
  {
    return b(paramString);
  }
  
  private static Date b(String paramString)
    throws ParseException
  {
    if (paramString == null) {
      throw new IllegalArgumentException("dateValue is null");
    }
    String[] arrayOfString = b;
    Date localDate = c;
    String str = paramString;
    if (paramString.length() > 1)
    {
      str = paramString;
      if (paramString.startsWith("'"))
      {
        str = paramString;
        if (paramString.endsWith("'")) {
          str = paramString.substring(1, paramString.length() - 1);
        }
      }
    }
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      paramString = a.a(arrayOfString[i]);
      paramString.set2DigitYearStart(localDate);
      try
      {
        paramString = paramString.parse(str);
        return paramString;
      }
      catch (ParseException paramString)
      {
        i += 1;
      }
    }
    throw new ParseException("Unable to parse the date " + str, 0);
  }
  
  static final class a
  {
    private static final ThreadLocal<SoftReference<Map<String, SimpleDateFormat>>> a = new d();
    
    public static SimpleDateFormat a(String paramString)
    {
      Object localObject = (Map)((SoftReference)a.get()).get();
      if (localObject == null)
      {
        localObject = new HashMap();
        a.set(new SoftReference(localObject));
      }
      for (;;)
      {
        SimpleDateFormat localSimpleDateFormat2 = (SimpleDateFormat)((Map)localObject).get(paramString);
        SimpleDateFormat localSimpleDateFormat1 = localSimpleDateFormat2;
        if (localSimpleDateFormat2 == null)
        {
          localSimpleDateFormat1 = new SimpleDateFormat(paramString, Locale.US);
          localSimpleDateFormat1.setTimeZone(TimeZone.getTimeZone("GMT"));
          ((Map)localObject).put(paramString, localSimpleDateFormat1);
        }
        return localSimpleDateFormat1;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */