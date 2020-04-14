package com.alipay.sdk.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.mobilesecuritysdk.face.SecurityClientMobile;
import com.alipay.sdk.util.k;
import com.alipay.sdk.util.l;
import java.util.HashMap;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class c
{
  private static final String d = "virtualImeiAndImsi";
  private static final String e = "virtual_imei";
  private static final String f = "virtual_imsi";
  private static c g;
  public String a;
  public String b = "sdk-and-lite";
  public String c;
  
  public static c a()
  {
    try
    {
      if (g == null) {
        g = new c();
      }
      c localc = g;
      return localc;
    }
    finally {}
  }
  
  private static String a(Context paramContext)
  {
    return Float.toString(new TextView(paramContext).getTextSize());
  }
  
  static String a(Context paramContext, HashMap<String, String> paramHashMap)
  {
    String str = "";
    try
    {
      paramContext = SecurityClientMobile.GetApdid(paramContext, paramHashMap);
      if (TextUtils.isEmpty(paramContext)) {
        com.alipay.sdk.app.statistic.a.a("third", "GetApdidNull", "apdid == null");
      }
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        com.alipay.sdk.app.statistic.a.a("third", "GetApdidEx", paramContext);
        paramContext = str;
      }
    }
  }
  
  private String a(com.alipay.sdk.tid.b paramb)
  {
    Context localContext = com.alipay.sdk.sys.b.a().a;
    Object localObject4 = com.alipay.sdk.util.a.a(localContext);
    if (TextUtils.isEmpty(this.a))
    {
      localObject1 = l.a();
      localObject2 = l.b();
      localObject3 = l.e(localContext);
      str1 = k.a(localContext);
      str1 = str1.substring(0, str1.indexOf("://"));
      str2 = l.f(localContext);
      str3 = Float.toString(new TextView(localContext).getTextSize());
      this.a = ("Msp/15.2.2" + " (" + (String)localObject1 + ";" + (String)localObject2 + ";" + (String)localObject3 + ";" + str1 + ";" + str2 + ";" + str3);
    }
    String str1 = com.alipay.sdk.util.a.b(localContext).p;
    String str2 = ((com.alipay.sdk.util.a)localObject4).a();
    String str3 = ((com.alipay.sdk.util.a)localObject4).b();
    Object localObject5 = com.alipay.sdk.sys.b.a().a;
    Object localObject3 = ((Context)localObject5).getSharedPreferences("virtualImeiAndImsi", 0);
    Object localObject1 = ((SharedPreferences)localObject3).getString("virtual_imsi", null);
    Object localObject2 = localObject1;
    Object localObject6;
    label339:
    boolean bool;
    String str4;
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      if (!TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
        break label720;
      }
      localObject1 = com.alipay.sdk.sys.b.a().c();
      if (TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject1 = b();
        ((SharedPreferences)localObject3).edit().putString("virtual_imsi", (String)localObject1).commit();
        localObject2 = localObject1;
      }
    }
    else
    {
      localObject6 = com.alipay.sdk.sys.b.a().a;
      localObject5 = ((Context)localObject6).getSharedPreferences("virtualImeiAndImsi", 0);
      localObject3 = ((SharedPreferences)localObject5).getString("virtual_imei", null);
      localObject1 = localObject3;
      if (TextUtils.isEmpty((CharSequence)localObject3))
      {
        if (!TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
          break label732;
        }
        localObject1 = b();
        ((SharedPreferences)localObject5).edit().putString("virtual_imei", (String)localObject1).commit();
      }
      if (paramb != null) {
        this.c = paramb.b;
      }
      localObject5 = Build.MANUFACTURER.replace(";", " ");
      localObject6 = Build.MODEL.replace(";", " ");
      bool = com.alipay.sdk.sys.b.b();
      str4 = ((com.alipay.sdk.util.a)localObject4).a;
      localObject3 = ((WifiManager)localContext.getSystemService("wifi")).getConnectionInfo();
      if (localObject3 == null) {
        break label744;
      }
      localObject3 = ((WifiInfo)localObject3).getSSID();
      label434:
      localObject4 = ((WifiManager)localContext.getSystemService("wifi")).getConnectionInfo();
      if (localObject4 == null) {
        break label751;
      }
    }
    label720:
    label732:
    label744:
    label751:
    for (localObject4 = ((WifiInfo)localObject4).getBSSID();; localObject4 = "00")
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a).append(";").append(str1).append(";").append("-1;-1").append(";").append("1").append(";").append(str2).append(";").append(str3).append(";").append(this.c).append(";").append((String)localObject5).append(";").append((String)localObject6).append(";").append(bool).append(";").append(str4).append(";-1;-1;").append(this.b).append(";").append((String)localObject2).append(";").append((String)localObject1).append(";").append((String)localObject3).append(";").append((String)localObject4);
      if (paramb != null)
      {
        localObject1 = new HashMap();
        ((HashMap)localObject1).put("tid", paramb.a);
        ((HashMap)localObject1).put("utdid", com.alipay.sdk.sys.b.a().c());
        paramb = b(localContext, (HashMap)localObject1);
        if (!TextUtils.isEmpty(paramb)) {
          localStringBuilder.append(";").append(paramb);
        }
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localObject1 = ((String)localObject1).substring(3, 18);
      break;
      localObject1 = com.alipay.sdk.util.a.a((Context)localObject5).a();
      break;
      localObject1 = com.alipay.sdk.util.a.a((Context)localObject6).b();
      break label339;
      localObject3 = "-1";
      break label434;
    }
  }
  
  public static String b()
  {
    String str = Long.toHexString(System.currentTimeMillis());
    Random localRandom = new Random();
    return str + (localRandom.nextInt(9000) + 1000);
  }
  
  private static String b(Context paramContext)
  {
    paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    if (paramContext != null) {
      return paramContext.getSSID();
    }
    return "-1";
  }
  
  private String c()
  {
    return this.c;
  }
  
  private static String c(Context paramContext)
  {
    paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    if (paramContext != null) {
      return paramContext.getBSSID();
    }
    return "00";
  }
  
  private static String d()
  {
    return "1";
  }
  
  private static String e()
  {
    return "-1;-1";
  }
  
  private static String f()
  {
    Context localContext = com.alipay.sdk.sys.b.a().a;
    SharedPreferences localSharedPreferences = localContext.getSharedPreferences("virtualImeiAndImsi", 0);
    String str2 = localSharedPreferences.getString("virtual_imei", null);
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      if (!TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
        break label72;
      }
    }
    label72:
    for (str1 = b();; str1 = com.alipay.sdk.util.a.a(localContext).b())
    {
      localSharedPreferences.edit().putString("virtual_imei", str1).commit();
      return str1;
    }
  }
  
  private static String g()
  {
    Context localContext = com.alipay.sdk.sys.b.a().a;
    SharedPreferences localSharedPreferences = localContext.getSharedPreferences("virtualImeiAndImsi", 0);
    String str2 = localSharedPreferences.getString("virtual_imsi", null);
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      if (!TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
        break label97;
      }
      str1 = com.alipay.sdk.sys.b.a().c();
      if (!TextUtils.isEmpty(str1)) {
        break label86;
      }
      str1 = b();
    }
    for (;;)
    {
      localSharedPreferences.edit().putString("virtual_imsi", str1).commit();
      return str1;
      label86:
      str1 = str1.substring(3, 18);
      continue;
      label97:
      str1 = com.alipay.sdk.util.a.a(localContext).a();
    }
  }
  
  /* Error */
  public final void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 65	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 89	com/alipay/sdk/sys/b:a	()Lcom/alipay/sdk/sys/b;
    //   17: getfield 92	com/alipay/sdk/sys/b:a	Landroid/content/Context;
    //   20: invokestatic 285	android/preference/PreferenceManager:getDefaultSharedPreferences	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   23: invokeinterface 176 1 0
    //   28: ldc_w 287
    //   31: aload_1
    //   32: invokeinterface 182 3 0
    //   37: invokeinterface 186 1 0
    //   42: pop
    //   43: aload_1
    //   44: putstatic 290	com/alipay/sdk/cons/a:b	Ljava/lang/String;
    //   47: goto -36 -> 11
    //   50: astore_1
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	c
    //   0	55	1	paramString	String
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	50	finally
    //   14	47	50	finally
  }
  
  public final String b(Context paramContext, HashMap<String, String> paramHashMap)
  {
    paramContext = Executors.newFixedThreadPool(2).submit(new d(this, paramContext, paramHashMap));
    try
    {
      paramContext = (String)paramContext.get(3000L, TimeUnit.MILLISECONDS);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      com.alipay.sdk.app.statistic.a.a("third", "GetApdidTimeout", paramContext);
    }
    return "";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\data\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */