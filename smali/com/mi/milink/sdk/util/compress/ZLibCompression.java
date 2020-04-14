package com.mi.milink.sdk.util.compress;

import com.mi.milink.sdk.debug.MiLinkLog;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

public class ZLibCompression
  implements ICompression
{
  private static final String TAG = ZLibCompression.class.getName();
  
  public byte[] compress(byte[] paramArrayOfByte)
  {
    Object localObject = null;
    if (paramArrayOfByte == null) {
      return null;
    }
    Deflater localDeflater = new Deflater();
    localDeflater.reset();
    localDeflater.setInput(paramArrayOfByte);
    localDeflater.finish();
    localByteArrayOutputStream = new ByteArrayOutputStream(paramArrayOfByte.length);
    try
    {
      paramArrayOfByte = new byte['Ѐ'];
      while (!localDeflater.finished()) {
        localByteArrayOutputStream.write(paramArrayOfByte, 0, localDeflater.deflate(paramArrayOfByte));
      }
      try
      {
        localByteArrayOutputStream.close();
        throw paramArrayOfByte;
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          MiLinkLog.e(TAG, "close fail", localIOException2);
        }
      }
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte = paramArrayOfByte;
      MiLinkLog.e(TAG, "compress fail", paramArrayOfByte);
      for (;;)
      {
        try
        {
          localByteArrayOutputStream.close();
          paramArrayOfByte = (byte[])localObject;
        }
        catch (IOException paramArrayOfByte)
        {
          MiLinkLog.e(TAG, "close fail", paramArrayOfByte);
          paramArrayOfByte = localIOException1;
          continue;
        }
        localDeflater.end();
        return paramArrayOfByte;
        paramArrayOfByte = localByteArrayOutputStream.toByteArray();
        try
        {
          localByteArrayOutputStream.close();
        }
        catch (IOException localIOException1)
        {
          MiLinkLog.e(TAG, "close fail", localIOException1);
        }
      }
    }
    catch (OutOfMemoryError paramArrayOfByte)
    {
      for (;;)
      {
        paramArrayOfByte = paramArrayOfByte;
        MiLinkLog.e(TAG, "compress out of memory", paramArrayOfByte);
        try
        {
          localByteArrayOutputStream.close();
          paramArrayOfByte = localIOException1;
        }
        catch (IOException paramArrayOfByte)
        {
          MiLinkLog.e(TAG, "close fail", paramArrayOfByte);
          paramArrayOfByte = localIOException1;
        }
      }
    }
    finally {}
  }
  
  public byte[] decompress(byte[] paramArrayOfByte)
  {
    Object localObject = null;
    if (paramArrayOfByte == null) {
      return null;
    }
    Inflater localInflater = new Inflater();
    localInflater.reset();
    localInflater.setInput(paramArrayOfByte);
    localByteArrayOutputStream = new ByteArrayOutputStream(paramArrayOfByte.length);
    try
    {
      paramArrayOfByte = new byte['Ѐ'];
      while (!localInflater.finished()) {
        localByteArrayOutputStream.write(paramArrayOfByte, 0, localInflater.inflate(paramArrayOfByte));
      }
      try
      {
        localByteArrayOutputStream.close();
        throw paramArrayOfByte;
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          MiLinkLog.e(TAG, "close fail", localIOException2);
        }
      }
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte = paramArrayOfByte;
      MiLinkLog.e(TAG, "decompress fail", paramArrayOfByte);
      for (;;)
      {
        try
        {
          localByteArrayOutputStream.close();
          paramArrayOfByte = (byte[])localObject;
        }
        catch (IOException paramArrayOfByte)
        {
          MiLinkLog.e(TAG, "close fail", paramArrayOfByte);
          paramArrayOfByte = localIOException1;
          continue;
        }
        localInflater.end();
        return paramArrayOfByte;
        paramArrayOfByte = localByteArrayOutputStream.toByteArray();
        try
        {
          localByteArrayOutputStream.close();
        }
        catch (IOException localIOException1)
        {
          MiLinkLog.e(TAG, "close fail", localIOException1);
        }
      }
    }
    catch (OutOfMemoryError paramArrayOfByte)
    {
      for (;;)
      {
        paramArrayOfByte = paramArrayOfByte;
        MiLinkLog.e(TAG, "decompress out of memory", paramArrayOfByte);
        try
        {
          localByteArrayOutputStream.close();
          paramArrayOfByte = localIOException1;
        }
        catch (IOException paramArrayOfByte)
        {
          MiLinkLog.e(TAG, "close fail", paramArrayOfByte);
          paramArrayOfByte = localIOException1;
        }
      }
    }
    finally {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\compress\ZLibCompression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */