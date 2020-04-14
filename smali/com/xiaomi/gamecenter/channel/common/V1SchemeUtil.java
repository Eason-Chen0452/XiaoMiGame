package com.xiaomi.gamecenter.channel.common;

import com.xiaomi.gamecenter.channel.common.util.AESEncryption;
import com.xiaomi.gamecenter.channel.common.util.MD5;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV2Verifier;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException;
import com.xiaomi.gamecenter.channel.common.verify.ZipUtils;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

public class V1SchemeUtil
{
  public static boolean containV1Magic(File paramFile)
    throws IOException
  {
    RandomAccessFile localRandomAccessFile;
    try
    {
      localRandomAccessFile = new RandomAccessFile(paramFile, "r");
      long l;
      boolean bool;
      if (localRandomAccessFile == null) {
        break label69;
      }
    }
    finally
    {
      try
      {
        l = localRandomAccessFile.length();
        paramFile = new byte[ChannelConstants.V1_MAGIC.length];
        localRandomAccessFile.seek(l - ChannelConstants.V1_MAGIC.length);
        localRandomAccessFile.readFully(paramFile);
        bool = isV1MagicMatch(paramFile);
        localRandomAccessFile.close();
        return bool;
      }
      finally {}
      paramFile = finally;
      localRandomAccessFile = null;
    }
    localRandomAccessFile.close();
    label69:
    throw paramFile;
  }
  
  public static boolean containV1Signature(File paramFile)
  {
    for (;;)
    {
      try
      {
        paramFile = new JarFile(paramFile);
        JarEntry localJarEntry1 = paramFile.getJarEntry("META-INF/MANIFEST.MF");
        Enumeration localEnumeration = paramFile.entries();
        if (!localEnumeration.hasMoreElements()) {
          break label78;
        }
        JarEntry localJarEntry2 = (JarEntry)localEnumeration.nextElement();
        if (!localJarEntry2.getName().matches("META-INF/\\w+\\.SF")) {
          continue;
        }
        paramFile = paramFile.getJarEntry(localJarEntry2.getName());
        if ((localJarEntry1 != null) && (paramFile != null)) {
          return true;
        }
      }
      catch (IOException paramFile)
      {
        paramFile.printStackTrace();
      }
      return false;
      label78:
      paramFile = null;
    }
  }
  
  /* Error */
  public static void copyFile(File paramFile1, File paramFile2)
    throws IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 99	java/io/File:exists	()Z
    //   4: ifne +8 -> 12
    //   7: aload_1
    //   8: invokevirtual 102	java/io/File:createNewFile	()Z
    //   11: pop
    //   12: new 104	java/io/FileInputStream
    //   15: dup
    //   16: aload_0
    //   17: invokespecial 105	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   20: invokevirtual 109	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   23: astore_0
    //   24: new 111	java/io/FileOutputStream
    //   27: dup
    //   28: aload_1
    //   29: invokespecial 112	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   32: invokevirtual 113	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   35: astore_1
    //   36: aload_1
    //   37: aload_0
    //   38: lconst_0
    //   39: aload_0
    //   40: invokevirtual 118	java/nio/channels/FileChannel:size	()J
    //   43: invokevirtual 122	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   46: pop2
    //   47: aload_0
    //   48: ifnull +7 -> 55
    //   51: aload_0
    //   52: invokevirtual 123	java/nio/channels/FileChannel:close	()V
    //   55: aload_1
    //   56: ifnull +7 -> 63
    //   59: aload_1
    //   60: invokevirtual 123	java/nio/channels/FileChannel:close	()V
    //   63: return
    //   64: astore_0
    //   65: aconst_null
    //   66: astore_1
    //   67: aconst_null
    //   68: astore_2
    //   69: aload_2
    //   70: ifnull +7 -> 77
    //   73: aload_2
    //   74: invokevirtual 123	java/nio/channels/FileChannel:close	()V
    //   77: aload_1
    //   78: ifnull +7 -> 85
    //   81: aload_1
    //   82: invokevirtual 123	java/nio/channels/FileChannel:close	()V
    //   85: aload_0
    //   86: athrow
    //   87: astore_1
    //   88: aconst_null
    //   89: astore_3
    //   90: aload_0
    //   91: astore_2
    //   92: aload_1
    //   93: astore_0
    //   94: aload_3
    //   95: astore_1
    //   96: goto -27 -> 69
    //   99: astore_3
    //   100: aload_0
    //   101: astore_2
    //   102: aload_3
    //   103: astore_0
    //   104: goto -35 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	paramFile1	File
    //   0	107	1	paramFile2	File
    //   68	34	2	localFile	File
    //   89	6	3	localObject1	Object
    //   99	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   12	24	64	finally
    //   24	36	87	finally
    //   36	47	99	finally
  }
  
  public static boolean deleteChannel(File paramFile)
    throws Exception
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {
      throw new Exception("param error , file : " + paramFile);
    }
    try
    {
      localRandomAccessFile = new RandomAccessFile(paramFile, "rw");
      try
      {
        long l = localRandomAccessFile.length();
        byte[] arrayOfByte = new byte[ChannelConstants.V1_MAGIC.length];
        l -= ChannelConstants.V1_MAGIC.length;
        localRandomAccessFile.seek(l);
        localRandomAccessFile.readFully(arrayOfByte);
        if (!isV1MagicMatch(arrayOfByte)) {
          break label192;
        }
        l -= 2L;
        localRandomAccessFile.seek(l);
        int i = readShort(localRandomAccessFile);
        if (i > 0)
        {
          localRandomAccessFile.seek(l - i - 2L);
          writeShort(0, localRandomAccessFile);
          localRandomAccessFile.setLength(paramFile.length() - (i + ChannelConstants.V1_MAGIC.length + 2));
          localRandomAccessFile.close();
          localRandomAccessFile.close();
          return true;
        }
        throw new Exception("zip channel info not found");
      }
      finally {}
    }
    finally
    {
      RandomAccessFile localRandomAccessFile = null;
    }
    if (localRandomAccessFile != null) {
      localRandomAccessFile.close();
    }
    throw paramFile;
    label192:
    throw new Exception("zip v1 magic not found");
  }
  
  public static boolean deleteChannelForCmd(File paramFile)
    throws Exception
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {
      throw new Exception("param error , file : " + paramFile);
    }
    if (readChannel(paramFile) == null) {
      throw new Exception("Apk doesn't have channel,can't delete it!");
    }
    try
    {
      localRandomAccessFile = new RandomAccessFile(paramFile, "rw");
      try
      {
        long l = localRandomAccessFile.length();
        byte[] arrayOfByte = new byte[ChannelConstants.V1_MAGIC.length];
        l -= ChannelConstants.V1_MAGIC.length;
        localRandomAccessFile.seek(l);
        localRandomAccessFile.readFully(arrayOfByte);
        if (!isV1MagicMatch(arrayOfByte)) {
          break label209;
        }
        l -= 2L;
        localRandomAccessFile.seek(l);
        int i = readShort(localRandomAccessFile);
        if (i > 0)
        {
          localRandomAccessFile.seek(l - i - 2L);
          writeShort(0, localRandomAccessFile);
          localRandomAccessFile.setLength(paramFile.length() - (i + ChannelConstants.V1_MAGIC.length + 2));
          localRandomAccessFile.close();
          localRandomAccessFile.close();
          return true;
        }
        throw new Exception("zip channel info not found");
      }
      finally {}
    }
    finally
    {
      label209:
      RandomAccessFile localRandomAccessFile = null;
    }
    if (localRandomAccessFile != null) {
      localRandomAccessFile.close();
    }
    throw paramFile;
    throw new Exception("zip v1 magic not found");
  }
  
  public static Pair<ByteBuffer, Long> getEocd(File paramFile)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {
      return null;
    }
    paramFile = new RandomAccessFile(paramFile, "r");
    Pair localPair = ApkSignatureSchemeV2Verifier.getEocd(paramFile);
    if (ZipUtils.isZip64EndOfCentralDirectoryLocatorPresent(paramFile, ((Long)localPair.getSecond()).longValue())) {
      throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("ZIP64 APK not supported");
    }
    return localPair;
  }
  
  public static String getHashWithoutChannel(String paramString1, String paramString2)
    throws IOException, NoSuchAlgorithmException
  {
    paramString1 = new RandomAccessFile(paramString1, "r");
    long l1 = paramString1.length();
    byte[] arrayOfByte = new byte[ChannelConstants.V1_MAGIC.length];
    l1 -= ChannelConstants.V1_MAGIC.length;
    paramString1.seek(l1);
    paramString1.readFully(arrayOfByte);
    if (isV1MagicMatch(arrayOfByte))
    {
      paramString1.seek(l1 - 2L);
      int i = readShort(paramString1);
      if (i > 0)
      {
        paramString1.seek(0L);
        paramString2 = MessageDigest.getInstance(paramString2);
        arrayOfByte = new byte[' '];
        long l3 = paramString1.length() - (i + ChannelConstants.V1_MAGIC.length + 4);
        l1 = 0L;
        if (l1 < l3)
        {
          if (l3 - l1 > 8192L) {}
          for (long l2 = 8192L;; l2 = l3 - l1)
          {
            i = paramString1.read(arrayOfByte, 0, (int)l2);
            if (i == -1) {
              break label172;
            }
            l2 = i;
            paramString2.update(arrayOfByte, 0, i);
            l1 = l2 + l1;
            break;
          }
        }
        label172:
        paramString2.update((byte)0);
        paramString2.update((byte)0);
        paramString1.close();
        return MD5.toHexString(paramString2.digest());
      }
    }
    paramString1.close();
    return null;
  }
  
  private static boolean isV1MagicMatch(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != ChannelConstants.V1_MAGIC.length) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= ChannelConstants.V1_MAGIC.length) {
        break label39;
      }
      if (paramArrayOfByte[i] != ChannelConstants.V1_MAGIC[i]) {
        break;
      }
      i += 1;
    }
    label39:
    return true;
  }
  
  public static String readChannel(File paramFile)
    throws Exception
  {
    try
    {
      localRandomAccessFile = new RandomAccessFile(paramFile, "r");
      try
      {
        long l = localRandomAccessFile.length();
        paramFile = new byte[ChannelConstants.V1_MAGIC.length];
        l -= ChannelConstants.V1_MAGIC.length;
        localRandomAccessFile.seek(l);
        localRandomAccessFile.readFully(paramFile);
        if (!isV1MagicMatch(paramFile)) {
          break label137;
        }
        l -= 2L;
        localRandomAccessFile.seek(l);
        int i = readShort(localRandomAccessFile);
        if (i > 0)
        {
          localRandomAccessFile.seek(l - i);
          paramFile = new byte[i];
          localRandomAccessFile.readFully(paramFile);
          paramFile = new String(AESEncryption.Decrypt(paramFile), "UTF-8");
          localRandomAccessFile.close();
          return paramFile;
        }
        throw new Exception("zip channel info not found");
      }
      finally {}
    }
    finally
    {
      label137:
      RandomAccessFile localRandomAccessFile = null;
    }
    if (localRandomAccessFile != null) {
      localRandomAccessFile.close();
    }
    throw paramFile;
    throw new Exception("zip v1 magic not found");
  }
  
  private static short readShort(DataInput paramDataInput)
    throws IOException
  {
    byte[] arrayOfByte = new byte[2];
    paramDataInput.readFully(arrayOfByte);
    return ByteBuffer.wrap(arrayOfByte).order(ByteOrder.LITTLE_ENDIAN).getShort(0);
  }
  
  public static boolean verifyChannel(File paramFile, String paramString)
    throws Exception
  {
    if (paramString != null) {
      return paramString.equals(readChannel(paramFile));
    }
    return false;
  }
  
  public static void writeChannel(File paramFile, String paramString)
    throws Exception
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile()) || (paramString == null) || (paramString.isEmpty())) {
      throw new Exception("param error , file : " + paramFile + " , channel : " + paramString);
    }
    paramString = AESEncryption.Encrypt(paramString);
    Object localObject = getEocd(paramFile);
    if (((ByteBuffer)((Pair)localObject).getFirst()).remaining() == 22)
    {
      localObject = new RandomAccessFile(paramFile, "rw");
      ((RandomAccessFile)localObject).seek(paramFile.length() - 2L);
      writeShort(paramString.length + 2 + ChannelConstants.V1_MAGIC.length, (DataOutput)localObject);
      ((RandomAccessFile)localObject).write(paramString);
      writeShort(paramString.length, (DataOutput)localObject);
      ((RandomAccessFile)localObject).write(ChannelConstants.V1_MAGIC);
      ((RandomAccessFile)localObject).close();
      return;
    }
    if (containV1Magic(paramFile))
    {
      paramString = readChannel(paramFile);
      paramFile.delete();
      throw new ChannelExistException("file : " + paramFile.getAbsolutePath() + " has a channel : " + paramString + ", only ignore");
    }
    int i = ZipUtils.getUnsignedInt16((ByteBuffer)((Pair)localObject).getFirst(), 20);
    int j = paramString.length;
    int k = ChannelConstants.V1_MAGIC.length;
    paramFile = new RandomAccessFile(paramFile, "rw");
    paramFile.seek(((Long)((Pair)localObject).getSecond()).longValue() + 22L - 2L);
    writeShort(k + (j + i + 2), paramFile);
    long l = ((Long)((Pair)localObject).getSecond()).longValue();
    paramFile.seek(i + (l + 22L));
    paramFile.write(paramString);
    writeShort(paramString.length, paramFile);
    paramFile.write(ChannelConstants.V1_MAGIC);
    paramFile.close();
  }
  
  public static void writeChannelForCp(File paramFile, String paramString)
    throws Exception
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile()) || (paramString == null) || (paramString.isEmpty())) {
      throw new Exception("param error , file : " + paramFile + " , channel : " + paramString);
    }
    paramString = AESEncryption.Encrypt(paramString);
    Object localObject = getEocd(paramFile);
    if (((ByteBuffer)((Pair)localObject).getFirst()).remaining() == 22)
    {
      localObject = new RandomAccessFile(paramFile, "rw");
      ((RandomAccessFile)localObject).seek(paramFile.length() - 2L);
      writeShort(paramString.length + 2 + ChannelConstants.V1_MAGIC.length, (DataOutput)localObject);
      ((RandomAccessFile)localObject).write(paramString);
      writeShort(paramString.length, (DataOutput)localObject);
      ((RandomAccessFile)localObject).write(ChannelConstants.V1_MAGIC);
      ((RandomAccessFile)localObject).close();
    }
    while (containV1Magic(paramFile)) {
      return;
    }
    int i = ZipUtils.getUnsignedInt16((ByteBuffer)((Pair)localObject).getFirst(), 20);
    int j = paramString.length;
    int k = ChannelConstants.V1_MAGIC.length;
    paramFile = new RandomAccessFile(paramFile, "rw");
    paramFile.seek(((Long)((Pair)localObject).getSecond()).longValue() + 22L - 2L);
    writeShort(k + (j + i + 2), paramFile);
    long l = ((Long)((Pair)localObject).getSecond()).longValue();
    paramFile.seek(i + (l + 22L));
    paramFile.write(paramString);
    writeShort(paramString.length, paramFile);
    paramFile.write(ChannelConstants.V1_MAGIC);
    paramFile.close();
  }
  
  private static void writeShort(int paramInt, DataOutput paramDataOutput)
    throws IOException
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN);
    localByteBuffer.putShort((short)paramInt);
    paramDataOutput.write(localByteBuffer.array());
  }
  
  public static class ChannelExistException
    extends Exception
  {
    static final long serialVersionUID = -3387516993124229949L;
    
    public ChannelExistException() {}
    
    public ChannelExistException(String paramString)
    {
      super();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\common\V1SchemeUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */