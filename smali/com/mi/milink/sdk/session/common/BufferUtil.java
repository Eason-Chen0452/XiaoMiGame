package com.mi.milink.sdk.session.common;

import com.mi.milink.sdk.debug.MiLinkLog;

public class BufferUtil
{
  private static String TAG = "BufferUtil";
  
  public static void copy(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2, int paramInt3)
  {
    int i = 0;
    while (i < paramInt3)
    {
      paramArrayOfByte1[paramInt1] = paramArrayOfByte2[(paramInt2 + i)];
      i += 1;
      paramInt1 += 1;
    }
  }
  
  public static int findContentLengthFromByte(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[15];
    copy(arrayOfByte, 0, "Content-Length:".getBytes(), 0, 15);
    return findFormByte(paramArrayOfByte, arrayOfByte);
  }
  
  public static int findFormByte(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    MiLinkLog.d(TAG, "findFormByte recvData");
    int i = paramArrayOfByte2.length - 1;
    while (i < paramArrayOfByte1.length)
    {
      int m = paramArrayOfByte2.length;
      int j = 0;
      int k = 1;
      while (j < m)
      {
        if (!isEqualByte(paramArrayOfByte1[(i - m + j + 1)], paramArrayOfByte2[j])) {
          k = 0;
        }
        j += 1;
      }
      if (k == 1) {
        return i + 1;
      }
      i += 1;
    }
    return -1;
  }
  
  public static int findFromByteKMP(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = getIndexKMP(paramArrayOfByte1, paramArrayOfByte2);
    int i = j;
    if (j != -1) {
      i = j + paramArrayOfByte2.length;
    }
    return i;
  }
  
  public static int findHttpHeaderEndFromByte(byte[] paramArrayOfByte)
  {
    return findFormByte(paramArrayOfByte, new byte[] { 13, 10, 13, 10 });
  }
  
  public static int findMNSHeaderFromByte(byte[] paramArrayOfByte)
  {
    return findFormByte(paramArrayOfByte, new byte[] { StreamUtil.MNS[0], StreamUtil.MNS[1], StreamUtil.MNS[2], StreamUtil.MNS[3] });
  }
  
  public static int getIndexKMP(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int k = paramArrayOfByte1.length;
    int m = paramArrayOfByte2.length;
    if (k < m) {}
    int j;
    int i;
    do
    {
      int[] arrayOfInt;
      do
      {
        return -1;
        arrayOfInt = getKMPNext(paramArrayOfByte2);
      } while (arrayOfInt == null);
      j = 0;
      i = 0;
      while ((i < k) && (j < m)) {
        if (isEqualByte(paramArrayOfByte1[i], paramArrayOfByte2[j]))
        {
          j += 1;
          i += 1;
        }
        else if (j == 0)
        {
          i += 1;
        }
        else
        {
          j = arrayOfInt[(j - 1)] + 1;
        }
      }
    } while (j != m);
    return i - j;
  }
  
  private static int[] getKMPNext(byte[] paramArrayOfByte)
  {
    int k = paramArrayOfByte.length;
    Object localObject;
    if (k == 0) {
      localObject = null;
    }
    int[] arrayOfInt;
    int i;
    do
    {
      return (int[])localObject;
      arrayOfInt = new int[k];
      arrayOfInt[0] = -1;
      i = 1;
      localObject = arrayOfInt;
    } while (i >= k);
    for (int j = arrayOfInt[(i - 1)]; (j >= 0) && (!isEqualByte(paramArrayOfByte[i], paramArrayOfByte[(j + 1)])); j = arrayOfInt[j]) {}
    if (isEqualByte(paramArrayOfByte[i], paramArrayOfByte[(j + 1)])) {
      arrayOfInt[i] = (j + 1);
    }
    for (;;)
    {
      i += 1;
      break;
      arrayOfInt[i] = -1;
    }
  }
  
  public static boolean isEqualByte(byte paramByte1, byte paramByte2)
  {
    return (paramByte1 == paramByte2) || ((Character.isLetter((char)paramByte1)) && (Character.isLetter((char)paramByte1)) && (Math.abs(paramByte1 - paramByte2) == 32));
  }
  
  public static boolean isHttpHead(byte[] paramArrayOfByte)
  {
    String str = new String(paramArrayOfByte).substring(0, 4).toUpperCase();
    return (paramArrayOfByte != null) && (str.charAt(0) == 'H') && (str.charAt(1) == 'T') && (str.charAt(2) == 'T') && (str.charAt(3) == 'P');
  }
  
  public static boolean isMNSHead(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length >= StreamUtil.MNS.length)) {
      return (paramArrayOfByte[0] == StreamUtil.MNS[0]) && (paramArrayOfByte[1] == StreamUtil.MNS[1]) && (paramArrayOfByte[2] == StreamUtil.MNS[2]) && (paramArrayOfByte[3] == StreamUtil.MNS[3]);
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\BufferUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */