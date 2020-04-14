package com.xiaomi.gamecenter.sdk.utils;

import android.text.TextUtils;
import java.math.BigInteger;
import java.security.MessageDigest;

public final class e
{
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    return a(paramString.getBytes());
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    String str = "";
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-256");
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = String.format("%1$032X", new Object[] { new BigInteger(1, localMessageDigest.digest()) });
      return paramArrayOfByte.toLowerCase();
    }
    catch (Exception paramArrayOfByte)
    {
      for (;;)
      {
        paramArrayOfByte = str;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */