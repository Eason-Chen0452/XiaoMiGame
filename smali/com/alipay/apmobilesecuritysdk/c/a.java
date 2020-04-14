package com.alipay.apmobilesecuritysdk.c;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.alipay.b.a.a.e.d;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public final class a
{
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString1 = new com.alipay.b.a.a.e.a(Build.MODEL, paramContext.getApplicationContext().getApplicationInfo().packageName, "security-sdk-token", "3.2.0-20160621", paramString1, paramString2, paramString3);
      paramContext = paramContext.getFilesDir().getAbsolutePath() + "/log/ap";
      paramString2 = Calendar.getInstance().getTime();
      paramString2 = new SimpleDateFormat("yyyyMMdd").format(paramString2);
      d.a(paramContext, paramString2 + ".log", paramString1.toString());
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void a(String paramString)
  {
    try
    {
      d.a(paramString);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public static void a(Throwable paramThrowable)
  {
    try
    {
      d.a(paramThrowable);
      return;
    }
    finally
    {
      paramThrowable = finally;
      throw paramThrowable;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\apmobilesecuritysdk\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */