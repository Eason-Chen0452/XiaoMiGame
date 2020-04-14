package com.xiaomi.accountsdk.utils;

import javax.crypto.spec.SecretKeySpec;

public class AESCoder
{
  private SecretKeySpec a;
  
  public AESCoder(String paramString) {}
  
  public AESCoder(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new SecurityException("aes key is null");
    }
    if (paramArrayOfByte.length != 16) {
      AccountLog.h("AESCoder", "aesKey is invalid");
    }
    this.a = new SecretKeySpec(paramArrayOfByte, "AES");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\AESCoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */