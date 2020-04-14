package com.xiaomi.gamecenter.sdk.protocol;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class HmacSHA1Encryption
{
  public static String a(String paramString1, String paramString2)
    throws Exception
  {
    paramString2 = new SecretKeySpec(paramString2.getBytes("UTF-8"), "HmacSHA1");
    Mac localMac = Mac.getInstance("HmacSHA1");
    localMac.init(paramString2);
    return a(localMac.doFinal(paramString1.getBytes("UTF-8"))).toString();
  }
  
  private static StringBuilder a(byte[] paramArrayOfByte)
  {
    Object localObject;
    if (paramArrayOfByte == null)
    {
      localObject = null;
      return (StringBuilder)localObject;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfByte.length;
    int i = 0;
    for (;;)
    {
      localObject = localStringBuilder;
      if (i >= j) {
        break;
      }
      localStringBuilder.append(String.format("%02x", new Object[] { Byte.valueOf(paramArrayOfByte[i]) }));
      i += 1;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\HmacSHA1Encryption.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */