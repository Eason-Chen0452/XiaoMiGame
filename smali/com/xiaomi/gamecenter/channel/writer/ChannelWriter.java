package com.xiaomi.gamecenter.channel.writer;

import com.xiaomi.gamecenter.channel.common.ApkSectionInfo;
import com.xiaomi.gamecenter.channel.common.V1SchemeUtil;
import com.xiaomi.gamecenter.channel.common.V2SchemeUtil;
import com.xiaomi.gamecenter.channel.common.util.AESEncryption;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV3Verifier.SignatureNotFoundException;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class ChannelWriter
{
  public static void addChannel(ApkSectionInfo paramApkSectionInfo, File paramFile, String paramString)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    if ((paramFile == null) || (paramString == null) || (paramString.length() <= 0)) {
      throw new RuntimeException("addChannel , param invalid, channel = " + paramString + " , destApk = " + paramFile);
    }
    if (!paramFile.getParentFile().exists()) {
      paramFile.getParentFile().mkdirs();
    }
    try
    {
      paramString = ByteBuffer.wrap(AESEncryption.Encrypt(paramString));
      paramString.order(ByteOrder.LITTLE_ENDIAN);
      IdValueWriter.addIdValue(paramApkSectionInfo, paramFile, 1296648281, paramString);
      return;
    }
    catch (Exception paramApkSectionInfo)
    {
      paramApkSectionInfo.printStackTrace();
    }
  }
  
  public static void addChannel(File paramFile1, File paramFile2, String paramString)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    addChannel(V2SchemeUtil.getApkSectionInfo(paramFile1), paramFile2, paramString);
  }
  
  public static void addChannel(File paramFile, String paramString)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    addChannel(paramFile, paramFile, paramString);
  }
  
  public static void addChannelToZipComment(File paramFile1, File paramFile2, String paramString)
    throws Exception
  {
    V1SchemeUtil.copyFile(paramFile1, paramFile2);
    V1SchemeUtil.writeChannel(paramFile2, paramString);
  }
  
  public static void addChannelToZipComment(File paramFile, String paramString)
    throws Exception
  {
    V1SchemeUtil.writeChannel(paramFile, paramString);
  }
  
  public static void addV3Channel(File paramFile, String paramString)
    throws IOException, ApkSignatureSchemeV3Verifier.SignatureNotFoundException
  {
    if ((paramFile == null) || (paramString == null) || (paramString.length() <= 0)) {
      throw new RuntimeException("addChannel , param invalid, channel = " + paramString + " , destApk = " + paramFile);
    }
    if (!paramFile.getParentFile().exists()) {
      paramFile.getParentFile().mkdirs();
    }
    try
    {
      putRaw(paramFile, paramString, false);
      return;
    }
    catch (SignatureNotFoundException paramFile)
    {
      paramFile.printStackTrace();
    }
  }
  
  public static void deleteChannelForV2(File paramFile)
    throws IOException, ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    IdValueWriter.deleteIdValue(paramFile, 1296648281);
  }
  
  public static void deleteChannelForV3(File paramFile, boolean paramBoolean)
    throws IOException, SignatureNotFoundException
  {
    PayloadWriter.remove(paramFile, 1296648281, paramBoolean);
  }
  
  public static void putRaw(File paramFile, String paramString, boolean paramBoolean)
    throws IOException, SignatureNotFoundException
  {
    PayloadWriter.put(paramFile, 1296648281, paramString, paramBoolean);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\writer\ChannelWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */