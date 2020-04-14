package com.bumptech.glide.util;

import android.text.TextUtils;
import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class ContentLengthInputStream
  extends FilterInputStream
{
  private static final String TAG = "ContentLengthStream";
  private static final int UNKNOWN = -1;
  private final long contentLength;
  private int readSoFar;
  
  ContentLengthInputStream(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    this.contentLength = paramLong;
  }
  
  private int checkReadSoFarOrThrow(int paramInt)
    throws IOException
  {
    if (paramInt >= 0) {
      this.readSoFar += paramInt;
    }
    while (this.contentLength - this.readSoFar <= 0L) {
      return paramInt;
    }
    throw new IOException("Failed to read all expected data, expected: " + this.contentLength + ", but read: " + this.readSoFar);
  }
  
  public static InputStream obtain(InputStream paramInputStream, long paramLong)
  {
    return new ContentLengthInputStream(paramInputStream, paramLong);
  }
  
  public static InputStream obtain(InputStream paramInputStream, String paramString)
  {
    return obtain(paramInputStream, parseContentLength(paramString));
  }
  
  private static int parseContentLength(String paramString)
  {
    int j = -1;
    int i = j;
    if (!TextUtils.isEmpty(paramString)) {}
    try
    {
      i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      do
      {
        i = j;
      } while (!Log.isLoggable("ContentLengthStream", 3));
      Log.d("ContentLengthStream", "failed to parse content length header: " + paramString, localNumberFormatException);
    }
    return -1;
  }
  
  public int available()
    throws IOException
  {
    try
    {
      long l = Math.max(this.contentLength - this.readSoFar, this.in.available());
      int i = (int)l;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public int read()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 110	java/io/FilterInputStream:read	()I
    //   6: istore_2
    //   7: iload_2
    //   8: iflt +15 -> 23
    //   11: iconst_1
    //   12: istore_1
    //   13: aload_0
    //   14: iload_1
    //   15: invokespecial 112	com/bumptech/glide/util/ContentLengthInputStream:checkReadSoFarOrThrow	(I)I
    //   18: pop
    //   19: aload_0
    //   20: monitorexit
    //   21: iload_2
    //   22: ireturn
    //   23: iconst_m1
    //   24: istore_1
    //   25: goto -12 -> 13
    //   28: astore_3
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_3
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	ContentLengthInputStream
    //   12	13	1	i	int
    //   6	16	2	j	int
    //   28	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	28	finally
    //   13	19	28	finally
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      paramInt1 = checkReadSoFarOrThrow(super.read(paramArrayOfByte, paramInt1, paramInt2));
      return paramInt1;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\util\ContentLengthInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */