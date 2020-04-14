package com.xiaomi.hy.dj.pbformat;

import com.google.protobuf.ByteString;

public abstract interface ByteSerializer
{
  public abstract String escapeBytes(ByteString paramByteString);
  
  public abstract ByteString unescapeBytes(CharSequence paramCharSequence)
    throws InvalidEscapeSequence;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\ByteSerializer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */