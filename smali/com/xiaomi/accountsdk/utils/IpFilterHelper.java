package com.xiaomi.accountsdk.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.accountsdk.account.exception.CryptoException;
import java.io.UnsupportedEncodingException;
import java.security.PublicKey;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class IpFilterHelper
{
  private static volatile PublicKey a;
  
  public static boolean a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      return Pattern.compile("\\/\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}").matcher(paramString).find();
    }
    return false;
  }
  
  public static String b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      Matcher localMatcher = Pattern.compile("\\/\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}").matcher(paramString);
      for (paramString = new String(paramString);; paramString = paramString.replace(str, "(" + c(str) + ")"))
      {
        str = paramString;
        if (!localMatcher.find()) {
          break;
        }
        str = localMatcher.group();
      }
    }
    String str = paramString;
    return str;
  }
  
  private static String c(String paramString)
  {
    try
    {
      if (a == null) {
        a = RSACoder.a("-----BEGIN CERTIFICATE-----\nMIICDzCCAXigAwIBAgIEWBw0IzANBgkqhkiG9w0BAQUFADBMMQswCQYDVQQGEwJD\nTjEPMA0GA1UEChMGeGlhb21pMQ8wDQYDVQQLEwZ4aWFvbWkxGzAZBgNVBAMTEmFj\nY291bnQueGlhb21pLmNvbTAeFw0xNjExMDQwNzA5MjNaFw0xNzExMDQwNzA5MjNa\nMEwxCzAJBgNVBAYTAkNOMQ8wDQYDVQQKEwZ4aWFvbWkxDzANBgNVBAsTBnhpYW9t\naTEbMBkGA1UEAxMSYWNjb3VudC54aWFvbWkuY29tMIGfMA0GCSqGSIb3DQEBAQUA\nA4GNADCBiQKBgQCHcPEm9Wo8/LWHL8mohOV5YalTgZLzng+nWCEkIRP//6GohYlI\nh3dvGpueJvQ3Sany/3dLx0x6MQKA34NxRyoO37R/LgPZUfe6eWzHQeColBBHxTED\nbCqDh46Gv5vogjqHRl4+q2WGCmZOIfmPjNHQWG8sMIZyTqFCLc6gk9vSewIDAQAB\nMA0GCSqGSIb3DQEBBQUAA4GBAHaPnscaxSPh0N0Z5OgQ6PcWr5uYPLMweatYGZRH\nSFxwSqYXpqIowuRxmrBj+oE5rG5rzFCtNjCBoeMVy/7JXZr9Juaw9NCWaTaqrmIV\nP4nK/0kizCvkx3088OOCGextGeZUC9/PCbVUEcRvGLwSrvgqiC1KG4ufeIdQWBaJ\n8ZlG\n-----END CERTIFICATE-----\n");
      }
      paramString = Base64.encodeToString(RSACoder.a(paramString.getBytes("UTF-8"), a), 0);
      return paramString;
    }
    catch (CryptoException paramString)
    {
      AccountLog.b("IpFilterHelper", paramString);
      return null;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;)
      {
        AccountLog.b("IpFilterHelper", paramString);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\IpFilterHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */