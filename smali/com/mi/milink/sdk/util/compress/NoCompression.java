package com.mi.milink.sdk.util.compress;

public class NoCompression
  implements ICompression
{
  public byte[] compress(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte;
  }
  
  public byte[] decompress(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\compress\NoCompression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */