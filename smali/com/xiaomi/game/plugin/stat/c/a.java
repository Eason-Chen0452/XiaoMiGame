package com.xiaomi.game.plugin.stat.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class a
{
  public static volatile Map<String, String> a = new ConcurrentHashMap();
  private static boolean b;
  
  public static int a(int paramInt)
  {
    return new Random().nextInt(paramInt) + 1;
  }
  
  public static String a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return "";
    }
    return paramContext.getSharedPreferences("_device_holder_gamesdkplugin", 0).getString(paramString, "");
  }
  
  public static String a(String paramString)
  {
    return (String)a.get(paramString);
  }
  
  public static String a(Map<String, String> paramMap)
  {
    StringBuffer localStringBuffer;
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      localStringBuffer = new StringBuffer();
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        if ((localEntry.getKey() != null) && (localEntry.getValue() != null)) {
          try
          {
            localStringBuffer.append(URLEncoder.encode((String)localEntry.getKey(), "UTF-8"));
            localStringBuffer.append("=");
            localStringBuffer.append(URLEncoder.encode((String)localEntry.getValue(), "UTF-8"));
            localStringBuffer.append("&");
          }
          catch (UnsupportedEncodingException paramMap)
          {
            return null;
          }
        }
      }
      if (localStringBuffer.length() <= 0) {
        break label153;
      }
    }
    label153:
    for (paramMap = localStringBuffer.deleteCharAt(localStringBuffer.length() - 1);; paramMap = localStringBuffer)
    {
      return paramMap.toString();
      return null;
    }
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject).update(paramArrayOfByte);
        paramArrayOfByte = new StringBuffer();
        localObject = ((MessageDigest)localObject).digest();
        int i = 0;
        while (i < localObject.length)
        {
          int k = localObject[i];
          int j = k;
          if (k < 0) {
            j = k + 256;
          }
          if (j < 16) {
            paramArrayOfByte.append("0");
          }
          paramArrayOfByte.append(Integer.toHexString(j));
          i += 1;
        }
        paramArrayOfByte = paramArrayOfByte.toString();
        return paramArrayOfByte;
      }
      catch (NoSuchAlgorithmException paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static void a(ArrayList<String> paramArrayList, String paramString)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        String str = (String)paramArrayList.next();
        a.put(str, paramString);
      }
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public static boolean a()
  {
    return b;
  }
  
  public static boolean a(Context paramContext)
  {
    try
    {
      if (b(paramContext))
      {
        boolean bool = ((Boolean)Class.forName("miui.os.Build").getField("IS_CTA_BUILD").get(null)).booleanValue();
        return bool;
      }
    }
    catch (Throwable paramContext)
    {
      return false;
    }
    return false;
  }
  
  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString1))) {
      return false;
    }
    paramContext = paramContext.getSharedPreferences("_device_holder_gamesdkplugin", 0).edit();
    if (TextUtils.isEmpty(paramString2)) {
      paramContext.remove(paramString1);
    }
    for (;;)
    {
      return paramContext.commit();
      paramContext.putString(paramString1, paramString2);
    }
  }
  
  public static String b()
  {
    Date localDate = new Date();
    return new SimpleDateFormat("yyyyMMdd", Locale.CHINA).format(localDate);
  }
  
  public static void b(String paramString)
  {
    if (!b) {}
    while (TextUtils.isEmpty(paramString)) {
      return;
    }
    Log.e("MiGamePluginStat", paramString);
  }
  
  public static boolean b(Context paramContext)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext.getPackageInfo("com.xiaomi.xmsf", 0);
      return true;
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  public static boolean c(Context paramContext)
  {
    return TextUtils.equals(b(), a(paramContext, "report_init_date"));
  }
  
  public static boolean d(Context paramContext)
  {
    return a(paramContext, "report_init_date", b());
  }
  
  public static boolean e(Context paramContext)
  {
    return TextUtils.equals(b(), a(paramContext, "report_init_datemigame"));
  }
  
  public static boolean f(Context paramContext)
  {
    return a(paramContext, "report_init_datemigame", b());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */