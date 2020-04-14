package com.google.zxing;

public final class ChecksumException
  extends ReaderException
{
  private static final ChecksumException instance = new ChecksumException();
  
  public static ChecksumException getChecksumInstance()
  {
    return instance;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\ChecksumException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */