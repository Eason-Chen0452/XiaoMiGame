package com.xiaomi.gamecenter.channel.reader;

import com.xiaomi.gamecenter.channel.common.V1SchemeUtil;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException;
import java.io.File;

public class ChannelReader
{
  public static String getChannel(File paramFile)
    throws ApkSignatureSchemeV2Verifier.SignatureNotFoundException
  {
    return IdValueReader.getStringValueById(paramFile, 1296648281);
  }
  
  public static String getChannelByZipComment(File paramFile)
    throws Exception
  {
    try
    {
      String str = V1SchemeUtil.readChannel(paramFile);
      return str;
    }
    catch (Exception localException)
    {
      throw new Exception("APK : " + paramFile.getAbsolutePath() + " don't have channel info from Zip Comment");
    }
  }
  
  public static boolean verifyChannel(File paramFile, String paramString)
  {
    boolean bool2 = false;
    try
    {
      paramFile = getChannel(paramFile);
      boolean bool1 = bool2;
      if (paramString != null)
      {
        bool1 = bool2;
        if (paramString.equals(paramFile)) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (ApkSignatureSchemeV2Verifier.SignatureNotFoundException paramFile) {}
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\reader\ChannelReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */