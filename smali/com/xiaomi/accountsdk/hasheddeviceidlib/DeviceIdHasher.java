package com.xiaomi.accountsdk.hasheddeviceidlib;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class DeviceIdHasher
{
  public static String a(String paramString)
  {
    return b(paramString);
  }
  
  private static String b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(paramString.getBytes()), 8).substring(0, 16);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new IllegalStateException("failed to init SHA1 digest");
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\hasheddeviceidlib\DeviceIdHasher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */