package com.xiaomi.gamecenter.channel.common.verify;

import com.xiaomi.gamecenter.channel.common.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

public class ApkSignatureSchemeV3Verifier
{
  public static final int ANDROID_COMMON_PAGE_ALIGNMENT_BYTES = 4096;
  public static final int APK_SIGNATURE_SCHEME_V3_BLOCK_ID = -262969152;
  public static final int VERITY_PADDING_BLOCK_ID = 1114793335;
  
  public static void checkByteOrderLittleEndian(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
      throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }
  }
  
  public static Pair<ByteBuffer, Long> findApkSigningBlock(RandomAccessFile paramRandomAccessFile, long paramLong)
    throws IOException, ApkSignatureSchemeV3Verifier.SignatureNotFoundException
  {
    if (paramLong < 32L) {
      throw new SignatureNotFoundException("APK too small for APK Signing Block. ZIP Central Directory offset: " + paramLong);
    }
    ByteBuffer localByteBuffer = ByteBuffer.allocate(24);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    paramRandomAccessFile.seek(paramLong - localByteBuffer.capacity());
    paramRandomAccessFile.readFully(localByteBuffer.array(), localByteBuffer.arrayOffset(), localByteBuffer.capacity());
    if ((localByteBuffer.getLong(8) != 2334950737559900225L) || (localByteBuffer.getLong(16) != 3617552046287187010L)) {
      throw new SignatureNotFoundException("No APK Signing Block before ZIP Central Directory");
    }
    long l1 = localByteBuffer.getLong(0);
    if ((l1 < localByteBuffer.capacity()) || (l1 > 2147483639L)) {
      throw new SignatureNotFoundException("APK Signing Block size out of range: " + l1);
    }
    int i = (int)(8L + l1);
    paramLong -= i;
    if (paramLong < 0L) {
      throw new SignatureNotFoundException("APK Signing Block offset out of range: " + paramLong);
    }
    localByteBuffer = ByteBuffer.allocate(i);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    paramRandomAccessFile.seek(paramLong);
    paramRandomAccessFile.readFully(localByteBuffer.array(), localByteBuffer.arrayOffset(), localByteBuffer.capacity());
    long l2 = localByteBuffer.getLong(0);
    if (l2 != l1) {
      throw new SignatureNotFoundException("APK Signing Block sizes in header and footer do not match: " + l2 + " vs " + l1);
    }
    return Pair.create(localByteBuffer, Long.valueOf(paramLong));
  }
  
  public static long findCentralDirStartOffset(FileChannel paramFileChannel, long paramLong)
    throws IOException
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(4);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    paramFileChannel.position(paramFileChannel.size() - paramLong - 6L);
    paramFileChannel.read(localByteBuffer);
    return localByteBuffer.getInt(0);
  }
  
  private static SignatureInfo findSignature(RandomAccessFile paramRandomAccessFile)
    throws IOException, ApkSignatureSchemeV3Verifier.SignatureNotFoundException
  {
    try
    {
      paramRandomAccessFile = ApkSigningBlockUtils.findSignature(paramRandomAccessFile, -262969152);
      return paramRandomAccessFile;
    }
    catch (ApkSignatureSchemeV2Verifier.SignatureNotFoundException paramRandomAccessFile) {}
    return null;
  }
  
  public static long getCentralDirOffset(ByteBuffer paramByteBuffer, long paramLong)
    throws ApkSignatureSchemeV3Verifier.SignatureNotFoundException
  {
    long l = ZipUtils.getZipEocdCentralDirectoryOffset(paramByteBuffer);
    if (l > paramLong) {
      throw new SignatureNotFoundException("ZIP Central Directory offset out of range: " + l + ". ZIP End of Central Directory offset: " + paramLong);
    }
    if (ZipUtils.getZipEocdCentralDirectorySizeBytes(paramByteBuffer) + l != paramLong) {
      throw new SignatureNotFoundException("ZIP Central Directory is not immediately followed by End of Central Directory");
    }
    return l;
  }
  
  public static Pair<ByteBuffer, Long> getEocd(RandomAccessFile paramRandomAccessFile)
    throws IOException, ApkSignatureSchemeV3Verifier.SignatureNotFoundException
  {
    paramRandomAccessFile = ZipUtils.findZipEndOfCentralDirectoryRecord(paramRandomAccessFile);
    if (paramRandomAccessFile == null) {
      throw new SignatureNotFoundException("Not an APK file: ZIP End of Central Directory record not found");
    }
    return paramRandomAccessFile;
  }
  
  /* Error */
  public static boolean hasSignature(String paramString)
  {
    // Byte code:
    //   0: new 73	java/io/RandomAccessFile
    //   3: dup
    //   4: aload_0
    //   5: ldc -66
    //   7: invokespecial 193	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   10: astore_2
    //   11: aconst_null
    //   12: astore_0
    //   13: aload_2
    //   14: invokestatic 195	com/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier:findSignature	(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnull +9 -> 28
    //   22: aload_2
    //   23: invokevirtual 198	java/io/RandomAccessFile:close	()V
    //   26: iconst_1
    //   27: ireturn
    //   28: aload_2
    //   29: invokevirtual 198	java/io/RandomAccessFile:close	()V
    //   32: iconst_0
    //   33: ireturn
    //   34: astore_0
    //   35: iconst_0
    //   36: ireturn
    //   37: astore_1
    //   38: aload_1
    //   39: astore_0
    //   40: aload_1
    //   41: athrow
    //   42: astore_1
    //   43: aload_0
    //   44: ifnull +18 -> 62
    //   47: aload_2
    //   48: invokevirtual 198	java/io/RandomAccessFile:close	()V
    //   51: aload_1
    //   52: athrow
    //   53: astore_2
    //   54: aload_0
    //   55: aload_2
    //   56: invokevirtual 202	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   59: goto -8 -> 51
    //   62: aload_2
    //   63: invokevirtual 198	java/io/RandomAccessFile:close	()V
    //   66: goto -15 -> 51
    //   69: astore_0
    //   70: iconst_0
    //   71: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	paramString	String
    //   17	2	1	localSignatureInfo	SignatureInfo
    //   37	4	1	localThrowable1	Throwable
    //   42	10	1	localObject	Object
    //   10	38	2	localRandomAccessFile	RandomAccessFile
    //   53	10	2	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   0	11	34	com/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException
    //   22	26	34	com/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException
    //   28	32	34	com/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException
    //   47	51	34	com/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException
    //   51	53	34	com/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException
    //   54	59	34	com/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException
    //   62	66	34	com/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException
    //   13	18	37	java/lang/Throwable
    //   13	18	42	finally
    //   40	42	42	finally
    //   47	51	53	java/lang/Throwable
    //   0	11	69	java/io/IOException
    //   22	26	69	java/io/IOException
    //   28	32	69	java/io/IOException
    //   47	51	69	java/io/IOException
    //   51	53	69	java/io/IOException
    //   54	59	69	java/io/IOException
    //   62	66	69	java/io/IOException
  }
  
  public static class SignatureNotFoundException
    extends Exception
  {
    private static final long serialVersionUID = 1L;
    
    public SignatureNotFoundException(String paramString)
    {
      super();
    }
    
    public SignatureNotFoundException(String paramString, Throwable paramThrowable)
    {
      super(paramThrowable);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\verify\ApkSignatureSchemeV3Verifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */