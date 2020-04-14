package com.xiaomi.gamecenter.channel.common.verify;

import java.nio.ByteBuffer;

public class SignatureInfo
{
  private final long apkSigningBlockOffset;
  private final long centralDirOffset;
  private final ByteBuffer eocd;
  private final long eocdOffset;
  private final ByteBuffer signatureBlock;
  
  public SignatureInfo(ByteBuffer paramByteBuffer1, long paramLong1, long paramLong2, long paramLong3, ByteBuffer paramByteBuffer2)
  {
    this.signatureBlock = paramByteBuffer1;
    this.apkSigningBlockOffset = paramLong1;
    this.centralDirOffset = paramLong2;
    this.eocdOffset = paramLong3;
    this.eocd = paramByteBuffer2;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\verify\SignatureInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */