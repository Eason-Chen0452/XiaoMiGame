package com.xiaomi.game.plugin.stat.b;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.xiaomi.game.plugin.stat.c.a;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.json.JSONArray;
import org.json.JSONObject;

class d
{
  private static String a;
  
  public static String a()
  {
    JSONArray localJSONArray1 = new JSONArray();
    JSONObject localJSONObject = new JSONObject();
    localJSONArray1.put(localJSONObject);
    localJSONObject.put("startTS", System.currentTimeMillis());
    localJSONObject.put("endTS", System.currentTimeMillis() + 20L);
    JSONArray localJSONArray2 = new JSONArray();
    localJSONObject.put("content", localJSONArray2);
    localJSONObject = new JSONObject();
    localJSONArray2.put(localJSONObject);
    localJSONObject.put("category", "mistat_basic");
    localJSONArray2 = new JSONArray();
    localJSONObject.put("values", localJSONArray2);
    localJSONObject = new JSONObject();
    localJSONObject.put("key", "mistat_dau");
    localJSONObject.put("type", "event");
    localJSONObject.put("value", 1);
    localJSONArray2.put(localJSONObject);
    return localJSONArray1.toString();
  }
  
  static String a(Context paramContext)
  {
    String str2 = null;
    for (;;)
    {
      try
      {
        if (a == null)
        {
          str1 = a.a(paramContext, "device_id");
          a = str1;
          if (TextUtils.isEmpty(str1)) {
            str3 = b(paramContext);
          }
        }
      }
      catch (Throwable paramContext)
      {
        String str1;
        String str3;
        Object localObject;
        paramContext.printStackTrace();
        continue;
      }
      try
      {
        str1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
        if (Build.VERSION.SDK_INT > 8) {
          str2 = Build.SERIAL;
        }
        str1 = a(str3 + str1 + str2);
        a = str1;
        if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str3))) {
          a.a(paramContext, "device_id", a);
        }
        return a;
      }
      catch (Throwable localThrowable)
      {
        localObject = null;
      }
    }
  }
  
  static String a(String paramString)
  {
    if (paramString != null) {}
    try
    {
      Object localObject = MessageDigest.getInstance("SHA1");
      ((MessageDigest)localObject).update(b(paramString));
      localObject = String.format("%1$032X", new Object[] { new BigInteger(1, ((MessageDigest)localObject).digest()) });
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return null;
    return paramString;
  }
  
  static boolean a(Context paramContext, String paramString)
  {
    a.a(paramContext, "crash_content", paramString);
    if (TextUtils.isEmpty(paramString)) {
      return a.a(paramContext, "crash_create_time", null);
    }
    return a.a(paramContext, "crash_create_time", String.valueOf(System.currentTimeMillis()));
  }
  
  /* Error */
  public static String b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 175	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: ldc -79
    //   6: aload_0
    //   7: invokevirtual 180	android/content/Context:getPackageName	()Ljava/lang/String;
    //   10: invokevirtual 186	android/content/pm/PackageManager:checkPermission	(Ljava/lang/String;Ljava/lang/String;)I
    //   13: ifne +54 -> 67
    //   16: aload_0
    //   17: ldc -68
    //   19: invokevirtual 192	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   22: checkcast 194	android/telephony/TelephonyManager
    //   25: astore_2
    //   26: aload_2
    //   27: invokevirtual 197	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   30: astore_0
    //   31: bipush 10
    //   33: istore_1
    //   34: aload_0
    //   35: ifnonnull +25 -> 60
    //   38: iload_1
    //   39: ifle +21 -> 60
    //   42: ldc2_w 198
    //   45: invokestatic 205	java/lang/Thread:sleep	(J)V
    //   48: aload_2
    //   49: invokevirtual 197	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   52: astore_0
    //   53: iload_1
    //   54: iconst_1
    //   55: isub
    //   56: istore_1
    //   57: goto -23 -> 34
    //   60: aload_0
    //   61: areturn
    //   62: astore_0
    //   63: aload_0
    //   64: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   67: ldc -49
    //   69: areturn
    //   70: astore_0
    //   71: goto -23 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	paramContext	Context
    //   33	24	1	i	int
    //   25	24	2	localTelephonyManager	android.telephony.TelephonyManager
    // Exception table:
    //   from	to	target	type
    //   0	31	62	java/lang/Throwable
    //   42	48	62	java/lang/Throwable
    //   48	53	62	java/lang/Throwable
    //   42	48	70	java/lang/InterruptedException
  }
  
  private static byte[] b(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return paramString.getBytes();
  }
  
  static String c(Context paramContext)
  {
    try
    {
      String str = a.a(paramContext, "crash_create_time");
      if (!TextUtils.isEmpty(str))
      {
        long l = Long.parseLong(str);
        if (Math.abs(System.currentTimeMillis() - l) < 259200000L) {
          return a.a(paramContext, "crash_content");
        }
        a(paramContext, null);
        return null;
      }
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  static boolean d(Context paramContext)
  {
    try
    {
      paramContext = a.a(paramContext, "report_crash_time");
      if (!TextUtils.isEmpty(paramContext))
      {
        long l = Long.parseLong(paramContext);
        l = Math.abs(System.currentTimeMillis() - l);
        if (l < 60000L) {
          return false;
        }
      }
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return true;
  }
  
  static boolean e(Context paramContext)
  {
    return a.a(paramContext, "report_crash_time", String.valueOf(System.currentTimeMillis()));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */