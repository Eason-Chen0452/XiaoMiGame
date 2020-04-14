package com.xiaomi.licensinglibrary.util;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class RSAUtils
{
  public static byte[] a(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    paramString = new X509EncodedKeySpec(Base64.decode(paramString, 0));
    paramString = KeyFactory.getInstance("RSA").generatePublic(paramString);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(2, paramString);
    int k = paramArrayOfByte.length;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    int j = 0;
    if (k - j > 0)
    {
      if (k - j > 128) {}
      for (paramString = localCipher.doFinal(paramArrayOfByte, j, 128);; paramString = localCipher.doFinal(paramArrayOfByte, j, k - j))
      {
        localByteArrayOutputStream.write(paramString, 0, paramString.length);
        i += 1;
        j = i * 128;
        break;
      }
    }
    paramArrayOfByte = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    return paramArrayOfByte;
  }
  
  public static byte[] b(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    Object localObject1 = new PKCS8EncodedKeySpec(Base64.decode(paramString, 0));
    paramString = KeyFactory.getInstance("RSA");
    Object localObject2 = paramString.generatePrivate((KeySpec)localObject1);
    localObject1 = Cipher.getInstance(paramString.getAlgorithm());
    ((Cipher)localObject1).init(1, (Key)localObject2);
    int k = paramArrayOfByte.length;
    localObject2 = new ByteArrayOutputStream();
    int i = 0;
    int j = 0;
    if (k - j > 0)
    {
      if (k - j > 117) {}
      for (paramString = ((Cipher)localObject1).doFinal(paramArrayOfByte, j, 117);; paramString = ((Cipher)localObject1).doFinal(paramArrayOfByte, j, k - j))
      {
        ((ByteArrayOutputStream)localObject2).write(paramString, 0, paramString.length);
        i += 1;
        j = i * 117;
        break;
      }
    }
    paramArrayOfByte = ((ByteArrayOutputStream)localObject2).toByteArray();
    ((ByteArrayOutputStream)localObject2).close();
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\util\RSAUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */