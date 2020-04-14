package com.alipay.sdk.app.statistic;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.alipay.sdk.util.a;
import com.alipay.sdk.util.d;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class c
{
  public static final String A = "BindWaitTimeoutEx";
  public static final String B = "CheckClientExistEx";
  public static final String C = "CheckClientSignEx";
  public static final String D = "GetInstalledAppEx";
  public static final String E = "partner";
  public static final String F = "out_trade_no";
  public static final String G = "trade_no";
  public static final String a = "net";
  public static final String b = "biz";
  public static final String c = "cp";
  public static final String d = "auth";
  public static final String e = "third";
  public static final String f = "FormatResultEx";
  public static final String g = "GetApdidEx";
  public static final String h = "GetApdidNull";
  public static final String i = "GetApdidTimeout";
  public static final String j = "GetUtdidEx";
  public static final String k = "GetPackageInfoEx";
  public static final String l = "NotIncludeSignatures";
  public static final String m = "GetInstalledPackagesEx";
  public static final String n = "GetPublicKeyFromSignEx";
  public static final String o = "H5PayNetworkError";
  public static final String p = "H5AuthNetworkError";
  public static final String q = "SSLError";
  public static final String r = "H5PayDataAnalysisError";
  public static final String s = "H5AuthDataAnalysisError";
  public static final String t = "PublicKeyUnmatch";
  public static final String u = "ClientBindFailed";
  public static final String v = "TriDesEncryptError";
  public static final String w = "TriDesDecryptError";
  public static final String x = "ClientBindException";
  public static final String y = "SaveTradeTokenError";
  public static final String z = "ClientBindServiceFailed";
  String H = String.format("123456789,%s", new Object[] { new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date()) });
  String I;
  String J;
  String K;
  String L;
  String M;
  String N;
  String O;
  String P = "";
  String Q;
  
  public c(Context paramContext)
  {
    this.J = a(paramContext);
    this.K = String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", new Object[] { a("15.2.2"), a("h.a.3.2.2") });
    this.L = String.format("%s,%s,-,-,-", new Object[] { a(com.alipay.sdk.tid.b.a().a), a(com.alipay.sdk.sys.b.a().c()) });
    this.M = String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", new Object[] { a(a.d(paramContext)), "android", a(Build.VERSION.RELEASE), a(Build.MODEL), "-", a(a.a(paramContext).a()), a(a.b(paramContext).p), "gw", a(a.a(paramContext).b()) });
    this.N = "-";
    this.O = "-";
    this.Q = "-";
  }
  
  private static String a(Context paramContext)
  {
    String str1 = "-";
    str2 = "-";
    localObject2 = str2;
    Object localObject1 = str1;
    if (paramContext != null) {
      localObject1 = str1;
    }
    try
    {
      localObject2 = paramContext.getApplicationContext();
      localObject1 = str1;
      paramContext = ((Context)localObject2).getPackageName();
      localObject1 = paramContext;
      localObject2 = ((Context)localObject2).getPackageManager().getPackageInfo(paramContext, 0).versionName;
      localObject1 = paramContext;
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        localObject2 = str2;
      }
    }
    return String.format("%s,%s,-,-,-", new Object[] { localObject1, localObject2 });
  }
  
  static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    return paramString.replace("[", "【").replace("]", "】").replace("(", "（").replace(")", "）").replace(",", "，").replace("-", "=").replace("^", "~");
  }
  
  static String a(Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return "";
    }
    localStringBuffer = new StringBuffer();
    try
    {
      localStringBuffer.append(paramThrowable.getClass().getName()).append(":");
      localStringBuffer.append(paramThrowable.getMessage());
      localStringBuffer.append(" 》 ");
      paramThrowable = paramThrowable.getStackTrace();
      if (paramThrowable != null)
      {
        int i1 = 0;
        while (i1 < paramThrowable.length)
        {
          localStringBuffer.append(paramThrowable[i1].toString() + " 》 ");
          i1 += 1;
        }
      }
      return localStringBuffer.toString();
    }
    catch (Throwable paramThrowable) {}
  }
  
  private void a(String paramString1, String paramString2, Throwable paramThrowable, String paramString3)
  {
    a(paramString1, paramString2, a(paramThrowable), paramString3);
  }
  
  private boolean a()
  {
    return TextUtils.isEmpty(this.P);
  }
  
  @SuppressLint({"SimpleDateFormat"})
  private static String b()
  {
    return String.format("123456789,%s", new Object[] { new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date()) });
  }
  
  private static String b(Context paramContext)
  {
    return String.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,-", new Object[] { a(a.d(paramContext)), "android", a(Build.VERSION.RELEASE), a(Build.MODEL), "-", a(a.a(paramContext).a()), a(a.b(paramContext).p), "gw", a(a.a(paramContext).b()) });
  }
  
  private String b(String paramString)
  {
    if (TextUtils.isEmpty(this.P)) {
      return "";
    }
    String[] arrayOfString1 = paramString.split("&");
    Object localObject3;
    Object localObject2;
    if (arrayOfString1 != null)
    {
      int i2 = arrayOfString1.length;
      int i1 = 0;
      localObject1 = null;
      paramString = null;
      localObject3 = localObject1;
      localObject2 = paramString;
      if (i1 < i2)
      {
        String[] arrayOfString2 = arrayOfString1[i1].split("=");
        localObject2 = localObject1;
        localObject3 = paramString;
        if (arrayOfString2 != null)
        {
          localObject2 = localObject1;
          localObject3 = paramString;
          if (arrayOfString2.length == 2)
          {
            if (!arrayOfString2[0].equalsIgnoreCase("partner")) {
              break label134;
            }
            arrayOfString2[1].replace("\"", "");
            localObject3 = paramString;
            localObject2 = localObject1;
          }
        }
        for (;;)
        {
          i1 += 1;
          localObject1 = localObject2;
          paramString = (String)localObject3;
          break;
          label134:
          if (arrayOfString2[0].equalsIgnoreCase("out_trade_no"))
          {
            localObject3 = arrayOfString2[1].replace("\"", "");
            localObject2 = localObject1;
          }
          else
          {
            localObject2 = localObject1;
            localObject3 = paramString;
            if (arrayOfString2[0].equalsIgnoreCase("trade_no"))
            {
              localObject2 = arrayOfString2[1].replace("\"", "");
              localObject3 = paramString;
            }
          }
        }
      }
    }
    else
    {
      localObject3 = null;
      localObject2 = null;
    }
    paramString = a((String)localObject3);
    Object localObject1 = a((String)localObject2);
    this.I = String.format("%s,%s,-,%s,-,-,-", new Object[] { paramString, localObject1, a((String)localObject1) });
    return String.format("[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]", new Object[] { this.H, this.I, this.J, this.K, this.L, this.M, this.N, this.O, this.P, this.Q });
  }
  
  private static String c()
  {
    return String.format("android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-", new Object[] { a("15.2.2"), a("h.a.3.2.2") });
  }
  
  private static String c(String paramString)
  {
    String[] arrayOfString1 = paramString.split("&");
    Object localObject3;
    Object localObject2;
    if (arrayOfString1 != null)
    {
      int i2 = arrayOfString1.length;
      int i1 = 0;
      localObject1 = null;
      paramString = null;
      localObject3 = localObject1;
      localObject2 = paramString;
      if (i1 < i2)
      {
        String[] arrayOfString2 = arrayOfString1[i1].split("=");
        localObject2 = localObject1;
        localObject3 = paramString;
        if (arrayOfString2 != null)
        {
          localObject2 = localObject1;
          localObject3 = paramString;
          if (arrayOfString2.length == 2)
          {
            if (!arrayOfString2[0].equalsIgnoreCase("partner")) {
              break label115;
            }
            arrayOfString2[1].replace("\"", "");
            localObject3 = paramString;
            localObject2 = localObject1;
          }
        }
        for (;;)
        {
          i1 += 1;
          localObject1 = localObject2;
          paramString = (String)localObject3;
          break;
          label115:
          if (arrayOfString2[0].equalsIgnoreCase("out_trade_no"))
          {
            localObject3 = arrayOfString2[1].replace("\"", "");
            localObject2 = localObject1;
          }
          else
          {
            localObject2 = localObject1;
            localObject3 = paramString;
            if (arrayOfString2[0].equalsIgnoreCase("trade_no"))
            {
              localObject2 = arrayOfString2[1].replace("\"", "");
              localObject3 = paramString;
            }
          }
        }
      }
    }
    else
    {
      localObject3 = null;
      localObject2 = null;
    }
    paramString = a((String)localObject3);
    Object localObject1 = a((String)localObject2);
    return String.format("%s,%s,-,%s,-,-,-", new Object[] { paramString, localObject1, a((String)localObject1) });
  }
  
  private static String d()
  {
    return String.format("%s,%s,-,-,-", new Object[] { a(com.alipay.sdk.tid.b.a().a), a(com.alipay.sdk.sys.b.a().c()) });
  }
  
  public final void a(String paramString1, String paramString2, String paramString3)
  {
    a(paramString1, paramString2, paramString3, "-");
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = "";
    if (!TextUtils.isEmpty(this.P)) {
      str = "" + "^";
    }
    paramString1 = str + String.format("%s,%s,%s,%s", new Object[] { paramString1, paramString2, a(paramString3), paramString4 });
    this.P += paramString1;
  }
  
  public final void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    a(paramString1, paramString2, a(paramThrowable));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\app\statistic\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */