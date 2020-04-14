package com.mi.milink.sdk.util;

import android.os.Parcel;
import android.text.format.Time;
import android.util.Base64;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Iterator;

public abstract class CommonUtils
{
  public static final String EMPTY = "";
  public static final String NOT_AVALIBLE = "N/A";
  
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
  
  public static SimpleDateFormat createDataFormat(String paramString)
  {
    return new SimpleDateFormat(paramString);
  }
  
  public static String getTimeStr(long paramLong)
  {
    long l = paramLong % 1000L;
    Time localTime = new Time();
    localTime.set(paramLong);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localTime.format("%Y-%m-%d %H:%M:%S")).append('.');
    if (l < 10L) {
      localStringBuilder.append("00");
    }
    for (;;)
    {
      localStringBuilder.append(l);
      return localStringBuilder.toString();
      if (l < 100L) {
        localStringBuilder.append('0');
      }
    }
  }
  
  public static final boolean isLegalIp(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.matches("((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))");
  }
  
  public static final boolean isLegalPort(int paramInt)
  {
    return (paramInt >= 0) && (paramInt < 65536);
  }
  
  public static boolean isTextEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 0);
  }
  
  public static String join(Collection<?> paramCollection, String paramString)
  {
    if (paramCollection == null) {}
    do
    {
      return null;
      paramCollection = paramCollection.iterator();
    } while (paramCollection == null);
    if (!paramCollection.hasNext()) {
      return "";
    }
    Object localObject = paramCollection.next();
    if (!paramCollection.hasNext()) {
      return localObject.toString();
    }
    StringBuilder localStringBuilder = new StringBuilder(256);
    if (localObject != null) {
      localStringBuilder.append(localObject);
    }
    while (paramCollection.hasNext())
    {
      localStringBuilder.append(paramString);
      localObject = paramCollection.next();
      if (localObject != null) {
        localStringBuilder.append(localObject);
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String miuiSHA1(String paramString)
  {
    try
    {
      paramString = Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(paramString.getBytes()), 8).substring(0, 16);
      return paramString;
    }
    catch (Exception paramString) {}
    return "";
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\CommonUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */