package com.google.zxing.oned;

import java.util.Arrays;

public final class CodaBarWriter
  extends OneDimensionalCodeWriter
{
  private static final char[] END_CHARS = { 84, 78, 42, 69 };
  private static final char[] START_CHARS = { 65, 66, 67, 68 };
  
  public boolean[] encode(String paramString)
  {
    if (!CodaBarReader.arrayContains(START_CHARS, Character.toUpperCase(paramString.charAt(0)))) {
      throw new IllegalArgumentException("Codabar should start with one of the following: " + Arrays.toString(START_CHARS));
    }
    if (!CodaBarReader.arrayContains(END_CHARS, Character.toUpperCase(paramString.charAt(paramString.length() - 1)))) {
      throw new IllegalArgumentException("Codabar should end with one of the following: " + Arrays.toString(END_CHARS));
    }
    int i = 20;
    int j = 1;
    if (j < paramString.length() - 1)
    {
      if ((Character.isDigit(paramString.charAt(j))) || (paramString.charAt(j) == '-') || (paramString.charAt(j) == '$')) {
        i += 9;
      }
      for (;;)
      {
        j += 1;
        break;
        char c = paramString.charAt(j);
        if (!CodaBarReader.arrayContains(new char[] { 47, 58, 43, 46 }, c)) {
          break label213;
        }
        i += 10;
      }
      label213:
      throw new IllegalArgumentException("Cannot encode : '" + paramString.charAt(j) + '\'');
    }
    boolean[] arrayOfBoolean = new boolean[i + (paramString.length() - 1)];
    j = 0;
    int k = 0;
    while (k < paramString.length())
    {
      int m = Character.toUpperCase(paramString.charAt(k));
      i = m;
      if (k == paramString.length() - 1) {}
      int n;
      label357:
      int i2;
      switch (m)
      {
      default: 
        i = m;
        int i1 = 0;
        n = 0;
        m = i1;
        if (n < CodaBarReader.ALPHABET.length)
        {
          if (i == CodaBarReader.ALPHABET[n]) {
            m = CodaBarReader.CHARACTER_ENCODINGS[n];
          }
        }
        else
        {
          i2 = 1;
          i = 0;
          n = 0;
        }
        break;
      }
      for (;;)
      {
        label396:
        if (n >= 7) {
          break label499;
        }
        arrayOfBoolean[j] = i2;
        j += 1;
        if (((m >> 6 - n & 0x1) == 0) || (i == 1))
        {
          if (i2 == 0) {}
          for (i2 = 1;; i2 = 0)
          {
            n += 1;
            i = 0;
            break label396;
            i = 65;
            break;
            i = 66;
            break;
            i = 67;
            break;
            i = 68;
            break;
            n += 1;
            break label357;
          }
        }
        i += 1;
      }
      label499:
      i = j;
      if (k < paramString.length() - 1)
      {
        arrayOfBoolean[j] = false;
        i = j + 1;
      }
      k += 1;
      j = i;
    }
    return arrayOfBoolean;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\oned\CodaBarWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */