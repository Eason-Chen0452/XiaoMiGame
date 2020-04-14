package com.ta.utdid2.android.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Environment;
import java.io.File;
import java.lang.reflect.Field;

public class SystemUtils
{
  public static String getAppLabel(Context paramContext)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      paramContext = paramContext.getPackageName();
      if ((localPackageManager != null) && (paramContext != null))
      {
        paramContext = localPackageManager.getApplicationLabel(localPackageManager.getPackageInfo(paramContext, 1).applicationInfo).toString();
        return paramContext;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  /* Error */
  public static String getCpuInfo()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: aconst_null
    //   3: astore_1
    //   4: aconst_null
    //   5: astore 5
    //   7: aconst_null
    //   8: astore_3
    //   9: aconst_null
    //   10: astore_2
    //   11: aconst_null
    //   12: astore 4
    //   14: new 54	java/io/FileReader
    //   17: dup
    //   18: ldc 56
    //   20: invokespecial 59	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   23: astore 6
    //   25: aload 6
    //   27: ifnull +121 -> 148
    //   30: aload 5
    //   32: astore_1
    //   33: new 61	java/io/BufferedReader
    //   36: dup
    //   37: aload 6
    //   39: sipush 1024
    //   42: invokespecial 64	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   45: astore 4
    //   47: aload_3
    //   48: astore_0
    //   49: aload_2
    //   50: astore_1
    //   51: aload 4
    //   53: invokevirtual 67	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   56: astore_2
    //   57: aload_2
    //   58: astore_0
    //   59: aload_2
    //   60: astore_1
    //   61: aload 4
    //   63: invokevirtual 70	java/io/BufferedReader:close	()V
    //   66: aload_2
    //   67: astore_0
    //   68: aload_2
    //   69: astore_1
    //   70: aload 6
    //   72: invokevirtual 71	java/io/FileReader:close	()V
    //   75: aload_2
    //   76: astore_0
    //   77: aload_0
    //   78: ifnull +51 -> 129
    //   81: aload_0
    //   82: aload_0
    //   83: bipush 58
    //   85: invokevirtual 77	java/lang/String:indexOf	(I)I
    //   88: iconst_1
    //   89: iadd
    //   90: invokevirtual 81	java/lang/String:substring	(I)Ljava/lang/String;
    //   93: invokevirtual 84	java/lang/String:trim	()Ljava/lang/String;
    //   96: areturn
    //   97: astore_2
    //   98: aload_0
    //   99: astore_1
    //   100: ldc 86
    //   102: aload_2
    //   103: invokevirtual 87	java/io/IOException:toString	()Ljava/lang/String;
    //   106: invokestatic 93	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   109: pop
    //   110: goto -33 -> 77
    //   113: astore_2
    //   114: aload_1
    //   115: astore_0
    //   116: ldc 95
    //   118: aload_2
    //   119: invokevirtual 96	java/io/FileNotFoundException:toString	()Ljava/lang/String;
    //   122: invokestatic 93	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   125: pop
    //   126: goto -49 -> 77
    //   129: ldc 98
    //   131: areturn
    //   132: astore_2
    //   133: aload_1
    //   134: astore_0
    //   135: goto -19 -> 116
    //   138: astore_2
    //   139: goto -23 -> 116
    //   142: astore_2
    //   143: aload_1
    //   144: astore_0
    //   145: goto -47 -> 98
    //   148: aload 4
    //   150: astore_0
    //   151: goto -74 -> 77
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	150	0	localObject1	Object
    //   3	141	1	localObject2	Object
    //   10	66	2	str	String
    //   97	6	2	localIOException1	java.io.IOException
    //   113	6	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   132	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   138	1	2	localFileNotFoundException3	java.io.FileNotFoundException
    //   142	1	2	localIOException2	java.io.IOException
    //   8	40	3	localObject3	Object
    //   12	137	4	localBufferedReader	java.io.BufferedReader
    //   5	26	5	localObject4	Object
    //   23	48	6	localFileReader	java.io.FileReader
    // Exception table:
    //   from	to	target	type
    //   33	47	97	java/io/IOException
    //   14	25	113	java/io/FileNotFoundException
    //   33	47	132	java/io/FileNotFoundException
    //   100	110	132	java/io/FileNotFoundException
    //   51	57	138	java/io/FileNotFoundException
    //   61	66	138	java/io/FileNotFoundException
    //   70	75	138	java/io/FileNotFoundException
    //   51	57	142	java/io/IOException
    //   61	66	142	java/io/IOException
    //   70	75	142	java/io/IOException
  }
  
  public static File getRootFolder(String paramString)
  {
    File localFile = Environment.getExternalStorageDirectory();
    if (localFile != null)
    {
      paramString = new File(String.format("%s%s%s", new Object[] { localFile.getAbsolutePath(), File.separator, paramString }));
      if ((paramString != null) && (!paramString.exists())) {
        paramString.mkdirs();
      }
      return paramString;
    }
    return null;
  }
  
  public static int getSystemVersion()
  {
    try
    {
      i = Build.VERSION.class.getField("SDK_INT").getInt(null);
      return i;
    }
    catch (Exception localException1)
    {
      try
      {
        int i = Integer.parseInt((String)Build.VERSION.class.getField("SDK").get(null));
        return i;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
    return 2;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\android\utils\SystemUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */