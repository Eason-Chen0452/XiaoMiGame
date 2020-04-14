package cn.com.wali.basetool.utils;

import android.text.TextUtils;
import java.io.FileInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class MD5
{
  private static final String[] a = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };
  
  /* Error */
  private static String a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: sipush 1024
    //   3: newarray <illegal type>
    //   5: astore_3
    //   6: ldc 56
    //   8: invokestatic 62	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   11: astore_2
    //   12: aload_0
    //   13: aload_3
    //   14: invokevirtual 68	java/io/InputStream:read	([B)I
    //   17: istore_1
    //   18: iload_1
    //   19: ifle +20 -> 39
    //   22: aload_2
    //   23: aload_3
    //   24: iconst_0
    //   25: iload_1
    //   26: invokevirtual 72	java/security/MessageDigest:update	([BII)V
    //   29: goto -17 -> 12
    //   32: astore_2
    //   33: aload_0
    //   34: invokevirtual 75	java/io/InputStream:close	()V
    //   37: aconst_null
    //   38: areturn
    //   39: aload_0
    //   40: invokevirtual 75	java/io/InputStream:close	()V
    //   43: aload_2
    //   44: ifnull -7 -> 37
    //   47: aload_2
    //   48: invokevirtual 79	java/security/MessageDigest:digest	()[B
    //   51: invokestatic 82	cn/com/wali/basetool/utils/MD5:d	([B)Ljava/lang/String;
    //   54: areturn
    //   55: astore_2
    //   56: aload_2
    //   57: invokevirtual 85	java/lang/Exception:printStackTrace	()V
    //   60: aload_0
    //   61: invokevirtual 75	java/io/InputStream:close	()V
    //   64: aconst_null
    //   65: areturn
    //   66: astore_0
    //   67: aconst_null
    //   68: areturn
    //   69: astore_2
    //   70: aload_0
    //   71: invokevirtual 75	java/io/InputStream:close	()V
    //   74: aload_2
    //   75: athrow
    //   76: astore_0
    //   77: goto -34 -> 43
    //   80: astore_0
    //   81: aconst_null
    //   82: areturn
    //   83: astore_0
    //   84: goto -10 -> 74
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	paramInputStream	java.io.InputStream
    //   17	9	1	i	int
    //   11	12	2	localMessageDigest	MessageDigest
    //   32	16	2	localNoSuchAlgorithmException	NoSuchAlgorithmException
    //   55	2	2	localException	Exception
    //   69	6	2	localObject	Object
    //   5	19	3	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   6	12	32	java/security/NoSuchAlgorithmException
    //   12	18	32	java/security/NoSuchAlgorithmException
    //   22	29	32	java/security/NoSuchAlgorithmException
    //   6	12	55	java/lang/Exception
    //   12	18	55	java/lang/Exception
    //   22	29	55	java/lang/Exception
    //   60	64	66	java/io/IOException
    //   6	12	69	finally
    //   12	18	69	finally
    //   22	29	69	finally
    //   56	60	69	finally
    //   39	43	76	java/io/IOException
    //   33	37	80	java/io/IOException
    //   70	74	83	java/io/IOException
  }
  
  public static final String a(String paramString)
  {
    Object localObject = null;
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localObject = localMessageDigest;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;) {}
    }
    ((MessageDigest)localObject).update(paramString.getBytes());
    return d(((MessageDigest)localObject).digest());
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject).update(paramArrayOfByte);
        paramArrayOfByte = new StringBuffer();
        localObject = ((MessageDigest)localObject).digest();
        int i = 0;
        while (i < localObject.length)
        {
          int k = localObject[i];
          int j = k;
          if (k < 0) {
            j = k + 256;
          }
          if (j < 16) {
            paramArrayOfByte.append("0");
          }
          paramArrayOfByte.append(Integer.toHexString(j));
          i += 1;
        }
        paramArrayOfByte = paramArrayOfByte.toString().substring(8, 24);
        return paramArrayOfByte;
      }
      catch (NoSuchAlgorithmException paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static final String b(String paramString)
  {
    try
    {
      paramString = new FileInputStream(paramString);
      return a(paramString);
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      if ((paramString.getMessage() != null) && (paramString.getMessage().contains("(Permission denied)"))) {
        return "--NO--PERMISSION--";
      }
    }
    return null;
  }
  
  public static byte[] b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
        localMessageDigest.update(paramArrayOfByte);
        paramArrayOfByte = localMessageDigest.digest();
        return paramArrayOfByte;
      }
      catch (NoSuchAlgorithmException paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static String c(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null) {
      try
      {
        Object localObject = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject).update(paramArrayOfByte);
        paramArrayOfByte = new StringBuffer();
        localObject = ((MessageDigest)localObject).digest();
        int i = 0;
        while (i < localObject.length)
        {
          int k = localObject[i];
          int j = k;
          if (k < 0) {
            j = k + 256;
          }
          if (j < 16) {
            paramArrayOfByte.append("0");
          }
          paramArrayOfByte.append(Integer.toHexString(j));
          i += 1;
        }
        paramArrayOfByte = paramArrayOfByte.toString();
        return paramArrayOfByte;
      }
      catch (NoSuchAlgorithmException paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  private static String d(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int k = paramArrayOfByte[i];
      int j = k;
      if (k < 0) {
        j = k + 256;
      }
      k = j / 16;
      localStringBuffer.append(a[k] + a[(j % 16)]);
      i += 1;
    }
    return localStringBuffer.toString();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\utils\MD5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */