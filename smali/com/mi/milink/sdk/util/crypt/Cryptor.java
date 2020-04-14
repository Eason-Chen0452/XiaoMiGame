package com.mi.milink.sdk.util.crypt;

import android.util.Base64;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.security.Key;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public abstract class Cryptor
{
  private static final byte[] IV = { 100, 23, 84, 114, 72, 0, 4, 97, 73, 97, 2, 52, 84, 102, 18, 32 };
  private static final int RSA_1024_ENCYPT_LEN = 117;
  
  private static String bytesToHex(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = "0123456789ABCDEF".toCharArray();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      localStringBuffer.append(arrayOfChar[((paramArrayOfByte[i] & 0xFF) >> 4)]);
      localStringBuffer.append(arrayOfChar[(paramArrayOfByte[i] & 0xF)]);
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public static byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int k = 0;
    int i;
    try
    {
      localObject = new SecretKeySpec(paramArrayOfByte2, "AES");
      paramArrayOfByte2 = Cipher.getInstance("AES/CBC/PKCS5Padding");
      paramArrayOfByte2.init(2, (Key)localObject, new IvParameterSpec(IV));
      paramArrayOfByte1 = paramArrayOfByte2.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
      paramArrayOfByte2 = paramArrayOfByte2.doFinal();
      if (paramArrayOfByte1 == null) {
        i = 0;
      } else {
        i = paramArrayOfByte1.length;
      }
    }
    catch (Exception paramArrayOfByte1)
    {
      Object localObject;
      return null;
    }
    int j = paramArrayOfByte2.length;
    do
    {
      localObject = new byte[i];
      i = k;
      if (paramArrayOfByte1 != null)
      {
        System.arraycopy(paramArrayOfByte1, 0, localObject, 0, paramArrayOfByte1.length);
        i = paramArrayOfByte1.length;
      }
      if (paramArrayOfByte2 != null) {
        System.arraycopy(paramArrayOfByte2, 0, localObject, i, paramArrayOfByte2.length);
      }
      return (byte[])localObject;
      if (paramArrayOfByte2 != null) {
        break;
      }
      j = 0;
      i = j + i;
    } while (i > 0);
    return null;
  }
  
  public static byte[] encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      paramArrayOfByte2 = new SecretKeySpec(paramArrayOfByte2, "AES");
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(1, paramArrayOfByte2, new IvParameterSpec(IV));
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1) {}
    return null;
  }
  
  public static byte[] encryptRSA(byte[] paramArrayOfByte, String paramString)
  {
    for (;;)
    {
      int m;
      int k;
      try
      {
        localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        localCipher.init(1, getPublicKey(paramString));
        m = paramArrayOfByte.length;
        i = 117;
        localObject = new byte['ࠀ'];
        j = 0;
        k = 0;
      }
      catch (Exception paramArrayOfByte)
      {
        Cipher localCipher;
        int j;
        byte[] arrayOfByte;
        int n;
        MiLinkLog.e("crypt", paramArrayOfByte);
        return null;
      }
      arrayOfByte = localCipher.doFinal(paramArrayOfByte, k, i);
      n = arrayOfByte.length;
      paramString = (String)localObject;
      if (j + n > localObject.length)
      {
        paramString = new byte[localObject.length * 2];
        System.arraycopy(localObject, 0, paramString, 0, j);
      }
      System.arraycopy(arrayOfByte, 0, paramString, j, n);
      k += i;
      j += n;
      if (k >= m)
      {
        paramArrayOfByte = new byte[j];
        System.arraycopy(paramString, 0, paramArrayOfByte, 0, j);
        return paramArrayOfByte;
      }
      Object localObject = paramString;
      while (k + 117 <= m) {
        break;
      }
      int i = m - k;
    }
  }
  
  private static PublicKey getPublicKey(String paramString)
    throws Exception
  {
    paramString = new X509EncodedKeySpec(Base64.decode(paramString, 2));
    return KeyFactory.getInstance("RSA").generatePublic(paramString);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\crypt\Cryptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */