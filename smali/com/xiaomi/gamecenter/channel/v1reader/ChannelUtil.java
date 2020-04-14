package com.xiaomi.gamecenter.channel.v1reader;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.gamecenter.channel.common.V1SchemeUtil;
import com.xiaomi.gamecenter.channel.common.V2SchemeUtil;
import com.xiaomi.gamecenter.channel.common.V3SchemeUtil;
import com.xiaomi.gamecenter.channel.reader.ChannelReader;
import com.xiaomi.gamecenter.channel.writer.ChannelWriter;
import java.io.File;

public class ChannelUtil
{
  private static String mChannelCache;
  private static String mRawChannelCache;
  
  public static boolean deleteChannel(File paramFile)
  {
    int i;
    try
    {
      i = Util.judgeChannelPackageMode(paramFile);
      if (i == 1)
      {
        V1SchemeUtil.deleteChannelForCmd(paramFile);
        return true;
      }
      if (i == 2)
      {
        ChannelWriter.deleteChannelForV2(paramFile);
        return true;
      }
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
    }
    for (;;)
    {
      return false;
      if (i == 3) {
        ChannelWriter.deleteChannelForV3(paramFile, false);
      }
    }
  }
  
  public static String getHashWithoutChannel(String paramString1, String paramString2)
  {
    try
    {
      int i = Util.judgeChannelPackageMode(new File(paramString1));
      if (i == 1) {
        return V1SchemeUtil.getHashWithoutChannel(paramString1, paramString2);
      }
      if (i == 2) {
        return V2SchemeUtil.getHashWithoutChannel(paramString1, paramString2);
      }
      if (i == 3) {
        V3SchemeUtil.getHashWithoutChannel(paramString1, paramString2);
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
      }
    }
    return null;
  }
  
  public static String getRawChannelInfo(Context paramContext, File paramFile)
  {
    Object localObject3 = null;
    localObject2 = null;
    Object localObject1 = localObject2;
    if (paramContext != null)
    {
      localObject1 = localObject2;
      if (paramFile != null)
      {
        if (paramFile.exists()) {
          break label28;
        }
        localObject1 = localObject2;
      }
    }
    label28:
    do
    {
      return (String)localObject1;
      paramContext = (Context)localObject3;
      try
      {
        localObject2 = ChannelReader.getChannelByZipComment(paramFile);
        localObject1 = localObject2;
        paramContext = (Context)localObject2;
        if (TextUtils.isEmpty((CharSequence)localObject2))
        {
          paramContext = (Context)localObject2;
          localObject1 = ChannelReader.getChannel(paramFile);
        }
        localObject2 = localObject1;
        paramContext = (Context)localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1))
        {
          paramContext = (Context)localObject1;
          localObject2 = Util.getRawChannelFromDatFile(paramFile);
        }
      }
      catch (Throwable paramFile)
      {
        for (;;)
        {
          paramFile.printStackTrace();
          localObject2 = paramContext;
        }
      }
      localObject1 = localObject2;
    } while (!TextUtils.isEmpty((CharSequence)localObject2));
    return "{\"cid\":\"meng_100_1_android\",\"version\":\"1.0\"}";
  }
  
  public static String readChannelId(Context paramContext)
  {
    if (!TextUtils.isEmpty(mChannelCache)) {
      return mChannelCache;
    }
    if (paramContext == null) {
      return null;
    }
    paramContext = readChannelId(paramContext, Util.getApkFile(paramContext));
    mChannelCache = paramContext;
    return paramContext;
  }
  
  public static String readChannelId(Context paramContext, File paramFile)
  {
    Object localObject2 = null;
    String str = null;
    localObject1 = str;
    if (paramContext != null)
    {
      localObject1 = str;
      if (paramFile != null)
      {
        if (paramFile.exists()) {
          break label28;
        }
        localObject1 = str;
      }
    }
    label28:
    do
    {
      return (String)localObject1;
      localObject1 = localObject2;
      try
      {
        str = Util.readChannel(paramFile);
        paramFile = str;
        localObject1 = str;
        if (TextUtils.isEmpty(str))
        {
          localObject1 = str;
          paramFile = Util.getChannelFromAssets(paramContext);
        }
      }
      catch (Throwable paramContext)
      {
        for (;;)
        {
          paramContext.printStackTrace();
          paramFile = (File)localObject1;
        }
      }
      localObject1 = paramFile;
    } while (!TextUtils.isEmpty(paramFile));
    return "meng_100_1_android";
  }
  
  public static boolean writeChannel(File paramFile, String paramString)
  {
    int i = Util.judgeChannelPackageMode(paramFile);
    if (i == 1) {
      return Util.generateV1ChannelApk(paramFile, paramString);
    }
    if (i == 2) {
      return Util.generateV2ChannelApk(paramFile, paramString);
    }
    if (i == 3) {
      return Util.generateV3ChannelApk(paramFile, paramString);
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\v1reader\ChannelUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */