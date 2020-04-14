package com.xiaomi.hy.dj.f;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;

public class k
{
  public static final int a = 570556416;
  
  public static int a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return 1;
    }
    paramString = Pattern.compile("[^0-9]").matcher(paramString).replaceAll("").trim();
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString)
    {
      paramString.printStackTrace();
    }
    return 1;
  }
  
  private static int a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return -1;
    }
    String[] arrayOfString1 = paramString1.split("\\.");
    String[] arrayOfString2 = paramString2.split("\\.");
    int i = 0;
    while ((i < arrayOfString1.length) && (i < arrayOfString2.length))
    {
      int j = Integer.parseInt(arrayOfString1[i]);
      int k = Integer.parseInt(arrayOfString2[i]);
      if (j < k) {
        return -1;
      }
      if (j > k) {
        return 1;
      }
      i += 1;
    }
    if (arrayOfString1.length > i) {
      return 1;
    }
    if (arrayOfString2.length > i) {
      return -1;
    }
    return paramString1.compareTo(paramString2);
  }
  
  public static String a(Map<String, String> paramMap)
  {
    ArrayList localArrayList = new ArrayList(paramMap.keySet());
    Collections.sort(localArrayList);
    String str1 = "";
    int i = 0;
    String str2;
    String str3;
    if (i < localArrayList.size())
    {
      str2 = (String)localArrayList.get(i);
      str3 = (String)paramMap.get(str2);
      if (TextUtils.isEmpty(str3)) {
        break label155;
      }
      if (i == localArrayList.size() - 1) {
        str1 = str1 + str2 + "=" + str3;
      }
    }
    label155:
    for (;;)
    {
      i += 1;
      break;
      str1 = str1 + str2 + "=" + str3 + "&";
      continue;
      return str1;
    }
  }
  
  public static JSONArray a(String[] paramArrayOfString)
  {
    JSONArray localJSONArray = new JSONArray();
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0)) {
      localJSONArray.put("ALIPAY");
    }
    for (;;)
    {
      return localJSONArray;
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(paramArrayOfString[i]);
        i += 1;
      }
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
  
  public static void b(String[] paramArrayOfString)
  {
    int i = a("SDK_VISITOR_DJPAY_1.1.0");
    System.out.print(i);
  }
  
  public static boolean b(Context paramContext)
  {
    boolean bool = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.eg.android.AlipayGphone", 0);
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
  
  public static boolean c(Context paramContext)
  {
    boolean bool2 = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.tencent.mobileqq", 0);
      boolean bool1 = bool2;
      if (paramContext != null)
      {
        int i = a(paramContext.versionName, "4.7.2");
        bool1 = bool2;
        if (i >= 0) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  public static boolean d(Context paramContext)
  {
    boolean bool2 = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.tencent.minihd.qq", 0);
      boolean bool1 = bool2;
      if (paramContext != null)
      {
        int i = a(paramContext.versionName, "5.8.0");
        bool1 = bool2;
        if (i >= 0) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  public static boolean e(Context paramContext)
  {
    boolean bool = false;
    paramContext = paramContext.getPackageManager();
    try
    {
      int i = paramContext.getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode;
      if (i >= 480900) {
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
  
  public static int f(Context paramContext)
  {
    paramContext = paramContext.getContentResolver().query(Uri.parse("content://com.tencent.mm.sdk.plugin.provider/sharedpref"), new String[] { "_id", "key", "type", "value" }, "key = ?", new String[] { "_build_info_sdk_int_" }, null);
    if (paramContext == null) {
      return 0;
    }
    int i = paramContext.getColumnIndex("type");
    int j = paramContext.getColumnIndex("value");
    if (paramContext.moveToFirst()) {}
    for (;;)
    {
      try
      {
        i = ((Integer)a.a(paramContext.getInt(i), paramContext.getString(j))).intValue();
        paramContext.close();
        return i;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      i = 0;
    }
  }
  
  private static final class a
  {
    public static Object a(int paramInt, String paramString)
    {
      String str = paramString;
      switch (paramInt)
      {
      }
      for (;;)
      {
        str = null;
        return str;
        try
        {
          return Integer.valueOf(paramString);
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
        }
        return Long.valueOf(paramString);
        return Boolean.valueOf(paramString);
        return Float.valueOf(paramString);
        paramString = Double.valueOf(paramString);
        return paramString;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */