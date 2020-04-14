package com.xiaomi.hy.dj.pbformat;

import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.Message;
import com.google.protobuf.Message.Builder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;

public abstract class AbstractCharBasedFormatter
  extends ProtobufFormatter
{
  public void merge(InputStream paramInputStream, Charset paramCharset, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws IOException
  {
    merge(new InputStreamReader(paramInputStream, paramCharset), paramExtensionRegistry, paramBuilder);
  }
  
  public abstract void merge(CharSequence paramCharSequence, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws IOException;
  
  public void merge(Readable paramReadable, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws IOException
  {
    merge(TextUtils.toStringBuilder(paramReadable), paramExtensionRegistry, paramBuilder);
  }
  
  public void print(Message paramMessage, OutputStream paramOutputStream, Charset paramCharset)
    throws IOException
  {
    paramOutputStream = new OutputStreamWriter(paramOutputStream, paramCharset);
    print(paramMessage, paramOutputStream);
    paramOutputStream.flush();
  }
  
  public abstract void print(Message paramMessage, Appendable paramAppendable)
    throws IOException;
  
  public void print(UnknownFieldSet paramUnknownFieldSet, OutputStream paramOutputStream, Charset paramCharset)
    throws IOException
  {
    paramOutputStream = new OutputStreamWriter(paramOutputStream, paramCharset);
    print(paramUnknownFieldSet, paramOutputStream);
    paramOutputStream.flush();
  }
  
  public abstract void print(UnknownFieldSet paramUnknownFieldSet, Appendable paramAppendable)
    throws IOException;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\AbstractCharBasedFormatter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */