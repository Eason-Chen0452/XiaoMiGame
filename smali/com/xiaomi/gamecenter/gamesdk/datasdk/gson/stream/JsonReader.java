package com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class JsonReader
  implements Closeable
{
  private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
  private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
  private static final int NUMBER_CHAR_DECIMAL = 3;
  private static final int NUMBER_CHAR_DIGIT = 2;
  private static final int NUMBER_CHAR_EXP_DIGIT = 7;
  private static final int NUMBER_CHAR_EXP_E = 5;
  private static final int NUMBER_CHAR_EXP_SIGN = 6;
  private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
  private static final int NUMBER_CHAR_NONE = 0;
  private static final int NUMBER_CHAR_SIGN = 1;
  private static final int PEEKED_BEGIN_ARRAY = 3;
  private static final int PEEKED_BEGIN_OBJECT = 1;
  private static final int PEEKED_BUFFERED = 11;
  private static final int PEEKED_DOUBLE_QUOTED = 9;
  private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
  private static final int PEEKED_END_ARRAY = 4;
  private static final int PEEKED_END_OBJECT = 2;
  private static final int PEEKED_EOF = 17;
  private static final int PEEKED_FALSE = 6;
  private static final int PEEKED_LONG = 15;
  private static final int PEEKED_NONE = 0;
  private static final int PEEKED_NULL = 7;
  private static final int PEEKED_NUMBER = 16;
  private static final int PEEKED_SINGLE_QUOTED = 8;
  private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
  private static final int PEEKED_TRUE = 5;
  private static final int PEEKED_UNQUOTED = 10;
  private static final int PEEKED_UNQUOTED_NAME = 14;
  private final char[] buffer = new char['Ѐ'];
  private final Reader in;
  private boolean lenient = false;
  private int limit = 0;
  private int lineNumber = 0;
  private int lineStart = 0;
  private int[] pathIndices;
  private String[] pathNames;
  int peeked = 0;
  private long peekedLong;
  private int peekedNumberLength;
  private String peekedString;
  private int pos = 0;
  private int[] stack = new int[32];
  private int stackSize = 0;
  
  static
  {
    com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.JsonReaderInternalAccess.INSTANCE = new JsonReader.1();
  }
  
  public JsonReader(Reader paramReader)
  {
    int[] arrayOfInt = this.stack;
    int i = this.stackSize;
    this.stackSize = (i + 1);
    arrayOfInt[i] = 6;
    this.pathNames = new String[32];
    this.pathIndices = new int[32];
    if (paramReader == null) {
      throw new NullPointerException("in == null");
    }
    this.in = paramReader;
  }
  
  private void checkLenient()
  {
    if (!this.lenient) {
      throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
    }
  }
  
  private void consumeNonExecutePrefix()
  {
    nextNonWhitespace(true);
    this.pos -= 1;
    if ((this.pos + NON_EXECUTE_PREFIX.length > this.limit) && (!fillBuffer(NON_EXECUTE_PREFIX.length))) {
      return;
    }
    int i = 0;
    for (;;)
    {
      if (i >= NON_EXECUTE_PREFIX.length) {
        break label80;
      }
      if (this.buffer[(this.pos + i)] != NON_EXECUTE_PREFIX[i]) {
        break;
      }
      i += 1;
    }
    label80:
    this.pos += NON_EXECUTE_PREFIX.length;
  }
  
  private boolean fillBuffer(int paramInt)
  {
    boolean bool2 = false;
    char[] arrayOfChar = this.buffer;
    this.lineStart -= this.pos;
    if (this.limit != this.pos)
    {
      this.limit -= this.pos;
      System.arraycopy(arrayOfChar, this.pos, arrayOfChar, 0, this.limit);
    }
    for (;;)
    {
      this.pos = 0;
      int i;
      do
      {
        i = this.in.read(arrayOfChar, this.limit, arrayOfChar.length - this.limit);
        bool1 = bool2;
        if (i == -1) {
          break;
        }
        this.limit = (i + this.limit);
        i = paramInt;
        if (this.lineNumber == 0)
        {
          i = paramInt;
          if (this.lineStart == 0)
          {
            i = paramInt;
            if (this.limit > 0)
            {
              i = paramInt;
              if (arrayOfChar[0] == 65279)
              {
                this.pos += 1;
                this.lineStart += 1;
                i = paramInt + 1;
              }
            }
          }
        }
        paramInt = i;
      } while (this.limit < i);
      boolean bool1 = true;
      return bool1;
      this.limit = 0;
    }
  }
  
  private boolean isLiteral(char paramChar)
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
      checkLenient();
    }
    return false;
  }
  
  private int nextNonWhitespace(boolean paramBoolean)
  {
    char[] arrayOfChar = this.buffer;
    int i = this.pos;
    int j = this.limit;
    for (;;)
    {
      int k = j;
      int m = i;
      if (i == j)
      {
        this.pos = i;
        if (fillBuffer(1))
        {
          m = this.pos;
          k = this.limit;
        }
      }
      else
      {
        i = m + 1;
        j = arrayOfChar[m];
        if (j == 10)
        {
          this.lineNumber += 1;
          this.lineStart = i;
          j = k;
          continue;
        }
        if ((j == 32) || (j == 13) || (j == 9)) {
          break label338;
        }
        if (j == 47)
        {
          this.pos = i;
          if (i == k)
          {
            this.pos -= 1;
            boolean bool = fillBuffer(2);
            this.pos += 1;
            if (!bool) {
              return j;
            }
          }
          checkLenient();
          switch (arrayOfChar[this.pos])
          {
          default: 
            return j;
          case '*': 
            this.pos += 1;
            if (!skipTo("*/")) {
              throw syntaxError("Unterminated comment");
            }
            i = this.pos + 2;
            j = this.limit;
            break;
          case '/': 
            this.pos += 1;
            skipToEndOfLine();
            i = this.pos;
            j = this.limit;
            break;
          }
        }
        if (j == 35)
        {
          this.pos = i;
          checkLenient();
          skipToEndOfLine();
          i = this.pos;
          j = this.limit;
          continue;
        }
        this.pos = i;
        return j;
      }
      if (paramBoolean) {
        throw new EOFException("End of input" + locationString());
      }
      return -1;
      label338:
      j = k;
    }
  }
  
  private String nextQuotedValue(char paramChar)
  {
    char[] arrayOfChar = this.buffer;
    Object localObject1 = null;
    label191:
    do
    {
      char c2 = this.pos;
      int i = this.limit;
      char c3;
      for (char c1 = c2;; c1 = c3)
      {
        if (c1 >= i) {
          break label191;
        }
        c3 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          this.pos = c3;
          paramChar = c3 - c2 - 1;
          if (localObject1 == null) {
            return new String(arrayOfChar, c2, paramChar);
          }
          ((StringBuilder)localObject1).append(arrayOfChar, c2, paramChar);
          return ((StringBuilder)localObject1).toString();
        }
        if (c1 == '\\')
        {
          this.pos = c3;
          c1 = c3 - c2 - 1;
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new StringBuilder(Math.max((c1 + '\001') * 2, 16));
          }
          ((StringBuilder)localObject2).append(arrayOfChar, c2, c1);
          ((StringBuilder)localObject2).append(readEscapeCharacter());
          localObject1 = localObject2;
          break;
        }
        if (c1 == '\n')
        {
          this.lineNumber += 1;
          this.lineStart = c3;
        }
      }
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new StringBuilder(Math.max((c1 - c2) * 2, 16));
      }
      ((StringBuilder)localObject2).append(arrayOfChar, c2, c1 - c2);
      this.pos = c1;
      localObject1 = localObject2;
    } while (fillBuffer(1));
    throw syntaxError("Unterminated string");
  }
  
  private String nextUnquotedValue()
  {
    Object localObject1 = null;
    int i = 0;
    for (;;)
    {
      Object localObject2;
      int j;
      if (this.pos + i < this.limit)
      {
        localObject2 = localObject1;
        j = i;
        switch (this.buffer[(this.pos + i)])
        {
        default: 
          i += 1;
          break;
        case '#': 
        case '/': 
        case ';': 
        case '=': 
        case '\\': 
          checkLenient();
          j = i;
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
        for (localObject1 = new String(this.buffer, this.pos, j);; localObject1 = ((StringBuilder)localObject2).append(this.buffer, this.pos, j).toString())
        {
          this.pos = (j + this.pos);
          return (String)localObject1;
          if (i < this.buffer.length)
          {
            localObject2 = localObject1;
            j = i;
            if (!fillBuffer(i + 1)) {
              break label188;
            }
            break;
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new StringBuilder(Math.max(i, 16));
          }
          ((StringBuilder)localObject2).append(this.buffer, this.pos, i);
          this.pos = (i + this.pos);
          if (fillBuffer(1)) {
            break label330;
          }
          j = 0;
          break label188;
        }
        label330:
        i = 0;
        localObject1 = localObject2;
      }
    }
  }
  
  private int peekKeyword()
  {
    int i = this.buffer[this.pos];
    String str2;
    String str1;
    int k;
    int j;
    if ((i == 116) || (i == 84))
    {
      str2 = "true";
      str1 = "TRUE";
      i = 5;
      k = str2.length();
      j = 1;
    }
    for (;;)
    {
      if (j >= k) {
        break label168;
      }
      if ((this.pos + j >= this.limit) && (!fillBuffer(j + 1)))
      {
        return 0;
        if ((i == 102) || (i == 70))
        {
          str2 = "false";
          str1 = "FALSE";
          i = 6;
          break;
        }
        if ((i == 110) || (i == 78))
        {
          str2 = "null";
          str1 = "NULL";
          i = 7;
          break;
        }
        return 0;
      }
      int m = this.buffer[(this.pos + j)];
      if ((m != str2.charAt(j)) && (m != str1.charAt(j))) {
        return 0;
      }
      j += 1;
    }
    label168:
    if (((this.pos + k < this.limit) || (fillBuffer(k + 1))) && (isLiteral(this.buffer[(this.pos + k)]))) {
      return 0;
    }
    this.pos += k;
    this.peeked = i;
    return i;
  }
  
  private int peekNumber()
  {
    char[] arrayOfChar = this.buffer;
    int i2 = this.pos;
    int i3 = this.limit;
    long l1 = 0L;
    int k = 0;
    int m = 1;
    int i = 0;
    int j = 0;
    int i1 = i3;
    int n = i2;
    char c;
    if (i2 + j == i3)
    {
      if (j == arrayOfChar.length) {
        return 0;
      }
      if (fillBuffer(j + 1))
      {
        n = this.pos;
        i1 = this.limit;
      }
    }
    else
    {
      c = arrayOfChar[(n + j)];
      switch (c)
      {
      default: 
        if ((c < '0') || (c > '9'))
        {
          if (!isLiteral(c)) {
            break label367;
          }
          return 0;
        }
        break;
      case '-': 
        if (i == 0)
        {
          i = 1;
          k = 1;
        }
        break;
      }
    }
    for (;;)
    {
      j += 1;
      i3 = i1;
      i2 = n;
      break;
      if (i == 5)
      {
        i = 6;
      }
      else
      {
        return 0;
        if (i == 5)
        {
          i = 6;
        }
        else
        {
          return 0;
          if ((i == 2) || (i == 4))
          {
            i = 5;
          }
          else
          {
            return 0;
            if (i == 2)
            {
              i = 3;
            }
            else
            {
              return 0;
              if ((i == 1) || (i == 0))
              {
                l1 = -(c - '0');
                i = 2;
              }
              else
              {
                if (i == 2)
                {
                  if (l1 == 0L) {
                    return 0;
                  }
                  long l2 = 10L * l1 - (c - '0');
                  if ((l1 > -922337203685477580L) || ((l1 == -922337203685477580L) && (l2 < l1))) {}
                  for (i2 = 1;; i2 = 0)
                  {
                    m &= i2;
                    l1 = l2;
                    break;
                  }
                }
                if (i == 3)
                {
                  i = 4;
                }
                else if ((i == 5) || (i == 6))
                {
                  i = 7;
                  continue;
                  label367:
                  if ((i == 2) && (m != 0) && ((l1 != Long.MIN_VALUE) || (k != 0)) && ((l1 != 0L) || (k == 0)))
                  {
                    if (k != 0) {}
                    for (;;)
                    {
                      this.peekedLong = l1;
                      this.pos += j;
                      this.peeked = 15;
                      return 15;
                      l1 = -l1;
                    }
                  }
                  if ((i == 2) || (i == 4) || (i == 7))
                  {
                    this.peekedNumberLength = j;
                    this.peeked = 16;
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
  
  private void push(int paramInt)
  {
    if (this.stackSize == this.stack.length)
    {
      arrayOfInt1 = new int[this.stackSize * 2];
      int[] arrayOfInt2 = new int[this.stackSize * 2];
      String[] arrayOfString = new String[this.stackSize * 2];
      System.arraycopy(this.stack, 0, arrayOfInt1, 0, this.stackSize);
      System.arraycopy(this.pathIndices, 0, arrayOfInt2, 0, this.stackSize);
      System.arraycopy(this.pathNames, 0, arrayOfString, 0, this.stackSize);
      this.stack = arrayOfInt1;
      this.pathIndices = arrayOfInt2;
      this.pathNames = arrayOfString;
    }
    int[] arrayOfInt1 = this.stack;
    int i = this.stackSize;
    this.stackSize = (i + 1);
    arrayOfInt1[i] = paramInt;
  }
  
  private char readEscapeCharacter()
  {
    if ((this.pos == this.limit) && (!fillBuffer(1))) {
      throw syntaxError("Unterminated escape sequence");
    }
    char[] arrayOfChar = this.buffer;
    int i = this.pos;
    this.pos = (i + 1);
    char c2 = arrayOfChar[i];
    char c1 = c2;
    switch (c2)
    {
    default: 
      throw syntaxError("Invalid escape sequence");
    case 'u': 
      if ((this.pos + 4 > this.limit) && (!fillBuffer(4))) {
        throw syntaxError("Unterminated escape sequence");
      }
      c1 = '\000';
      int j = this.pos;
      i = j;
      if (i < j + 4)
      {
        int k = this.buffer[i];
        int m = (char)(c1 << '\004');
        if ((k >= 48) && (k <= 57)) {
          c1 = (char)(m + (k - 48));
        }
        for (;;)
        {
          i += 1;
          break;
          if ((k >= 97) && (k <= 102))
          {
            c1 = (char)(m + (k - 97 + 10));
          }
          else
          {
            if ((k < 65) || (k > 70)) {
              break label313;
            }
            c1 = (char)(m + (k - 65 + 10));
          }
        }
        throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
      }
      this.pos += 4;
    case '"': 
    case '\'': 
    case '/': 
    case '\\': 
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
      label313:
      return '\f';
    }
    this.lineNumber += 1;
    this.lineStart = this.pos;
    return c2;
  }
  
  private void skipQuotedValue(char paramChar)
  {
    char[] arrayOfChar = this.buffer;
    label88:
    do
    {
      char c1 = this.pos;
      char c3 = this.limit;
      for (;;)
      {
        if (c1 >= c3) {
          break label88;
        }
        char c2 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          this.pos = c2;
          return;
        }
        if (c1 == '\\')
        {
          this.pos = c2;
          readEscapeCharacter();
          break;
        }
        if (c1 == '\n')
        {
          this.lineNumber += 1;
          this.lineStart = c2;
        }
        c1 = c2;
      }
      this.pos = c1;
    } while (fillBuffer(1));
    throw syntaxError("Unterminated string");
  }
  
  private boolean skipTo(String paramString)
  {
    boolean bool2 = false;
    int j = paramString.length();
    for (;;)
    {
      if (this.pos + j > this.limit)
      {
        bool1 = bool2;
        if (!fillBuffer(j)) {
          break label116;
        }
      }
      if (this.buffer[this.pos] != '\n') {
        break;
      }
      this.lineNumber += 1;
      this.lineStart = (this.pos + 1);
      this.pos += 1;
    }
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label113;
      }
      if (this.buffer[(this.pos + i)] != paramString.charAt(i)) {
        break;
      }
      i += 1;
    }
    label113:
    boolean bool1 = true;
    label116:
    return bool1;
  }
  
  private void skipToEndOfLine()
  {
    int i;
    do
    {
      if ((this.pos < this.limit) || (fillBuffer(1)))
      {
        char[] arrayOfChar = this.buffer;
        i = this.pos;
        this.pos = (i + 1);
        i = arrayOfChar[i];
        if (i == 10)
        {
          this.lineNumber += 1;
          this.lineStart = this.pos;
        }
      }
      else
      {
        return;
      }
    } while (i != 13);
  }
  
  private void skipUnquotedValue()
  {
    do
    {
      int i = 0;
      while (this.pos + i < this.limit) {
        switch (this.buffer[(this.pos + i)])
        {
        default: 
          i += 1;
          break;
        case '#': 
        case '/': 
        case ';': 
        case '=': 
        case '\\': 
          checkLenient();
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
          this.pos = (i + this.pos);
          return;
        }
      }
      this.pos = (i + this.pos);
    } while (fillBuffer(1));
  }
  
  private IOException syntaxError(String paramString)
  {
    throw new MalformedJsonException(paramString + locationString());
  }
  
  public void beginArray()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 3)
    {
      push(1);
      this.pathIndices[(this.stackSize - 1)] = 0;
      this.peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + locationString());
  }
  
  public void beginObject()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 1)
    {
      push(3);
      this.peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + locationString());
  }
  
  public void close()
  {
    this.peeked = 0;
    this.stack[0] = 8;
    this.stackSize = 1;
    this.in.close();
  }
  
  int doPeek()
  {
    int i = this.stack[(this.stackSize - 1)];
    if (i == 1)
    {
      this.stack[(this.stackSize - 1)] = 2;
      switch (nextNonWhitespace(true))
      {
      default: 
        this.pos -= 1;
        i = peekKeyword();
        if (i == 0) {
          break;
        }
      }
    }
    int j;
    do
    {
      return i;
      if (i == 2)
      {
        switch (nextNonWhitespace(true))
        {
        case 44: 
        default: 
          throw syntaxError("Unterminated array");
        case 93: 
          this.peeked = 4;
          return 4;
        }
        checkLenient();
        break;
      }
      if ((i == 3) || (i == 5))
      {
        this.stack[(this.stackSize - 1)] = 4;
        if (i == 5) {
          switch (nextNonWhitespace(true))
          {
          default: 
            throw syntaxError("Unterminated object");
          case 125: 
            this.peeked = 2;
            return 2;
          case 59: 
            checkLenient();
          }
        }
        j = nextNonWhitespace(true);
        switch (j)
        {
        default: 
          checkLenient();
          this.pos -= 1;
          if (isLiteral((char)j))
          {
            this.peeked = 14;
            return 14;
          }
          break;
        case 34: 
          this.peeked = 13;
          return 13;
        case 39: 
          checkLenient();
          this.peeked = 12;
          return 12;
        case 125: 
          if (i != 5)
          {
            this.peeked = 2;
            return 2;
          }
          throw syntaxError("Expected name");
        }
        throw syntaxError("Expected name");
      }
      if (i == 4)
      {
        this.stack[(this.stackSize - 1)] = 5;
        switch (nextNonWhitespace(true))
        {
        case 58: 
        case 59: 
        case 60: 
        default: 
          throw syntaxError("Expected ':'");
        }
        checkLenient();
        if (((this.pos >= this.limit) && (!fillBuffer(1))) || (this.buffer[this.pos] != '>')) {
          break;
        }
        this.pos += 1;
        break;
      }
      if (i == 6)
      {
        if (this.lenient) {
          consumeNonExecutePrefix();
        }
        this.stack[(this.stackSize - 1)] = 7;
        break;
      }
      if (i == 7)
      {
        if (nextNonWhitespace(false) == -1)
        {
          this.peeked = 17;
          return 17;
        }
        checkLenient();
        this.pos -= 1;
        break;
      }
      if (i != 8) {
        break;
      }
      throw new IllegalStateException("JsonReader is closed");
      if (i == 1)
      {
        this.peeked = 4;
        return 4;
      }
      if ((i == 1) || (i == 2))
      {
        checkLenient();
        this.pos -= 1;
        this.peeked = 7;
        return 7;
      }
      throw syntaxError("Unexpected value");
      checkLenient();
      this.peeked = 8;
      return 8;
      this.peeked = 9;
      return 9;
      this.peeked = 3;
      return 3;
      this.peeked = 1;
      return 1;
      j = peekNumber();
      i = j;
    } while (j != 0);
    if (!isLiteral(this.buffer[this.pos])) {
      throw syntaxError("Expected value");
    }
    checkLenient();
    this.peeked = 10;
    return 10;
  }
  
  public void endArray()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 4)
    {
      this.stackSize -= 1;
      int[] arrayOfInt = this.pathIndices;
      i = this.stackSize - 1;
      arrayOfInt[i] += 1;
      this.peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected END_ARRAY but was " + peek() + locationString());
  }
  
  public void endObject()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 2)
    {
      this.stackSize -= 1;
      this.pathNames[this.stackSize] = null;
      int[] arrayOfInt = this.pathIndices;
      i = this.stackSize - 1;
      arrayOfInt[i] += 1;
      this.peeked = 0;
      return;
    }
    throw new IllegalStateException("Expected END_OBJECT but was " + peek() + locationString());
  }
  
  public String getPath()
  {
    StringBuilder localStringBuilder = new StringBuilder("$");
    int i = 0;
    int j = this.stackSize;
    if (i < j)
    {
      switch (this.stack[i])
      {
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append('[').append(this.pathIndices[i]).append(']');
        continue;
        localStringBuilder.append('.');
        if (this.pathNames[i] != null) {
          localStringBuilder.append(this.pathNames[i]);
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public boolean hasNext()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    return (i != 2) && (i != 4);
  }
  
  public final boolean isLenient()
  {
    return this.lenient;
  }
  
  String locationString()
  {
    int i = this.lineNumber;
    int j = this.pos;
    int k = this.lineStart;
    return " at line " + (i + 1) + " column " + (j - k + 1) + " path " + getPath();
  }
  
  public boolean nextBoolean()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    int[] arrayOfInt;
    if (i == 5)
    {
      this.peeked = 0;
      arrayOfInt = this.pathIndices;
      i = this.stackSize - 1;
      arrayOfInt[i] += 1;
      return true;
    }
    if (i == 6)
    {
      this.peeked = 0;
      arrayOfInt = this.pathIndices;
      i = this.stackSize - 1;
      arrayOfInt[i] += 1;
      return false;
    }
    throw new IllegalStateException("Expected a boolean but was " + peek() + locationString());
  }
  
  public double nextDouble()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 15)
    {
      this.peeked = 0;
      arrayOfInt = this.pathIndices;
      i = this.stackSize - 1;
      arrayOfInt[i] += 1;
      return this.peekedLong;
    }
    if (i == 16)
    {
      this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
      this.pos += this.peekedNumberLength;
    }
    double d;
    do
    {
      for (;;)
      {
        this.peeked = 11;
        d = Double.parseDouble(this.peekedString);
        if ((this.lenient) || ((!Double.isNaN(d)) && (!Double.isInfinite(d)))) {
          break label277;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + d + locationString());
        if ((i == 8) || (i == 9))
        {
          if (i == 8) {}
          for (char c = '\'';; c = '"')
          {
            this.peekedString = nextQuotedValue(c);
            break;
          }
        }
        if (i != 10) {
          break;
        }
        this.peekedString = nextUnquotedValue();
      }
    } while (i == 11);
    throw new IllegalStateException("Expected a double but was " + peek() + locationString());
    label277:
    this.peekedString = null;
    this.peeked = 0;
    int[] arrayOfInt = this.pathIndices;
    i = this.stackSize - 1;
    arrayOfInt[i] += 1;
    return d;
  }
  
  public int nextInt()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    int[] arrayOfInt1;
    if (i == 15)
    {
      i = (int)this.peekedLong;
      if (this.peekedLong != i) {
        throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString());
      }
      this.peeked = 0;
      arrayOfInt1 = this.pathIndices;
      j = this.stackSize - 1;
      arrayOfInt1[j] += 1;
      return i;
    }
    if (i == 16)
    {
      this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
      this.pos += this.peekedNumberLength;
    }
    for (;;)
    {
      this.peeked = 11;
      double d = Double.parseDouble(this.peekedString);
      i = (int)d;
      if (i == d) {
        break label366;
      }
      throw new NumberFormatException("Expected an int but was " + this.peekedString + locationString());
      if ((i != 8) && (i != 9) && (i != 10)) {
        break label331;
      }
      if (i != 10) {
        break;
      }
      this.peekedString = nextUnquotedValue();
      try
      {
        i = Integer.parseInt(this.peekedString);
        this.peeked = 0;
        arrayOfInt1 = this.pathIndices;
        j = this.stackSize - 1;
        arrayOfInt1[j] += 1;
        return i;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    if (i == 8) {}
    for (char c = '\'';; c = '"')
    {
      this.peekedString = nextQuotedValue(c);
      break;
    }
    label331:
    throw new IllegalStateException("Expected an int but was " + peek() + locationString());
    label366:
    this.peekedString = null;
    this.peeked = 0;
    int[] arrayOfInt2 = this.pathIndices;
    j = this.stackSize - 1;
    arrayOfInt2[j] += 1;
    return i;
  }
  
  public long nextLong()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    int[] arrayOfInt1;
    if (i == 15)
    {
      this.peeked = 0;
      arrayOfInt1 = this.pathIndices;
      i = this.stackSize - 1;
      arrayOfInt1[i] += 1;
      return this.peekedLong;
    }
    if (i == 16)
    {
      this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
      this.pos += this.peekedNumberLength;
    }
    long l;
    for (;;)
    {
      this.peeked = 11;
      double d = Double.parseDouble(this.peekedString);
      l = d;
      if (l == d) {
        break label315;
      }
      throw new NumberFormatException("Expected a long but was " + this.peekedString + locationString());
      if ((i != 8) && (i != 9) && (i != 10)) {
        break label280;
      }
      if (i != 10) {
        break;
      }
      this.peekedString = nextUnquotedValue();
      try
      {
        l = Long.parseLong(this.peekedString);
        this.peeked = 0;
        arrayOfInt1 = this.pathIndices;
        i = this.stackSize - 1;
        arrayOfInt1[i] += 1;
        return l;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    if (i == 8) {}
    for (char c = '\'';; c = '"')
    {
      this.peekedString = nextQuotedValue(c);
      break;
    }
    label280:
    throw new IllegalStateException("Expected a long but was " + peek() + locationString());
    label315:
    this.peekedString = null;
    this.peeked = 0;
    int[] arrayOfInt2 = this.pathIndices;
    i = this.stackSize - 1;
    arrayOfInt2[i] += 1;
    return l;
  }
  
  public String nextName()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    String str;
    if (i == 14) {
      str = nextUnquotedValue();
    }
    for (;;)
    {
      this.peeked = 0;
      this.pathNames[(this.stackSize - 1)] = str;
      return str;
      if (i == 12)
      {
        str = nextQuotedValue('\'');
      }
      else
      {
        if (i != 13) {
          break;
        }
        str = nextQuotedValue('"');
      }
    }
    throw new IllegalStateException("Expected a name but was " + peek() + locationString());
  }
  
  public void nextNull()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    if (i == 7)
    {
      this.peeked = 0;
      int[] arrayOfInt = this.pathIndices;
      i = this.stackSize - 1;
      arrayOfInt[i] += 1;
      return;
    }
    throw new IllegalStateException("Expected null but was " + peek() + locationString());
  }
  
  public String nextString()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    String str;
    if (i == 10) {
      str = nextUnquotedValue();
    }
    for (;;)
    {
      this.peeked = 0;
      int[] arrayOfInt = this.pathIndices;
      i = this.stackSize - 1;
      arrayOfInt[i] += 1;
      return str;
      if (i == 8)
      {
        str = nextQuotedValue('\'');
      }
      else if (i == 9)
      {
        str = nextQuotedValue('"');
      }
      else if (i == 11)
      {
        str = this.peekedString;
        this.peekedString = null;
      }
      else if (i == 15)
      {
        str = Long.toString(this.peekedLong);
      }
      else
      {
        if (i != 16) {
          break;
        }
        str = new String(this.buffer, this.pos, this.peekedNumberLength);
        this.pos += this.peekedNumberLength;
      }
    }
    throw new IllegalStateException("Expected a string but was " + peek() + locationString());
  }
  
  public JsonToken peek()
  {
    int j = this.peeked;
    int i = j;
    if (j == 0) {
      i = doPeek();
    }
    switch (i)
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
  
  public final void setLenient(boolean paramBoolean)
  {
    this.lenient = paramBoolean;
  }
  
  public void skipValue()
  {
    int j = 0;
    int i = this.peeked;
    int k = i;
    if (i == 0) {
      k = doPeek();
    }
    if (k == 3)
    {
      push(1);
      i = j + 1;
    }
    for (;;)
    {
      this.peeked = 0;
      j = i;
      if (i != 0) {
        break;
      }
      int[] arrayOfInt = this.pathIndices;
      i = this.stackSize - 1;
      arrayOfInt[i] += 1;
      this.pathNames[(this.stackSize - 1)] = "null";
      return;
      if (k == 1)
      {
        push(3);
        i = j + 1;
      }
      else if (k == 4)
      {
        this.stackSize -= 1;
        i = j - 1;
      }
      else if (k == 2)
      {
        this.stackSize -= 1;
        i = j - 1;
      }
      else if ((k == 14) || (k == 10))
      {
        skipUnquotedValue();
        i = j;
      }
      else if ((k == 8) || (k == 12))
      {
        skipQuotedValue('\'');
        i = j;
      }
      else if ((k == 9) || (k == 13))
      {
        skipQuotedValue('"');
        i = j;
      }
      else
      {
        i = j;
        if (k == 16)
        {
          this.pos += this.peekedNumberLength;
          i = j;
        }
      }
    }
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + locationString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\stream\JsonReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */