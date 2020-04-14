package com.ta.utdid2.android.utils;

import java.lang.reflect.Method;

public class DebugUtils
{
  public static boolean DBG = false;
  private static final String PROPERTY_DEBUG = "alidebug";
  private static Class<?> mClassType;
  private static Method mGetIntMethod;
  private static Method mGetMethod;
  
  static
  {
    boolean bool = true;
    if (getInt("alidebug", 0) == 1) {}
    for (;;)
    {
      DBG = bool;
      mClassType = null;
      mGetMethod = null;
      mGetIntMethod = null;
      return;
      bool = false;
    }
  }
  
  public static String get(String paramString)
  {
    
    try
    {
      paramString = (String)mGetMethod.invoke(mClassType, new Object[] { paramString });
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static int getInt(String paramString, int paramInt)
  {
    
    try
    {
      int i = ((Integer)mGetIntMethod.invoke(mClassType, new Object[] { paramString, Integer.valueOf(paramInt) })).intValue();
      return i;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return paramInt;
  }
  
  private static void init()
  {
    try
    {
      if (mClassType == null)
      {
        mClassType = Class.forName("android.os.SystemProperties");
        mGetMethod = mClassType.getDeclaredMethod("get", new Class[] { String.class });
        mGetIntMethod = mClassType.getDeclaredMethod("getInt", new Class[] { String.class, Integer.TYPE });
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\android\utils\DebugUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */