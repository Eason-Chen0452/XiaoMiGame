package com.mi.milink.sdk.util;

import java.security.SecureRandom;

public final class SecureRandomUtils
{
  static
  {
    try
    {
      PRNGFixes.apply();
      return;
    }
    catch (SecurityException localSecurityException) {}catch (Throwable localThrowable) {}
  }
  
  public static final SecureRandom createSecureRandom()
  {
    return new SecureRandom();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\SecureRandomUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */