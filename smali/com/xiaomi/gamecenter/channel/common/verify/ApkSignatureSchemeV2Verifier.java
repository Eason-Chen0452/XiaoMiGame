package com.xiaomi.gamecenter.channel.common.verify;

import com.xiaomi.gamecenter.channel.common.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;

public class ApkSignatureSchemeV2Verifier
{
  public static final int APK_SIGNATURE_SCHEME_V2_BLOCK_ID = 1896449818;
  public static final long APK_SIG_BLOCK_MAGIC_HI = 3617552046287187010L;
  public static final long APK_SIG_BLOCK_MAGIC_LO = 2334950737559900225L;
  public static final int APK_SIG_BLOCK_MIN_SIZE = 32;
  private static final int CHUNK_SIZE_BYTES = 1048576;
  private static final int CONTENT_DIGEST_CHUNKED_SHA256 = 1;
  private static final int CONTENT_DIGEST_CHUNKED_SHA512 = 2;
  public static final int SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID = 2;
  public static final String SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME = "X-Android-APK-Signed";
  private static final int SIGNATURE_DSA_WITH_SHA256 = 769;
  private static final int SIGNATURE_ECDSA_WITH_SHA256 = 513;
  private static final int SIGNATURE_ECDSA_WITH_SHA512 = 514;
  private static final int SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256 = 259;
  private static final int SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512 = 260;
  private static final int SIGNATURE_RSA_PSS_WITH_SHA256 = 257;
  private static final int SIGNATURE_RSA_PSS_WITH_SHA512 = 258;
  
  public static void checkByteOrderLittleEndian(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
      throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }
  }
  
  private static int compareContentDigestAlgorithm(int paramInt1, int paramInt2)
  {
    int i = 0;
    switch (paramInt1)
    {
    default: 
      throw new IllegalArgumentException("Unknown digestAlgorithm1: " + paramInt1);
    case 1: 
      paramInt1 = i;
      switch (paramInt2)
      {
      default: 
        throw new IllegalArgumentException("Unknown digestAlgorithm2: " + paramInt2);
      case 2: 
        paramInt1 = -1;
      }
      return paramInt1;
    }
    paramInt1 = i;
    switch (paramInt2)
    {
    case 2: 
    default: 
      throw new IllegalArgumentException("Unknown digestAlgorithm2: " + paramInt2);
    }
    return 1;
  }
  
  private static int compareSignatureAlgorithm(int paramInt1, int paramInt2)
  {
    return compareContentDigestAlgorithm(getSignatureAlgorithmContentDigestAlgorithm(paramInt1), getSignatureAlgorithmContentDigestAlgorithm(paramInt2));
  }
  
  private static ByteBuffer findApkSignatureSchemeV2Block(ByteBuffer paramByteBuffer)
    throws ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    checkByteOrderLittleEndian(paramByteBuffer);
    paramByteBuffer = sliceFromTo(paramByteBuffer, 8, paramByteBuffer.capacity() - 24);
    int i = 0;
    while (paramByteBuffer.hasRemaining())
    {
      i += 1;
      if (paramByteBuffer.remaining() < 8) {
        throw new SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i);
      }
      long l = paramByteBuffer.getLong();
      if ((l < 4L) || (l > 2147483647L)) {
        throw new SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + l);
      }
      int j = (int)l;
      int k = paramByteBuffer.position();
      if (j > paramByteBuffer.remaining()) {
        throw new SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + j + ", available: " + paramByteBuffer.remaining());
      }
      if (paramByteBuffer.getInt() == 1896449818) {
        return getByteBuffer(paramByteBuffer, j - 4);
      }
      paramByteBuffer.position(k + j);
    }
    throw new SignatureNotFoundException("No APK Signature Scheme v2 block in APK Signing Block");
  }
  
  public static Pair<ByteBuffer, Long> findApkSigningBlock(RandomAccessFile paramRandomAccessFile, long paramLong)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
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
  
  private static SignatureInfo findSignature(RandomAccessFile paramRandomAccessFile)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    Object localObject = getEocd(paramRandomAccessFile);
    ByteBuffer localByteBuffer = (ByteBuffer)((Pair)localObject).getFirst();
    long l1 = ((Long)((Pair)localObject).getSecond()).longValue();
    if (ZipUtils.isZip64EndOfCentralDirectoryLocatorPresent(paramRandomAccessFile, l1)) {
      throw new SignatureNotFoundException("ZIP64 APK not supported");
    }
    long l2 = getCentralDirOffset(localByteBuffer, l1);
    paramRandomAccessFile = findApkSigningBlock(paramRandomAccessFile, l2);
    localObject = (ByteBuffer)paramRandomAccessFile.getFirst();
    long l3 = ((Long)paramRandomAccessFile.getSecond()).longValue();
    return new SignatureInfo(findApkSignatureSchemeV2Block((ByteBuffer)localObject), l3, l2, l1, localByteBuffer);
  }
  
  public static ByteBuffer getByteBuffer(ByteBuffer paramByteBuffer, int paramInt)
    throws BufferUnderflowException
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("size: " + paramInt);
    }
    int i = paramByteBuffer.limit();
    int j = paramByteBuffer.position();
    paramInt = j + paramInt;
    if ((paramInt < j) || (paramInt > i)) {
      throw new BufferUnderflowException();
    }
    paramByteBuffer.limit(paramInt);
    try
    {
      ByteBuffer localByteBuffer = paramByteBuffer.slice();
      localByteBuffer.order(paramByteBuffer.order());
      paramByteBuffer.position(paramInt);
      return localByteBuffer;
    }
    finally
    {
      paramByteBuffer.limit(i);
    }
  }
  
  public static long getCentralDirOffset(ByteBuffer paramByteBuffer, long paramLong)
    throws ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    long l = ZipUtils.getZipEocdCentralDirectoryOffset(paramByteBuffer);
    if (l >= paramLong) {
      throw new SignatureNotFoundException("ZIP Central Directory offset out of range: " + l + ". ZIP End of Central Directory offset: " + paramLong);
    }
    if (ZipUtils.getZipEocdCentralDirectorySizeBytes(paramByteBuffer) + l != paramLong) {
      throw new SignatureNotFoundException("ZIP Central Directory is not immediately followed by End of Central Directory");
    }
    return l;
  }
  
  private static final long getChunkCount(long paramLong)
  {
    return (paramLong + 1048576L - 1L) / 1048576L;
  }
  
  private static String getContentDigestAlgorithmJcaDigestAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown content digest algorthm: " + paramInt);
    case 1: 
      return "SHA-256";
    }
    return "SHA-512";
  }
  
  private static int getContentDigestAlgorithmOutputSizeBytes(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown content digest algorthm: " + paramInt);
    case 1: 
      return 32;
    }
    return 64;
  }
  
  public static Pair<ByteBuffer, Long> getEocd(RandomAccessFile paramRandomAccessFile)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    paramRandomAccessFile = ZipUtils.findZipEndOfCentralDirectoryRecord(paramRandomAccessFile);
    if (paramRandomAccessFile == null) {
      throw new SignatureNotFoundException("Not an APK file: ZIP End of Central Directory record not found");
    }
    return paramRandomAccessFile;
  }
  
  private static ByteBuffer getLengthPrefixedSlice(ByteBuffer paramByteBuffer)
    throws IOException
  {
    if (paramByteBuffer.remaining() < 4) {
      throw new IOException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + paramByteBuffer.remaining());
    }
    int i = paramByteBuffer.getInt();
    if (i < 0) {
      throw new IllegalArgumentException("Negative length");
    }
    if (i > paramByteBuffer.remaining()) {
      throw new IOException("Length-prefixed field longer than remaining buffer. Field length: " + i + ", remaining: " + paramByteBuffer.remaining());
    }
    return getByteBuffer(paramByteBuffer, i);
  }
  
  private static int getSignatureAlgorithmContentDigestAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(paramInt & 0xFFFFFFFF));
    case 257: 
    case 259: 
    case 513: 
    case 769: 
      return 1;
    }
    return 2;
  }
  
  private static String getSignatureAlgorithmJcaKeyAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(paramInt & 0xFFFFFFFF));
    case 257: 
    case 258: 
    case 259: 
    case 260: 
      return "RSA";
    case 513: 
    case 514: 
      return "EC";
    }
    return "DSA";
  }
  
  private static Pair<String, ? extends AlgorithmParameterSpec> getSignatureAlgorithmJcaSignatureAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(paramInt & 0xFFFFFFFF));
    case 257: 
      return Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
    case 258: 
      return Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
    case 259: 
      return Pair.create("SHA256withRSA", null);
    case 260: 
      return Pair.create("SHA512withRSA", null);
    case 513: 
      return Pair.create("SHA256withECDSA", null);
    case 514: 
      return Pair.create("SHA512withECDSA", null);
    }
    return Pair.create("SHA256withDSA", null);
  }
  
  public static boolean hasSignature(String paramString)
    throws IOException
  {
    try
    {
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramString, "r");
      paramString = null;
      try
      {
        findSignature(localRandomAccessFile);
        localRandomAccessFile.close();
        return true;
      }
      catch (Throwable localThrowable1)
      {
        paramString = localThrowable1;
        throw localThrowable1;
      }
      finally
      {
        if (paramString != null) {}
        for (;;)
        {
          try
          {
            localRandomAccessFile.close();
            throw ((Throwable)localObject);
          }
          catch (Throwable localThrowable2)
          {
            paramString.addSuppressed(localThrowable2);
            continue;
          }
          localThrowable2.close();
        }
      }
      return false;
    }
    catch (SignatureNotFoundException paramString) {}
  }
  
  private static boolean isSupportedSignatureAlgorithm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    return true;
  }
  
  private static byte[] readLengthPrefixedByteArray(ByteBuffer paramByteBuffer)
    throws IOException
  {
    int i = paramByteBuffer.getInt();
    if (i < 0) {
      throw new IOException("Negative length");
    }
    if (i > paramByteBuffer.remaining()) {
      throw new IOException("Underflow while reading length-prefixed value. Length: " + i + ", available: " + paramByteBuffer.remaining());
    }
    byte[] arrayOfByte = new byte[i];
    paramByteBuffer.get(arrayOfByte);
    return arrayOfByte;
  }
  
  private static void setUnsignedInt32LittleEndian(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 & 0xFF));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 8 & 0xFF));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 16 & 0xFF));
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >>> 24 & 0xFF));
  }
  
  public static ByteBuffer sliceFromTo(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("start: " + paramInt1);
    }
    if (paramInt2 < paramInt1) {
      throw new IllegalArgumentException("end < start: " + paramInt2 + " < " + paramInt1);
    }
    int i = paramByteBuffer.capacity();
    if (paramInt2 > paramByteBuffer.capacity()) {
      throw new IllegalArgumentException("end > capacity: " + paramInt2 + " > " + i);
    }
    i = paramByteBuffer.limit();
    int j = paramByteBuffer.position();
    try
    {
      paramByteBuffer.position(0);
      paramByteBuffer.limit(paramInt2);
      paramByteBuffer.position(paramInt1);
      ByteBuffer localByteBuffer = paramByteBuffer.slice();
      localByteBuffer.order(paramByteBuffer.order());
      return localByteBuffer;
    }
    finally
    {
      paramByteBuffer.position(0);
      paramByteBuffer.limit(i);
      paramByteBuffer.position(j);
    }
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\verify\ApkSignatureSchemeV2Verifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */