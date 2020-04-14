package com.xiaomi.gamecenter.channel.v1reader;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.text.TextUtils;
import com.xiaomi.gamecenter.channel.common.V1SchemeUtil;
import com.xiaomi.gamecenter.channel.common.V2SchemeUtil;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV2Verifier.SignatureNotFoundException;
import com.xiaomi.gamecenter.channel.common.verify.ApkSignatureSchemeV3Verifier;
import com.xiaomi.gamecenter.channel.reader.ChannelReader;
import com.xiaomi.gamecenter.channel.writer.ChannelWriter;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import org.json.JSONException;
import org.json.JSONObject;

public class Util
{
  static final int DEFAULT_MODE = -1;
  static final int V1_MODE = 1;
  static final int V2_MODE = 2;
  static final int V3_MODE = 3;
  
  static boolean generateV1ChannelApk(File paramFile, String paramString)
  {
    if (!V1SchemeUtil.containV1Signature(paramFile)) {
      return false;
    }
    try
    {
      if (!TextUtils.isEmpty(ChannelReader.getChannelByZipComment(paramFile))) {
        V1SchemeUtil.deleteChannel(paramFile);
      }
      V1SchemeUtil.writeChannelForCp(paramFile, paramString);
      return true;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
    }
    return false;
  }
  
  static boolean generateV2ChannelApk(File paramFile, String paramString)
  {
    try
    {
      if (!TextUtils.isEmpty(ChannelReader.getChannel(paramFile))) {
        ChannelWriter.deleteChannelForV2(paramFile);
      }
      ChannelWriter.addChannel(V2SchemeUtil.getApkSectionInfo(paramFile), paramFile, paramString);
      boolean bool = ChannelReader.verifyChannel(paramFile, paramString);
      return bool;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
    }
    return false;
  }
  
  static boolean generateV3ChannelApk(File paramFile, String paramString)
  {
    try
    {
      if (!TextUtils.isEmpty(ChannelReader.getChannel(paramFile))) {
        ChannelWriter.deleteChannelForV3(paramFile, false);
      }
      ChannelWriter.addV3Channel(paramFile, paramString);
      boolean bool = ChannelReader.verifyChannel(paramFile, paramString);
      return bool;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
    }
    return false;
  }
  
  static File getApkFile(Context paramContext)
  {
    try
    {
      paramContext = new File(paramContext.getApplicationInfo().sourceDir);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  static String getChannelFromAssets(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    localStringBuffer = new StringBuffer();
    try
    {
      paramContext = new BufferedReader(new InputStreamReader(paramContext.getResources().getAssets().open("meng.sdk.dat"), "UTF-8"));
      for (;;)
      {
        String str = paramContext.readLine();
        if (str == null) {
          break;
        }
        localStringBuffer.append(str);
      }
      return localStringBuffer.toString();
    }
    catch (Exception paramContext) {}
  }
  
  static String getChannelFromDatFile(File paramFile)
  {
    Object localObject = null;
    try
    {
      String str = getRawChannelFromDatFile(paramFile);
      paramFile = (File)localObject;
      if (!TextUtils.isEmpty(str)) {
        paramFile = new JSONObject(str).getString("cid");
      }
      return paramFile;
    }
    catch (JSONException paramFile)
    {
      paramFile.printStackTrace();
    }
    return null;
  }
  
  static String getRawChannelFromDatFile(File paramFile)
  {
    InputStream localInputStream = null;
    Object localObject2 = null;
    Object localObject1 = localObject2;
    Object localObject3;
    try
    {
      localObject3 = new ZipFile(paramFile);
      localObject1 = localObject2;
      paramFile = new ZipInputStream(new BufferedInputStream(new FileInputStream(paramFile)));
      Object localObject4;
      do
      {
        do
        {
          localObject1 = localObject2;
          localObject4 = paramFile.getNextEntry();
          localObject1 = localInputStream;
          if (localObject4 == null) {
            break;
          }
          localObject1 = localObject2;
        } while (((ZipEntry)localObject4).isDirectory());
        localObject1 = localObject2;
      } while (!((ZipEntry)localObject4).getName().contains("meng.sdk.dat"));
      localObject1 = localObject2;
      localInputStream = ((ZipFile)localObject3).getInputStream((ZipEntry)localObject4);
      localObject1 = localObject2;
      localObject3 = new BufferedReader(new InputStreamReader(localInputStream, "UTF-8"));
      localObject1 = localObject2;
      paramFile = new StringBuilder();
      for (;;)
      {
        localObject1 = localObject2;
        localObject4 = ((BufferedReader)localObject3).readLine();
        if (localObject4 == null) {
          break;
        }
        localObject1 = localObject2;
        paramFile.append((String)localObject4);
      }
      return (String)localObject1;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
    }
    localObject1 = localObject2;
    paramFile = paramFile.toString();
    localObject1 = paramFile;
    localInputStream.close();
    localObject1 = paramFile;
    ((BufferedReader)localObject3).close();
    return paramFile;
  }
  
  static int judgeChannelPackageMode(File paramFile)
  {
    int i = 1;
    if (ApkSignatureSchemeV3Verifier.hasSignature(paramFile.getAbsolutePath())) {
      i = 3;
    }
    do
    {
      return i;
      if (V2SchemeUtil.containV2Signature(paramFile, true)) {
        return 2;
      }
    } while (V1SchemeUtil.containV1Signature(paramFile));
    return -1;
  }
  
  static String readChannel(File paramFile)
  {
    Object localObject4 = null;
    try
    {
      localObject1 = ChannelReader.getChannelByZipComment(paramFile);
      localObject3 = localObject1;
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {}
    }
    catch (Exception localException)
    {
      try
      {
        Object localObject1;
        localObject3 = ChannelReader.getChannel(paramFile);
        paramFile = (File)localObject4;
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {}
        try
        {
          localObject1 = new JSONObject((String)localObject3);
          localObject3 = ((JSONObject)localObject1).getString("version");
          paramFile = (File)localObject4;
          if (localObject3 != null)
          {
            paramFile = (File)localObject4;
            if (((String)localObject3).equals("1.0")) {
              paramFile = ((JSONObject)localObject1).getString("cid");
            }
          }
          return paramFile;
        }
        catch (Exception paramFile) {}
        localException = localException;
        localObject2 = null;
      }
      catch (ApkSignatureSchemeV2Verifier.SignatureNotFoundException paramFile)
      {
        for (;;)
        {
          Object localObject2;
          Object localObject3 = localObject2;
        }
      }
    }
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\channel\v1reader\Util.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */