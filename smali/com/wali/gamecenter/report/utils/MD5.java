package com.wali.gamecenter.report.utils;

import java.security.MessageDigest;

public final class MD5
{
  public static boolean compare(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    boolean bool1;
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null))
    {
      bool1 = false;
      return bool1;
    }
    boolean bool2 = true;
    int j = paramArrayOfByte1.length;
    if (j == paramArrayOfByte1.length)
    {
      int i = 0;
      for (;;)
      {
        bool1 = bool2;
        if (i >= j) {
          break;
        }
        if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
          break label53;
        }
        i += 1;
      }
    }
    label53:
    return false;
  }
  
  public static String getMD5(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject).update(paramArrayOfByte);
        paramArrayOfByte = new StringBuffer();
        localObject = ((MessageDigest)localObject).digest();
        int i = 0;
        while (i < localObject.length)
        {
          int k = localObject[i];
          int j = k;
          if (k < 0) {
            j = k + 256;
          }
          if (j < 16) {
            paramArrayOfByte.append("0");
          }
          paramArrayOfByte.append(Integer.toHexString(j));
          i += 1;
        }
        paramArrayOfByte = paramArrayOfByte.toString();
        return paramArrayOfByte;
      }
      catch (Throwable paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static String getMD5_16(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject).update(paramArrayOfByte);
        paramArrayOfByte = new StringBuffer();
        localObject = ((MessageDigest)localObject).digest();
        int i = 0;
        while (i < localObject.length)
        {
          int k = localObject[i];
          int j = k;
          if (k < 0) {
            j = k + 256;
          }
          if (j < 16) {
            paramArrayOfByte.append("0");
          }
          paramArrayOfByte.append(Integer.toHexString(j));
          i += 1;
        }
        paramArrayOfByte = paramArrayOfByte.toString().substring(8, 24);
        return paramArrayOfByte;
      }
      catch (Throwable paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] getMD5_bin(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
        localMessageDigest.update(paramArrayOfByte);
        paramArrayOfByte = localMessageDigest.digest();
        return paramArrayOfByte;
      }
      catch (Throwable paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\utils\MD5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */