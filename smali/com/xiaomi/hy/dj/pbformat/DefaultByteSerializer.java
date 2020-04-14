package com.xiaomi.hy.dj.pbformat;

import com.google.protobuf.ByteString;

public class DefaultByteSerializer
  implements ByteSerializer
{
  static String unicodeEscaped(char paramChar)
  {
    if (paramChar < '\020') {
      return "\\u000" + Integer.toHexString(paramChar);
    }
    if (paramChar < 'Ā') {
      return "\\u00" + Integer.toHexString(paramChar);
    }
    if (paramChar < 'က') {
      return "\\u0" + Integer.toHexString(paramChar);
    }
    return "\\u" + Integer.toHexString(paramChar);
  }
  
  public String escapeBytes(ByteString paramByteString)
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
        localStringBuilder.append(unicodeEscaped((char)j));
      }
    }
    return localStringBuilder.toString();
  }
  
  public ByteString unescapeBytes(CharSequence paramCharSequence)
    throws InvalidEscapeSequence
  {
    byte[] arrayOfByte = new byte[paramCharSequence.length()];
    int j = 0;
    int m = 0;
    int k;
    int n;
    int i;
    label705:
    int i1;
    int i2;
    if (j < paramCharSequence.length())
    {
      k = paramCharSequence.charAt(j);
      if (k != 92) {
        break label840;
      }
      if (j + 1 < paramCharSequence.length())
      {
        k = j + 1;
        char c = paramCharSequence.charAt(k);
        if (TextUtils.isOctal(c))
        {
          n = TextUtils.digitValue(c);
          i = n;
          j = k;
          if (k + 1 < paramCharSequence.length())
          {
            i = n;
            j = k;
            if (TextUtils.isOctal(paramCharSequence.charAt(k + 1)))
            {
              j = k + 1;
              i = n * 8 + TextUtils.digitValue(paramCharSequence.charAt(j));
            }
          }
          n = i;
          k = j;
          if (j + 1 < paramCharSequence.length())
          {
            n = i;
            k = j;
            if (TextUtils.isOctal(paramCharSequence.charAt(j + 1)))
            {
              k = j + 1;
              n = i * 8 + TextUtils.digitValue(paramCharSequence.charAt(k));
            }
          }
          arrayOfByte[m] = ((byte)n);
          i = m + 1;
          j = k;
        }
        for (;;)
        {
          j += 1;
          m = i;
          break;
          switch (c)
          {
          default: 
            throw new InvalidEscapeSequence("Invalid escape sequence: '\\" + c + "'");
          case 'a': 
            arrayOfByte[m] = 7;
            i = m + 1;
            j = k;
            break;
          case 'b': 
            arrayOfByte[m] = 8;
            i = m + 1;
            j = k;
            break;
          case 'f': 
            arrayOfByte[m] = 12;
            i = m + 1;
            j = k;
            break;
          case 'n': 
            arrayOfByte[m] = 10;
            i = m + 1;
            j = k;
            break;
          case 'r': 
            arrayOfByte[m] = 13;
            i = m + 1;
            j = k;
            break;
          case 't': 
            arrayOfByte[m] = 9;
            i = m + 1;
            j = k;
            break;
          case 'v': 
            arrayOfByte[m] = 11;
            i = m + 1;
            j = k;
            break;
          case '\\': 
            arrayOfByte[m] = 92;
            i = m + 1;
            j = k;
            break;
          case '\'': 
            arrayOfByte[m] = 39;
            i = m + 1;
            j = k;
            break;
          case '"': 
            arrayOfByte[m] = 34;
            i = m + 1;
            j = k;
            break;
          case 'x': 
            if ((k + 1 >= paramCharSequence.length()) || (!TextUtils.isHex(paramCharSequence.charAt(k + 1)))) {
              break label705;
            }
            n = k + 1;
            k = TextUtils.digitValue(paramCharSequence.charAt(n));
            i = k;
            j = n;
            if (n + 1 < paramCharSequence.length())
            {
              i = k;
              j = n;
              if (TextUtils.isHex(paramCharSequence.charAt(n + 1)))
              {
                j = n + 1;
                i = k * 16 + TextUtils.digitValue(paramCharSequence.charAt(j));
              }
            }
            arrayOfByte[m] = ((byte)i);
            i = m + 1;
          }
        }
        throw new InvalidEscapeSequence("Invalid escape sequence: '\\x' with no digits");
        j = TextUtils.digitValue(paramCharSequence.charAt(k + 1));
        n = TextUtils.digitValue(paramCharSequence.charAt(k + 2));
        i1 = TextUtils.digitValue(paramCharSequence.charAt(k + 3));
        i2 = TextUtils.digitValue(paramCharSequence.charAt(k + 4));
        i = k + 4;
      }
    }
    for (j = j * 48 + n * 32 + i1 * 16 + i2;; j = k)
    {
      arrayOfByte[m] = ((byte)j);
      j = i;
      i = m + 1;
      break;
      throw new InvalidEscapeSequence("Invalid escape sequence: '\\' at end of string.");
      return ByteString.copyFrom(arrayOfByte, 0, m);
      label840:
      i = j;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\DefaultByteSerializer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */