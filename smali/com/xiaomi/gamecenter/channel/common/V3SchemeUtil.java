package com.xiaomi.gamecenter.channel.common;

import com.xiaomi.gamecenter.channel.common.util.MD5;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV2Verifier;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV3Verifier;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV3Verifier.SignatureNotFoundException;
import com.xiaomi.gamecenter.channel.common.verify.ZipUtils;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class V3SchemeUtil
{
  private static final int ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET = 16;
  
  public static boolean containV2Signature(File paramFile, boolean paramBoolean)
  {
    try
    {
      boolean bool = getAllIdValue(getApkSigningBlock(paramFile)).containsKey(Integer.valueOf(-262969152));
      if (bool) {
        return true;
      }
    }
    catch (IOException paramFile)
    {
      paramFile.printStackTrace();
      return false;
    }
    catch (ApkSignatureSchemeV3Verifier.SignatureNotFoundException paramFile)
    {
      for (;;)
      {
        if (!paramBoolean) {
          paramFile.printStackTrace();
        }
      }
    }
  }
  
  public static Pair<ByteBuffer, Long> findCentralDir(RandomAccessFile paramRandomAccessFile, long paramLong, int paramInt)
    throws IOException
  {
    return Pair.create(getByteBuffer(paramRandomAccessFile, paramLong, paramInt), Long.valueOf(paramLong));
  }
  
  public static Pair<ByteBuffer, Long> findContentEntry(RandomAccessFile paramRandomAccessFile, int paramInt)
    throws IOException
  {
    return Pair.create(getByteBuffer(paramRandomAccessFile, 0L, paramInt), Long.valueOf(0L));
  }
  
  public static ByteBuffer generateApkSigningBlock(Map<Integer, ByteBuffer> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty())) {
      throw new RuntimeException("getNewApkV2SchemeBlock , id value pair is empty");
    }
    Object localObject = paramMap.entrySet().iterator();
    for (long l = 24L; ((Iterator)localObject).hasNext(); l = ((ByteBuffer)((Map.Entry)((Iterator)localObject).next()).getValue()).remaining() + 12 + l) {}
    localObject = ByteBuffer.allocate((int)(8L + l));
    ((ByteBuffer)localObject).order(ByteOrder.LITTLE_ENDIAN);
    ((ByteBuffer)localObject).putLong(l);
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      ByteBuffer localByteBuffer = (ByteBuffer)localEntry.getValue();
      ((ByteBuffer)localObject).putLong(localByteBuffer.remaining() + 4);
      ((ByteBuffer)localObject).putInt(((Integer)localEntry.getKey()).intValue());
      ((ByteBuffer)localObject).put(localByteBuffer.array(), localByteBuffer.arrayOffset() + localByteBuffer.position(), localByteBuffer.remaining());
    }
    ((ByteBuffer)localObject).putLong(l);
    ((ByteBuffer)localObject).putLong(2334950737559900225L);
    ((ByteBuffer)localObject).putLong(3617552046287187010L);
    if (((ByteBuffer)localObject).remaining() > 0) {
      throw new RuntimeException("generateNewApkV2SchemeBlock error");
    }
    ((ByteBuffer)localObject).flip();
    return (ByteBuffer)localObject;
  }
  
  public static Map<Integer, ByteBuffer> getAllIdValue(ByteBuffer paramByteBuffer)
    throws ApkSignatureSchemeV3Verifier.SignatureNotFoundException
  {
    ApkSignatureSchemeV3Verifier.checkByteOrderLittleEndian(paramByteBuffer);
    paramByteBuffer = ApkSignatureSchemeV2Verifier.sliceFromTo(paramByteBuffer, 8, paramByteBuffer.capacity() - 24);
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    int i = 0;
    while (paramByteBuffer.hasRemaining())
    {
      i += 1;
      if (paramByteBuffer.remaining() < 8) {
        throw new ApkSignatureSchemeV3Verifier.SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i);
      }
      long l = paramByteBuffer.getLong();
      if ((l < 4L) || (l > 2147483647L)) {
        throw new ApkSignatureSchemeV3Verifier.SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + l);
      }
      int j = (int)l;
      int k = paramByteBuffer.position();
      if (j > paramByteBuffer.remaining()) {
        throw new ApkSignatureSchemeV3Verifier.SignatureNotFoundException("APK Signing Block entry #" + i + " size out of range: " + j + ", available: " + paramByteBuffer.remaining());
      }
      localLinkedHashMap.put(Integer.valueOf(paramByteBuffer.getInt()), ApkSignatureSchemeV2Verifier.getByteBuffer(paramByteBuffer, j - 4));
      paramByteBuffer.position(k + j);
    }
    if (localLinkedHashMap.isEmpty()) {
      throw new ApkSignatureSchemeV3Verifier.SignatureNotFoundException("not have Id-Value Pair in APK Signing Block entry #" + i);
    }
    return localLinkedHashMap;
  }
  
  public static ApkSectionInfo getApkSectionInfo(File paramFile)
    throws IOException, ApkSignatureSchemeV3Verifier.SignatureNotFoundException
  {
    Object localObject2 = new RandomAccessFile(paramFile, "r");
    paramFile = ApkSignatureSchemeV3Verifier.getEocd((RandomAccessFile)localObject2);
    Object localObject1 = (ByteBuffer)paramFile.getFirst();
    long l1 = ((Long)paramFile.getSecond()).longValue();
    if (ZipUtils.isZip64EndOfCentralDirectoryLocatorPresent((RandomAccessFile)localObject2, l1)) {
      throw new ApkSignatureSchemeV3Verifier.SignatureNotFoundException("ZIP64 APK not supported");
    }
    long l2 = ApkSignatureSchemeV3Verifier.getCentralDirOffset((ByteBuffer)localObject1, l1);
    localObject1 = ApkSignatureSchemeV3Verifier.findApkSigningBlock((RandomAccessFile)localObject2, l2);
    Pair localPair = findCentralDir((RandomAccessFile)localObject2, l2, (int)(l1 - l2));
    localObject2 = findContentEntry((RandomAccessFile)localObject2, (int)((Long)((Pair)localObject1).getSecond()).longValue());
    ApkSectionInfo localApkSectionInfo = new ApkSectionInfo();
    localApkSectionInfo.mContentEntry = ((Pair)localObject2);
    localApkSectionInfo.mSchemeV2Block = ((Pair)localObject1);
    localApkSectionInfo.mCentralDir = localPair;
    localApkSectionInfo.mEocd = paramFile;
    return localApkSectionInfo;
  }
  
  public static ByteBuffer getApkSigningBlock(File paramFile)
    throws ApkSignatureSchemeV3Verifier.SignatureNotFoundException, IOException
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {
      return null;
    }
    paramFile = new RandomAccessFile(paramFile, "r");
    Pair localPair = ApkSignatureSchemeV3Verifier.getEocd(paramFile);
    ByteBuffer localByteBuffer = (ByteBuffer)localPair.getFirst();
    long l = ((Long)localPair.getSecond()).longValue();
    if (ZipUtils.isZip64EndOfCentralDirectoryLocatorPresent(paramFile, l)) {
      throw new ApkSignatureSchemeV3Verifier.SignatureNotFoundException("ZIP64 APK not supported");
    }
    return (ByteBuffer)ApkSignatureSchemeV3Verifier.findApkSigningBlock(paramFile, ApkSignatureSchemeV3Verifier.getCentralDirOffset(localByteBuffer, l)).getFirst();
  }
  
  private static ByteBuffer getByteBuffer(RandomAccessFile paramRandomAccessFile, long paramLong, int paramInt)
    throws IOException
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramInt);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    paramRandomAccessFile.seek(paramLong);
    paramRandomAccessFile.readFully(localByteBuffer.array(), localByteBuffer.arrayOffset(), localByteBuffer.capacity());
    return localByteBuffer;
  }
  
  public static String getHashWithoutChannel(String paramString1, String paramString2)
    throws IOException, NoSuchAlgorithmException, ApkSignatureSchemeV3Verifier.SignatureNotFoundException
  {
    Object localObject1 = new File(paramString1);
    if (!((File)localObject1).exists()) {
      return null;
    }
    localObject1 = getApkSectionInfo((File)localObject1);
    Object localObject2 = getAllIdValue((ByteBuffer)((ApkSectionInfo)localObject1).mSchemeV2Block.getFirst());
    if (!((Map)localObject2).containsKey(Integer.valueOf(-262969152))) {
      throw new ApkSignatureSchemeV3Verifier.SignatureNotFoundException("No APK V3 Signature Scheme block in APK Signing Block");
    }
    if (!((Map)localObject2).containsKey(Integer.valueOf(1296648281))) {
      return null;
    }
    ((Map)localObject2).remove(Integer.valueOf(1296648281));
    localObject2 = generateApkSigningBlock((Map)localObject2);
    byte[] arrayOfByte1 = ((ByteBuffer)localObject2).array();
    int i2 = ((ByteBuffer)((ApkSectionInfo)localObject1).mContentEntry.getFirst()).remaining();
    long l2 = ((ByteBuffer)((ApkSectionInfo)localObject1).mSchemeV2Block.getFirst()).remaining();
    long l3 = ((Long)((ApkSectionInfo)localObject1).mCentralDir.getSecond()).longValue();
    int i3 = (int)((Long)((ApkSectionInfo)localObject1).mEocd.getSecond()).longValue() + 16;
    paramString1 = new RandomAccessFile(paramString1, "r");
    byte[] arrayOfByte2 = new byte[' '];
    int j = 0;
    long l4 = paramString1.length();
    int n = 0;
    int m = 0;
    int i = 0;
    int k = 0;
    paramString2 = MessageDigest.getInstance(paramString2);
    if (j < l4)
    {
      if ((n == 0) || (m != 0)) {
        break label473;
      }
      paramString2.update(arrayOfByte1);
      paramString1.seek(l3);
      m = (int)(j + l2);
    }
    int i1;
    for (j = 1;; j = i1)
    {
      if ((i != 0) && (k == 0))
      {
        paramString2.update(intToByteArray((int)(((Long)((ApkSectionInfo)localObject1).mCentralDir.getSecond()).longValue() - (l2 - ((ByteBuffer)localObject2).remaining()))));
        paramString1.skipBytes(4);
        k = 1;
      }
      for (i1 = m + 4;; i1 = m)
      {
        if ((n == 0) && (i1 + 8192 > i2))
        {
          m = i2 - i1;
          n = 1;
        }
        for (;;)
        {
          m = paramString1.read(arrayOfByte2, 0, m);
          if (m == -1) {
            break label454;
          }
          i1 += m;
          paramString2.update(arrayOfByte2, 0, m);
          m = j;
          j = i1;
          break;
          if ((i != 0) || (i1 + 8192 <= i3)) {
            break label417;
          }
          i = 1;
          m = i3 - i1;
        }
        label417:
        if (l4 - i1 > 8192L) {}
        for (long l1 = 8192L;; l1 = l4 - i1)
        {
          m = (int)l1;
          break;
        }
        label454:
        paramString1.close();
        return MD5.toHexString(paramString2.digest());
      }
      label473:
      i1 = m;
      m = j;
    }
  }
  
  private static byte[] intToByteArray(int paramInt)
  {
    return new byte[] { (byte)(paramInt & 0xFF), (byte)(paramInt >> 8 & 0xFF), (byte)(paramInt >> 16 & 0xFF), (byte)(paramInt >> 24 & 0xFF) };
  }
  
  public static boolean verifyChannelApk(String paramString)
    throws Exception
  {
    return ApkSignatureSchemeV2Verifier.hasSignature(paramString);
  }
  
  private static void writeUnInt64(long paramLong, DataOutput paramDataOutput)
    throws IOException
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
    localByteBuffer.putLong(paramLong);
    paramDataOutput.write(localByteBuffer.array());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\V3SchemeUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */