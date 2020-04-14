package com.xiaomi.gamecenter.channel.common.verify;

import com.xiaomi.gamecenter.channel.common.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;

public final class ApkSigningBlockUtils
{
  static ByteBuffer findApkSignatureSchemeBlock(ByteBuffer paramByteBuffer, int paramInt)
    throws ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    ApkSignatureSchemeV2Verifier.checkByteOrderLittleEndian(paramByteBuffer);
    paramByteBuffer = ApkSignatureSchemeV2Verifier.sliceFromTo(paramByteBuffer, 8, paramByteBuffer.capacity() - 24);
    int i = 0;
    while (paramByteBuffer.hasRemaining())
    {
      i += 1;
      if (paramByteBuffer.remaining() < 8) {
        throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i);
      }
      long l = paramByteBuffer.getLong();
      if ((l < 4L) || (l > 2147483647L)) {
        throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + l);
      }
      int j = (int)l;
      int k = paramByteBuffer.position();
      if (j > paramByteBuffer.remaining()) {
        throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + j + ", available: " + paramByteBuffer.remaining());
      }
      if (paramByteBuffer.getInt() == paramInt) {
        return ApkSignatureSchemeV2Verifier.getByteBuffer(paramByteBuffer, j - 4);
      }
      paramByteBuffer.position(k + j);
    }
    throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("No block with ID " + paramInt + " in APK Signing Block.");
  }
  
  static SignatureInfo findSignature(RandomAccessFile paramRandomAccessFile, int paramInt)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    Object localObject = getEocd(paramRandomAccessFile);
    ByteBuffer localByteBuffer = (ByteBuffer)((Pair)localObject).getFirst();
    long l1 = ((Long)((Pair)localObject).getSecond()).longValue();
    if (ZipUtils.isZip64EndOfCentralDirectoryLocatorPresent(paramRandomAccessFile, l1)) {
      throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("ZIP64 APK not supported");
    }
    long l2 = ApkSignatureSchemeV2Verifier.getCentralDirOffset(localByteBuffer, l1);
    paramRandomAccessFile = ApkSignatureSchemeV2Verifier.findApkSigningBlock(paramRandomAccessFile, l2);
    localObject = (ByteBuffer)paramRandomAccessFile.getFirst();
    long l3 = ((Long)paramRandomAccessFile.getSecond()).longValue();
    return new SignatureInfo(findApkSignatureSchemeBlock((ByteBuffer)localObject, paramInt), l3, l2, l1, localByteBuffer);
  }
  
  static Pair<ByteBuffer, Long> getEocd(RandomAccessFile paramRandomAccessFile)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    paramRandomAccessFile = ZipUtils.findZipEndOfCentralDirectoryRecord(paramRandomAccessFile);
    if (paramRandomAccessFile == null) {
      throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("Not an APK file: ZIP End of Central Directory record not found");
    }
    return paramRandomAccessFile;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\verify\ApkSigningBlockUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */