package com.mi.milink.sdk.debug;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Environment;
import android.text.TextUtils;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.debug.FileTracer;
import com.mi.milink.sdk.base.debug.FileTracerConfig;
import com.mi.milink.sdk.base.debug.LogcatTracer;
import com.mi.milink.sdk.base.debug.TraceLevel;
import com.mi.milink.sdk.base.os.info.StorageDash;
import com.mi.milink.sdk.base.os.info.StorageInfo;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.data.Option;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MiLinkTracer
  implements SharedPreferences.OnSharedPreferenceChangeListener, TraceLevel
{
  protected static final FileTracerConfig CHANNEL_CONFIG;
  protected static final FileTracerConfig CLIENT_CONFIG;
  protected static final FileTracerConfig SERVICE_CONFIG;
  private static MiLinkTracer sInstance = null;
  private volatile boolean enabled = true;
  protected FileTracer fileTracer;
  private volatile boolean fileTracerEnabled = true;
  protected LogcatTracer logcatTracer;
  private volatile boolean logcatTracerEnabled = true;
  
  static
  {
    File localFile = getLogFilePath();
    Global.getClientAppInfo().setLogPath(localFile.getAbsolutePath());
    if (Global.isDebug())
    {
      i = Integer.MAX_VALUE;
      CLIENT_CONFIG = new FileTracerConfig(localFile, i, 524288, 32768, "Mns.Client.File.Tracer", 45000L, 10, ".app.log", Option.getLong("client.debug.file.keepperiod", 172800000L));
      if (!Global.isDebug()) {
        break label142;
      }
    }
    label142:
    for (int i = Integer.MAX_VALUE;; i = Option.getInt("debug.file.blockcount", 48))
    {
      long l = Option.getLong("debug.file.keepperiod", 172800000L);
      SERVICE_CONFIG = new FileTracerConfig(localFile, i, 524288, 32768, "Mns.File.Tracer", 45000L, 10, ".m.log", l);
      CHANNEL_CONFIG = new FileTracerConfig(localFile, i, 524288, 32768, "Mns.File.Tracer", 45000L, 10, ".c.log", l);
      return;
      i = Option.getInt("client.debug.file.blockcount", 48);
      break;
    }
  }
  
  protected MiLinkTracer()
  {
    try
    {
      Option.startListen(this);
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void autoTrace(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (sInstance != null) {
      sInstance.trace(paramInt, paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void cleanChannelLog()
  {
    Object localObject = CHANNEL_CONFIG.getWorkFolder(System.currentTimeMillis());
    localObject = CHANNEL_CONFIG.getAllBlocksInFolder((File)localObject);
    if (localObject != null)
    {
      int i = 0;
      while (i < localObject.length)
      {
        deleteFile(localObject[i]);
        i += 1;
      }
    }
  }
  
  public static void cleanClientLog()
  {
    Object localObject = CLIENT_CONFIG.getWorkFolder(System.currentTimeMillis());
    localObject = CLIENT_CONFIG.getAllBlocksInFolder((File)localObject);
    if (localObject != null)
    {
      int i = 0;
      while (i < localObject.length)
      {
        deleteFile(localObject[i]);
        i += 1;
      }
    }
  }
  
  public static void cleanMnsLog()
  {
    Object localObject = SERVICE_CONFIG.getWorkFolder(System.currentTimeMillis());
    localObject = SERVICE_CONFIG.getAllBlocksInFolder((File)localObject);
    if (localObject != null)
    {
      int i = 0;
      while (i < localObject.length)
      {
        deleteFile(localObject[i]);
        i += 1;
      }
    }
  }
  
  public static void deleteFile(File paramFile)
  {
    if ((paramFile == null) || (!paramFile.exists())) {}
    for (;;)
    {
      return;
      if (paramFile.isFile())
      {
        paramFile.delete();
        return;
      }
      paramFile = paramFile.listFiles();
      int j = paramFile.length;
      int i = 0;
      while (i < j)
      {
        deleteFile(paramFile[i]);
        i += 1;
      }
    }
  }
  
  public static BufferedReader getChannelLogReader(int paramInt)
  {
    Object localObject = CHANNEL_CONFIG.getWorkFolder(System.currentTimeMillis());
    if ((localObject == null) || (!((File)localObject).isDirectory())) {
      return null;
    }
    localObject = CHANNEL_CONFIG.getAllBlocksInFolder((File)localObject);
    localObject = CHANNEL_CONFIG.sortBlocksByIndex((File[])localObject);
    if ((paramInt >= 0) && (paramInt < localObject.length))
    {
      localObject = localObject[(localObject.length - paramInt - 1)];
      try
      {
        localObject = new BufferedReader(new FileReader((File)localObject));
        return (BufferedReader)localObject;
      }
      catch (FileNotFoundException localFileNotFoundException) {}
    }
    return null;
  }
  
  public static BufferedReader getClientLogReader(int paramInt)
  {
    Object localObject = CLIENT_CONFIG.getWorkFolder(System.currentTimeMillis());
    if ((localObject == null) || (!((File)localObject).isDirectory())) {
      return null;
    }
    localObject = CLIENT_CONFIG.getAllBlocksInFolder((File)localObject);
    localObject = CLIENT_CONFIG.sortBlocksByIndex((File[])localObject);
    if ((paramInt >= 0) && (paramInt < localObject.length))
    {
      localObject = localObject[(localObject.length - paramInt - 1)];
      try
      {
        localObject = new BufferedReader(new FileReader((File)localObject));
        return (BufferedReader)localObject;
      }
      catch (FileNotFoundException localFileNotFoundException) {}
    }
    return null;
  }
  
  public static File getLogFileFolderPath()
  {
    int j = 0;
    String str = "Xiaomi" + File.separator + Global.getClientAppInfo().getAppName() + File.separator + "logs";
    StorageInfo localStorageInfo = StorageDash.getExternalInfo();
    int i = j;
    if (localStorageInfo != null)
    {
      i = j;
      if (localStorageInfo.getAvailableSize() > 83886080L) {
        i = 1;
      }
    }
    if (i != 0)
    {
      if (!TextUtils.isEmpty(Global.getClientAppInfo().getLogPath())) {
        return new File(Environment.getExternalStorageDirectory(), Global.getClientAppInfo().getLogPath());
      }
      return new File(Environment.getExternalStorageDirectory(), str);
    }
    return getLogFileInternalPath();
  }
  
  public static File getLogFileInternalPath()
  {
    String str = "logs" + File.separator;
    if (!TextUtils.isEmpty(Global.getClientAppInfo().getLogPath())) {
      return new File(Global.getFilesDir(), Global.getClientAppInfo().getLogPath());
    }
    return new File(Global.getFilesDir(), str);
  }
  
  public static File getLogFilePath()
  {
    int j = 0;
    String str = "Xiaomi" + File.separator + Global.getClientAppInfo().getAppName() + File.separator + "logs" + File.separator + Global.getPackageName();
    StorageInfo localStorageInfo = StorageDash.getExternalInfo();
    int i = j;
    if (localStorageInfo != null)
    {
      i = j;
      if (localStorageInfo.getAvailableSize() > 83886080L) {
        i = 1;
      }
    }
    if (i != 0)
    {
      if (!TextUtils.isEmpty(Global.getClientAppInfo().getLogPath())) {
        return new File(Environment.getExternalStorageDirectory(), Global.getClientAppInfo().getLogPath());
      }
      return new File(Environment.getExternalStorageDirectory(), str);
    }
    return getLogFileInternalPath();
  }
  
  public static BufferedReader getMnsLogReader(int paramInt)
  {
    Object localObject1 = SERVICE_CONFIG.getWorkFolder(System.currentTimeMillis());
    localObject1 = SERVICE_CONFIG.getAllBlocksInFolder((File)localObject1);
    if (localObject1 == null) {
      return null;
    }
    localObject1 = SERVICE_CONFIG.sortBlocksByIndex((File[])localObject1);
    if ((paramInt >= 0) && (paramInt < localObject1.length)) {}
    Object localObject2;
    for (localObject1 = localObject1[(localObject1.length - paramInt - 1)];; localObject2 = null) {
      try
      {
        localObject1 = new BufferedReader(new FileReader((File)localObject1));
        return (BufferedReader)localObject1;
      }
      catch (FileNotFoundException localFileNotFoundException) {}
    }
  }
  
  /* Error */
  private static boolean mergeFiles(List<File> paramList, File paramFile, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +16 -> 17
    //   4: aload_0
    //   5: invokeinterface 249 1 0
    //   10: ifle +7 -> 17
    //   13: aload_1
    //   14: ifnonnull +5 -> 19
    //   17: iconst_0
    //   18: ireturn
    //   19: new 251	java/io/FileOutputStream
    //   22: dup
    //   23: aload_1
    //   24: iconst_1
    //   25: invokespecial 254	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   28: astore_1
    //   29: aload_2
    //   30: invokestatic 219	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   33: ifne +14 -> 47
    //   36: aload_1
    //   37: aload_2
    //   38: ldc_w 256
    //   41: invokevirtual 262	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   44: invokevirtual 266	java/io/FileOutputStream:write	([B)V
    //   47: sipush 4096
    //   50: newarray <illegal type>
    //   52: astore_2
    //   53: iconst_0
    //   54: istore_3
    //   55: iload_3
    //   56: aload_0
    //   57: invokeinterface 249 1 0
    //   62: if_icmpge +68 -> 130
    //   65: new 268	java/io/FileInputStream
    //   68: dup
    //   69: aload_0
    //   70: iload_3
    //   71: invokeinterface 272 2 0
    //   76: checkcast 38	java/io/File
    //   79: invokespecial 273	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   82: astore 5
    //   84: aload 5
    //   86: aload_2
    //   87: iconst_0
    //   88: sipush 4096
    //   91: invokevirtual 277	java/io/FileInputStream:read	([BII)I
    //   94: istore 4
    //   96: iload 4
    //   98: ifle +20 -> 118
    //   101: aload_1
    //   102: aload_2
    //   103: iconst_0
    //   104: iload 4
    //   106: invokevirtual 280	java/io/FileOutputStream:write	([BII)V
    //   109: goto -25 -> 84
    //   112: astore_0
    //   113: aload_1
    //   114: invokestatic 286	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   117: ireturn
    //   118: aload 5
    //   120: invokevirtual 289	java/io/FileInputStream:close	()V
    //   123: iload_3
    //   124: iconst_1
    //   125: iadd
    //   126: istore_3
    //   127: goto -72 -> 55
    //   130: aload_1
    //   131: invokestatic 286	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   134: ireturn
    //   135: astore_0
    //   136: aconst_null
    //   137: astore_1
    //   138: aload_1
    //   139: invokestatic 286	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   142: ireturn
    //   143: astore_0
    //   144: aconst_null
    //   145: astore_1
    //   146: aload_1
    //   147: invokestatic 286	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   150: ireturn
    //   151: astore_0
    //   152: aconst_null
    //   153: astore_1
    //   154: aload_1
    //   155: invokestatic 286	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   158: pop
    //   159: aload_0
    //   160: athrow
    //   161: astore_0
    //   162: goto -8 -> 154
    //   165: astore_0
    //   166: goto -20 -> 146
    //   169: astore_0
    //   170: goto -32 -> 138
    //   173: astore_0
    //   174: aconst_null
    //   175: astore_1
    //   176: goto -63 -> 113
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	179	0	paramList	List<File>
    //   0	179	1	paramFile	File
    //   0	179	2	paramString	String
    //   54	73	3	i	int
    //   94	11	4	j	int
    //   82	37	5	localFileInputStream	java.io.FileInputStream
    // Exception table:
    //   from	to	target	type
    //   29	47	112	java/io/FileNotFoundException
    //   47	53	112	java/io/FileNotFoundException
    //   55	84	112	java/io/FileNotFoundException
    //   84	96	112	java/io/FileNotFoundException
    //   101	109	112	java/io/FileNotFoundException
    //   118	123	112	java/io/FileNotFoundException
    //   19	29	135	java/io/UnsupportedEncodingException
    //   19	29	143	java/io/IOException
    //   19	29	151	finally
    //   29	47	161	finally
    //   47	53	161	finally
    //   55	84	161	finally
    //   84	96	161	finally
    //   101	109	161	finally
    //   118	123	161	finally
    //   29	47	165	java/io/IOException
    //   47	53	165	java/io/IOException
    //   55	84	165	java/io/IOException
    //   84	96	165	java/io/IOException
    //   101	109	165	java/io/IOException
    //   118	123	165	java/io/IOException
    //   29	47	169	java/io/UnsupportedEncodingException
    //   47	53	169	java/io/UnsupportedEncodingException
    //   55	84	169	java/io/UnsupportedEncodingException
    //   84	96	169	java/io/UnsupportedEncodingException
    //   101	109	169	java/io/UnsupportedEncodingException
    //   118	123	169	java/io/UnsupportedEncodingException
    //   19	29	173	java/io/FileNotFoundException
  }
  
  public static File prepareReportLogFile(long paramLong)
  {
    long l = paramLong;
    if (paramLong < 1L) {
      l = System.currentTimeMillis();
    }
    Object localObject4 = CLIENT_CONFIG;
    Object localObject3 = SERVICE_CONFIG;
    Object localObject5 = CHANNEL_CONFIG;
    File localFile = new File(getLogFilePath(), "report.log");
    Object localObject6;
    Object localObject2;
    Object localObject1;
    if (localFile.exists())
    {
      localFile.delete();
      localObject6 = ((FileTracerConfig)localObject4).getWorkFolder(l);
      localObject2 = ((FileTracerConfig)localObject4).getAllBlocksInFolder((File)localObject6);
      localObject1 = localObject2;
      if (localObject2 != null) {
        localObject1 = ((FileTracerConfig)localObject4).sortBlocksByIndex((File[])localObject2);
      }
      localObject3 = ((FileTracerConfig)localObject3).getAllBlocksInFolder((File)localObject6);
      localObject2 = localObject3;
      if (localObject3 != null) {
        localObject2 = ((FileTracerConfig)localObject4).sortBlocksByIndex((File[])localObject3);
      }
      localObject3 = ((FileTracerConfig)localObject5).getAllBlocksInFolder((File)localObject6);
      if (localObject3 == null) {
        break label727;
      }
      localObject3 = ((FileTracerConfig)localObject4).sortBlocksByIndex((File[])localObject3);
    }
    label154:
    label164:
    label207:
    label212:
    label218:
    label708:
    label714:
    label717:
    label727:
    for (;;)
    {
      float f1;
      float f2;
      if (localObject1 != null)
      {
        f1 = localObject1.length;
        if (localObject2 == null) {
          break label207;
        }
        f2 = localObject2.length;
        if (localObject3 == null) {
          break label212;
        }
      }
      for (float f3 = localObject3.length;; f3 = 0.0F)
      {
        if (f1 + f2 + f3 > 0.0F) {
          break label218;
        }
        return localFile;
        try
        {
          localFile.createNewFile();
        }
        catch (IOException localIOException)
        {
          return null;
        }
        f1 = 0.0F;
        break label154;
        f2 = 0.0F;
        break label164;
      }
      float f4 = f1 + f2 + f3;
      int j = Math.round(f1 / f4 * 24.0F);
      int i = Math.round(f2 / f4 * 24.0F);
      int k = Math.round(f3 / f4 * 24.0F);
      if ((j == 0) && (localIOException != null) && (localIOException.length > 0))
      {
        j = i - 1;
        if (k != 0) {
          break label717;
        }
        i = j;
        if (j > 1) {
          i = j - 1;
        }
        k = 1;
        j = 1;
      }
      for (;;)
      {
        localObject4 = new ArrayList();
        localObject5 = new ArrayList();
        localObject6 = new ArrayList();
        if (localIOException != null) {
          for (;;)
          {
            if (j > 0)
            {
              int m = j - 1;
              j = m;
              if (((List)localObject4).size() < localIOException.length)
              {
                ((List)localObject4).add(0, localIOException[(localIOException.length - localObject4.size() - 1)]);
                j = m;
                continue;
                if ((i != 0) || (localObject2 == null) || (localObject2.length <= 0)) {
                  break label714;
                }
                j -= 1;
                if (k != 0) {
                  break label708;
                }
                i = j;
                if (j > 1) {
                  i = j - 1;
                }
                k = 1;
                m = 1;
                j = i;
                i = m;
                break;
              }
            }
          }
        }
        if (localObject2 != null) {
          while (i > 0)
          {
            j = i - 1;
            i = j;
            if (((List)localObject5).size() < localObject2.length)
            {
              ((List)localObject5).add(0, localObject2[(localObject2.length - localObject5.size() - 1)]);
              i = j;
            }
          }
        }
        if (localObject3 != null) {
          while (k > 0)
          {
            i = k - 1;
            k = i;
            if (((List)localObject6).size() < localObject3.length)
            {
              ((List)localObject6).add(0, localObject3[(localObject3.length - localObject6.size() - 1)]);
              k = i;
            }
          }
        }
        mergeFiles((List)localObject4, localFile, "------client log block count:" + ((List)localObject4).size() + "------\n");
        mergeFiles((List)localObject5, localFile, "\n------mns log block count:" + ((List)localObject5).size() + "------\n");
        mergeFiles((List)localObject6, localFile, "------client log block count:" + ((List)localObject6).size() + "------\n");
        return localFile;
        i = 1;
        continue;
        continue;
        i = j;
        j = 1;
      }
    }
  }
  
  public static File prepareReportLogFile(long paramLong, int paramInt)
  {
    if (paramInt < 0) {
      return prepareReportLogFile(paramLong);
    }
    long l = paramLong;
    if (paramLong < 1L) {
      l = System.currentTimeMillis();
    }
    FileTracerConfig localFileTracerConfig1 = CLIENT_CONFIG;
    FileTracerConfig localFileTracerConfig2 = SERVICE_CONFIG;
    FileTracerConfig localFileTracerConfig3 = CHANNEL_CONFIG;
    File localFile1 = new File(getLogFilePath(), "report.log");
    int j;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    ArrayList localArrayList3;
    ArrayList localArrayList4;
    ArrayList localArrayList5;
    ArrayList localArrayList6;
    int i;
    label127:
    int n;
    File localFile2;
    Object localObject3;
    Object localObject1;
    File[] arrayOfFile;
    if (localFile1.exists())
    {
      localFile1.delete();
      j = 0;
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      localArrayList3 = new ArrayList();
      localArrayList4 = new ArrayList();
      localArrayList5 = new ArrayList();
      localArrayList6 = new ArrayList();
      i = 0;
      if (j >= paramInt) {
        break label846;
      }
      n = i + 1;
      if ((i >= 7) || ((!localFileTracerConfig1.isWorkFolderExists(l)) && (!localFileTracerConfig2.isWorkFolderExists(l)))) {
        break label846;
      }
      localArrayList4.clear();
      localArrayList5.clear();
      localArrayList6.clear();
      localFile2 = localFileTracerConfig1.getWorkFolder(l);
      localObject3 = localFileTracerConfig1.getAllBlocksInFolder(localFile2);
      localObject1 = localObject3;
      if (localObject3 != null) {
        localObject1 = localFileTracerConfig1.sortBlocksByIndex((File[])localObject3);
      }
      arrayOfFile = localFileTracerConfig2.getAllBlocksInFolder(localFile2);
      localObject3 = arrayOfFile;
      if (arrayOfFile != null) {
        localObject3 = localFileTracerConfig2.sortBlocksByIndex(arrayOfFile);
      }
      arrayOfFile = localFileTracerConfig3.getAllBlocksInFolder(localFile2);
      if (arrayOfFile == null) {
        break label1027;
      }
      arrayOfFile = localFileTracerConfig3.sortBlocksByIndex((File[])localObject3);
    }
    label283:
    label294:
    label305:
    label431:
    label448:
    label533:
    label539:
    label545:
    label846:
    label992:
    label998:
    label1009:
    label1020:
    label1027:
    for (;;)
    {
      float f1;
      float f2;
      float f3;
      int i2;
      int m;
      int i1;
      int k;
      if (localObject1 != null)
      {
        f1 = localObject1.length;
        if (localObject3 == null) {
          break label533;
        }
        f2 = localObject3.length;
        if (arrayOfFile == null) {
          break label539;
        }
        f3 = arrayOfFile.length;
        if (f1 + f2 + f3 <= 0.0F) {
          break label1020;
        }
        float f4 = f1 + f2 + f3;
        i2 = Math.round(f1 / f4 * 24.0F);
        m = Math.round(f2 / f4 * 24.0F);
        i1 = Math.round(f3 / f4 * 24.0F);
        if ((i2 != 0) || (localObject1 == null) || (localObject1.length <= 0)) {
          break label545;
        }
        i = 1;
        i2 = 1;
        m -= 1;
        k = m;
        if (i1 != 0) {
          break label1009;
        }
        i = m;
        if (m > 1) {
          i = m - 1;
        }
        k = 1;
        m = i;
        i = i2;
      }
      for (;;)
      {
        if (localObject1 != null)
        {
          i1 = j;
          j = i;
          i = i1;
          for (;;)
          {
            if (j > 0)
            {
              j -= 1;
              if (localArrayList4.size() >= localObject1.length) {
                break label992;
              }
              localFile2 = localObject1[(localObject1.length - localArrayList4.size() - 1)];
              localArrayList4.add(0, localFile2);
              i = (int)(i + localFile2.length());
              continue;
              try
              {
                localFile1.createNewFile();
              }
              catch (IOException localIOException)
              {
                return null;
              }
              f1 = 0.0F;
              break label283;
              f2 = 0.0F;
              break label294;
              f3 = 0.0F;
              break label305;
              k = m;
              i = i2;
              if (m != 0) {
                break label1009;
              }
              k = m;
              i = i2;
              if (localObject3 == null) {
                break label1009;
              }
              k = m;
              i = i2;
              if (localObject3.length <= 0) {
                break label1009;
              }
              m = 1;
              k = i2 - 1;
              if (i1 != 0) {
                break label998;
              }
              i = k;
              if (k > 1) {
                i = k - 1;
              }
              k = 1;
              break label431;
            }
          }
          j = i;
        }
        for (;;)
        {
          i = j;
          Object localObject2;
          if (localObject3 != null) {
            for (;;)
            {
              i = j;
              if (m <= 0) {
                break;
              }
              i = m - 1;
              m = i;
              if (localArrayList5.size() < localObject3.length)
              {
                localObject2 = localObject3[(localObject3.length - localArrayList5.size() - 1)];
                localArrayList5.add(0, localObject2);
                j = (int)(j + ((File)localObject2).length());
                m = i;
              }
            }
          }
          j = i;
          if (arrayOfFile != null) {
            for (;;)
            {
              j = i;
              if (k <= 0) {
                break;
              }
              j = k - 1;
              k = j;
              if (localArrayList6.size() < arrayOfFile.length)
              {
                localObject2 = arrayOfFile[(arrayOfFile.length - localArrayList6.size() - 1)];
                localArrayList6.add(0, localObject2);
                i = (int)(i + ((File)localObject2).length());
                k = j;
              }
            }
          }
          l -= 86400000L;
          localArrayList1.addAll(localArrayList4);
          localArrayList2.addAll(localArrayList5);
          localArrayList3.addAll(localArrayList6);
          i = n;
          break;
          if ((localArrayList1.size() == 0) && (localArrayList2.size() == 0) && (localArrayList3.size() == 0)) {
            return null;
          }
          mergeFiles(localArrayList1, localFile1, "------client log block count:" + localArrayList1.size() + "------\n");
          mergeFiles(localArrayList2, localFile1, "\n------mns log block count:" + localArrayList2.size() + "------\n");
          mergeFiles(localArrayList3, localFile1, "\n------mns log block count:" + localArrayList3.size() + "------\n");
          return localFile1;
          break label448;
        }
        i = k;
        k = i1;
        continue;
        m = k;
        k = i1;
      }
      i = n;
      break label127;
    }
  }
  
  public static void setInstance(MiLinkTracer paramMiLinkTracer)
  {
    sInstance = paramMiLinkTracer;
  }
  
  public void flush()
  {
    if (this.fileTracer != null) {
      this.fileTracer.flush();
    }
  }
  
  public final boolean isEnabled()
  {
    return this.enabled;
  }
  
  public final boolean isFileTracerEnabled()
  {
    return this.fileTracerEnabled;
  }
  
  public final boolean isLogcatTracerEnabled()
  {
    return this.logcatTracerEnabled;
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    int i;
    if ("debug.file.tracelevel".equals(paramString))
    {
      i = Option.getInt("debug.file.tracelevel", 63);
      trace(16, "MnsTracer", "File Trace Level Changed = " + i, null);
      if (this.fileTracer != null) {
        this.fileTracer.setTraceLevel(i);
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (!"client.debug.file.tracelevel".equals(paramString)) {
              break;
            }
            i = Option.getInt("client.debug.file.tracelevel", 63);
            trace(16, "MnsTracer", "Client File Trace Level Changed = " + i, null);
          } while (this.fileTracer == null);
          this.fileTracer.setTraceLevel(i);
          return;
          if (!"debug.logcat.tracelevel".equals(paramString)) {
            break;
          }
          i = Option.getInt("debug.logcat.tracelevel", 63);
          trace(16, "MnsTracer", "Logcat Trace Level Changed = " + i, null);
        } while (this.logcatTracer == null);
        this.logcatTracer.setTraceLevel(i);
        return;
      } while (!"client.debug.logcat.tracelevel".equals(paramString));
      i = Option.getInt("client.debug.logcat.tracelevel", 63);
      trace(16, "MnsTracer", "Client Logcat Trace Level Changed = " + i, null);
    } while (this.logcatTracer == null);
    this.logcatTracer.setTraceLevel(i);
  }
  
  public final void setEnabled(boolean paramBoolean)
  {
    this.enabled = paramBoolean;
  }
  
  public final void setFileTracerEnabled(boolean paramBoolean)
  {
    this.fileTracer.flush();
    this.fileTracerEnabled = paramBoolean;
  }
  
  public final void setFileTracerLevel(int paramInt)
  {
    this.fileTracer.setTraceLevel(paramInt);
  }
  
  public final void setLogcatTracerEnabled(boolean paramBoolean)
  {
    this.logcatTracerEnabled = paramBoolean;
  }
  
  public void stop()
  {
    if (this.fileTracer != null)
    {
      this.fileTracer.flush();
      this.fileTracer.quit();
    }
  }
  
  public void trace(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isEnabled()) {
      try
      {
        if ((isFileTracerEnabled()) && (this.fileTracer != null)) {
          this.fileTracer.trace(paramInt, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
        }
        if (isLogcatTracerEnabled())
        {
          if (Global.getClientAppInfo().getCustomTag().equals("")) {}
          for (paramString1 = paramString1 + "(MiLinkSDK)(" + Global.getClientAppInfo().getAppName() + ")"; this.logcatTracer != null; paramString1 = paramString1 + "(" + Global.getClientAppInfo().getCustomTag() + ")(MiLinkSDK)(" + Global.getClientAppInfo().getAppName() + ")")
          {
            this.logcatTracer.trace(paramInt, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
            return;
          }
        }
        return;
      }
      catch (Exception paramString1) {}
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\debug\MiLinkTracer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */