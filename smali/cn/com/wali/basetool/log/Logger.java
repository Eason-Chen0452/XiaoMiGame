package cn.com.wali.basetool.log;

import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.ArrayList;
import java.util.Iterator;

public final class Logger
{
  public static boolean a = false;
  private static ArrayList<a> b;
  private static byte c = 2;
  
  static
  {
    b = new ArrayList(1);
    LogcatAppender localLogcatAppender = new LogcatAppender();
    b.add(localLogcatAppender);
  }
  
  private static void a(byte paramByte, String paramString1, String paramString2, Throwable paramThrowable)
  {
    for (;;)
    {
      try
      {
        int i = c;
        if (i != -1) {
          continue;
        }
      }
      catch (Exception paramString1)
      {
        Iterator localIterator;
        paramString1.printStackTrace();
        continue;
      }
      finally {}
      return;
      if (paramByte <= c)
      {
        localIterator = b.iterator();
        if (localIterator.hasNext())
        {
          a locala = (a)localIterator.next();
          switch (paramByte)
          {
          case 0: 
            locala.a(paramString1, paramString2, paramThrowable);
            break;
          case 2: 
            locala.b(paramString1, paramString2);
            break;
          case 1: 
            locala.a(paramString1, paramString2);
            break;
          case 3: 
            locala.c(paramString1, paramString2);
            break;
          }
        }
      }
    }
  }
  
  public static void a(String paramString)
  {
    if (!a) {
      return;
    }
    String str = paramString;
    if (paramString == null) {
      str = "null";
    }
    a((byte)2, "MiGameSDK", str, null);
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (!a) {
      return;
    }
    String str = paramString2;
    if (paramString2 == null) {
      str = "null";
    }
    paramString2 = paramString1;
    if (paramString1 == null) {
      paramString2 = "MiGameSDK";
    }
    a((byte)2, paramString2, str, null);
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "null";
    }
    paramString2 = paramString1;
    if (paramString1 == null) {
      paramString2 = "MiGameSDK";
    }
    a((byte)0, paramString2, str, paramThrowable);
  }
  
  public static void b(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "null";
    }
    a((byte)1, "MiGameSDK", str, null);
  }
  
  public static void b(String paramString1, String paramString2)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "null";
    }
    a((byte)1, paramString1, str, null);
  }
  
  public static void c(String paramString)
  {
    a(, "MiGameSDK", paramString, null);
  }
  
  public static void c(String paramString1, String paramString2)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "null";
    }
    a((byte)0, paramString1, str, null);
  }
  
  public static void d(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "null";
    }
    a((byte)0, "MiGameSDK", str, null);
  }
  
  public static void e(String paramString)
  {
    MiLinkLog.w("MiGameSDK", paramString);
  }
  
  public static enum LOG_LEVEL
  {
    static
    {
      ERROR = new LOG_LEVEL("ERROR", 1);
      INFO = new LOG_LEVEL("INFO", 2);
    }
    
    private LOG_LEVEL() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\log\Logger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */