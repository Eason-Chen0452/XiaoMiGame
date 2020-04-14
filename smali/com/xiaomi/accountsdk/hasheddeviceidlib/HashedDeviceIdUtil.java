package com.xiaomi.accountsdk.hasheddeviceidlib;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.AccountLog;
import java.util.UUID;

public class HashedDeviceIdUtil
{
  private final Context a;
  private final PlainDeviceIdUtil.b b;
  
  public HashedDeviceIdUtil(Context paramContext)
  {
    this(paramContext, PlainDeviceIdUtil.a());
  }
  
  public HashedDeviceIdUtil(Context paramContext, PlainDeviceIdUtil.b paramb)
  {
    if (paramb == null) {
      throw new IllegalArgumentException("plainDeviceIdFetcher == null");
    }
    if (paramContext == null) {}
    for (paramContext = null;; paramContext = paramContext.getApplicationContext())
    {
      this.a = paramContext;
      this.b = paramb;
      return;
    }
  }
  
  private static boolean a(String paramString)
  {
    return !TextUtils.isEmpty(paramString);
  }
  
  private String b()
  {
    try
    {
      String str = this.b.a(this.a);
      if (a(str))
      {
        str = DeviceIdHasher.a(str);
        return str;
      }
    }
    catch (SecurityException localSecurityException)
    {
      AccountLog.c("HashedDeviceIdUtil", "can't get deviceid.", localSecurityException);
    }
    return null;
  }
  
  private void b(String paramString)
  {
    SharedPreferences localSharedPreferences = c();
    if (localSharedPreferences != null) {
      localSharedPreferences.edit().putString("hashedDeviceId", paramString).commit();
    }
  }
  
  private SharedPreferences c()
  {
    if (this.a == null) {
      return null;
    }
    return this.a.getSharedPreferences("deviceId", 0);
  }
  
  public final String a()
  {
    String str = null;
    Object localObject = a.a(a.a());
    if (localObject == DeviceIdPolicy.RUNTIME_DEVICE_ID_ONLY)
    {
      localObject = b();
      return (String)localObject;
    }
    if (localObject != DeviceIdPolicy.CACHED_THEN_RUNTIME_THEN_PSEUDO) {
      throw new IllegalStateException("unknown policy " + localObject);
    }
    localObject = c();
    if (localObject == null) {}
    for (;;)
    {
      localObject = str;
      if (a(str)) {
        break;
      }
      str = b();
      if (str == null) {
        break label101;
      }
      b(str);
      return str;
      str = ((SharedPreferences)localObject).getString("hashedDeviceId", null);
    }
    label101:
    str = String.format("%s%s", new Object[] { "android_pseudo_", UUID.randomUUID().toString() });
    b(str);
    return str;
  }
  
  public static enum DeviceIdPolicy
  {
    private DeviceIdPolicy() {}
  }
  
  public static final class a
  {
    public static HashedDeviceIdUtil.DeviceIdPolicy a = HashedDeviceIdUtil.DeviceIdPolicy.RUNTIME_DEVICE_ID_ONLY;
    private static final a c = new a();
    private HashedDeviceIdUtil.DeviceIdPolicy b = a;
    
    public static a a()
    {
      return c;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\hasheddeviceidlib\HashedDeviceIdUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */