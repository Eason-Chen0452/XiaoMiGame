package com.xiaomi.hy.dj.pbformat;

import com.google.protobuf.ByteString;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TextUtils
{
  private static final int BUFFER_SIZE = 4096;
  private static final Pattern DIGITS = Pattern.compile("[0-9]", 2);
  private static final Pattern DOUBLE_INFINITY = Pattern.compile("-?inf(inity)?", 2);
  private static final Pattern FLOAT_INFINITY = Pattern.compile("-?inf(inity)?f?", 2);
  private static final Pattern FLOAT_NAN = Pattern.compile("nanf?", 2);
  
  public static int digitValue(char paramChar)
  {
    if (('0' <= paramChar) && (paramChar <= '9')) {
      return paramChar - '0';
    }
    if (('a' <= paramChar) && (paramChar <= 'z')) {
      return paramChar - 'a' + 10;
    }
    return paramChar - 'A' + 10;
  }
  
  public static String escapeBytes(ByteString paramByteString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramByteString.size());
    int i = 0;
    if (i < paramByteString.size())
    {
      int j = paramByteString.byteAt(i);
      switch (j)
      {
      default: 
        if (j >= 32) {
          localStringBuilder.append((char)j);
        }
        break;
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("\\a");
        continue;
        localStringBuilder.append("\\b");
        continue;
        localStringBuilder.append("\\f");
        continue;
        localStringBuilder.append("\\n");
        continue;
        localStringBuilder.append("\\r");
        continue;
        localStringBuilder.append("\\t");
        continue;
        localStringBuilder.append("\\v");
        continue;
        localStringBuilder.append("\\\\");
        continue;
        localStringBuilder.append("\\'");
        continue;
        localStringBuilder.append("\\\"");
        continue;
        localStringBuilder.append('\\');
        localStringBuilder.append((char)((j >>> 6 & 0x3) + 48));
        localStringBuilder.append((char)((j >>> 3 & 0x7) + 48));
        localStringBuilder.append((char)((j & 0x7) + 48));
      }
    }
    return localStringBuilder.toString();
  }
  
  public static boolean isDigits(String paramString)
  {
    return DIGITS.matcher(paramString).matches();
  }
  
  public static boolean isHex(char paramChar)
  {
    return (('0' <= paramChar) && (paramChar <= '9')) || (('a' <= paramChar) && (paramChar <= 'f')) || (('A' <= paramChar) && (paramChar <= 'F'));
  }
  
  public static boolean isOctal(char paramChar)
  {
    return ('0' <= paramChar) && (paramChar <= '7');
  }
  
  public static boolean parseBoolean(String paramString)
    throws IllegalArgumentException
  {
    if ((paramString.equalsIgnoreCase("true")) || (paramString.equalsIgnoreCase("t")) || (paramString.equals("1"))) {
      return true;
    }
    if ((paramString.equalsIgnoreCase("false")) || (paramString.equalsIgnoreCase("f")) || (paramString.equals("0"))) {
      return false;
    }
    throw new IllegalArgumentException("Expected \"true\" or \"false\".");
  }
  
  public static double parseDouble(String paramString)
    throws NumberFormatException
  {
    if (DOUBLE_INFINITY.matcher(paramString).matches())
    {
      if (paramString.startsWith("-")) {
        return Double.NEGATIVE_INFINITY;
      }
      return Double.POSITIVE_INFINITY;
    }
    if (paramString.equalsIgnoreCase("nan")) {
      return NaN.0D;
    }
    return Double.parseDouble(paramString);
  }
  
  public static float parseFloat(String paramString)
    throws NumberFormatException
  {
    if (FLOAT_INFINITY.matcher(paramString).matches())
    {
      if (paramString.startsWith("-")) {
        return Float.NEGATIVE_INFINITY;
      }
      return Float.POSITIVE_INFINITY;
    }
    if (FLOAT_NAN.matcher(paramString).matches()) {
      return NaN.0F;
    }
    return Float.parseFloat(paramString);
  }
  
  public static int parseInt32(String paramString)
    throws NumberFormatException
  {
    return (int)parseInteger(paramString, true, false);
  }
  
  public static long parseInt64(String paramString)
    throws NumberFormatException
  {
    return parseInteger(paramString, true, true);
  }
  
  public static long parseInteger(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    throws NumberFormatException
  {
    int k;
    if (paramString.startsWith("-", 0))
    {
      if (!paramBoolean1) {
        throw new NumberFormatException("Number must be positive: " + paramString);
      }
      k = 1;
    }
    for (int i = 1;; i = 0)
    {
      int j = 10;
      int m;
      Object localObject;
      long l1;
      if (paramString.startsWith("0x", i))
      {
        m = i + 2;
        j = 16;
        localObject = paramString.substring(m);
        if (((String)localObject).length() >= 16) {
          break label228;
        }
        l1 = Long.parseLong((String)localObject, j);
        if (k == 0) {
          break label414;
        }
        l1 = -l1;
      }
      label228:
      label408:
      label411:
      label414:
      for (;;)
      {
        long l2 = l1;
        if (!paramBoolean2)
        {
          if (paramBoolean1)
          {
            if (l1 <= 2147483647L)
            {
              l2 = l1;
              if (l1 >= -2147483648L) {
                break label408;
              }
            }
            throw new NumberFormatException("Number out of range for 32-bit signed integer: " + paramString);
            m = i;
            if (!paramString.startsWith("0", i)) {
              break;
            }
            j = 8;
            m = i;
            break;
          }
          if (l1 < 4294967296L)
          {
            l2 = l1;
            if (l1 >= 0L) {}
          }
          else
          {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + paramString);
            localObject = new BigInteger((String)localObject, j);
            if (k == 0) {
              break label411;
            }
            localObject = ((BigInteger)localObject).negate();
          }
        }
        for (;;)
        {
          if (!paramBoolean2)
          {
            if (paramBoolean1)
            {
              if (((BigInteger)localObject).bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + paramString);
              }
            }
            else if (((BigInteger)localObject).bitLength() > 32) {
              throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + paramString);
            }
          }
          else if (paramBoolean1)
          {
            if (((BigInteger)localObject).bitLength() > 63) {
              throw new NumberFormatException("Number out of range for 64-bit signed integer: " + paramString);
            }
          }
          else if (((BigInteger)localObject).bitLength() > 64) {
            throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + paramString);
          }
          l2 = ((BigInteger)localObject).longValue();
          return l2;
        }
      }
      k = 0;
    }
  }
  
  public static int parseUInt32(String paramString)
    throws NumberFormatException
  {
    return (int)parseInteger(paramString, false, false);
  }
  
  public static long parseUInt64(String paramString)
    throws NumberFormatException
  {
    return parseInteger(paramString, false, true);
  }
  
  public static InputStream toInputStream(String paramString)
  {
    return toInputStream(paramString, Charset.defaultCharset());
  }
  
  public static InputStream toInputStream(String paramString, Charset paramCharset)
  {
    return new ByteArrayInputStream(paramString.getBytes(paramCharset));
  }
  
  public static StringBuilder toStringBuilder(Readable paramReadable)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    CharBuffer localCharBuffer = CharBuffer.allocate(4096);
    for (;;)
    {
      int i = paramReadable.read(localCharBuffer);
      if (i == -1) {
        break;
      }
      localCharBuffer.flip();
      localStringBuilder.append(localCharBuffer, 0, i);
    }
    return localStringBuilder;
  }
  
  public static ByteString unescapeBytes(CharSequence paramCharSequence)
  {
    paramCharSequence = ByteString.copyFromUtf8(paramCharSequence.toString());
    byte[] arrayOfByte = new byte[paramCharSequence.size()];
    int k = 0;
    int n = 0;
    if (k < paramCharSequence.size())
    {
      int i = paramCharSequence.byteAt(k);
      int m;
      int j;
      int i1;
      if (i == 92) {
        if (k + 1 < paramCharSequence.size())
        {
          m = k + 1;
          j = paramCharSequence.byteAt(m);
          if (isOctal((char)j))
          {
            i1 = digitValue((char)j);
            j = i1;
            k = m;
            if (m + 1 < paramCharSequence.size())
            {
              j = i1;
              k = m;
              if (isOctal((char)paramCharSequence.byteAt(m + 1)))
              {
                k = m + 1;
                j = i1 * 8 + digitValue((char)paramCharSequence.byteAt(k));
              }
            }
            i1 = j;
            m = k;
            if (k + 1 < paramCharSequence.size())
            {
              i1 = j;
              m = k;
              if (isOctal((char)paramCharSequence.byteAt(k + 1)))
              {
                m = k + 1;
                i1 = j * 8 + digitValue((char)paramCharSequence.byteAt(m));
              }
            }
            arrayOfByte[n] = ((byte)i1);
            j = n + 1;
            k = m;
          }
        }
      }
      for (;;)
      {
        k += 1;
        n = j;
        break;
        switch (j)
        {
        default: 
          throw new IllegalArgumentException("Invalid escape sequence: '\\" + (char)j + '\'');
        case 97: 
          arrayOfByte[n] = 7;
          j = n + 1;
          k = m;
          break;
        case 98: 
          arrayOfByte[n] = 8;
          j = n + 1;
          k = m;
          break;
        case 102: 
          arrayOfByte[n] = 12;
          j = n + 1;
          k = m;
          break;
        case 110: 
          arrayOfByte[n] = 10;
          j = n + 1;
          k = m;
          break;
        case 114: 
          arrayOfByte[n] = 13;
          j = n + 1;
          k = m;
          break;
        case 116: 
          arrayOfByte[n] = 9;
          j = n + 1;
          k = m;
          break;
        case 118: 
          arrayOfByte[n] = 11;
          j = n + 1;
          k = m;
          break;
        case 92: 
          arrayOfByte[n] = 92;
          j = n + 1;
          k = m;
          break;
        case 39: 
          arrayOfByte[n] = 39;
          j = n + 1;
          k = m;
          break;
        case 34: 
          arrayOfByte[n] = 34;
          j = n + 1;
          k = m;
          break;
        case 120: 
          if ((m + 1 < paramCharSequence.size()) && (isHex((char)paramCharSequence.byteAt(m + 1))))
          {
            i1 = m + 1;
            m = digitValue((char)paramCharSequence.byteAt(i1));
            j = m;
            k = i1;
            if (i1 + 1 < paramCharSequence.size())
            {
              j = m;
              k = i1;
              if (isHex((char)paramCharSequence.byteAt(i1 + 1)))
              {
                k = i1 + 1;
                j = m * 16 + digitValue((char)paramCharSequence.byteAt(k));
              }
            }
            arrayOfByte[n] = ((byte)j);
            j = n + 1;
          }
          else
          {
            throw new IllegalArgumentException("Invalid escape sequence: '\\x' with no digits");
            throw new IllegalArgumentException("Invalid escape sequence: '\\' at end of string.");
            arrayOfByte[n] = i;
            j = n + 1;
          }
          break;
        }
      }
    }
    return ByteString.copyFrom(arrayOfByte, 0, n);
  }
  
  public static BigInteger unsignedLong(long paramLong)
  {
    if (paramLong < 0L) {
      return BigInteger.valueOf(0x7FFFFFFFFFFFFFFF & paramLong).setBit(63);
    }
    return BigInteger.valueOf(paramLong);
  }
  
  public static String unsignedToString(int paramInt)
  {
    if (paramInt >= 0) {
      return Integer.toString(paramInt);
    }
    return Long.toString(paramInt & 0xFFFFFFFF);
  }
  
  public static String unsignedToString(long paramLong)
  {
    if (paramLong >= 0L) {
      return Long.toString(paramLong);
    }
    return BigInteger.valueOf(0x7FFFFFFFFFFFFFFF & paramLong).setBit(63).toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\TextUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */