package com.alipay.sdk.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebSettings.TextSize;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.sdk.app.h;
import com.alipay.sdk.app.i;
import com.alipay.sdk.app.statistic.a;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"SetJavaScriptEnabled", "DefaultLocale"})
public final class l
{
  static final String a = "com.alipay.android.app";
  public static final String b = "com.eg.android.AlipayGphone";
  public static final int c = 99;
  public static final int d = 73;
  
  public static WebView a(Activity paramActivity, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2))
    {
      CookieSyncManager.createInstance(paramActivity.getApplicationContext()).sync();
      CookieManager.getInstance().setCookie(paramString1, paramString2);
      CookieSyncManager.getInstance().sync();
    }
    Object localObject = new LinearLayout(paramActivity);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    ((LinearLayout)localObject).setOrientation(1);
    paramActivity.setContentView((View)localObject, localLayoutParams);
    paramString2 = new WebView(paramActivity);
    localLayoutParams.weight = 1.0F;
    paramString2.setVisibility(0);
    ((LinearLayout)localObject).addView(paramString2, localLayoutParams);
    localObject = paramString2.getSettings();
    ((WebSettings)localObject).setUserAgentString(((WebSettings)localObject).getUserAgentString() + d(paramActivity));
    ((WebSettings)localObject).setRenderPriority(WebSettings.RenderPriority.HIGH);
    ((WebSettings)localObject).setSupportMultipleWindows(true);
    ((WebSettings)localObject).setJavaScriptEnabled(true);
    ((WebSettings)localObject).setSavePassword(false);
    ((WebSettings)localObject).setJavaScriptCanOpenWindowsAutomatically(true);
    ((WebSettings)localObject).setMinimumFontSize(((WebSettings)localObject).getMinimumFontSize() + 8);
    ((WebSettings)localObject).setAllowFileAccess(false);
    ((WebSettings)localObject).setTextSize(WebSettings.TextSize.NORMAL);
    paramString2.setVerticalScrollbarOverlay(true);
    paramString2.setDownloadListener(new m(paramActivity));
    if (Build.VERSION.SDK_INT >= 7) {}
    for (;;)
    {
      try
      {
        paramActivity = paramString2.getSettings().getClass().getMethod("setDomStorageEnabled", new Class[] { Boolean.TYPE });
        if (paramActivity != null) {
          paramActivity.invoke(paramString2.getSettings(), new Object[] { Boolean.valueOf(true) });
        }
      }
      catch (Exception paramActivity)
      {
        continue;
      }
      try
      {
        paramString2.removeJavascriptInterface("searchBoxJavaBridge_");
        paramString2.removeJavascriptInterface("accessibility");
        paramString2.removeJavascriptInterface("accessibilityTraversal");
        if (Build.VERSION.SDK_INT >= 19) {
          paramString2.getSettings().setCacheMode(1);
        }
        paramString2.loadUrl(paramString1);
        return paramString2;
      }
      catch (Throwable paramActivity)
      {
        try
        {
          paramActivity = paramString2.getClass().getMethod("removeJavascriptInterface", new Class[0]);
          if (paramActivity == null) {
            continue;
          }
          paramActivity.invoke(paramString2, new Object[] { "searchBoxJavaBridge_" });
          paramActivity.invoke(paramString2, new Object[] { "accessibility" });
          paramActivity.invoke(paramString2, new Object[] { "accessibilityTraversal" });
        }
        catch (Throwable paramActivity) {}
      }
    }
  }
  
  public static a a(Context paramContext, String paramString)
  {
    for (;;)
    {
      try
      {
        localPackageInfo3 = paramContext.getPackageManager().getPackageInfo(paramString, 192);
        localPackageInfo1 = localPackageInfo3;
        if (a(localPackageInfo3)) {}
      }
      catch (Throwable localThrowable)
      {
        PackageInfo localPackageInfo3;
        PackageInfo localPackageInfo1;
        a.a("auth", "GetPackageInfoEx", localThrowable);
        if (a(null)) {
          break label148;
        }
        try
        {
          localPackageInfo2 = c(paramContext, paramString);
        }
        catch (Throwable paramContext)
        {
          a.a("auth", "GetInstalledPackagesEx", paramContext);
          PackageInfo localPackageInfo2 = null;
        }
        continue;
      }
      finally
      {
        if (a(null)) {
          continue;
        }
        try
        {
          c(paramContext, paramString);
          throw ((Throwable)localObject1);
        }
        catch (Throwable paramContext)
        {
          a.a("auth", "GetInstalledPackagesEx", paramContext);
          continue;
        }
        if (localObject1 == null) {
          continue;
        }
        paramContext = new a();
        paramContext.a = ((PackageInfo)localObject1).signatures;
        paramContext.b = ((PackageInfo)localObject1).versionCode;
        return paramContext;
      }
      try
      {
        localPackageInfo1 = c(paramContext, paramString);
        if (!a(localPackageInfo1)) {
          return null;
        }
      }
      catch (Throwable paramContext)
      {
        a.a("auth", "GetInstalledPackagesEx", paramContext);
        localPackageInfo1 = localPackageInfo3;
        continue;
      }
      label148:
      Object localObject2 = null;
    }
  }
  
  public static String a()
  {
    return "Android " + Build.VERSION.RELEASE;
  }
  
  public static String a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      int i = paramString3.indexOf(paramString1);
      int j = paramString1.length() + i;
      if (j <= paramString1.length()) {
        return "";
      }
      i = 0;
      if (!TextUtils.isEmpty(paramString2)) {
        i = paramString3.indexOf(paramString2, j);
      }
      if (i <= 0) {
        return paramString3.substring(j);
      }
      paramString1 = paramString3.substring(j, i);
      return paramString1;
    }
    catch (Throwable paramString1) {}
    return "";
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(paramArrayOfByte))).getPublicKey().toString();
      if (paramArrayOfByte.indexOf("modulus") != -1)
      {
        paramArrayOfByte = paramArrayOfByte.substring(paramArrayOfByte.indexOf("modulus") + 8, paramArrayOfByte.lastIndexOf(",")).trim();
        return paramArrayOfByte;
      }
    }
    catch (Exception paramArrayOfByte)
    {
      a.a("auth", "GetPublicKeyFromSignEx", paramArrayOfByte);
    }
    return null;
  }
  
  public static Map<String, String> a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    paramString = paramString.split("&");
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramString[i];
      int k = ((String)localObject).indexOf("=", 1);
      localHashMap.put(((String)localObject).substring(0, k), URLDecoder.decode(((String)localObject).substring(k + 1)));
      i += 1;
    }
    return localHashMap;
  }
  
  public static boolean a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.alipay.android.app", 128);
      return paramContext != null;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  private static boolean a(PackageInfo paramPackageInfo)
  {
    String str = "";
    boolean bool = false;
    if (paramPackageInfo == null) {
      paramPackageInfo = "" + "info == null";
    }
    for (;;)
    {
      if (!bool) {
        a.a("auth", "NotIncludeSignatures", paramPackageInfo);
      }
      return bool;
      if (paramPackageInfo.signatures == null)
      {
        paramPackageInfo = "" + "info.signatures == null";
      }
      else if (paramPackageInfo.signatures.length <= 0)
      {
        paramPackageInfo = "" + "info.signatures.length <= 0";
      }
      else
      {
        bool = true;
        paramPackageInfo = str;
      }
    }
  }
  
  public static boolean a(WebView paramWebView, String paramString, Activity paramActivity)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return true;
      if ((paramString.toLowerCase().startsWith("alipays://platformapi/startApp?".toLowerCase())) || (paramString.toLowerCase().startsWith("intent://platformapi/startapp?".toLowerCase()))) {
        try
        {
          paramWebView = a(paramActivity, "com.eg.android.AlipayGphone");
          if ((paramWebView != null) && (!paramWebView.a()))
          {
            paramWebView = paramString;
            if (paramString.startsWith("intent://platformapi/startapp")) {
              paramWebView = paramString.replaceFirst("intent://platformapi/startapp\\?", "alipays://platformapi/startApp?");
            }
            paramActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramWebView)));
            return true;
          }
        }
        catch (Throwable paramWebView)
        {
          return true;
        }
      }
    }
    if ((TextUtils.equals(paramString, "sdklite://h5quit")) || (TextUtils.equals(paramString, "http://m.alipay.com/?action=h5quit")))
    {
      h.a = h.a();
      paramActivity.finish();
      return true;
    }
    if (paramString.startsWith("sdklite://h5quit?result=")) {
      for (;;)
      {
        try
        {
          paramWebView = paramString.substring(paramString.indexOf("sdklite://h5quit?result=") + 24);
          int i = Integer.parseInt(paramWebView.substring(paramWebView.lastIndexOf("&end_code=") + 10));
          if ((i != i.a.h) && (i != i.g.h)) {
            continue;
          }
          paramWebView = URLDecoder.decode(paramString);
          paramWebView = paramWebView.substring(paramWebView.indexOf("sdklite://h5quit?result=") + 24, paramWebView.lastIndexOf("&end_code="));
          paramString = i.a(i);
          h.a = h.a(paramString.h, paramString.i, paramWebView);
        }
        catch (Exception paramWebView)
        {
          paramWebView = i.a(i.e.h);
          h.a = h.a(paramWebView.h, paramWebView.i, "");
          continue;
        }
        paramActivity.runOnUiThread(new n(paramActivity));
        return true;
        paramWebView = i.a(i.b.h);
        h.a = h.a(paramWebView.h, paramWebView.i, "");
      }
    }
    paramWebView.loadUrl(paramString);
    return true;
  }
  
  private static PackageInfo b(Context paramContext, String paramString)
    throws PackageManager.NameNotFoundException
  {
    return paramContext.getPackageManager().getPackageInfo(paramString, 192);
  }
  
  private static a b(PackageInfo paramPackageInfo)
  {
    if (paramPackageInfo == null) {
      return null;
    }
    a locala = new a();
    locala.a = paramPackageInfo.signatures;
    locala.b = paramPackageInfo.versionCode;
    return locala;
  }
  
  public static String b()
  {
    Object localObject2 = d();
    int i = ((String)localObject2).indexOf("-");
    Object localObject1 = localObject2;
    if (i != -1) {
      localObject1 = ((String)localObject2).substring(0, i);
    }
    i = ((String)localObject1).indexOf("\n");
    localObject2 = localObject1;
    if (i != -1) {
      localObject2 = ((String)localObject1).substring(0, i);
    }
    return "Linux " + (String)localObject2;
  }
  
  public static boolean b(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.eg.android.AlipayGphone", 128);
      if (paramContext == null) {
        return false;
      }
      int i = paramContext.versionCode;
      if (i > 73) {
        return true;
      }
    }
    catch (Throwable paramContext)
    {
      a.a("biz", "CheckClientExistEx", paramContext);
    }
    return false;
  }
  
  public static boolean b(String paramString)
  {
    return Pattern.compile("^http(s)?://([a-z0-9_\\-]+\\.)*(alipay|taobao)\\.(com|net)(:\\d+)?(/.*)?$").matcher(paramString).matches();
  }
  
  private static PackageInfo c(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager().getInstalledPackages(192).iterator();
    while (paramContext.hasNext())
    {
      PackageInfo localPackageInfo = (PackageInfo)paramContext.next();
      if (localPackageInfo.packageName.equals(paramString)) {
        return localPackageInfo;
      }
    }
    return null;
  }
  
  public static String c()
  {
    Random localRandom = new Random();
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < 24)
    {
      switch (localRandom.nextInt(3))
      {
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append(String.valueOf((char)(int)Math.round(Math.random() * 25.0D + 65.0D)));
        continue;
        localStringBuilder.append(String.valueOf((char)(int)Math.round(Math.random() * 25.0D + 97.0D)));
        continue;
        localStringBuilder.append(String.valueOf(new Random().nextInt(10)));
      }
    }
    return localStringBuilder.toString();
  }
  
  public static boolean c(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.eg.android.AlipayGphone", 128);
      if (paramContext == null) {
        return false;
      }
      int i = paramContext.versionCode;
      if (i < 99) {
        return true;
      }
    }
    catch (Throwable paramContext) {}
    return false;
  }
  
  @SuppressLint({"InlinedApi"})
  private static boolean c(PackageInfo paramPackageInfo)
  {
    int i = paramPackageInfo.applicationInfo.flags;
    return ((i & 0x1) == 0) && ((i & 0x80) == 0);
  }
  
  private static String d()
  {
    try
    {
      Object localObject1 = new BufferedReader(new FileReader("/proc/version"), 256);
      try
      {
        String str2 = ((BufferedReader)localObject1).readLine();
        ((BufferedReader)localObject1).close();
        localObject1 = Pattern.compile("\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)").matcher(str2);
        if (!((Matcher)localObject1).matches()) {
          return "Unavailable";
        }
      }
      finally
      {
        ((BufferedReader)localObject1).close();
      }
      if (localIOException.groupCount() >= 4) {
        break label76;
      }
    }
    catch (IOException localIOException)
    {
      return "Unavailable";
    }
    return "Unavailable";
    label76:
    String str1 = localIOException.group(1) + "\n" + localIOException.group(2) + " " + localIOException.group(3) + "\n" + localIOException.group(4);
    return str1;
  }
  
  public static String d(Context paramContext)
  {
    String str1 = a();
    String str2 = b();
    String str3 = e(paramContext);
    paramContext = f(paramContext);
    return " (" + str1 + ";" + str2 + ";" + str3 + ";;" + paramContext + ")(sdk android)";
  }
  
  private static String e()
  {
    return "-1;-1";
  }
  
  public static String e(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().locale.toString();
  }
  
  public static String f(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    paramContext = new StringBuilder();
    paramContext.append(localDisplayMetrics.widthPixels);
    paramContext.append("*");
    paramContext.append(localDisplayMetrics.heightPixels);
    return paramContext.toString();
  }
  
  public static String g(Context paramContext)
  {
    Object localObject = "";
    try
    {
      Iterator localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
      for (paramContext = (Context)localObject;; paramContext = paramContext + "#M")
      {
        localObject = paramContext;
        if (!localIterator.hasNext()) {
          break label140;
        }
        localObject = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if (!((ActivityManager.RunningAppProcessInfo)localObject).processName.equals("com.eg.android.AlipayGphone")) {
          break;
        }
      }
      if (((ActivityManager.RunningAppProcessInfo)localObject).processName.startsWith("com.eg.android.AlipayGphone:")) {
        paramContext = paramContext + "#" + ((ActivityManager.RunningAppProcessInfo)localObject).processName.replace("com.eg.android.AlipayGphone:", "");
      }
      label140:
      for (;;)
      {
        break;
      }
    }
    catch (Throwable paramContext)
    {
      localObject = "";
      paramContext = (Context)localObject;
      if (((String)localObject).length() > 0) {
        paramContext = ((String)localObject).substring(1);
      }
      localObject = paramContext;
      if (paramContext.length() == 0) {
        localObject = "N";
      }
      return (String)localObject;
    }
  }
  
  public static String h(Context paramContext)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      int i;
      try
      {
        paramContext = paramContext.getPackageManager().getInstalledPackages(0);
        localStringBuilder = new StringBuilder();
        i = 0;
        if (i < paramContext.size())
        {
          PackageInfo localPackageInfo = (PackageInfo)paramContext.get(i);
          j = localPackageInfo.applicationInfo.flags;
          if (((j & 0x1) != 0) || ((j & 0x80) != 0)) {
            break label200;
          }
          j = 1;
          if (j == 0) {
            break label193;
          }
          if (localPackageInfo.packageName.equals("com.eg.android.AlipayGphone")) {
            localStringBuilder.append(localPackageInfo.packageName).append(localPackageInfo.versionCode).append("-");
          } else if ((!localPackageInfo.packageName.contains("theme")) && (!localPackageInfo.packageName.startsWith("com.google.")) && (!localPackageInfo.packageName.startsWith("com.android."))) {
            localStringBuilder.append(localPackageInfo.packageName).append("-");
          }
        }
      }
      catch (Throwable paramContext)
      {
        a.a("biz", "GetInstalledAppEx", paramContext);
        return "";
      }
      paramContext = localStringBuilder.toString();
      return paramContext;
      label193:
      i += 1;
      continue;
      label200:
      int j = 0;
    }
  }
  
  private static a i(Context paramContext)
  {
    return a(paramContext, "com.eg.android.AlipayGphone");
  }
  
  private static DisplayMetrics j(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  private static String k(Context paramContext)
  {
    paramContext = k.a(paramContext);
    return paramContext.substring(0, paramContext.indexOf("://"));
  }
  
  public static final class a
  {
    public Signature[] a;
    public int b;
    
    public final boolean a()
    {
      if ((this.a == null) || (this.a.length <= 0)) {}
      for (;;)
      {
        return false;
        int i = 0;
        while (i < this.a.length)
        {
          String str = l.a(this.a[i].toByteArray());
          if ((str != null) && (!TextUtils.equals(str, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649")))
          {
            a.a("biz", "PublicKeyUnmatch", str);
            return true;
          }
          i += 1;
        }
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\util\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */