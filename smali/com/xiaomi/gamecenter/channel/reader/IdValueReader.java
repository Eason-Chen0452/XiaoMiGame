package com.xiaomi.gamecenter.channel.reader;

import com.xiaomi.gamecenter.channel.common.V2SchemeUtil;
import com.xiaomi.gamecenter.channel.common.util.AESEncryption;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Map;

public class IdValueReader
{
  public static Map<Integer, ByteBuffer> getAllIdValueMap(File paramFile)
    throws ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {
      return null;
    }
    try
    {
      Map localMap = V2SchemeUtil.getAllIdValue(V2SchemeUtil.getApkSigningBlock(paramFile));
      return localMap;
    }
    catch (IOException paramFile)
    {
      paramFile.printStackTrace();
      return null;
    }
    catch (ApkSignatureSchemeV2Verifier.SignatureNotFoundException localSignatureNotFoundException)
    {
      throw new ApkSignatureSchemeV2Verifier.SignatureNotFoundException("APK : " + paramFile.getAbsolutePath() + " not have apk signature block");
    }
  }
  
  public static ByteBuffer getByteBufferValueById(File paramFile, int paramInt)
    throws ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {}
    do
    {
      return null;
      paramFile = getAllIdValueMap(paramFile);
    } while (paramFile == null);
    return (ByteBuffer)paramFile.get(Integer.valueOf(paramInt));
  }
  
  public static byte[] getByteValueById(File paramFile, int paramInt)
    throws ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {}
    do
    {
      return null;
      paramFile = getByteBufferValueById(paramFile, paramInt);
    } while (paramFile == null);
    byte[] arrayOfByte = paramFile.array();
    paramInt = paramFile.arrayOffset();
    int i = paramFile.position();
    int j = paramFile.arrayOffset();
    return Arrays.copyOfRange(arrayOfByte, paramInt + i, paramFile.limit() + j);
  }
  
  public static String getStringValueById(File paramFile, int paramInt)
    throws ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if ((paramFile == null) || (!paramFile.exists()) || (!paramFile.isFile())) {
      return null;
    }
    paramFile = getByteValueById(paramFile, paramInt);
    if (paramFile != null) {
      try
      {
        if (paramFile.length > 0)
        {
          paramFile = new String(AESEncryption.Decrypt(paramFile), "UTF-8");
          return paramFile;
        }
      }
      catch (Exception paramFile)
      {
        paramFile.printStackTrace();
      }
    }
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\reader\IdValueReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */