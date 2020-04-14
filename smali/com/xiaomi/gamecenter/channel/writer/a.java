package com.xiaomi.gamecenter.channel.writer;

import java.io.DataOutput;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

final class a
{
  private final List<b> a = new ArrayList();
  
  public final long a(DataOutput paramDataOutput)
    throws IOException
  {
    int j = 0;
    long l = 24L;
    int i = 0;
    while (i < this.a.size())
    {
      l += ((b)this.a.get(i)).b().length + 12;
      i += 1;
    }
    Object localObject = ByteBuffer.allocate(8);
    ((ByteBuffer)localObject).order(ByteOrder.LITTLE_ENDIAN);
    ((ByteBuffer)localObject).putLong(l);
    ((ByteBuffer)localObject).flip();
    paramDataOutput.write(((ByteBuffer)localObject).array());
    i = j;
    while (i < this.a.size())
    {
      localObject = (b)this.a.get(i);
      byte[] arrayOfByte = ((b)localObject).b();
      ByteBuffer localByteBuffer = ByteBuffer.allocate(8);
      localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
      localByteBuffer.putLong(arrayOfByte.length + 4);
      localByteBuffer.flip();
      paramDataOutput.write(localByteBuffer.array());
      localByteBuffer = ByteBuffer.allocate(4);
      localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
      localByteBuffer.putInt(((b)localObject).a());
      localByteBuffer.flip();
      paramDataOutput.write(localByteBuffer.array());
      paramDataOutput.write(arrayOfByte);
      i += 1;
    }
    localObject = ByteBuffer.allocate(8);
    ((ByteBuffer)localObject).order(ByteOrder.LITTLE_ENDIAN);
    ((ByteBuffer)localObject).putLong(l);
    ((ByteBuffer)localObject).flip();
    paramDataOutput.write(((ByteBuffer)localObject).array());
    localObject = ByteBuffer.allocate(8);
    ((ByteBuffer)localObject).order(ByteOrder.LITTLE_ENDIAN);
    ((ByteBuffer)localObject).putLong(2334950737559900225L);
    ((ByteBuffer)localObject).flip();
    paramDataOutput.write(((ByteBuffer)localObject).array());
    localObject = ByteBuffer.allocate(8);
    ((ByteBuffer)localObject).order(ByteOrder.LITTLE_ENDIAN);
    ((ByteBuffer)localObject).putLong(3617552046287187010L);
    ((ByteBuffer)localObject).flip();
    paramDataOutput.write(((ByteBuffer)localObject).array());
    return l;
  }
  
  public final List<b> a()
  {
    return this.a;
  }
  
  public final void a(b paramb)
  {
    this.a.add(paramb);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\writer\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */