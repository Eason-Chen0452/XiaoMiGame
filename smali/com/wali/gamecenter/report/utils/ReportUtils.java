package com.wali.gamecenter.report.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.Random;

public class ReportUtils
{
  public static final String MANUALLY_OPEN_STATUS = "manually_open_status";
  private static final byte[] URL_KEY = "_&L^W%&*20120724#$U%I)M%I^@".getBytes();
  
  public static boolean canUseNetwork(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("manually_open_status", false);
  }
  
  public static String decryptUrl(String paramString)
  {
    return new String(encryptUrl(Base64.decode(paramString)));
  }
  
  public static byte[] encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 == null) {
      arrayOfByte = null;
    }
    do
    {
      return arrayOfByte;
      arrayOfByte = paramArrayOfByte1;
    } while (paramArrayOfByte2 == null);
    int k = paramArrayOfByte1.length;
    int m = paramArrayOfByte2.length;
    byte[] arrayOfByte = new byte[k];
    int i = 0;
    while (i < k)
    {
      int j = 0;
      while ((j < m) && (i + j < k))
      {
        arrayOfByte[(i + j)] = ((byte)(paramArrayOfByte1[(i + j)] ^ paramArrayOfByte2[j]));
        j += 1;
      }
      i += m;
    }
    return arrayOfByte;
  }
  
  public static String encryptUrl(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0)) {
      return "";
    }
    return Base64.encode(encryptUrl(paramString.getBytes()));
  }
  
  static byte[] encryptUrl(byte[] paramArrayOfByte)
  {
    return encrypt(paramArrayOfByte, URL_KEY);
  }
  
  public static String[] getSecurityParameters(String paramString1, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString1))
    {
      localStringBuilder.append(paramString1);
      localStringBuilder.append("_");
    }
    if (!TextUtils.isEmpty(paramString2))
    {
      localStringBuilder.append(paramString2);
      localStringBuilder.append("_");
    }
    if (!TextUtils.isEmpty(paramString3))
    {
      localStringBuilder.append(paramString3);
      localStringBuilder.append("_");
    }
    if (localStringBuilder.length() > 0)
    {
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
      paramString1 = localStringBuilder.toString();
      if (paramString1.length() != 0) {
        break label111;
      }
    }
    for (;;)
    {
      return null;
      try
      {
        label111:
        paramString1 = paramString1.getBytes("UTF-8");
        if ((paramString1 != null) && (paramString1.length > 0))
        {
          paramString1 = MD5.getMD5(paramString1);
          if (!TextUtils.isEmpty(paramString1))
          {
            int j = paramString1.length();
            paramString2 = new Random(System.currentTimeMillis());
            int i = paramString2.nextInt(j - 3);
            j = paramString2.nextInt(j - i - 1) + (i + 1);
            paramString1 = paramString1.substring(i, j);
            paramString2 = i + "." + (j - i);
            return new String[] { paramString1, paramString2 };
          }
        }
      }
      catch (Throwable paramString1)
      {
        paramString1.printStackTrace();
      }
    }
    return null;
  }
  
  public static boolean isWifiNetwork(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (paramContext == null) {
      return false;
    }
    return (paramContext.getType() == 1) || (paramContext.getType() == 6);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\utils\ReportUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */