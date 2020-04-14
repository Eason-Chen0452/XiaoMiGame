package com.mi.milink.sdk.util;

import android.os.Parcel;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class DataUtils
{
  public static boolean closeDataObject(Object paramObject)
  {
    if (paramObject == null) {}
    for (;;)
    {
      return false;
      try
      {
        if ((paramObject instanceof InputStream))
        {
          ((InputStream)paramObject).close();
        }
        else if ((paramObject instanceof OutputStream))
        {
          ((OutputStream)paramObject).close();
        }
        else if ((paramObject instanceof Reader))
        {
          ((Reader)paramObject).close();
        }
        else if ((paramObject instanceof Writer))
        {
          ((Writer)paramObject).close();
        }
        else
        {
          if (!(paramObject instanceof RandomAccessFile)) {
            continue;
          }
          ((RandomAccessFile)paramObject).close();
        }
        return true;
      }
      catch (IOException paramObject) {}
    }
    return false;
  }
  
  public static byte[] readParcelBytes(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    if (i >= 0)
    {
      byte[] arrayOfByte = new byte[i];
      paramParcel.readByteArray(arrayOfByte);
      return arrayOfByte;
    }
    return null;
  }
  
  public static byte[] strToMd5(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      localObject = ((MessageDigest)localObject).digest();
      return (byte[])localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return paramString.getBytes();
  }
  
  public static void writeParcelBytes(Parcel paramParcel, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      paramParcel.writeInt(-1);
      return;
    }
    paramParcel.writeInt(paramArrayOfByte.length);
    paramParcel.writeByteArray(paramArrayOfByte);
  }
  
  public static void zeroMemory(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        paramArrayOfByte[i] = 0;
        i += 1;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\DataUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */