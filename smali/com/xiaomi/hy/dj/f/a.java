package com.xiaomi.hy.dj.f;

import java.io.PrintStream;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class a
{
  public static String a(byte[] paramArrayOfByte)
  {
    String str1 = "";
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      String str2 = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      if (str2.length() == 1) {}
      for (str1 = str1 + "0" + str2;; str1 = str1 + str2)
      {
        i += 1;
        break;
      }
    }
    return str1.toUpperCase();
  }
  
  public static byte[] a(String paramString)
  {
    if (paramString == null) {}
    int j;
    do
    {
      return null;
      j = paramString.length();
    } while (j % 2 == 1);
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    while (i != j / 2)
    {
      arrayOfByte[i] = ((byte)Integer.parseInt(paramString.substring(i * 2, i * 2 + 2), 16));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static byte[] a(String paramString1, String paramString2)
    throws Exception
  {
    if (paramString2 == null) {
      try
      {
        throw new Exception("Key为空null");
      }
      catch (Exception paramString1)
      {
        throw new Exception("AES加密错误", paramString1);
      }
    }
    if (paramString2.length() != 16) {
      throw new Exception("Key长度不是16位");
    }
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString2.getBytes(), "AES");
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(1, localSecretKeySpec, new IvParameterSpec(l.b(paramString2.getBytes())));
    paramString1 = localCipher.doFinal(paramString1.getBytes());
    return paramString1;
  }
  
  public static byte[] a(String paramString, byte[] paramArrayOfByte)
    throws Exception
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      throw new IllegalArgumentException("Key is null");
    }
    if (paramArrayOfByte.length != 16) {
      throw new IllegalArgumentException("Key length != 16");
    }
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte, "AES");
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(1, localSecretKeySpec, new IvParameterSpec(l.b(paramArrayOfByte)));
    return localCipher.doFinal(paramString.getBytes());
  }
  
  public static byte[] a(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    if (paramString == null) {
      try
      {
        throw new Exception("Key为空null");
      }
      catch (Exception paramArrayOfByte)
      {
        throw new Exception("AES加密错误", paramArrayOfByte);
      }
    }
    if (paramString.length() != 16) {
      throw new Exception("Key长度不是16位");
    }
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString.getBytes(), "AES");
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(2, localSecretKeySpec, new IvParameterSpec(l.b(paramString.getBytes())));
    paramArrayOfByte = localCipher.doFinal(paramArrayOfByte);
    return paramArrayOfByte;
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    if (paramArrayOfByte2 == null) {
      try
      {
        System.out.print("Key为空null");
        throw new Exception("Key为空null");
      }
      catch (Exception paramArrayOfByte1)
      {
        throw new Exception("AES加密错误", paramArrayOfByte1);
      }
    }
    if (paramArrayOfByte2.length != 16) {
      throw new Exception("Key长度不是16位");
    }
    paramArrayOfByte2 = new SecretKeySpec(paramArrayOfByte2, "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    localCipher.init(1, paramArrayOfByte2);
    paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
    return paramArrayOfByte1;
  }
  
  public static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    if (paramArrayOfByte2 == null) {
      try
      {
        System.out.print("Key为空null");
        throw new Exception("Key为空null");
      }
      catch (Exception paramArrayOfByte1)
      {
        throw new Exception("AES加密错误", paramArrayOfByte1);
      }
    }
    if (paramArrayOfByte2.length != 16) {
      throw new Exception("Key长度不是16位");
    }
    paramArrayOfByte2 = new SecretKeySpec(paramArrayOfByte2, "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    localCipher.init(2, paramArrayOfByte2);
    paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
    return paramArrayOfByte1;
  }
  
  public static byte[] c(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    if ((paramArrayOfByte2 == null) || (paramArrayOfByte2.length == 0)) {
      throw new IllegalArgumentException("Key is null");
    }
    if (paramArrayOfByte2.length != 16) {
      throw new IllegalArgumentException("Key length != 16位");
    }
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte2, "AES");
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(2, localSecretKeySpec, new IvParameterSpec(l.b(paramArrayOfByte2)));
    return localCipher.doFinal(paramArrayOfByte1);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */