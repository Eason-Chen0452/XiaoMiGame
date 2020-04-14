package com.mi.milink.sdk.util.compress;

public class CompressionFactory
{
  public static final int METHOD_NONE = 0;
  public static final int METHOD_ZLIB = 1;
  private static NoCompression sNoCompression = new NoCompression();
  private static ZLibCompression sZLibCompression = new ZLibCompression();
  
  public static ICompression createCompression(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return sNoCompression;
    case 1: 
      return sZLibCompression;
    }
    return sNoCompression;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\compress\CompressionFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */