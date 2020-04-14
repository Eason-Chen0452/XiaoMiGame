package com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal;

import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonElement;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonIOException;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonNull;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.JsonSyntaxException;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.TypeAdapter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.internal.bind.TypeAdapters;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonReader;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.JsonWriter;
import com.xiaomi.gamecenter.gamesdk.datasdk.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class Streams
{
  private Streams()
  {
    throw new UnsupportedOperationException();
  }
  
  public static JsonElement parse(JsonReader paramJsonReader)
  {
    int i = 1;
    try
    {
      paramJsonReader.peek();
      i = 0;
      paramJsonReader = (JsonElement)TypeAdapters.JSON_ELEMENT.read(paramJsonReader);
      return paramJsonReader;
    }
    catch (EOFException paramJsonReader)
    {
      if (i != 0) {
        return JsonNull.INSTANCE;
      }
      throw new JsonSyntaxException(paramJsonReader);
    }
    catch (MalformedJsonException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
    catch (IOException paramJsonReader)
    {
      throw new JsonIOException(paramJsonReader);
    }
    catch (NumberFormatException paramJsonReader)
    {
      throw new JsonSyntaxException(paramJsonReader);
    }
  }
  
  public static void write(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
  {
    TypeAdapters.JSON_ELEMENT.write(paramJsonWriter, paramJsonElement);
  }
  
  public static Writer writerForAppendable(Appendable paramAppendable)
  {
    if ((paramAppendable instanceof Writer)) {
      return (Writer)paramAppendable;
    }
    return new AppendableWriter(paramAppendable);
  }
  
  private static final class AppendableWriter
    extends Writer
  {
    private final Appendable appendable;
    private final CurrentWrite currentWrite = new CurrentWrite();
    
    AppendableWriter(Appendable paramAppendable)
    {
      this.appendable = paramAppendable;
    }
    
    public final void close() {}
    
    public final void flush() {}
    
    public final void write(int paramInt)
    {
      this.appendable.append((char)paramInt);
    }
    
    public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      this.currentWrite.chars = paramArrayOfChar;
      this.appendable.append(this.currentWrite, paramInt1, paramInt1 + paramInt2);
    }
    
    static class CurrentWrite
      implements CharSequence
    {
      char[] chars;
      
      public char charAt(int paramInt)
      {
        return this.chars[paramInt];
      }
      
      public int length()
      {
        return this.chars.length;
      }
      
      public CharSequence subSequence(int paramInt1, int paramInt2)
      {
        return new String(this.chars, paramInt1, paramInt2 - paramInt1);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\gson\internal\Streams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */