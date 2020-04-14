package com.aonesoft.lib;

import java.security.MessageDigest;

public class AoneMD5
{
  public static String md5(String paramString)
  {
    char[] arrayOfChar = new char[16];
    char[] tmp8_6 = arrayOfChar;
    tmp8_6[0] = 48;
    char[] tmp13_8 = tmp8_6;
    tmp13_8[1] = 49;
    char[] tmp18_13 = tmp13_8;
    tmp18_13[2] = 50;
    char[] tmp23_18 = tmp18_13;
    tmp23_18[3] = 51;
    char[] tmp28_23 = tmp23_18;
    tmp28_23[4] = 52;
    char[] tmp33_28 = tmp28_23;
    tmp33_28[5] = 53;
    char[] tmp38_33 = tmp33_28;
    tmp38_33[6] = 54;
    char[] tmp44_38 = tmp38_33;
    tmp44_38[7] = 55;
    char[] tmp50_44 = tmp44_38;
    tmp50_44[8] = 56;
    char[] tmp56_50 = tmp50_44;
    tmp56_50[9] = 57;
    char[] tmp62_56 = tmp56_50;
    tmp62_56[10] = 65;
    char[] tmp68_62 = tmp62_56;
    tmp68_62[11] = 66;
    char[] tmp74_68 = tmp68_62;
    tmp74_68[12] = 67;
    char[] tmp80_74 = tmp74_68;
    tmp80_74[13] = 68;
    char[] tmp86_80 = tmp80_74;
    tmp86_80[14] = 69;
    char[] tmp92_86 = tmp86_80;
    tmp92_86[15] = 70;
    tmp92_86;
    try
    {
      paramString = paramString.getBytes();
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString);
      paramString = ((MessageDigest)localObject).digest();
      int k = paramString.length;
      localObject = new char[k * 2];
      int i = 0;
      int j = 0;
      for (;;)
      {
        if (i >= k) {
          return new String((char[])localObject);
        }
        int m = j + 1;
        localObject[j] = arrayOfChar[(paramString[i] >>> 4 & 0xF)];
        j = m + 1;
        localObject[m] = arrayOfChar[(paramString[i] & 0xF)];
        i += 1;
      }
      return null;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static byte[] md5_bytes(String paramString)
  {
    try
    {
      paramString = paramString.getBytes();
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString);
      paramString = localMessageDigest.digest();
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static byte[] md5_bytes(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = localMessageDigest.digest();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneMD5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */