package com.xiaomi.accountsdk.utils;

public class AESWithIVCoder
{
  protected String a;
  private final int b = 16;
  private long c = 0L;
  private AESCoder d;
  
  public AESWithIVCoder(String paramString)
  {
    this.a = paramString;
    this.d = new a(this, paramString);
    this.c = Thread.currentThread().getId();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\AESWithIVCoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */