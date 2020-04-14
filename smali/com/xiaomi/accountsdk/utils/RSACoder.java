package com.xiaomi.accountsdk.utils;

import android.text.TextUtils;
import com.xiaomi.accountsdk.account.exception.CryptoException;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public class RSACoder
{
  public static PublicKey a(String paramString)
    throws CryptoException
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalStateException("public key should not be empty");
    }
    try
    {
      paramString = a(paramString.getBytes("UTF-8"));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new CryptoException("getPublicKey", paramString.getCause());
    }
  }
  
  private static PublicKey a(byte[] paramArrayOfByte)
    throws CryptoException
  {
    if (paramArrayOfByte == null) {
      throw new IllegalStateException("public key bytes should not be empty");
    }
    try
    {
      paramArrayOfByte = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(paramArrayOfByte))).getPublicKey();
      return paramArrayOfByte;
    }
    catch (CertificateException paramArrayOfByte)
    {
      throw new CryptoException("getPublicKey", paramArrayOfByte.getCause());
    }
  }
  
  public static byte[] a(byte[] paramArrayOfByte, Key paramKey)
    throws CryptoException
  {
    try
    {
      paramArrayOfByte = b(paramArrayOfByte, paramKey);
      return paramArrayOfByte;
    }
    catch (CryptoException paramArrayOfByte)
    {
      throw new CryptoException("encrypt", paramArrayOfByte.getCause());
    }
  }
  
  private static byte[] b(byte[] paramArrayOfByte, Key paramKey)
    throws CryptoException
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      localCipher.init(1, paramKey);
      paramArrayOfByte = localCipher.doFinal(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (IllegalBlockSizeException paramArrayOfByte)
    {
      throw new CryptoException(paramArrayOfByte.getCause());
    }
    catch (BadPaddingException paramArrayOfByte)
    {
      throw new CryptoException(paramArrayOfByte.getCause());
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      throw new CryptoException(paramArrayOfByte.getCause());
    }
    catch (NoSuchPaddingException paramArrayOfByte)
    {
      throw new CryptoException(paramArrayOfByte.getCause());
    }
    catch (InvalidKeyException paramArrayOfByte)
    {
      throw new CryptoException(paramArrayOfByte.getCause());
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\RSACoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */