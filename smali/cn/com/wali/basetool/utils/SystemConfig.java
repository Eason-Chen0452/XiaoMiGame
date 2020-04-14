package cn.com.wali.basetool.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;

public final class SystemConfig
{
  private static Boolean a;
  private static Boolean b;
  private static ConnectivityManager c;
  private static TelephonyManager d;
  
  public static int a(String paramString)
  {
    try
    {
      int i = ((Integer)Class.forName("android.os.SystemProperties").getMethod("getInt", new Class[] { String.class, Integer.TYPE }).invoke(null, new Object[] { paramString, Integer.valueOf(0) })).intValue();
      return i;
    }
    catch (Exception paramString)
    {
      Log.w("", paramString);
    }
    return 0;
  }
  
  public static boolean a(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((paramContext == null) || (paramContext.getType() == 1)) {
      return false;
    }
    try
    {
      paramContext = paramContext.getExtraInfo();
      if (paramContext == null) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = null;
      }
      int i = 0;
      while (i < 3)
      {
        if (new String[] { "cmwap", "uniwap", "3gwap" }[i].equals(paramContext)) {
          return true;
        }
        i += 1;
      }
    }
    return false;
  }
  
  private static int b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (paramString.length() < 5) {
      return -1;
    }
    try
    {
      int j = paramString.length();
      if (paramString.length() > 5) {}
      for (int i = 3;; i = 2)
      {
        i = Integer.parseInt(paramString.substring(j - i));
        return i;
      }
      return -1;
    }
    catch (Exception paramString) {}
  }
  
  public static boolean b(Context paramContext)
  {
    Object localObject = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localObject == null) || (((NetworkInfo)localObject).getType() == 1)) {
      return false;
    }
    paramContext = null;
    try
    {
      localObject = ((NetworkInfo)localObject).getExtraInfo();
      paramContext = (Context)localObject;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
      if (paramContext.indexOf("ctwap") < 0) {
        break label61;
      }
      return true;
    }
    return paramContext != null;
  }
  
  public static boolean c(Context paramContext)
  {
    if (a == null)
    {
      g(paramContext);
      if (d != null) {
        break label59;
      }
      paramContext = "";
      int i = b(paramContext);
      if ((i != 0) && (2 != i) && (7 != i)) {
        break label85;
      }
    }
    label59:
    label85:
    for (boolean bool = true;; bool = false)
    {
      a = new Boolean(bool);
      return a.booleanValue();
      String str = d.getSimOperator();
      paramContext = str;
      if (!TextUtils.isEmpty(str)) {
        break;
      }
      paramContext = d.getNetworkOperator();
      break;
    }
  }
  
  public static boolean d(Context paramContext)
  {
    if (b == null)
    {
      g(paramContext);
      if (d != null) {
        break label57;
      }
      paramContext = "";
      if ((!paramContext.equals("46001")) && (!paramContext.equals("46006"))) {
        break label79;
      }
    }
    label57:
    label79:
    for (boolean bool = true;; bool = false)
    {
      b = new Boolean(bool);
      return b.booleanValue();
      String str = d.getSimOperator();
      paramContext = str;
      if (!TextUtils.isEmpty(str)) {
        break;
      }
      paramContext = "";
      break;
    }
  }
  
  public static boolean e(Context paramContext)
  {
    h(paramContext);
    return (c.getActiveNetworkInfo() != null) && (c.getActiveNetworkInfo().isConnected());
  }
  
  public static boolean f(Context paramContext)
  {
    h(paramContext);
    paramContext = c.getActiveNetworkInfo();
    if (paramContext == null) {}
    while ((paramContext.getType() != 1) && (paramContext.getType() != 6)) {
      return false;
    }
    return true;
  }
  
  private static void g(Context paramContext)
  {
    if (d == null) {
      d = (TelephonyManager)paramContext.getSystemService("phone");
    }
  }
  
  private static void h(Context paramContext)
  {
    if (c == null) {
      c = (ConnectivityManager)paramContext.getSystemService("connectivity");
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\utils\SystemConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */