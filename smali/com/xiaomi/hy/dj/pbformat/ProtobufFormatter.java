package com.xiaomi.hy.dj.pbformat;

import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.Message;
import com.google.protobuf.Message.Builder;
import com.google.protobuf.UnknownFieldSet;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

public abstract class ProtobufFormatter
{
  private Charset defaultCharset = Charset.defaultCharset();
  
  public Charset getDefaultCharset()
  {
    return this.defaultCharset;
  }
  
  public void merge(InputStream paramInputStream, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws IOException
  {
    merge(paramInputStream, this.defaultCharset, paramExtensionRegistry, paramBuilder);
  }
  
  public void merge(InputStream paramInputStream, Message.Builder paramBuilder)
    throws IOException
  {
    merge(paramInputStream, this.defaultCharset, ExtensionRegistry.getEmptyRegistry(), paramBuilder);
  }
  
  public abstract void merge(InputStream paramInputStream, Charset paramCharset, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws IOException;
  
  public void merge(InputStream paramInputStream, Charset paramCharset, Message.Builder paramBuilder)
    throws IOException
  {
    merge(paramInputStream, paramCharset, ExtensionRegistry.getEmptyRegistry(), paramBuilder);
  }
  
  public void print(Message paramMessage, OutputStream paramOutputStream)
    throws IOException
  {
    print(paramMessage, paramOutputStream, this.defaultCharset);
  }
  
  public abstract void print(Message paramMessage, OutputStream paramOutputStream, Charset paramCharset)
    throws IOException;
  
  public void print(UnknownFieldSet paramUnknownFieldSet, OutputStream paramOutputStream)
    throws IOException
  {
    print(paramUnknownFieldSet, paramOutputStream, this.defaultCharset);
  }
  
  public abstract void print(UnknownFieldSet paramUnknownFieldSet, OutputStream paramOutputStream, Charset paramCharset)
    throws IOException;
  
  public String printToString(Message paramMessage)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      print(paramMessage, localByteArrayOutputStream, this.defaultCharset);
      localByteArrayOutputStream.flush();
      paramMessage = localByteArrayOutputStream.toString();
      return paramMessage;
    }
    catch (IOException paramMessage)
    {
      throw new RuntimeException("Writing to a StringBuilder threw an IOException (should never happen).", paramMessage);
    }
  }
  
  public String printToString(UnknownFieldSet paramUnknownFieldSet)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      print(paramUnknownFieldSet, localByteArrayOutputStream, this.defaultCharset);
      localByteArrayOutputStream.flush();
      paramUnknownFieldSet = localByteArrayOutputStream.toString();
      return paramUnknownFieldSet;
    }
    catch (IOException paramUnknownFieldSet)
    {
      throw new RuntimeException("Writing to a StringBuilder threw an IOException (should never happen).", paramUnknownFieldSet);
    }
  }
  
  public void setDefaultCharset(Charset paramCharset)
  {
    this.defaultCharset = paramCharset;
  }
  
  public static class ParseException
    extends IOException
  {
    private static final long serialVersionUID = 1L;
    
    public ParseException(String paramString)
    {
      super();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\ProtobufFormatter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */