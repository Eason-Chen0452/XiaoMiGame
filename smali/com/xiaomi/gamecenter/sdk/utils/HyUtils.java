package com.xiaomi.gamecenter.sdk.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gson.Gson;
import com.xiaomi.licensinglibrary.model.ProductCatalog;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class HyUtils
{
  public static Gson a = new Gson();
  public static HashMap<String, ProductCatalog> b = new HashMap();
  public static long c = 0L;
  public static String d = "http://f1.g.mi.com/download/Wali/1d760a5a1e7bb41d015a7e27ea5633bfb81e7bb46/MiGameCenterSDKService.apk";
  public static String e = "6ade4661ba038e1c534a4d43a269a532";
  public static long f = 9147481L;
  public static String g = "微信登录，小号登录等更多功能，请安装并使用小米游戏服务登录 >";
  public static String h = "#66000000";
  public static int i = 10;
  public static String j = "安装并登录小米游戏服务，获取更多福利 >";
  public static String k = "#FFFF5400";
  public static int l = 11;
  public static String m = "https://static.g.mi.com/game/newAct/guildSdk2/index.html?";
  public static String n = "权限设置教程";
  public static boolean o = false;
  public static int p = -1;
  public static final Object q = new Object();
  public static List<String> r = null;
  public static List<String> s = null;
  private static ActivityManager t = null;
  private static ExecutorService u;
  private static long v;
  
  public static String a(Map<String, String> paramMap)
  {
    ArrayList localArrayList = new ArrayList(paramMap.keySet());
    Collections.sort(localArrayList);
    String str1 = "";
    int i1 = 0;
    String str2;
    String str3;
    if (i1 < localArrayList.size())
    {
      str2 = (String)localArrayList.get(i1);
      str3 = (String)paramMap.get(str2);
      if (TextUtils.isEmpty(str3)) {
        break label155;
      }
      if (i1 == localArrayList.size() - 1) {
        str1 = str1 + str2 + "=" + str3;
      }
    }
    label155:
    for (;;)
    {
      i1 += 1;
      break;
      str1 = str1 + str2 + "=" + str3 + "&";
      continue;
      return str1;
    }
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(paramArrayOfByte))).getPublicKey().toString();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      Log.w("", "", paramArrayOfByte);
    }
    return null;
  }
  
  public static ExecutorService a()
  {
    if (u == null)
    {
      int i1 = Runtime.getRuntime().availableProcessors() + 1;
      LinkedBlockingQueue localLinkedBlockingQueue = new LinkedBlockingQueue();
      u = new ThreadPoolExecutor(i1, i1 * 2, 1L, TimeUnit.SECONDS, localLinkedBlockingQueue);
    }
    return u;
  }
  
  public static JSONArray a(String[] paramArrayOfString)
  {
    JSONArray localJSONArray = new JSONArray();
    if (paramArrayOfString.length <= 0) {
      localJSONArray.put("ALIPAY");
    }
    for (;;)
    {
      return localJSONArray;
      int i2 = paramArrayOfString.length;
      int i1 = 0;
      while (i1 < i2)
      {
        localJSONArray.put(paramArrayOfString[i1]);
        i1 += 1;
      }
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = "chmod " + paramString1 + " " + paramString2;
      Runtime.getRuntime().exec(paramString1);
      return;
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public static boolean a(Context paramContext)
  {
    boolean bool = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.tencent.mm", 0);
      if (paramContext != null) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  private static void b(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      d = paramString.optString("downloadUrl", "http://f1.g.mi.com/download/Wali/1d760a5a1e7bb41d015a7e27ea5633bfb81e7bb46/MiGameCenterSDKService.apk");
      e = paramString.optString("md5", "6ade4661ba038e1c534a4d43a269a532");
      f = paramString.optLong("size", 9147481L);
      g = paramString.optString("baseText", "微信登录，小号登录等更多功能，请安装并使用小米游戏服务登录>");
      h = paramString.optString("baseTextColor", "#66000000");
      i = paramString.optInt("baseTextSize", 10);
      j = paramString.optString("commonText");
      k = paramString.optString("commonTextColor", "#FFFF5400");
      l = paramString.optInt("commonTextSize", 10);
      m = paramString.optString("guideLink", "https://static.g.mi.com/game/newAct/guildSdk2/index.html?");
      n = paramString.optString("guideWord", "权限设置教程");
      o = paramString.optBoolean("force", false);
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  /* Error */
  public static boolean b()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 329	java/lang/System:currentTimeMillis	()J
    //   6: lstore_0
    //   7: getstatic 331	com/xiaomi/gamecenter/sdk/utils/HyUtils:v	J
    //   10: lstore_2
    //   11: lload_0
    //   12: lload_2
    //   13: lsub
    //   14: ldc2_w 332
    //   17: lcmp
    //   18: ifge +12 -> 30
    //   21: iconst_1
    //   22: istore 4
    //   24: ldc 2
    //   26: monitorexit
    //   27: iload 4
    //   29: ireturn
    //   30: lload_0
    //   31: putstatic 331	com/xiaomi/gamecenter/sdk/utils/HyUtils:v	J
    //   34: iconst_0
    //   35: istore 4
    //   37: goto -13 -> 24
    //   40: astore 5
    //   42: ldc 2
    //   44: monitorexit
    //   45: aload 5
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	25	0	l1	long
    //   10	3	2	l2	long
    //   22	14	4	bool	boolean
    //   40	6	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	11	40	finally
    //   30	34	40	finally
  }
  
  public static boolean b(Context paramContext)
  {
    if (g(paramContext))
    {
      ReporterUtils.getInstance().xmsdkReport(2030);
      return true;
    }
    ReporterUtils.getInstance().xmsdkReport(2031);
    return false;
  }
  
  public static String c()
  {
    Date localDate = new Date();
    return new SimpleDateFormat("HH:mm:ss dd/M", Locale.CHINA).format(localDate);
  }
  
  public static String c(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      OSUtils.ROM localROM = OSUtils.a();
      localStringBuilder.append("serviceVersion=").append(d(paramContext)).append("&ua=").append(URLEncoder.encode(b.n, "utf-8")).append("&os=").append(URLEncoder.encode(localROM.name(), "utf-8")).append("&osVersion=").append(URLEncoder.encode(localROM.getVersion(), "utf-8")).append("&brand=").append(URLEncoder.encode(Build.BRAND, "utf-8")).append("&androidApiLevel=").append(Build.VERSION.SDK_INT).append("&systemVersion=").append(URLEncoder.encode(Build.VERSION.RELEASE, "utf-8")).append("&model=").append(URLEncoder.encode(Build.MODEL, "utf-8")).append("&manufacturer=").append(URLEncoder.encode(Build.MANUFACTURER, "utf-8")).append("&device=").append(URLEncoder.encode(Build.DEVICE, "utf-8"));
      return localStringBuilder.toString();
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  public static int d(Context paramContext)
  {
    try
    {
      int i1 = paramContext.getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode;
      return i1;
    }
    catch (Exception paramContext)
    {
      Logger.d(paramContext.getMessage());
    }
    return 0;
  }
  
  public static void d()
  {
    long l1 = System.currentTimeMillis();
    Object localObject1 = "";
    try
    {
      String str = SdkPreferenceUtils.a(MiCommplatform.getInstance().getApplicationContext(), "ServiceInfo");
      localObject1 = str;
      long l2 = SdkPreferenceUtils.b(MiCommplatform.getInstance().getApplicationContext(), "ServiceInfoCheckTime");
      localObject2 = str;
      localObject1 = str;
      if (l2 > c)
      {
        localObject1 = str;
        c = l2;
        localObject2 = str;
      }
    }
    catch (Exception localException)
    {
      Object localObject2;
      do
      {
        for (;;)
        {
          localException.printStackTrace();
          localObject2 = localObject1;
        }
      } while (TextUtils.isEmpty((CharSequence)localObject2));
      b((String)localObject2);
    }
    if (l1 - c > 43200000L)
    {
      a().submit(new f());
      return;
    }
  }
  
  public static boolean e(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    if ((paramContext instanceof Activity))
    {
      if (((Activity)paramContext).isFinishing()) {
        return false;
      }
      if ((Build.VERSION.SDK_INT >= 17) && (((Activity)paramContext).isDestroyed())) {
        return false;
      }
    }
    return true;
  }
  
  public static boolean f(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getInstalledPackages(0);
      int i1 = 0;
      while (i1 < paramContext.size())
      {
        boolean bool = ((PackageInfo)paramContext.get(i1)).packageName.equalsIgnoreCase("com.xiaomi.gamecenter.sdk.service");
        if (bool) {
          return true;
        }
        i1 += 1;
      }
      return false;
    }
    catch (Exception paramContext)
    {
      Logger.d(paramContext.getMessage());
    }
    return false;
  }
  
  private static boolean g(Context paramContext)
  {
    try
    {
      Object localObject = paramContext.getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64);
      paramContext = localObject.signatures[0];
      localObject = ((PackageInfo)localObject).packageName;
      paramContext = a(paramContext.toByteArray());
      Logger.c("for3thd", "packageName=" + (String)localObject);
      Logger.c("for3thd", "pubKey=" + paramContext);
      if ((TextUtils.isEmpty((CharSequence)localObject)) || (!((String)localObject).equals("com.xiaomi.gamecenter.sdk.service")))
      {
        Logger.c("for3thd", "pkgName valid fail");
        return false;
      }
    }
    catch (Exception paramContext)
    {
      Log.w("", "", paramContext);
      return false;
    }
    if ((TextUtils.isEmpty(paramContext)) || (!paramContext.endsWith("OpenSSLRSAPublicKey{modulus=9643933db422075411bda24ac36b56ad57c997e9ca0d27ed8e8e40d6f199e6aabde81e87a28b61e5b0f6ab26cbd080dfdc41a2b74b75b611350ebbed1c3de0d77ff4f0988d4a608f07bfaebf20d029af7edff1d5e578a12568ef07c58804625d0c9730d377420c8b116f2b77f4ad9e5c48c4fc8e00dd305ac16db701bb67860d,publicExponent=10001}")))
    {
      Logger.c("for3thd", "signature valid fail");
      return false;
    }
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\HyUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */