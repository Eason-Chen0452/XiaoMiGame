package cn.com.wali.basetool.utils;

import android.util.Base64;

public final class URLBase64
{
  public static String a(byte[] paramArrayOfByte)
  {
    return Base64.encodeToString(paramArrayOfByte, 10).replaceAll("=", ".");
  }
  
  public static byte[] a(String paramString)
  {
    return Base64.decode(paramString, 8);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\utils\URLBase64.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */