package com.xiaomi.gamecenter.channel.writer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

final class b
{
  private final int a;
  private final ByteBuffer b;
  private final int c;
  
  b(int paramInt, ByteBuffer paramByteBuffer)
  {
    this.a = paramInt;
    if (paramByteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
      throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }
    this.b = paramByteBuffer;
    this.c = (paramByteBuffer.remaining() + 12);
  }
  
  public final int a()
  {
    return this.a;
  }
  
  public final byte[] b()
  {
    byte[] arrayOfByte = this.b.array();
    int i = this.b.arrayOffset();
    return Arrays.copyOfRange(arrayOfByte, this.b.position() + i, i + this.b.limit());
  }
  
  public final int c()
  {
    return this.c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\writer\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */