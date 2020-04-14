package com.xiaomi.hy.dj.f;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.miui.deviceid.IdentifierManager;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class m
{
  static String a = null;
  static String b = null;
  static String c = null;
  static String d = null;
  static String e = null;
  
  public static String a()
  {
    return d;
  }
  
  private static PublicKey a(InputStream paramInputStream)
    throws CertificateException
  {
    return CertificateFactory.getInstance("X.509").generateCertificate(paramInputStream).getPublicKey();
  }
  
  public static PublicKey a(String paramString)
    throws CertificateException
  {
    return a(new ByteArrayInputStream(paramString.getBytes()));
  }
  
  public static PublicKey a(byte[] paramArrayOfByte)
    throws CertificateException
  {
    return a(new ByteArrayInputStream(paramArrayOfByte));
  }
  
  public static boolean a(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null) {
      return false;
    }
    return paramContext.getActiveNetworkInfo() != null;
  }
  
  public static String b()
  {
    return e;
  }
  
  public static String b(String paramString)
  {
    try
    {
      paramString = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { paramString });
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }
  
  public static void b(Context paramContext)
  {
    d = d(paramContext);
    e = IdentifierManager.a(paramContext);
  }
  
  private static String c()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(b("ro.build.version.release"));
    localStringBuffer.append("_");
    if (d()) {
      localStringBuffer.append("alpha");
    }
    for (;;)
    {
      localStringBuffer.append("_");
      localStringBuffer.append(Build.VERSION.INCREMENTAL);
      return localStringBuffer.toString();
      if (e()) {
        localStringBuffer.append("develop");
      } else if (f()) {
        localStringBuffer.append("stable");
      } else {
        localStringBuffer.append("na");
      }
    }
  }
  
  public static String c(Context paramContext)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(b("ro.product.manufacturer"));
    localStringBuffer.append("|");
    localStringBuffer.append(b("ro.product.model"));
    localStringBuffer.append("|");
    localStringBuffer.append(b("ro.build.version.release"));
    localStringBuffer.append("|");
    localStringBuffer.append(b("ro.build.display.id"));
    localStringBuffer.append("|");
    localStringBuffer.append(b("ro.build.version.sdk"));
    localStringBuffer.append("|");
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (TextUtils.isEmpty(paramContext.getDeviceId())) {}
    for (paramContext = "";; paramContext = paramContext.getDeviceId())
    {
      localStringBuffer.append(paramContext);
      return localStringBuffer.toString();
    }
  }
  
  public static boolean c(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,2,5-9]))\\d{8}$").matcher(paramString).matches();
  }
  
  public static String d(Context paramContext)
  {
    if (d == null)
    {
      paramContext = new StringBuffer();
      paramContext.append(b("ro.product.manufacturer"));
      paramContext.append("|");
      paramContext.append(b("ro.product.model"));
      paramContext.append("|");
      paramContext.append(c());
      paramContext.append("|");
      paramContext.append(b("ro.build.display.id"));
      paramContext.append("|");
      paramContext.append(b("ro.build.version.sdk"));
      paramContext.append("|");
      paramContext.append(b("ro.product.device"));
      d = paramContext.toString();
    }
    return d;
  }
  
  private static boolean d()
  {
    try
    {
      boolean bool = b("ro.product.mod_device").endsWith("_alpha");
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  private static boolean e()
  {
    try
    {
      String str = Build.VERSION.INCREMENTAL;
      if (!TextUtils.isEmpty(str))
      {
        boolean bool = str.matches("\\d+.\\d+.\\d+(-internal)?");
        if (bool) {
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  private static boolean f()
  {
    return ("user".equals(Build.TYPE)) && (!e());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */