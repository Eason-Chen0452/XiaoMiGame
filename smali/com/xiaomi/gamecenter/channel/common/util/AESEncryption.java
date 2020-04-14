package com.xiaomi.gamecenter.channel.common.util;

import java.io.PrintStream;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class AESEncryption
{
  private static final String AKEY = "1f7b169c846f218ab552fa82fbf86758";
  
  public static byte[] Decrypt(byte[] paramArrayOfByte)
    throws Exception
  {
    try
    {
      localObject = hex2byte("1f7b169c846f218ab552fa82fbf86758");
      if (localObject == null)
      {
        System.out.print("Key为空null");
        throw new Exception("Key为空null");
      }
    }
    catch (Exception paramArrayOfByte)
    {
      System.out.println("AES解密失败");
      throw new Exception("AES加密错误", paramArrayOfByte);
    }
    if (localObject.length != 16) {
      throw new Exception("Key长度不是16位");
    }
    Object localObject = new SecretKeySpec((byte[])localObject, "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    localCipher.init(2, (Key)localObject);
    paramArrayOfByte = localCipher.doFinal(paramArrayOfByte);
    return paramArrayOfByte;
  }
  
  public static byte[] Encrypt(String paramString)
    throws Exception
  {
    try
    {
      localObject = hex2byte("1f7b169c846f218ab552fa82fbf86758");
      if (localObject == null)
      {
        System.out.print("Key为空null");
        throw new Exception("Key为空null");
      }
    }
    catch (Exception paramString)
    {
      System.out.println("AES加密失败");
      throw new Exception("AES加密错误", paramString);
    }
    if (localObject.length != 16) {
      throw new Exception("Key长度不是16位");
    }
    Object localObject = new SecretKeySpec((byte[])localObject, "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    localCipher.init(1, (Key)localObject);
    paramString = localCipher.doFinal(paramString.getBytes("UTF-8"));
    return paramString;
  }
  
  public static byte[] hex2byte(String paramString)
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
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\util\AESEncryption.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */