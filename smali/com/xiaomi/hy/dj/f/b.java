package com.xiaomi.hy.dj.f;

import java.io.PrintStream;
import java.util.Date;
import java.util.Random;
import java.util.UUID;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class b
{
  public static String a(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      int i = new Random(new Date().getTime()).nextInt(10);
      localObject1 = localObject2;
      String str = i + UUID.randomUUID().toString().replace("-", "").substring(0, i);
      localObject1 = localObject2;
      paramString = a(str, paramString);
      localObject1 = paramString;
      paramString = str + paramString;
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return (String)localObject1;
  }
  
  public static String a(String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (paramString2.equals(""))) {
      return "";
    }
    byte[] arrayOfByte = new byte[0];
    try
    {
      paramString1 = c(paramString1);
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(1, paramString1, new IvParameterSpec("0102030405060708".getBytes()));
      paramString1 = localCipher.doFinal(paramString2.getBytes("UTF-8"));
      new e();
      return e.a(paramString1);
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
        paramString1 = arrayOfByte;
      }
    }
  }
  
  public static void a(String... paramVarArgs)
    throws Exception
  {
    paramVarArgs = a("clientkey", "2882303761517402635");
    System.out.println(paramVarArgs);
    paramVarArgs = b("clientkey", "oYeE3b1RVTL6tSkO0iK/NXE02FxbRG9YHTlPK6129nQ=");
    System.out.println(paramVarArgs);
  }
  
  public static String b(String paramString)
  {
    try
    {
      int i = Integer.valueOf(paramString.substring(0, 1)).intValue();
      String str = paramString.substring(1, i + 1);
      paramString = b(i + str, paramString.substring(i + 1));
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static String b(String paramString1, String paramString2)
    throws Exception
  {
    paramString1 = c(paramString1);
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(2, paramString1, new IvParameterSpec("0102030405060708".getBytes()));
    new e();
    return new String(localCipher.doFinal(e.a(paramString2)));
  }
  
  private static SecretKeySpec c(String paramString)
    throws Exception
  {
    paramString = paramString.getBytes("UTF-8");
    byte[] arrayOfByte = new byte[16];
    int i = 0;
    while ((i < paramString.length) && (i < 16))
    {
      arrayOfByte[i] = paramString[i];
      i += 1;
    }
    return new SecretKeySpec(arrayOfByte, "AES");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */