package com.ta.utdid2.android.utils;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class AESUtils
{
  public static final String TAG = "AESUtils";
  public static byte[] t = { 48, 48, 49, 55, 68, 67, 49, 66, 69, 50, 50, 53, 56, 53, 53, 52, 67, 70, 48, 50, 67, 53, 55, 66, 55, 56, 69, 55, 52, 48, 65, 53 };
  
  private static void appendHex(StringBuffer paramStringBuffer, byte paramByte)
  {
    paramStringBuffer.append("0123456789ABCDEF".charAt(paramByte >> 4 & 0xF)).append("0123456789ABCDEF".charAt(paramByte & 0xF));
  }
  
  public static String decrypt(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = new String(decrypt(getRawKey(paramString1.getBytes()), toByte(paramString2)));
      return paramString1;
    }
    catch (Exception paramString1) {}
    return null;
  }
  
  private static byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    paramArrayOfByte1 = new SecretKeySpec(paramArrayOfByte1, "AES");
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(2, paramArrayOfByte1, new IvParameterSpec(new byte[localCipher.getBlockSize()]));
    return localCipher.doFinal(paramArrayOfByte2);
  }
  
  public static String encrypt(String paramString1, String paramString2)
  {
    Object localObject = null;
    try
    {
      paramString1 = encrypt(getRawKey(paramString1.getBytes()), paramString2.getBytes());
      if (paramString1 != null) {
        return toHex(paramString1);
      }
      return null;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        paramString1 = (String)localObject;
      }
    }
  }
  
  private static byte[] encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    paramArrayOfByte1 = new SecretKeySpec(paramArrayOfByte1, "AES");
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(1, paramArrayOfByte1, new IvParameterSpec(new byte[localCipher.getBlockSize()]));
    return localCipher.doFinal(paramArrayOfByte2);
  }
  
  public static String fromHex(String paramString)
  {
    return new String(toByte(paramString));
  }
  
  private static byte[] getRawKey(byte[] paramArrayOfByte)
    throws Exception
  {
    return toByte(new String(t, 0, 32));
  }
  
  public static byte[] toByte(String paramString)
  {
    int j = paramString.length() / 2;
    byte[] arrayOfByte = new byte[j];
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return arrayOfByte;
      }
      arrayOfByte[i] = Integer.valueOf(paramString.substring(i * 2, i * 2 + 2), 16).byteValue();
      i += 1;
    }
  }
  
  public static String toHex(String paramString)
  {
    return toHex(paramString.getBytes());
  }
  
  public static String toHex(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length * 2);
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuffer.toString();
      }
      appendHex(localStringBuffer, paramArrayOfByte[i]);
      i += 1;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\android\utils\AESUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */