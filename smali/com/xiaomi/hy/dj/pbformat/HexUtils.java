package com.xiaomi.hy.dj.pbformat;

import java.io.UnsupportedEncodingException;

public final class HexUtils
{
  static final byte[] HEX_CHARS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  public static String getHexString(byte paramByte, int paramInt)
  {
    paramByte &= 0xFF;
    int i = HEX_CHARS[(paramByte >>> 4)];
    int j = HEX_CHARS[(paramByte & 0xF)];
    try
    {
      String str = new String(new byte[] { i, j }, "ASCII");
      StringBuilder localStringBuilder = new StringBuilder();
      if (str.length() < paramInt)
      {
        paramByte = paramInt - str.length();
        while (paramByte > 0)
        {
          localStringBuilder.append('0');
          paramByte -= 1;
        }
      }
      str = str;
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException(localUnsupportedEncodingException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\HexUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */