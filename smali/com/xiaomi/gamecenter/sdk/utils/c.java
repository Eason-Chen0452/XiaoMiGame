package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.Properties;

public final class c
{
  private static Properties a = null;
  
  public static boolean a(Context paramContext)
  {
    boolean bool = false;
    try
    {
      paramContext = paramContext.getExternalFilesDir(null);
      if (paramContext == null) {
        return bool;
      }
      if (!paramContext.exists()) {
        return false;
      }
      if ((!paramContext.exists()) || (!paramContext.isDirectory()))
      {
        paramContext.mkdirs();
        return false;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      return false;
    }
    bool = new File(paramContext, ".dcfg").exists();
    return bool;
  }
  
  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    if (a == null) {
      a = b(paramContext);
    }
    if (a == null) {
      return false;
    }
    return TextUtils.equals(a.getProperty(paramString1, null), paramString2);
  }
  
  public static String b(Context paramContext, String paramString1, String paramString2)
  {
    if (a == null) {
      a = b(paramContext);
    }
    if (a == null) {
      return paramString2;
    }
    try
    {
      paramContext = a.getProperty(paramString1, paramString2);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return paramString2;
  }
  
  /* Error */
  private static Properties b(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: ldc 2
    //   6: monitorenter
    //   7: aload_0
    //   8: invokestatic 63	com/xiaomi/gamecenter/sdk/utils/c:a	(Landroid/content/Context;)Z
    //   11: istore_1
    //   12: iload_1
    //   13: ifne +10 -> 23
    //   16: aload_3
    //   17: astore_0
    //   18: ldc 2
    //   20: monitorexit
    //   21: aload_0
    //   22: areturn
    //   23: new 22	java/io/File
    //   26: dup
    //   27: aload_0
    //   28: aconst_null
    //   29: invokevirtual 20	android/content/Context:getExternalFilesDir	(Ljava/lang/String;)Ljava/io/File;
    //   32: ldc 37
    //   34: invokespecial 41	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   37: astore_0
    //   38: new 48	java/util/Properties
    //   41: dup
    //   42: invokespecial 65	java/util/Properties:<init>	()V
    //   45: astore_3
    //   46: new 67	java/io/FileInputStream
    //   49: dup
    //   50: aload_0
    //   51: invokespecial 70	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   54: astore_0
    //   55: aload_3
    //   56: aload_0
    //   57: invokevirtual 74	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   60: aload_0
    //   61: invokevirtual 79	java/io/InputStream:close	()V
    //   64: aload_3
    //   65: astore_0
    //   66: goto -48 -> 18
    //   69: astore_0
    //   70: aload_0
    //   71: invokevirtual 80	java/io/IOException:printStackTrace	()V
    //   74: aload_3
    //   75: astore_0
    //   76: goto -10 -> 66
    //   79: astore_0
    //   80: ldc 2
    //   82: monitorexit
    //   83: aload_0
    //   84: athrow
    //   85: astore_0
    //   86: aconst_null
    //   87: astore_0
    //   88: aload_0
    //   89: ifnull +53 -> 142
    //   92: aload_0
    //   93: invokevirtual 79	java/io/InputStream:close	()V
    //   96: aconst_null
    //   97: astore_0
    //   98: goto -32 -> 66
    //   101: astore_0
    //   102: aload_0
    //   103: invokevirtual 80	java/io/IOException:printStackTrace	()V
    //   106: aconst_null
    //   107: astore_0
    //   108: goto -42 -> 66
    //   111: astore_0
    //   112: aload_2
    //   113: ifnull +7 -> 120
    //   116: aload_2
    //   117: invokevirtual 79	java/io/InputStream:close	()V
    //   120: aload_0
    //   121: athrow
    //   122: astore_2
    //   123: aload_2
    //   124: invokevirtual 80	java/io/IOException:printStackTrace	()V
    //   127: goto -7 -> 120
    //   130: astore_3
    //   131: aload_0
    //   132: astore_2
    //   133: aload_3
    //   134: astore_0
    //   135: goto -23 -> 112
    //   138: astore_2
    //   139: goto -51 -> 88
    //   142: aconst_null
    //   143: astore_0
    //   144: goto -78 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	147	0	paramContext	Context
    //   11	2	1	bool	boolean
    //   1	116	2	localObject1	Object
    //   122	2	2	localIOException1	java.io.IOException
    //   132	1	2	localContext	Context
    //   138	1	2	localIOException2	java.io.IOException
    //   3	72	3	localProperties	Properties
    //   130	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   60	64	69	java/io/IOException
    //   7	12	79	finally
    //   23	46	79	finally
    //   60	64	79	finally
    //   70	74	79	finally
    //   92	96	79	finally
    //   102	106	79	finally
    //   116	120	79	finally
    //   120	122	79	finally
    //   123	127	79	finally
    //   46	55	85	java/io/IOException
    //   92	96	101	java/io/IOException
    //   46	55	111	finally
    //   116	120	122	java/io/IOException
    //   55	60	130	finally
    //   55	60	138	java/io/IOException
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */