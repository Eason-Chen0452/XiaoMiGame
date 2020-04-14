package com.mi.milink.sdk.base.os;

import java.lang.reflect.Method;

public class LevelPromote
{
  public static void promoteApplicationLevelInMIUI()
  {
    try
    {
      Class.forName("com.miui.whetstone.WhetstoneActivityManager").getDeclaredMethod("promoteApplicationLevel", new Class[] { Integer.TYPE }).invoke(null, new Object[] { Integer.valueOf(2) });
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\LevelPromote.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */