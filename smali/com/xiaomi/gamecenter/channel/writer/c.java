package com.xiaomi.gamecenter.channel.writer;

import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.LinkedHashMap;
import java.util.Map;

final class c
{
  public static long a(FileChannel paramFileChannel)
    throws IOException
  {
    long l1 = paramFileChannel.size();
    if (l1 < 22L) {
      throw new IOException("APK too small for ZIP End of Central Directory (EOCD) record");
    }
    long l2 = Math.min(l1 - 22L, 65535L);
    int i = 0;
    while (i <= l2)
    {
      long l3 = l1 - 22L - i;
      ByteBuffer localByteBuffer = ByteBuffer.allocate(4);
      paramFileChannel.position(l3);
      paramFileChannel.read(localByteBuffer);
      localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
      if (localByteBuffer.getInt(0) == 101010256)
      {
        localByteBuffer = ByteBuffer.allocate(2);
        paramFileChannel.position(l3 + 20L);
        paramFileChannel.read(localByteBuffer);
        localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        int j = localByteBuffer.getShort(0);
        if (j == i) {
          return j;
        }
      }
      i += 1;
    }
    throw new IOException("ZIP End of Central Directory (EOCD) record not found");
  }
  
  private static ByteBuffer a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 8) {
      throw new IllegalArgumentException("end < start: " + paramInt + " < 8");
    }
    int i = paramByteBuffer.capacity();
    if (paramInt > paramByteBuffer.capacity()) {
      throw new IllegalArgumentException("end > capacity: " + paramInt + " > " + i);
    }
    i = paramByteBuffer.limit();
    int j = paramByteBuffer.position();
    try
    {
      paramByteBuffer.position(0);
      paramByteBuffer.limit(paramInt);
      paramByteBuffer.position(8);
      ByteBuffer localByteBuffer = paramByteBuffer.slice();
      localByteBuffer.order(paramByteBuffer.order());
      return localByteBuffer;
    }
    finally
    {
      paramByteBuffer.position(0);
      paramByteBuffer.limit(i);
      paramByteBuffer.position(j);
    }
  }
  
  public static Map<Integer, ByteBuffer> a(ByteBuffer paramByteBuffer)
    throws SignatureNotFoundException
  {
    if (paramByteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
      throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }
    paramByteBuffer = a(paramByteBuffer, paramByteBuffer.capacity() - 24);
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    int i = 0;
    while (paramByteBuffer.hasRemaining())
    {
      i += 1;
      if (paramByteBuffer.remaining() < 8) {
        throw new SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i);
      }
      long l = paramByteBuffer.getLong();
      if ((l < 4L) || (l > 2147483647L)) {
        throw new SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + l);
      }
      int j = (int)l;
      int k = paramByteBuffer.position();
      if (j > paramByteBuffer.remaining()) {
        throw new SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + j + ", available: " + paramByteBuffer.remaining());
      }
      localLinkedHashMap.put(Integer.valueOf(paramByteBuffer.getInt()), b(paramByteBuffer, j - 4));
      paramByteBuffer.position(k + j);
    }
    return localLinkedHashMap;
  }
  
  private static ByteBuffer b(ByteBuffer paramByteBuffer, int paramInt)
    throws BufferUnderflowException
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("size: " + paramInt);
    }
    int i = paramByteBuffer.limit();
    int j = paramByteBuffer.position();
    paramInt = j + paramInt;
    if ((paramInt < j) || (paramInt > i)) {
      throw new BufferUnderflowException();
    }
    paramByteBuffer.limit(paramInt);
    try
    {
      ByteBuffer localByteBuffer = paramByteBuffer.slice();
      localByteBuffer.order(paramByteBuffer.order());
      paramByteBuffer.position(paramInt);
      return localByteBuffer;
    }
    finally
    {
      paramByteBuffer.limit(i);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\writer\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */