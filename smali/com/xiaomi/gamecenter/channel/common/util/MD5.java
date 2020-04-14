package com.xiaomi.gamecenter.channel.common.util;

public class MD5
{
  private static char[] hexChar = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  public static String toHexString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      localStringBuilder.append(hexChar[((paramArrayOfByte[i] & 0xF0) >>> 4)]);
      localStringBuilder.append(hexChar[(paramArrayOfByte[i] & 0xF)]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\util\MD5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */