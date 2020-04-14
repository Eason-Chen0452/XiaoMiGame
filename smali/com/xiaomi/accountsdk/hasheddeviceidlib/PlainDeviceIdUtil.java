package com.xiaomi.accountsdk.hasheddeviceidlib;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

public final class PlainDeviceIdUtil
{
  public static b a()
  {
    return a.a();
  }
  
  public static final class PlainDeviceIdUtilImplDefault
    implements PlainDeviceIdUtil.b
  {
    public final String a(Context paramContext)
    {
      Object localObject;
      if (paramContext == null) {
        localObject = null;
      }
      String str;
      do
      {
        return (String)localObject;
        str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
        localObject = str;
      } while (!TextUtils.isEmpty(str));
      return MacAddressUtil.a(paramContext);
    }
  }
  
  private static final class a
  {
    private static volatile PlainDeviceIdUtil.b a = new PlainDeviceIdUtil.PlainDeviceIdUtilImplDefault();
  }
  
  public static abstract interface b
  {
    public abstract String a(Context paramContext);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\hasheddeviceidlib\PlainDeviceIdUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */