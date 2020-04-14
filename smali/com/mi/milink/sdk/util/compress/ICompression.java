package com.mi.milink.sdk.util.compress;

public abstract interface ICompression
{
  public abstract byte[] compress(byte[] paramArrayOfByte);
  
  public abstract byte[] decompress(byte[] paramArrayOfByte);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\compress\ICompression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */