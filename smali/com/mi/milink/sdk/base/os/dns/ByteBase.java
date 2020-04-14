package com.mi.milink.sdk.base.os.dns;

import java.text.DecimalFormat;

public class ByteBase
{
  private static final DecimalFormat byteFormat = new DecimalFormat();
  
  public static String byteString(byte[] paramArrayOfByte, int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < paramInt)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      if ((j <= 32) || (j >= 127))
      {
        localStringBuffer.append('\\');
        localStringBuffer.append(byteFormat.format(j));
      }
      for (;;)
      {
        i += 1;
        break;
        if ((j == 34) || (j == 40) || (j == 41) || (j == 46) || (j == 59) || (j == 92) || (j == 64) || (j == 36))
        {
          localStringBuffer.append('\\');
          localStringBuffer.append((char)j);
        }
        else
        {
          localStringBuffer.append((char)j);
        }
      }
    }
    return localStringBuffer.toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\dns\ByteBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */