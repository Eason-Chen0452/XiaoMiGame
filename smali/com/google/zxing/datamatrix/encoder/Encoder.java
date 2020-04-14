package com.google.zxing.datamatrix.encoder;

abstract interface Encoder
{
  public abstract void encode(EncoderContext paramEncoderContext);
  
  public abstract int getEncodingMode();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\google\zxing\datamatrix\encoder\Encoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */