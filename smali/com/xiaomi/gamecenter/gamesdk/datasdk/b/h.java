package com.xiaomi.gamecenter.gamesdk.datasdk.b;

import java.security.MessageDigest;

public final class h
{
  public static String a(byte[] paramArrayOfByte)
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
      catch (Exception paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */