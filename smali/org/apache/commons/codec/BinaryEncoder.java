package org.apache.commons.codec;

@Deprecated
public abstract interface BinaryEncoder
  extends Encoder
{
  public abstract byte[] encode(byte[] paramArrayOfByte)
    throws EncoderException;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\apache\commons\codec\BinaryEncoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */