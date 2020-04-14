package com.xiaomi.gamecenter.channel.writer;

import com.xiaomi.gamecenter.channel.common.ApkSectionInfo;
import com.xiaomi.gamecenter.channel.common.Pair;
import com.xiaomi.gamecenter.channel.common.V2SchemeUtil;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException;
import com.xiaomi.gamecenter.channel.common.verify.ZipUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class IdValueWriter
{
  public static void addIdValue(ApkSectionInfo paramApkSectionInfo, File paramFile, int paramInt, ByteBuffer paramByteBuffer)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if (paramInt == 1896449818) {
      throw new RuntimeException("addIdValue , id can not is 1896449818 , v2 signature block use it");
    }
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put(Integer.valueOf(paramInt), paramByteBuffer);
    addIdValueByteBufferMap(paramApkSectionInfo, paramFile, localLinkedHashMap);
  }
  
  public static void addIdValue(File paramFile, int paramInt, byte[] paramArrayOfByte)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    addIdValue(paramFile, paramFile, paramInt, paramArrayOfByte);
  }
  
  public static void addIdValue(File paramFile1, File paramFile2, int paramInt, byte[] paramArrayOfByte)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    paramFile1 = V2SchemeUtil.getApkSectionInfo(paramFile1);
    paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte);
    paramArrayOfByte.order(ByteOrder.LITTLE_ENDIAN);
    addIdValue(paramFile1, paramFile2, paramInt, paramArrayOfByte);
  }
  
  public static void addIdValueByteBufferMap(ApkSectionInfo paramApkSectionInfo, File paramFile, Map<Integer, ByteBuffer> paramMap)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if ((paramMap == null) || (paramMap.isEmpty())) {
      throw new RuntimeException("addIdValueByteBufferMap , id value pair is empty");
    }
    if (paramMap.containsKey(Integer.valueOf(1896449818))) {
      paramMap.remove(Integer.valueOf(1896449818));
    }
    Object localObject = V2SchemeUtil.getAllIdValue((ByteBuffer)paramApkSectionInfo.mSchemeV2Block.getFirst());
    if (!((Map)localObject).containsKey(Integer.valueOf(1896449818))) {
      throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("No APK V2 Signature Scheme block in APK Signing Block");
    }
    ((Map)localObject).putAll(paramMap);
    paramMap = V2SchemeUtil.generateApkSigningBlock((Map)localObject);
    localObject = (ByteBuffer)paramApkSectionInfo.mContentEntry.getFirst();
    ByteBuffer localByteBuffer1 = (ByteBuffer)paramApkSectionInfo.mCentralDir.getFirst();
    ByteBuffer localByteBuffer2 = (ByteBuffer)paramApkSectionInfo.mEocd.getFirst();
    ZipUtils.setZipEocdCentralDirectoryOffset(localByteBuffer2, ((Long)paramApkSectionInfo.mCentralDir.getSecond()).longValue() + (paramMap.remaining() - ((ByteBuffer)paramApkSectionInfo.mSchemeV2Block.getFirst()).remaining()));
    paramApkSectionInfo = new RandomAccessFile(paramFile, "rw");
    long l = ((ByteBuffer)localObject).remaining() + paramMap.remaining() + localByteBuffer1.remaining() + localByteBuffer2.remaining();
    paramApkSectionInfo.seek(0L);
    paramApkSectionInfo.write(((ByteBuffer)localObject).array(), ((ByteBuffer)localObject).arrayOffset() + ((ByteBuffer)localObject).position(), ((ByteBuffer)localObject).remaining());
    paramApkSectionInfo.write(paramMap.array(), paramMap.arrayOffset() + paramMap.position(), paramMap.remaining());
    paramApkSectionInfo.write(localByteBuffer1.array(), localByteBuffer1.arrayOffset() + localByteBuffer1.position(), localByteBuffer1.remaining());
    paramApkSectionInfo.write(localByteBuffer2.array(), localByteBuffer2.arrayOffset() + localByteBuffer2.position(), localByteBuffer2.remaining());
    paramApkSectionInfo.setLength(l);
  }
  
  public static void addIdValueByteMap(File paramFile1, File paramFile2, Map<Integer, byte[]> paramMap)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if ((paramMap == null) || (paramMap.isEmpty())) {
      throw new RuntimeException("addIdValueByteMap , idValueByteMap is empty");
    }
    paramFile1 = V2SchemeUtil.getApkSectionInfo(paramFile1);
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      ByteBuffer localByteBuffer = ByteBuffer.wrap((byte[])paramMap.get(localInteger));
      localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
      localLinkedHashMap.put(localInteger, localByteBuffer);
    }
    addIdValueByteBufferMap(paramFile1, paramFile2, localLinkedHashMap);
  }
  
  public static void addIdValueByteMap(File paramFile, Map<Integer, byte[]> paramMap)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    addIdValueByteMap(paramFile, paramFile, paramMap);
  }
  
  public static void deleteIdValue(File paramFile, int paramInt)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    deleteIdValue(paramFile, paramFile, paramInt);
  }
  
  public static void deleteIdValue(File paramFile1, File paramFile2, int paramInt)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    deleteIdValueByteBufferMap(V2SchemeUtil.getApkSectionInfo(paramFile1), paramFile2, paramInt);
  }
  
  public static void deleteIdValueByteBufferMap(ApkSectionInfo paramApkSectionInfo, File paramFile, int paramInt)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if (paramInt == 1896449818) {
      throw new RuntimeException("deleteIdValueByteBufferMap , idValue cant be signature scheme idValue  is empty");
    }
    Object localObject = V2SchemeUtil.getAllIdValue((ByteBuffer)paramApkSectionInfo.mSchemeV2Block.getFirst());
    if (!((Map)localObject).containsKey(Integer.valueOf(1896449818))) {
      throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("No APK V2 Signature Scheme block in APK Signing Block");
    }
    if (!((Map)localObject).containsKey(Integer.valueOf(paramInt))) {
      throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("No Block Id " + paramInt + " in APK Signing Block");
    }
    ((Map)localObject).remove(Integer.valueOf(paramInt));
    localObject = V2SchemeUtil.generateApkSigningBlock((Map)localObject);
    ByteBuffer localByteBuffer1 = (ByteBuffer)paramApkSectionInfo.mContentEntry.getFirst();
    ByteBuffer localByteBuffer2 = (ByteBuffer)paramApkSectionInfo.mCentralDir.getFirst();
    ByteBuffer localByteBuffer3 = (ByteBuffer)paramApkSectionInfo.mEocd.getFirst();
    ZipUtils.setZipEocdCentralDirectoryOffset(localByteBuffer3, ((Long)paramApkSectionInfo.mCentralDir.getSecond()).longValue() - (((ByteBuffer)paramApkSectionInfo.mSchemeV2Block.getFirst()).remaining() - ((ByteBuffer)localObject).remaining()));
    paramApkSectionInfo = new RandomAccessFile(paramFile, "rw");
    long l = localByteBuffer1.remaining() + ((ByteBuffer)localObject).remaining() + localByteBuffer2.remaining() + localByteBuffer3.remaining();
    paramApkSectionInfo.seek(0L);
    paramApkSectionInfo.write(localByteBuffer1.array(), localByteBuffer1.arrayOffset() + localByteBuffer1.position(), localByteBuffer1.remaining());
    paramApkSectionInfo.write(((ByteBuffer)localObject).array(), ((ByteBuffer)localObject).arrayOffset() + ((ByteBuffer)localObject).position(), ((ByteBuffer)localObject).remaining());
    paramApkSectionInfo.write(localByteBuffer2.array(), localByteBuffer2.arrayOffset() + localByteBuffer2.position(), localByteBuffer2.remaining());
    paramApkSectionInfo.write(localByteBuffer3.array(), localByteBuffer3.arrayOffset() + localByteBuffer3.position(), localByteBuffer3.remaining());
    paramApkSectionInfo.setLength(l);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\writer\IdValueWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */