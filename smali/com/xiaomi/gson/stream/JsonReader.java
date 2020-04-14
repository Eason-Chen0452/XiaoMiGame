package com.xiaomi.gson.stream;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class JsonReader
  implements Closeable
{
  private static final char[] b = ")]}'\n".toCharArray();
  int a = 0;
  private final Reader c;
  private boolean d = false;
  private final char[] e = new char['Ѐ'];
  private int f = 0;
  private int g = 0;
  private int h = 0;
  private int i = 0;
  private long j;
  private int k;
  private String l;
  private int[] m = new int[32];
  private int n = 0;
  private String[] o;
  private int[] p;
  
  static
  {
    com.xiaomi.gson.internal.JsonReaderInternalAccess.a = new a();
  }
  
  public JsonReader(Reader paramReader)
  {
    int[] arrayOfInt = this.m;
    int i1 = this.n;
    this.n = (i1 + 1);
    arrayOfInt[i1] = 6;
    this.o = new String[32];
    this.p = new int[32];
    if (paramReader == null) {
      throw new NullPointerException("in == null");
    }
    this.c = paramReader;
  }
  
  private IOException a(String paramString)
  {
    throw new MalformedJsonException(paramString + " at line " + (this.h + 1) + " column " + s() + " path " + t());
  }
  
  private void a(int paramInt)
  {
    if (this.n == this.m.length)
    {
      arrayOfInt1 = new int[this.n * 2];
      int[] arrayOfInt2 = new int[this.n * 2];
      String[] arrayOfString = new String[this.n * 2];
      System.arraycopy(this.m, 0, arrayOfInt1, 0, this.n);
      System.arraycopy(this.p, 0, arrayOfInt2, 0, this.n);
      System.arraycopy(this.o, 0, arrayOfString, 0, this.n);
      this.m = arrayOfInt1;
      this.p = arrayOfInt2;
      this.o = arrayOfString;
    }
    int[] arrayOfInt1 = this.m;
    int i1 = this.n;
    this.n = (i1 + 1);
    arrayOfInt1[i1] = paramInt;
  }
  
  private boolean a(char paramChar)
  {
    switch (paramChar)
    {
    default: 
      return true;
    case '#': 
    case '/': 
    case ';': 
    case '=': 
    case '\\': 
      w();
    }
    return false;
  }
  
  private int b(boolean paramBoolean)
  {
    char[] arrayOfChar = this.e;
    int i1 = this.f;
    int i2 = this.g;
    for (;;)
    {
      int i3 = i2;
      int i4 = i1;
      if (i1 == i2)
      {
        this.f = i1;
        if (b(1))
        {
          i4 = this.f;
          i3 = this.g;
        }
      }
      else
      {
        i1 = i4 + 1;
        i2 = arrayOfChar[i4];
        if (i2 == 10)
        {
          this.h += 1;
          this.i = i1;
          i2 = i3;
          continue;
        }
        if ((i2 == 32) || (i2 == 13) || (i2 == 9)) {
          break label468;
        }
        if (i2 == 47)
        {
          this.f = i1;
          if (i1 == i3)
          {
            this.f -= 1;
            boolean bool = b(2);
            this.f += 1;
            if (!bool) {
              return i2;
            }
          }
          w();
          switch (arrayOfChar[this.f])
          {
          default: 
            return i2;
          case '*': 
            this.f += 1;
            while ((this.f + "*/".length() <= this.g) || (b("*/".length()))) {
              if (this.e[this.f] == '\n')
              {
                this.h += 1;
                this.i = (this.f + 1);
                this.f += 1;
              }
              else
              {
                i1 = 0;
                for (;;)
                {
                  if (i1 >= "*/".length()) {
                    break label322;
                  }
                  if (this.e[(this.f + i1)] != "*/".charAt(i1)) {
                    break;
                  }
                  i1 += 1;
                }
              }
            }
            for (i1 = 1; i1 == 0; i1 = 0) {
              throw a("Unterminated comment");
            }
            i1 = this.f + 2;
            i2 = this.g;
            break;
          case '/': 
            label322:
            this.f += 1;
            x();
            i1 = this.f;
            i2 = this.g;
            break;
          }
        }
        if (i2 == 35)
        {
          this.f = i1;
          w();
          x();
          i1 = this.f;
          i2 = this.g;
          continue;
        }
        this.f = i1;
        return i2;
      }
      if (paramBoolean) {
        throw new EOFException("End of input at line " + (this.h + 1) + " column " + s());
      }
      return -1;
      label468:
      i2 = i3;
    }
  }
  
  private String b(char paramChar)
  {
    char[] arrayOfChar = this.e;
    StringBuilder localStringBuilder = new StringBuilder();
    label144:
    do
    {
      char c2 = this.f;
      int i1 = this.g;
      char c3;
      for (char c1 = c2;; c1 = c3)
      {
        if (c1 >= i1) {
          break label144;
        }
        c3 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          this.f = c3;
          localStringBuilder.append(arrayOfChar, c2, c3 - c2 - 1);
          return localStringBuilder.toString();
        }
        if (c1 == '\\')
        {
          this.f = c3;
          localStringBuilder.append(arrayOfChar, c2, c3 - c2 - 1);
          localStringBuilder.append(y());
          break;
        }
        if (c1 == '\n')
        {
          this.h += 1;
          this.i = c3;
        }
      }
      localStringBuilder.append(arrayOfChar, c2, c1 - c2);
      this.f = c1;
    } while (b(1));
    throw a("Unterminated string");
  }
  
  private boolean b(int paramInt)
  {
    boolean bool2 = false;
    char[] arrayOfChar = this.e;
    this.i -= this.f;
    if (this.g != this.f)
    {
      this.g -= this.f;
      System.arraycopy(arrayOfChar, this.f, arrayOfChar, 0, this.g);
    }
    for (;;)
    {
      this.f = 0;
      int i1;
      do
      {
        i1 = this.c.read(arrayOfChar, this.g, arrayOfChar.length - this.g);
        bool1 = bool2;
        if (i1 == -1) {
          break;
        }
        this.g = (i1 + this.g);
        i1 = paramInt;
        if (this.h == 0)
        {
          i1 = paramInt;
          if (this.i == 0)
          {
            i1 = paramInt;
            if (this.g > 0)
            {
              i1 = paramInt;
              if (arrayOfChar[0] == 65279)
              {
                this.f += 1;
                this.i += 1;
                i1 = paramInt + 1;
              }
            }
          }
        }
        paramInt = i1;
      } while (this.g < i1);
      boolean bool1 = true;
      return bool1;
      this.g = 0;
    }
  }
  
  private void c(char paramChar)
  {
    char[] arrayOfChar = this.e;
    label88:
    do
    {
      char c1 = this.f;
      char c3 = this.g;
      for (;;)
      {
        if (c1 >= c3) {
          break label88;
        }
        char c2 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          this.f = c2;
          return;
        }
        if (c1 == '\\')
        {
          this.f = c2;
          y();
          break;
        }
        if (c1 == '\n')
        {
          this.h += 1;
          this.i = c2;
        }
        c1 = c2;
      }
      this.f = c1;
    } while (b(1));
    throw a("Unterminated string");
  }
  
  private int o()
  {
    int i1 = this.e[this.f];
    String str2;
    String str1;
    int i3;
    int i2;
    if ((i1 == 116) || (i1 == 84))
    {
      str2 = "true";
      str1 = "TRUE";
      i1 = 5;
      i3 = str2.length();
      i2 = 1;
    }
    for (;;)
    {
      if (i2 >= i3) {
        break label168;
      }
      if ((this.f + i2 >= this.g) && (!b(i2 + 1)))
      {
        return 0;
        if ((i1 == 102) || (i1 == 70))
        {
          str2 = "false";
          str1 = "FALSE";
          i1 = 6;
          break;
        }
        if ((i1 == 110) || (i1 == 78))
        {
          str2 = "null";
          str1 = "NULL";
          i1 = 7;
          break;
        }
        return 0;
      }
      int i4 = this.e[(this.f + i2)];
      if ((i4 != str2.charAt(i2)) && (i4 != str1.charAt(i2))) {
        return 0;
      }
      i2 += 1;
    }
    label168:
    if (((this.f + i3 < this.g) || (b(i3 + 1))) && (a(this.e[(this.f + i3)]))) {
      return 0;
    }
    this.f += i3;
    this.a = i1;
    return i1;
  }
  
  private int u()
  {
    char[] arrayOfChar = this.e;
    int i7 = this.f;
    int i8 = this.g;
    long l1 = 0L;
    int i3 = 0;
    int i4 = 1;
    int i1 = 0;
    int i2 = 0;
    int i6 = i8;
    int i5 = i7;
    char c1;
    if (i7 + i2 == i8)
    {
      if (i2 == arrayOfChar.length) {
        return 0;
      }
      if (b(i2 + 1))
      {
        i5 = this.f;
        i6 = this.g;
      }
    }
    else
    {
      c1 = arrayOfChar[(i5 + i2)];
      switch (c1)
      {
      default: 
        if ((c1 < '0') || (c1 > '9'))
        {
          if (!a(c1)) {
            break label367;
          }
          return 0;
        }
        break;
      case '-': 
        if (i1 == 0)
        {
          i1 = 1;
          i3 = 1;
        }
        break;
      }
    }
    for (;;)
    {
      i2 += 1;
      i8 = i6;
      i7 = i5;
      break;
      if (i1 == 5)
      {
        i1 = 6;
      }
      else
      {
        return 0;
        if (i1 == 5)
        {
          i1 = 6;
        }
        else
        {
          return 0;
          if ((i1 == 2) || (i1 == 4))
          {
            i1 = 5;
          }
          else
          {
            return 0;
            if (i1 == 2)
            {
              i1 = 3;
            }
            else
            {
              return 0;
              if ((i1 == 1) || (i1 == 0))
              {
                l1 = -(c1 - '0');
                i1 = 2;
              }
              else
              {
                if (i1 == 2)
                {
                  if (l1 == 0L) {
                    return 0;
                  }
                  long l2 = 10L * l1 - (c1 - '0');
                  if ((l1 > -922337203685477580L) || ((l1 == -922337203685477580L) && (l2 < l1))) {}
                  for (i7 = 1;; i7 = 0)
                  {
                    i4 &= i7;
                    l1 = l2;
                    break;
                  }
                }
                if (i1 == 3)
                {
                  i1 = 4;
                }
                else if ((i1 == 5) || (i1 == 6))
                {
                  i1 = 7;
                  continue;
                  label367:
                  if ((i1 == 2) && (i4 != 0) && ((l1 != Long.MIN_VALUE) || (i3 != 0)))
                  {
                    if (i3 != 0) {}
                    for (;;)
                    {
                      this.j = l1;
                      this.f += i2;
                      this.a = 15;
                      return 15;
                      l1 = -l1;
                    }
                  }
                  if ((i1 == 2) || (i1 == 4) || (i1 == 7))
                  {
                    this.k = i2;
                    this.a = 16;
                    return 16;
                  }
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }
  
  private String v()
  {
    Object localObject1 = null;
    int i1 = 0;
    for (;;)
    {
      Object localObject2;
      int i2;
      if (this.f + i1 < this.g)
      {
        localObject2 = localObject1;
        i2 = i1;
        switch (this.e[(this.f + i1)])
        {
        default: 
          i1 += 1;
          break;
        case '#': 
        case '/': 
        case ';': 
        case '=': 
        case '\\': 
          w();
          i2 = i1;
          localObject2 = localObject1;
        case '\t': 
        case '\n': 
        case '\f': 
        case '\r': 
        case ' ': 
        case ',': 
        case ':': 
        case '[': 
        case ']': 
        case '{': 
        case '}': 
          label188:
          if (localObject2 != null) {}
          break;
        }
      }
      else
      {
        for (localObject1 = new String(this.e, this.f, i2);; localObject1 = ((StringBuilder)localObject2).toString())
        {
          this.f = (i2 + this.f);
          return (String)localObject1;
          if (i1 < this.e.length)
          {
            localObject2 = localObject1;
            i2 = i1;
            if (!b(i1 + 1)) {
              break label188;
            }
            break;
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new StringBuilder();
          }
          ((StringBuilder)localObject2).append(this.e, this.f, i1);
          this.f = (i1 + this.f);
          if (b(1)) {
            break label327;
          }
          i2 = 0;
          break label188;
          ((StringBuilder)localObject2).append(this.e, this.f, i2);
        }
        label327:
        i1 = 0;
        localObject1 = localObject2;
      }
    }
  }
  
  private void w()
  {
    if (!this.d) {
      throw a("Use JsonReader.setLenient(true) to accept malformed JSON");
    }
  }
  
  private void x()
  {
    int i1;
    do
    {
      if ((this.f < this.g) || (b(1)))
      {
        char[] arrayOfChar = this.e;
        i1 = this.f;
        this.f = (i1 + 1);
        i1 = arrayOfChar[i1];
        if (i1 == 10)
        {
          this.h += 1;
          this.i = this.f;
        }
      }
      else
      {
        return;
      }
    } while (i1 != 13);
  }
  
  private char y()
  {
    if ((this.f == this.g) && (!b(1))) {
      throw a("Unterminated escape sequence");
    }
    char[] arrayOfChar = this.e;
    int i1 = this.f;
    this.f = (i1 + 1);
    char c1 = arrayOfChar[i1];
    switch (c1)
    {
    default: 
      return c1;
    case 'u': 
      if ((this.f + 4 > this.g) && (!b(4))) {
        throw a("Unterminated escape sequence");
      }
      c1 = '\000';
      int i2 = this.f;
      i1 = i2;
      if (i1 < i2 + 4)
      {
        int i3 = this.e[i1];
        int i4 = (char)(c1 << '\004');
        if ((i3 >= 48) && (i3 <= 57)) {
          c1 = (char)(i4 + (i3 - 48));
        }
        for (;;)
        {
          i1 += 1;
          break;
          if ((i3 >= 97) && (i3 <= 102))
          {
            c1 = (char)(i4 + (i3 - 97 + 10));
          }
          else
          {
            if ((i3 < 65) || (i3 > 70)) {
              break label267;
            }
            c1 = (char)(i4 + (i3 - 65 + 10));
          }
        }
        throw new NumberFormatException("\\u" + new String(this.e, this.f, 4));
      }
      this.f += 4;
      return c1;
    case 't': 
      return '\t';
    case 'b': 
      return '\b';
    case 'n': 
      return '\n';
    case 'r': 
      return '\r';
    case 'f': 
      label267:
      return '\f';
    }
    this.h += 1;
    this.i = this.f;
    return c1;
  }
  
  public void a()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    if (i1 == 3)
    {
      a(1);
      this.p[(this.n - 1)] = 0;
      this.a = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
  }
  
  public final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public void b()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    if (i1 == 4)
    {
      this.n -= 1;
      int[] arrayOfInt = this.p;
      i1 = this.n - 1;
      arrayOfInt[i1] += 1;
      this.a = 0;
      return;
    }
    throw new IllegalStateException("Expected END_ARRAY but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
  }
  
  public void c()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    if (i1 == 1)
    {
      a(3);
      this.a = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
  }
  
  public void close()
  {
    this.a = 0;
    this.m[0] = 8;
    this.n = 1;
    this.c.close();
  }
  
  public void d()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    if (i1 == 2)
    {
      this.n -= 1;
      this.o[this.n] = null;
      int[] arrayOfInt = this.p;
      i1 = this.n - 1;
      arrayOfInt[i1] += 1;
      this.a = 0;
      return;
    }
    throw new IllegalStateException("Expected END_OBJECT but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
  }
  
  public boolean e()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    return (i1 != 2) && (i1 != 4);
  }
  
  public JsonToken f()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    switch (i1)
    {
    default: 
      throw new AssertionError();
    case 1: 
      return JsonToken.BEGIN_OBJECT;
    case 2: 
      return JsonToken.END_OBJECT;
    case 3: 
      return JsonToken.BEGIN_ARRAY;
    case 4: 
      return JsonToken.END_ARRAY;
    case 12: 
    case 13: 
    case 14: 
      return JsonToken.NAME;
    case 5: 
    case 6: 
      return JsonToken.BOOLEAN;
    case 7: 
      return JsonToken.NULL;
    case 8: 
    case 9: 
    case 10: 
    case 11: 
      return JsonToken.STRING;
    case 15: 
    case 16: 
      return JsonToken.NUMBER;
    }
    return JsonToken.END_DOCUMENT;
  }
  
  public String g()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    String str;
    if (i1 == 14) {
      str = v();
    }
    for (;;)
    {
      this.a = 0;
      this.o[(this.n - 1)] = str;
      return str;
      if (i1 == 12)
      {
        str = b('\'');
      }
      else
      {
        if (i1 != 13) {
          break;
        }
        str = b('"');
      }
    }
    throw new IllegalStateException("Expected a name but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
  }
  
  public String h()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    String str;
    if (i1 == 10) {
      str = v();
    }
    for (;;)
    {
      this.a = 0;
      int[] arrayOfInt = this.p;
      i1 = this.n - 1;
      arrayOfInt[i1] += 1;
      return str;
      if (i1 == 8)
      {
        str = b('\'');
      }
      else if (i1 == 9)
      {
        str = b('"');
      }
      else if (i1 == 11)
      {
        str = this.l;
        this.l = null;
      }
      else if (i1 == 15)
      {
        str = Long.toString(this.j);
      }
      else
      {
        if (i1 != 16) {
          break;
        }
        str = new String(this.e, this.f, this.k);
        this.f += this.k;
      }
    }
    throw new IllegalStateException("Expected a string but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
  }
  
  public boolean i()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    int[] arrayOfInt;
    if (i1 == 5)
    {
      this.a = 0;
      arrayOfInt = this.p;
      i1 = this.n - 1;
      arrayOfInt[i1] += 1;
      return true;
    }
    if (i1 == 6)
    {
      this.a = 0;
      arrayOfInt = this.p;
      i1 = this.n - 1;
      arrayOfInt[i1] += 1;
      return false;
    }
    throw new IllegalStateException("Expected a boolean but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
  }
  
  public void j()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    if (i1 == 7)
    {
      this.a = 0;
      int[] arrayOfInt = this.p;
      i1 = this.n - 1;
      arrayOfInt[i1] += 1;
      return;
    }
    throw new IllegalStateException("Expected null but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
  }
  
  public double k()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    if (i1 == 15)
    {
      this.a = 0;
      arrayOfInt = this.p;
      i1 = this.n - 1;
      arrayOfInt[i1] += 1;
      return this.j;
    }
    if (i1 == 16)
    {
      this.l = new String(this.e, this.f, this.k);
      this.f += this.k;
    }
    double d1;
    do
    {
      for (;;)
      {
        this.a = 11;
        d1 = Double.parseDouble(this.l);
        if ((this.d) || ((!Double.isNaN(d1)) && (!Double.isInfinite(d1)))) {
          break label339;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + d1 + " at line " + (this.h + 1) + " column " + s() + " path " + t());
        if ((i1 == 8) || (i1 == 9))
        {
          if (i1 == 8) {}
          for (char c1 = '\'';; c1 = '"')
          {
            this.l = b(c1);
            break;
          }
        }
        if (i1 != 10) {
          break;
        }
        this.l = v();
      }
    } while (i1 == 11);
    throw new IllegalStateException("Expected a double but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
    label339:
    this.l = null;
    this.a = 0;
    int[] arrayOfInt = this.p;
    i1 = this.n - 1;
    arrayOfInt[i1] += 1;
    return d1;
  }
  
  public long l()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    int[] arrayOfInt1;
    if (i1 == 15)
    {
      this.a = 0;
      arrayOfInt1 = this.p;
      i1 = this.n - 1;
      arrayOfInt1[i1] += 1;
      return this.j;
    }
    if (i1 == 16)
    {
      this.l = new String(this.e, this.f, this.k);
      this.f += this.k;
    }
    long l1;
    for (;;)
    {
      this.a = 11;
      double d1 = Double.parseDouble(this.l);
      l1 = d1;
      if (l1 == d1) {
        break label377;
      }
      throw new NumberFormatException("Expected a long but was " + this.l + " at line " + (this.h + 1) + " column " + s() + " path " + t());
      if ((i1 != 8) && (i1 != 9) && (i1 != 10)) {
        break label311;
      }
      if (i1 != 10) {
        break;
      }
      this.l = v();
      try
      {
        l1 = Long.parseLong(this.l);
        this.a = 0;
        arrayOfInt1 = this.p;
        i1 = this.n - 1;
        arrayOfInt1[i1] += 1;
        return l1;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    if (i1 == 8) {}
    for (char c1 = '\'';; c1 = '"')
    {
      this.l = b(c1);
      break;
    }
    label311:
    throw new IllegalStateException("Expected a long but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
    label377:
    this.l = null;
    this.a = 0;
    int[] arrayOfInt2 = this.p;
    i1 = this.n - 1;
    arrayOfInt2[i1] += 1;
    return l1;
  }
  
  public int m()
  {
    int i2 = this.a;
    int i1 = i2;
    if (i2 == 0) {
      i1 = q();
    }
    int[] arrayOfInt1;
    if (i1 == 15)
    {
      i1 = (int)this.j;
      if (this.j != i1) {
        throw new NumberFormatException("Expected an int but was " + this.j + " at line " + (this.h + 1) + " column " + s() + " path " + t());
      }
      this.a = 0;
      arrayOfInt1 = this.p;
      i2 = this.n - 1;
      arrayOfInt1[i2] += 1;
      return i1;
    }
    if (i1 == 16)
    {
      this.l = new String(this.e, this.f, this.k);
      this.f += this.k;
    }
    for (;;)
    {
      this.a = 11;
      double d1 = Double.parseDouble(this.l);
      i1 = (int)d1;
      if (i1 == d1) {
        break label459;
      }
      throw new NumberFormatException("Expected an int but was " + this.l + " at line " + (this.h + 1) + " column " + s() + " path " + t());
      if ((i1 != 8) && (i1 != 9) && (i1 != 10)) {
        break label393;
      }
      if (i1 != 10) {
        break;
      }
      this.l = v();
      try
      {
        i1 = Integer.parseInt(this.l);
        this.a = 0;
        arrayOfInt1 = this.p;
        i2 = this.n - 1;
        arrayOfInt1[i2] += 1;
        return i1;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    if (i1 == 8) {}
    for (char c1 = '\'';; c1 = '"')
    {
      this.l = b(c1);
      break;
    }
    label393:
    throw new IllegalStateException("Expected an int but was " + f() + " at line " + (this.h + 1) + " column " + s() + " path " + t());
    label459:
    this.l = null;
    this.a = 0;
    int[] arrayOfInt2 = this.p;
    i2 = this.n - 1;
    arrayOfInt2[i2] += 1;
    return i1;
  }
  
  public void n()
  {
    int i2 = 0;
    int i1 = this.a;
    int i3 = i1;
    if (i1 == 0) {
      i3 = q();
    }
    if (i3 == 3)
    {
      a(1);
      i1 = i2 + 1;
    }
    for (;;)
    {
      label32:
      this.a = 0;
      i2 = i1;
      if (i1 != 0) {
        break;
      }
      int[] arrayOfInt = this.p;
      i1 = this.n - 1;
      arrayOfInt[i1] += 1;
      this.o[(this.n - 1)] = "null";
      return;
      if (i3 == 1)
      {
        a(3);
        i1 = i2 + 1;
      }
      else if (i3 == 4)
      {
        this.n -= 1;
        i1 = i2 - 1;
      }
      else if (i3 == 2)
      {
        this.n -= 1;
        i1 = i2 - 1;
      }
      else if ((i3 == 14) || (i3 == 10))
      {
        do
        {
          i1 = 0;
          for (;;)
          {
            if (this.f + i1 < this.g) {
              switch (this.e[(this.f + i1)])
              {
              default: 
                i1 += 1;
                break;
              case '#': 
              case '/': 
              case ';': 
              case '=': 
              case '\\': 
                w();
              case '\t': 
              case '\n': 
              case '\f': 
              case '\r': 
              case ' ': 
              case ',': 
              case ':': 
              case '[': 
              case ']': 
              case '{': 
              case '}': 
                this.f = (i1 + this.f);
                i1 = i2;
                break label32;
              }
            }
          }
          this.f = (i1 + this.f);
        } while (b(1));
        i1 = i2;
      }
      else if ((i3 == 8) || (i3 == 12))
      {
        c('\'');
        i1 = i2;
      }
      else if ((i3 == 9) || (i3 == 13))
      {
        c('"');
        i1 = i2;
      }
      else
      {
        i1 = i2;
        if (i3 == 16)
        {
          this.f += this.k;
          i1 = i2;
        }
      }
    }
  }
  
  public final boolean p()
  {
    return this.d;
  }
  
  final int q()
  {
    int i2 = this.m[(this.n - 1)];
    int i1;
    if (i2 == 1)
    {
      this.m[(this.n - 1)] = 2;
      switch (b(true))
      {
      default: 
        this.f -= 1;
        i1 = o();
        if (i1 == 0) {
          break;
        }
      }
    }
    label611:
    do
    {
      return i1;
      if (i2 == 2)
      {
        switch (b(true))
        {
        case 44: 
        default: 
          throw a("Unterminated array");
        case 93: 
          this.a = 4;
          return 4;
        }
        w();
        break;
      }
      if ((i2 == 3) || (i2 == 5))
      {
        this.m[(this.n - 1)] = 4;
        if (i2 == 5) {
          switch (b(true))
          {
          default: 
            throw a("Unterminated object");
          case 125: 
            this.a = 2;
            return 2;
          case 59: 
            w();
          }
        }
        i1 = b(true);
        switch (i1)
        {
        default: 
          w();
          this.f -= 1;
          if (a((char)i1))
          {
            this.a = 14;
            return 14;
          }
          break;
        case 34: 
          this.a = 13;
          return 13;
        case 39: 
          w();
          this.a = 12;
          return 12;
        case 125: 
          if (i2 != 5)
          {
            this.a = 2;
            return 2;
          }
          throw a("Expected name");
        }
        throw a("Expected name");
      }
      if (i2 == 4)
      {
        this.m[(this.n - 1)] = 5;
        switch (b(true))
        {
        case 58: 
        case 59: 
        case 60: 
        default: 
          throw a("Expected ':'");
        }
        w();
        if (((this.f >= this.g) && (!b(1))) || (this.e[this.f] != '>')) {
          break;
        }
        this.f += 1;
        break;
      }
      if (i2 == 6)
      {
        if (this.d)
        {
          b(true);
          this.f -= 1;
          if ((this.f + b.length <= this.g) || (b(b.length)))
          {
            i1 = 0;
            while (i1 < b.length)
            {
              if (this.e[(this.f + i1)] != b[i1]) {
                break label611;
              }
              i1 += 1;
            }
            this.f += b.length;
          }
        }
        this.m[(this.n - 1)] = 7;
        break;
      }
      if (i2 == 7)
      {
        if (b(false) == -1)
        {
          this.a = 17;
          return 17;
        }
        w();
        this.f -= 1;
        break;
      }
      if (i2 != 8) {
        break;
      }
      throw new IllegalStateException("JsonReader is closed");
      if (i2 == 1)
      {
        this.a = 4;
        return 4;
      }
      if ((i2 == 1) || (i2 == 2))
      {
        w();
        this.f -= 1;
        this.a = 7;
        return 7;
      }
      throw a("Unexpected value");
      w();
      this.a = 8;
      return 8;
      this.a = 9;
      return 9;
      this.a = 3;
      return 3;
      this.a = 1;
      return 1;
      i2 = u();
      i1 = i2;
    } while (i2 != 0);
    if (!a(this.e[this.f])) {
      throw a("Expected value");
    }
    w();
    this.a = 10;
    return 10;
  }
  
  final int r()
  {
    return this.h + 1;
  }
  
  final int s()
  {
    return this.f - this.i + 1;
  }
  
  public final String t()
  {
    StringBuilder localStringBuilder = new StringBuilder("$");
    int i1 = 0;
    int i2 = this.n;
    if (i1 < i2)
    {
      switch (this.m[i1])
      {
      }
      for (;;)
      {
        i1 += 1;
        break;
        localStringBuilder.append('[').append(this.p[i1]).append(']');
        continue;
        localStringBuilder.append('.');
        if (this.o[i1] != null) {
          localStringBuilder.append(this.o[i1]);
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + " at line " + (this.h + 1) + " column " + s();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gson\stream\JsonReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */