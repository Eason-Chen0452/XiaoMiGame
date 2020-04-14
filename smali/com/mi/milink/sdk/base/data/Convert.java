package com.mi.milink.sdk.base.data;

import java.io.ByteArrayInputStream;
import java.io.IOException;

public class Convert
{
  public static final char[] NUMBERIC_CHAR = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  
  public static String IPv4ToStr(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      if (i != 0) {
        localStringBuilder.append('.');
      }
      localStringBuilder.append((paramArrayOfByte[i] + 256) % 256);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String bytesToASCIIString(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return "";
    }
    return bytesToASCIIString(paramArrayOfByte, paramArrayOfByte.length);
  }
  
  public static String bytesToASCIIString(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte == null) {
      return "";
    }
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      while (i < paramInt)
      {
        localStringBuilder.append((char)((paramArrayOfByte[i] + 256) % 256));
        i += 1;
      }
      paramArrayOfByte = localStringBuilder.toString();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return null;
  }
  
  public static String bytesToHexStr(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    if (paramArrayOfByte.length == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfByte.length;
    int i = 0;
    while (i < j)
    {
      int k = paramArrayOfByte[i];
      int m = (k + 256) % 256 / 16;
      localStringBuilder.append(NUMBERIC_CHAR[m]).append(NUMBERIC_CHAR[((k + 256) % 256 % 16)]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String bytesToHexStr(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    if (paramArrayOfByte.length == 0) {
      return "";
    }
    if (paramArrayOfByte.length > paramInt) {}
    StringBuilder localStringBuilder;
    for (;;)
    {
      localStringBuilder = new StringBuilder();
      int i = 0;
      while (i < paramInt)
      {
        int j = paramArrayOfByte[i];
        int k = (j + 256) % 256 / 16;
        localStringBuilder.append(NUMBERIC_CHAR[k]).append(NUMBERIC_CHAR[((j + 256) % 256 % 16)]).append(' ');
        i += 1;
      }
      paramInt = paramArrayOfByte.length;
    }
    return localStringBuilder.toString();
  }
  
  public static int bytesToInt(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte[3] & 0xFF | (paramArrayOfByte[2] & 0xFF) << 8 | (paramArrayOfByte[1] & 0xFF) << 16 | (paramArrayOfByte[0] & 0xFF) << 24;
  }
  
  public static int bytesToInt(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[(paramInt + 3)] & 0xFF | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8 | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16 | (paramArrayOfByte[paramInt] & 0xFF) << 24;
  }
  
  public static long bytesToLong(byte[] paramArrayOfByte)
  {
    return (paramArrayOfByte[0] & 0xFF) << 56 | (paramArrayOfByte[1] & 0xFF) << 48 | (paramArrayOfByte[2] & 0xFF) << 40 | (paramArrayOfByte[3] & 0xFF) << 32 | (paramArrayOfByte[4] & 0xFF) << 24 | (paramArrayOfByte[5] & 0xFF) << 16 | (paramArrayOfByte[6] & 0xFF) << 8 | (paramArrayOfByte[7] & 0xFF) << 0;
  }
  
  public static long bytesToLong(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[(paramInt + 0)] & 0xFF) << 56 | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 48 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 40 | (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 32 | (paramArrayOfByte[(paramInt + 4)] & 0xFF) << 24 | (paramArrayOfByte[(paramInt + 5)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 6)] & 0xFF) << 8 | (paramArrayOfByte[(paramInt + 7)] & 0xFF) << 0;
  }
  
  public static short bytesToShort(byte[] paramArrayOfByte)
  {
    return (short)(paramArrayOfByte[1] & 0xFF | (paramArrayOfByte[0] & 0xFF) << 8);
  }
  
  public static short bytesToShort(byte[] paramArrayOfByte, int paramInt)
  {
    return (short)(paramArrayOfByte[(paramInt + 1)] & 0xFF | (paramArrayOfByte[paramInt] & 0xFF) << 8);
  }
  
  public static String bytesToStr(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    return new String(paramArrayOfByte);
  }
  
  public static int bytesToUbyte(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte[0] & 0xFF;
  }
  
  public static int bytesToUbyte(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[paramInt] & 0xFF;
  }
  
  public static long bytesToUint(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte[3] & 0xFF | (paramArrayOfByte[2] & 0xFF) << 8 | (paramArrayOfByte[1] & 0xFF) << 16 | (paramArrayOfByte[0] & 0xFF) << 24;
  }
  
  public static long bytesToUint(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[(paramInt + 3)] & 0xFF | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8 | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16 | (paramArrayOfByte[paramInt] & 0xFF) << 24;
  }
  
  public static int bytesToUshort(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte[1] & 0xFF | (paramArrayOfByte[0] & 0xFF) << 8;
  }
  
  public static int bytesToUshort(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[(paramInt + 1)] & 0xFF | (paramArrayOfByte[paramInt] & 0xFF) << 8;
  }
  
  public static boolean compare(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1.length != paramArrayOfByte2.length) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte2.length) {
        break label33;
      }
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        break;
      }
      i += 1;
    }
    label33:
    return true;
  }
  
  public static int hexCharToInt(char paramChar)
  {
    if ((paramChar <= '9') && (paramChar >= '0')) {
      return paramChar - '0';
    }
    if ((paramChar <= 'F') && (paramChar >= 'A')) {
      return paramChar - 'A' + 10;
    }
    if ((paramChar <= 'f') && (paramChar >= 'a')) {
      return paramChar - 'a' + 10;
    }
    return -1;
  }
  
  public static byte[] hexStrToBytes(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if (paramString.length() == 0) {
      return new byte[0];
    }
    int j = paramString.length();
    int k = (j + 1) / 2;
    byte[] arrayOfByte = new byte[k];
    int i = 0;
    while (i < k)
    {
      char c2 = paramString.charAt(i * 2);
      char c1 = '0';
      if (i * 2 + 1 < j) {
        c1 = paramString.charAt(i * 2 + 1);
      }
      int m = hexCharToInt(c2);
      int n = hexCharToInt(c1);
      if ((m < 0) || (n < 0)) {
        return null;
      }
      arrayOfByte[i] = ((byte)(n + m * 16));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static final int high(long paramLong)
  {
    return (int)(paramLong >>> 32);
  }
  
  public static void intToBytes(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 & 0xFF));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >> 8 & 0xFF));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >> 16 & 0xFF));
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 24 & 0xFF));
  }
  
  public static byte[] intToBytes(int paramInt)
  {
    int i = (byte)(paramInt & 0xFF);
    int j = (byte)(paramInt >> 8 & 0xFF);
    int k = (byte)(paramInt >> 16 & 0xFF);
    return new byte[] { (byte)(paramInt >> 24 & 0xFF), k, j, i };
  }
  
  public static String intToIPv4(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramInt & 0xFF).append(".");
    localStringBuffer.append(paramInt >> 8 & 0xFF).append(".");
    localStringBuffer.append(paramInt >> 16 & 0xFF).append(".");
    localStringBuffer.append(paramInt >> 24 & 0xFF);
    return localStringBuffer.toString();
  }
  
  public static String intToIPv4_Reverse(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramInt >> 24 & 0xFF).append(".");
    localStringBuffer.append(paramInt >> 16 & 0xFF).append(".");
    localStringBuffer.append(paramInt >> 8 & 0xFF).append(".");
    localStringBuffer.append(paramInt & 0xFF);
    return localStringBuffer.toString();
  }
  
  public static void longToBytes(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[(paramInt + 7)] = ((byte)(int)(paramLong & 0xFF));
    paramArrayOfByte[(paramInt + 6)] = ((byte)(int)(paramLong >> 8 & 0xFF));
    paramArrayOfByte[(paramInt + 5)] = ((byte)(int)(paramLong >> 16 & 0xFF));
    paramArrayOfByte[(paramInt + 4)] = ((byte)(int)(paramLong >> 24 & 0xFF));
    paramArrayOfByte[(paramInt + 3)] = ((byte)(int)(paramLong >> 32 & 0xFF));
    paramArrayOfByte[(paramInt + 2)] = ((byte)(int)(paramLong >> 40 & 0xFF));
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)(paramLong >> 48 & 0xFF));
    paramArrayOfByte[(paramInt + 0)] = ((byte)(int)(paramLong >> 56 & 0xFF));
  }
  
  public static byte[] longToBytes(long paramLong)
  {
    int i = (byte)(int)(paramLong & 0xFF);
    int j = (byte)(int)(paramLong >> 8 & 0xFF);
    int k = (byte)(int)(paramLong >> 16 & 0xFF);
    int m = (byte)(int)(paramLong >> 24 & 0xFF);
    int n = (byte)(int)(paramLong >> 32 & 0xFF);
    int i1 = (byte)(int)(paramLong >> 40 & 0xFF);
    int i2 = (byte)(int)(paramLong >> 48 & 0xFF);
    return new byte[] { (byte)(int)(paramLong >> 56 & 0xFF), i2, i1, n, m, k, j, i };
  }
  
  public static final int low(long paramLong)
  {
    return (int)paramLong;
  }
  
  public static final long makeLong(int paramInt1, int paramInt2)
  {
    return paramInt1 << 32 | paramInt2 & 0xFFFFFFFF;
  }
  
  public static byte[] readByte(ByteArrayInputStream paramByteArrayInputStream, int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramInt];
    paramByteArrayInputStream.read(arrayOfByte, 0, paramInt);
    return arrayOfByte;
  }
  
  public static void readBytes(ByteArrayInputStream paramByteArrayInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramByteArrayInputStream.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public static void shortToBytes(short paramShort, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[(paramInt + 1)] = ((byte)(paramShort & 0xFF));
    paramArrayOfByte[paramInt] = ((byte)(paramShort >> 8 & 0xFF));
  }
  
  public static byte[] shortToBytes(short paramShort)
  {
    int i = (byte)(paramShort & 0xFF);
    return new byte[] { (byte)(paramShort >> 8 & 0xFF), i };
  }
  
  public static final byte strToByte(String paramString, byte paramByte)
  {
    try
    {
      byte b = Byte.parseByte(paramString);
      return b;
    }
    catch (NumberFormatException paramString) {}
    return paramByte;
  }
  
  public static byte[] strToIPv4(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      paramString = paramString.split("\\.");
    } while (paramString == null);
    byte[] arrayOfByte = new byte[paramString.length];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)Integer.parseInt(paramString[i]));
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static final int strToInt(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
  
  public static void ubyteToBytes(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[0] = ((byte)(paramInt1 & 0xFF));
  }
  
  public static byte[] ubyteToBytes(int paramInt)
  {
    return new byte[] { (byte)(paramInt & 0xFF) };
  }
  
  public static void uintToBytes(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[(paramInt + 3)] = ((byte)(int)paramLong);
    paramArrayOfByte[(paramInt + 2)] = ((byte)(int)(paramLong >> 8 & 0xFF));
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)(paramLong >> 16 & 0xFF));
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >> 24 & 0xFF));
  }
  
  public static byte[] uintToBytes(long paramLong)
  {
    int i = (byte)(int)(paramLong & 0xFF);
    int j = (byte)(int)(paramLong >> 8 & 0xFF);
    int k = (byte)(int)(paramLong >> 16 & 0xFF);
    return new byte[] { (byte)(int)(paramLong >> 24 & 0xFF), k, j, i };
  }
  
  public static void ushortToBytes(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 & 0xFF));
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >> 8 & 0xFF));
  }
  
  public static byte[] ushortToBytes(int paramInt)
  {
    int i = (byte)(paramInt & 0xFF);
    return new byte[] { (byte)(paramInt >> 8 & 0xFF), i };
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\data\Convert.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */