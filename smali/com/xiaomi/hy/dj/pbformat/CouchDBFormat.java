package com.xiaomi.hy.dj.pbformat;

import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.Message;
import com.google.protobuf.Message.Builder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;

public class CouchDBFormat
  extends JsonFormat
{
  public void merge(CharSequence paramCharSequence, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws JsonFormat.ParseException
  {
    paramCharSequence = new Tokenizer(this.byteSerializer, paramCharSequence);
    paramCharSequence.consume("{");
    while (!paramCharSequence.tryConsume("}")) {
      mergeField(paramCharSequence, paramExtensionRegistry, paramBuilder);
    }
  }
  
  public void print(Message paramMessage, Appendable paramAppendable)
    throws IOException
  {
    paramAppendable = new CouchDBGenerator(paramAppendable);
    paramAppendable.print("{");
    print(paramMessage, paramAppendable);
    paramAppendable.print("}");
  }
  
  public void print(UnknownFieldSet paramUnknownFieldSet, Appendable paramAppendable)
    throws IOException
  {
    paramAppendable = new CouchDBGenerator(paramAppendable);
    paramAppendable.print("{");
    printUnknownFields(paramUnknownFieldSet, paramAppendable);
    paramAppendable.print("}");
  }
  
  protected static class CouchDBGenerator
    extends JsonFormat.JsonGenerator
  {
    public CouchDBGenerator(Appendable paramAppendable)
    {
      super();
    }
    
    public void print(CharSequence paramCharSequence)
      throws IOException
    {
      if ("id".equals(paramCharSequence))
      {
        super.print("_id");
        return;
      }
      if ("rev".equals(paramCharSequence))
      {
        super.print("_rev");
        return;
      }
      super.print(paramCharSequence);
    }
  }
  
  protected static class Tokenizer
    extends JsonFormat.Tokenizer
  {
    public Tokenizer(ByteSerializer paramByteSerializer, CharSequence paramCharSequence)
    {
      super(paramCharSequence);
    }
    
    public String consumeIdentifier()
      throws JsonFormat.ParseException
    {
      String str2 = super.consumeIdentifier();
      String str1;
      if ("_id".equals(str2)) {
        str1 = "id";
      }
      do
      {
        return str1;
        str1 = str2;
      } while (!"_rev".equals(str2));
      return "rev";
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\CouchDBFormat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */