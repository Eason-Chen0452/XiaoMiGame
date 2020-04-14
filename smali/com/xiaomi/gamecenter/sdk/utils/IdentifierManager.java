package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Method;

public class IdentifierManager
{
  private static Object a;
  private static Class<?> b;
  private static Method c = null;
  private static Method d = null;
  private static Method e = null;
  private static Method f = null;
  
  static
  {
    try
    {
      Class localClass = Class.forName("com.android.id.impl.IdProviderImpl");
      b = localClass;
      a = localClass.newInstance();
      c = b.getMethod("getUDID", new Class[] { Context.class });
      d = b.getMethod("getOAID", new Class[] { Context.class });
      e = b.getMethod("getVAID", new Class[] { Context.class });
      f = b.getMethod("getAAID", new Class[] { Context.class });
      return;
    }
    catch (Exception localException)
    {
      Log.e("IdentifierManager", "reflect exception!" + localException.getMessage());
    }
  }
  
  public static String a(Context paramContext)
  {
    return a(paramContext, c);
  }
  
  private static String a(Context paramContext, Method paramMethod)
  {
    if ((a != null) && (paramMethod != null)) {
      try
      {
        paramContext = paramMethod.invoke(a, new Object[] { paramContext });
        if (paramContext != null)
        {
          paramContext = (String)paramContext;
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        Log.e("IdentifierManager", "invoke exception!" + paramContext.getMessage());
      }
    }
    return null;
  }
  
  public static String b(Context paramContext)
  {
    return a(paramContext, d);
  }
  
  public static String c(Context paramContext)
  {
    return a(paramContext, e);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\IdentifierManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */