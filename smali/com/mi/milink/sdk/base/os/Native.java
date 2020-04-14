package com.mi.milink.sdk.base.os;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Environment;
import android.text.TextUtils;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.debug.CustomLogcat;
import com.mi.milink.sdk.base.os.info.StorageDash;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.util.CommonUtils;
import com.mi.milink.sdk.util.FileUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

public class Native
{
  private static final String DEFAULT_ASSETS_SO_DIR_NAME = "lib/armeabi-v7a";
  private static final String DEFAULT_LIB_DIR_NAME = "qzlib";
  private static final String LIB_URL = "http://data.game.xiaomi.com/lib/lib.zip";
  private static final String PREFENCE_NAME = "guarder";
  private static final HashMap<String, String> REAL_SO_PATH = new HashMap();
  private static final String TAG = "LibraryLoader";
  private static final char[] digits = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  private static String bytes2HexStr(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return null;
    }
    char[] arrayOfChar = new char[paramArrayOfByte.length * 2];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i];
      arrayOfChar[(i * 2 + 1)] = digits[(j & 0xF)];
      j = (byte)(j >>> 4);
      arrayOfChar[(i * 2)] = digits[(j & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  private static boolean copyAssetLib(String paramString1, String paramString2, String paramString3)
    throws Throwable
  {
    boolean bool2 = false;
    for (;;)
    {
      String str;
      try
      {
        localObject = Global.getContext();
        bool1 = bool2;
        if (localObject != null)
        {
          if (paramString2 == null) {
            bool1 = bool2;
          }
        }
        else {
          return bool1;
        }
        if (paramString3 != null)
        {
          str = paramString3;
          if (paramString3.trim().length() != 0) {}
        }
        else
        {
          CustomLogcat.e("LibraryLoader", "not define lib out path");
          str = ((Context)localObject).getFilesDir().getAbsolutePath();
        }
        new File(str).mkdirs();
        CustomLogcat.d("LibraryLoader", "copy lib:" + paramString2 + " to " + str);
      }
      finally {}
      try
      {
        localObject = ((Context)localObject).getAssets().open(paramString2);
      }
      catch (Throwable paramString1)
      {
        paramString2 = null;
        paramString3 = null;
        localObject = null;
        continue;
      }
      try
      {
        paramString3 = new File(str, paramString1);
      }
      catch (Throwable paramString1)
      {
        paramString2 = null;
        paramString3 = null;
        continue;
      }
      try
      {
        if (paramString3.exists()) {
          delete(paramString3);
        }
        paramString3.createNewFile();
        paramString2 = new FileOutputStream(paramString3);
        try
        {
          paramString1 = new byte['က'];
          if (((InputStream)localObject).available() <= 0) {
            break label218;
          }
          int i = ((InputStream)localObject).read(paramString1);
          if (i <= 0) {
            break label218;
          }
          paramString2.write(paramString1, 0, i);
          continue;
          CommonUtils.closeDataObject(paramString2);
        }
        catch (Throwable paramString1) {}
      }
      catch (Throwable paramString1)
      {
        paramString2 = null;
        continue;
      }
      CommonUtils.closeDataObject(localObject);
      delete(paramString3);
      throw paramString1;
      label218:
      paramString2.close();
      ((InputStream)localObject).close();
      boolean bool1 = true;
    }
  }
  
  private static void copySoFile(String paramString)
    throws Native.NativeException
  {
    CustomLogcat.i("LibraryLoader", "try to copy " + paramString);
    String str = getAssetsPath(paramString);
    try
    {
      copyAssetLib(paramString, str, getLibDir().getAbsolutePath());
      return;
    }
    catch (Throwable localThrowable)
    {
      throw new NativeException("copy file:" + paramString + " failed!", localThrowable);
    }
  }
  
  public static void delete(File paramFile)
  {
    delete(paramFile, false);
  }
  
  public static void delete(File paramFile, boolean paramBoolean)
  {
    if ((paramFile == null) || (!paramFile.exists())) {}
    do
    {
      File[] arrayOfFile;
      do
      {
        return;
        if (paramFile.isFile())
        {
          paramFile.delete();
          return;
        }
        arrayOfFile = paramFile.listFiles();
      } while (arrayOfFile == null);
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        delete(arrayOfFile[i], paramBoolean);
        i += 1;
      }
    } while (paramBoolean);
    paramFile.delete();
  }
  
  private static boolean downloadNativeLibs()
  {
    File localFile;
    boolean bool1;
    if (StorageDash.hasExternal())
    {
      localFile = new File(Environment.getExternalStorageDirectory(), "mi" + File.separator + "milink");
      localFile = new File(localFile, "milink_network_lib.zip");
      if (localFile.exists()) {
        localFile.delete();
      }
      CustomLogcat.w("LibraryLoader", "Prepare to Download Native Libs From Network ... ");
      CustomLogcat.w("LibraryLoader", "Url = http://data.game.xiaomi.com/lib/lib.zip");
      bool1 = Http.isSuccess(Http.download("http://data.game.xiaomi.com/lib/lib.zip", localFile));
      CustomLogcat.w("LibraryLoader", "Download Native Libs => " + bool1);
      if (bool1) {
        break label123;
      }
      bool1 = false;
    }
    label123:
    boolean bool2;
    do
    {
      return bool1;
      localFile = Global.getCacheDir();
      break;
      CustomLogcat.w("LibraryLoader", "Prepare to Install Native Libs ...");
      bool2 = FileUtils.unzip(localFile, getLibDir());
      CustomLogcat.w("LibraryLoader", "Install Native Libs => " + bool2);
      bool1 = bool2;
    } while (!localFile.exists());
    localFile.delete();
    return bool2;
  }
  
  /* Error */
  public static String encrypt(InputStream paramInputStream, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 279	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   4: astore_1
    //   5: sipush 1024
    //   8: newarray <illegal type>
    //   10: astore_3
    //   11: aload_0
    //   12: aload_3
    //   13: invokevirtual 160	java/io/InputStream:read	([B)I
    //   16: istore_2
    //   17: iload_2
    //   18: ifle +21 -> 39
    //   21: aload_1
    //   22: aload_3
    //   23: iconst_0
    //   24: iload_2
    //   25: invokevirtual 282	java/security/MessageDigest:update	([BII)V
    //   28: goto -17 -> 11
    //   31: astore_1
    //   32: aload_0
    //   33: invokestatic 170	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   36: pop
    //   37: aconst_null
    //   38: areturn
    //   39: aload_1
    //   40: invokevirtual 286	java/security/MessageDigest:digest	()[B
    //   43: invokestatic 288	com/mi/milink/sdk/base/os/Native:bytes2HexStr	([B)Ljava/lang/String;
    //   46: astore_1
    //   47: aload_0
    //   48: invokestatic 170	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   51: pop
    //   52: aload_1
    //   53: areturn
    //   54: astore_1
    //   55: aload_0
    //   56: invokestatic 170	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   59: pop
    //   60: aconst_null
    //   61: areturn
    //   62: astore_1
    //   63: aload_0
    //   64: invokestatic 170	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   67: pop
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	paramInputStream	InputStream
    //   0	70	1	paramString	String
    //   16	9	2	i	int
    //   10	13	3	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   0	11	31	java/io/IOException
    //   11	17	31	java/io/IOException
    //   21	28	31	java/io/IOException
    //   39	47	31	java/io/IOException
    //   0	11	54	java/security/NoSuchAlgorithmException
    //   11	17	54	java/security/NoSuchAlgorithmException
    //   21	28	54	java/security/NoSuchAlgorithmException
    //   39	47	54	java/security/NoSuchAlgorithmException
    //   0	11	62	finally
    //   11	17	62	finally
    //   21	28	62	finally
    //   39	47	62	finally
  }
  
  public static void forceCopySoFile(String paramString, String... paramVarArgs)
    throws Native.NativeException
  {
    if (paramVarArgs != null)
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        String str = paramVarArgs[i];
        copySoFile(str);
        setCopiedInSpecifiedVersion(paramString, str, true);
        i += 1;
      }
    }
  }
  
  private static String getAssetsPath(String paramString)
  {
    return "lib/armeabi-v7a" + File.separator + paramString;
  }
  
  private static String getCopiedKey(String paramString1, String paramString2)
  {
    return "check_" + paramString1 + "_" + paramString2;
  }
  
  private static String getDefaultVersionName()
  {
    try
    {
      String str = Global.getPackageManager().getPackageInfo(Global.getPackageName(), 0).versionName;
      return str;
    }
    catch (Exception localException) {}
    return String.valueOf(System.currentTimeMillis());
  }
  
  private static String getFileMd5(InputStream paramInputStream)
  {
    return encrypt(paramInputStream, "MD5");
  }
  
  @SuppressLint({"SdCardPath"})
  private static String getInstallPath()
  {
    File localFile2 = Global.getFilesDir();
    File localFile1 = localFile2;
    if (localFile2 == null) {
      localFile1 = Global.getCacheDir();
    }
    if (localFile1 != null) {
      return localFile1.getParent();
    }
    return "/data/data/" + Global.getPackageName();
  }
  
  public static File getLibDir()
  {
    String str = getInstallPath();
    return new File(str + File.separator + "qzlib");
  }
  
  public static String getSORealPath(String paramString)
  {
    if (!REAL_SO_PATH.containsKey(paramString)) {
      return null;
    }
    return (String)REAL_SO_PATH.get(paramString);
  }
  
  public static String getSoPath(String paramString1, String paramString2)
  {
    paramString1 = getInstallPath() + File.separator + paramString1;
    return paramString1 + File.separator + paramString2;
  }
  
  private static boolean hasCopiedInSpecifiedVersion(String paramString1, String paramString2)
  {
    return Global.getSharedPreferences("guarder", 0).getBoolean(getCopiedKey(paramString1, paramString2), false);
  }
  
  private static boolean isFileInAssetsPath(String paramString)
  {
    try
    {
      String[] arrayOfString = Global.getContext().getAssets().list("lib/armeabi-v7a");
      if (arrayOfString == null) {
        return false;
      }
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        boolean bool = paramString.equalsIgnoreCase(arrayOfString[i]);
        if (bool) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    catch (IOException localIOException)
    {
      CustomLogcat.e("LibraryLoader", "isFileInAssetsPath" + paramString, localIOException);
    }
  }
  
  /* Error */
  private static boolean isSameLength(String paramString)
  {
    // Byte code:
    //   0: new 98	java/io/File
    //   3: dup
    //   4: new 98	java/io/File
    //   7: dup
    //   8: invokestatic 188	com/mi/milink/sdk/base/os/Native:getLibDir	()Ljava/io/File;
    //   11: aload_0
    //   12: invokespecial 230	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   15: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   18: invokespecial 104	java/io/File:<init>	(Ljava/lang/String;)V
    //   21: astore 8
    //   23: invokestatic 393	com/mi/milink/sdk/base/Global:getAssets	()Landroid/content/res/AssetManager;
    //   26: astore 9
    //   28: aload_0
    //   29: invokestatic 185	com/mi/milink/sdk/base/os/Native:getAssetsPath	(Ljava/lang/String;)Ljava/lang/String;
    //   32: astore_0
    //   33: aload 9
    //   35: aload_0
    //   36: invokevirtual 397	android/content/res/AssetManager:openFd	(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    //   39: astore 10
    //   41: aload 10
    //   43: ifnonnull +5 -> 48
    //   46: iconst_1
    //   47: ireturn
    //   48: ldc 26
    //   50: new 110	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 353	java/lang/StringBuilder:<init>	()V
    //   57: aload_0
    //   58: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: ldc_w 399
    //   64: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload 10
    //   69: invokevirtual 404	android/content/res/AssetFileDescriptor:getLength	()J
    //   72: invokevirtual 407	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   75: ldc_w 409
    //   78: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: aload 8
    //   83: invokevirtual 412	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   86: ldc_w 399
    //   89: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload 8
    //   94: invokevirtual 414	java/io/File:length	()J
    //   97: invokevirtual 407	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   100: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokestatic 90	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   106: aload 8
    //   108: invokevirtual 414	java/io/File:length	()J
    //   111: lstore_2
    //   112: aload 10
    //   114: invokevirtual 404	android/content/res/AssetFileDescriptor:getLength	()J
    //   117: lstore 4
    //   119: lload_2
    //   120: lload 4
    //   122: lcmp
    //   123: ifne +167 -> 290
    //   126: iconst_1
    //   127: istore 6
    //   129: iconst_0
    //   130: istore_1
    //   131: iload 6
    //   133: istore 7
    //   135: iload_1
    //   136: ifeq +160 -> 296
    //   139: iload 6
    //   141: istore 7
    //   143: aload 9
    //   145: aload_0
    //   146: invokevirtual 135	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   149: astore 9
    //   151: ldc 26
    //   153: new 110	java/lang/StringBuilder
    //   156: dup
    //   157: invokespecial 353	java/lang/StringBuilder:<init>	()V
    //   160: aload_0
    //   161: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: ldc_w 416
    //   167: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: aload 9
    //   172: invokevirtual 156	java/io/InputStream:available	()I
    //   175: invokevirtual 419	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   178: ldc_w 409
    //   181: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: aload 8
    //   186: invokevirtual 412	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   189: ldc_w 399
    //   192: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload 8
    //   197: invokevirtual 414	java/io/File:length	()J
    //   200: invokevirtual 407	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   203: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: invokestatic 90	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   209: aload 8
    //   211: invokevirtual 414	java/io/File:length	()J
    //   214: lstore_2
    //   215: aload 9
    //   217: invokevirtual 156	java/io/InputStream:available	()I
    //   220: istore_1
    //   221: lload_2
    //   222: iload_1
    //   223: i2l
    //   224: lcmp
    //   225: ifne +6 -> 231
    //   228: iconst_1
    //   229: istore 6
    //   231: iload 6
    //   233: istore 7
    //   235: aload 9
    //   237: invokevirtual 174	java/io/InputStream:close	()V
    //   240: iload 6
    //   242: istore 7
    //   244: goto +52 -> 296
    //   247: astore_0
    //   248: iload 6
    //   250: istore 7
    //   252: aload 9
    //   254: invokevirtual 174	java/io/InputStream:close	()V
    //   257: iload 6
    //   259: istore 7
    //   261: goto +35 -> 296
    //   264: astore_0
    //   265: iload 6
    //   267: istore 7
    //   269: aload 9
    //   271: invokevirtual 174	java/io/InputStream:close	()V
    //   274: iload 6
    //   276: istore 7
    //   278: aload_0
    //   279: athrow
    //   280: astore_0
    //   281: iconst_0
    //   282: istore 7
    //   284: goto +12 -> 296
    //   287: astore_0
    //   288: iconst_1
    //   289: ireturn
    //   290: iconst_0
    //   291: istore 6
    //   293: goto -164 -> 129
    //   296: iload 7
    //   298: ireturn
    //   299: astore 10
    //   301: iconst_0
    //   302: istore 6
    //   304: iconst_1
    //   305: istore_1
    //   306: goto -175 -> 131
    //   309: astore_0
    //   310: goto -14 -> 296
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	313	0	paramString	String
    //   130	176	1	i	int
    //   111	111	2	l1	long
    //   117	4	4	l2	long
    //   127	176	6	bool1	boolean
    //   133	164	7	bool2	boolean
    //   21	189	8	localFile	File
    //   26	244	9	localObject	Object
    //   39	74	10	localAssetFileDescriptor	android.content.res.AssetFileDescriptor
    //   299	1	10	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   151	221	247	java/io/IOException
    //   151	221	264	finally
    //   33	41	280	java/lang/Exception
    //   48	119	280	java/lang/Exception
    //   33	41	287	java/io/FileNotFoundException
    //   48	119	287	java/io/FileNotFoundException
    //   33	41	299	java/io/IOException
    //   48	119	299	java/io/IOException
    //   143	151	309	java/lang/Exception
    //   235	240	309	java/lang/Exception
    //   252	257	309	java/lang/Exception
    //   269	274	309	java/lang/Exception
    //   278	280	309	java/lang/Exception
  }
  
  private static boolean isSameMd5(String paramString)
  {
    boolean bool4 = false;
    boolean bool3 = false;
    boolean bool1 = bool3;
    boolean bool2 = bool4;
    try
    {
      String str1 = getFileMd5(Global.getAssets().open(getAssetsPath(paramString)));
      bool1 = bool3;
      bool2 = bool4;
      if (TextUtils.isEmpty(str1)) {
        return false;
      }
      bool1 = bool3;
      bool2 = bool4;
      String str2 = getFileMd5(new FileInputStream(new File(getLibDir(), paramString)));
      bool1 = bool3;
      bool2 = bool4;
      bool3 = str1.equals(str2);
      bool1 = bool3;
      bool2 = bool3;
      String str3 = getLibDir() + File.separator + paramString;
      bool1 = bool3;
      bool2 = bool3;
      CustomLogcat.e("LibraryLoader", getAssetsPath(paramString) + " md5 = " + str1 + "," + str3 + " md5 = " + str2);
      return bool3;
    }
    catch (FileNotFoundException paramString)
    {
      MiLinkLog.e("LibraryLoader", paramString);
      return bool1;
    }
    catch (IOException paramString)
    {
      MiLinkLog.e("LibraryLoader", paramString);
    }
    return bool2;
  }
  
  /* Error */
  public static boolean loadLibrary(String paramString)
  {
    // Byte code:
    //   0: new 110	java/lang/StringBuilder
    //   3: dup
    //   4: ldc_w 447
    //   7: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   10: aload_0
    //   11: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: ldc_w 449
    //   17: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: astore_3
    //   24: new 98	java/io/File
    //   27: dup
    //   28: invokestatic 188	com/mi/milink/sdk/base/os/Native:getLibDir	()Ljava/io/File;
    //   31: aload_3
    //   32: invokespecial 230	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   35: astore_2
    //   36: getstatic 37	com/mi/milink/sdk/base/os/Native:REAL_SO_PATH	Ljava/util/HashMap;
    //   39: aload_0
    //   40: aconst_null
    //   41: invokevirtual 453	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   44: pop
    //   45: ldc 26
    //   47: new 110	java/lang/StringBuilder
    //   50: dup
    //   51: ldc_w 455
    //   54: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   57: aload_0
    //   58: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: ldc_w 457
    //   64: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokestatic 125	com/mi/milink/sdk/base/debug/CustomLogcat:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   73: aload_0
    //   74: invokestatic 459	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   77: iconst_1
    //   78: ireturn
    //   79: astore 4
    //   81: ldc 26
    //   83: new 110	java/lang/StringBuilder
    //   86: dup
    //   87: ldc_w 461
    //   90: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   93: aload_0
    //   94: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: ldc_w 457
    //   100: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: aload 4
    //   108: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   111: aload_2
    //   112: invokevirtual 140	java/io/File:exists	()Z
    //   115: ifeq +13 -> 128
    //   118: invokestatic 463	com/mi/milink/sdk/base/os/Native:getDefaultVersionName	()Ljava/lang/String;
    //   121: aload_3
    //   122: invokestatic 465	com/mi/milink/sdk/base/os/Native:hasCopiedInSpecifiedVersion	(Ljava/lang/String;Ljava/lang/String;)Z
    //   125: ifne +24 -> 149
    //   128: aload_3
    //   129: invokestatic 467	com/mi/milink/sdk/base/os/Native:isFileInAssetsPath	(Ljava/lang/String;)Z
    //   132: ifne +302 -> 434
    //   135: invokestatic 469	com/mi/milink/sdk/base/os/Native:downloadNativeLibs	()Z
    //   138: ifeq +294 -> 432
    //   141: invokestatic 463	com/mi/milink/sdk/base/os/Native:getDefaultVersionName	()Ljava/lang/String;
    //   144: aload_3
    //   145: iconst_1
    //   146: invokestatic 296	com/mi/milink/sdk/base/os/Native:setCopiedInSpecifiedVersion	(Ljava/lang/String;Ljava/lang/String;Z)V
    //   149: aload_2
    //   150: invokevirtual 140	java/io/File:exists	()Z
    //   153: ifeq +90 -> 243
    //   156: aload_2
    //   157: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   160: astore 4
    //   162: ldc 26
    //   164: new 110	java/lang/StringBuilder
    //   167: dup
    //   168: ldc_w 455
    //   171: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   174: aload 4
    //   176: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: ldc_w 471
    //   182: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokestatic 125	com/mi/milink/sdk/base/debug/CustomLogcat:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   191: aload 4
    //   193: invokestatic 474	java/lang/System:load	(Ljava/lang/String;)V
    //   196: getstatic 37	com/mi/milink/sdk/base/os/Native:REAL_SO_PATH	Ljava/util/HashMap;
    //   199: aload_0
    //   200: aload 4
    //   202: invokevirtual 453	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   205: pop
    //   206: iconst_1
    //   207: ireturn
    //   208: astore 4
    //   210: ldc 26
    //   212: new 110	java/lang/StringBuilder
    //   215: dup
    //   216: ldc_w 461
    //   219: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   222: aload_2
    //   223: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   226: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: ldc_w 471
    //   232: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   238: aload 4
    //   240: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   243: aload_3
    //   244: invokestatic 467	com/mi/milink/sdk/base/os/Native:isFileInAssetsPath	(Ljava/lang/String;)Z
    //   247: ifeq +639 -> 886
    //   250: aload_2
    //   251: invokevirtual 140	java/io/File:exists	()Z
    //   254: ifne +362 -> 616
    //   257: ldc 26
    //   259: ldc_w 476
    //   262: invokestatic 90	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   265: iconst_1
    //   266: istore_1
    //   267: iload_1
    //   268: ifne +17 -> 285
    //   271: invokestatic 469	com/mi/milink/sdk/base/os/Native:downloadNativeLibs	()Z
    //   274: ifeq +382 -> 656
    //   277: invokestatic 463	com/mi/milink/sdk/base/os/Native:getDefaultVersionName	()Ljava/lang/String;
    //   280: aload_3
    //   281: iconst_1
    //   282: invokestatic 296	com/mi/milink/sdk/base/os/Native:setCopiedInSpecifiedVersion	(Ljava/lang/String;Ljava/lang/String;Z)V
    //   285: iload_1
    //   286: ifeq +42 -> 328
    //   289: ldc 26
    //   291: new 110	java/lang/StringBuilder
    //   294: dup
    //   295: invokespecial 353	java/lang/StringBuilder:<init>	()V
    //   298: aload_3
    //   299: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: ldc_w 478
    //   305: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   311: invokestatic 90	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   314: invokestatic 463	com/mi/milink/sdk/base/os/Native:getDefaultVersionName	()Ljava/lang/String;
    //   317: iconst_1
    //   318: anewarray 61	java/lang/String
    //   321: dup
    //   322: iconst_0
    //   323: aload_3
    //   324: aastore
    //   325: invokestatic 480	com/mi/milink/sdk/base/os/Native:forceCopySoFile	(Ljava/lang/String;[Ljava/lang/String;)V
    //   328: aload_2
    //   329: invokevirtual 140	java/io/File:exists	()Z
    //   332: ifne +390 -> 722
    //   335: ldc 26
    //   337: new 110	java/lang/StringBuilder
    //   340: dup
    //   341: invokespecial 353	java/lang/StringBuilder:<init>	()V
    //   344: aload_3
    //   345: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: ldc_w 482
    //   351: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   357: invokestatic 90	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   360: iconst_0
    //   361: ireturn
    //   362: astore 4
    //   364: ldc 26
    //   366: new 110	java/lang/StringBuilder
    //   369: dup
    //   370: ldc_w 461
    //   373: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   376: aload_0
    //   377: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: ldc_w 457
    //   383: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   389: aload 4
    //   391: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   394: goto -283 -> 111
    //   397: astore 4
    //   399: ldc 26
    //   401: new 110	java/lang/StringBuilder
    //   404: dup
    //   405: ldc_w 461
    //   408: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   411: aload_0
    //   412: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: ldc_w 457
    //   418: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   421: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   424: aload 4
    //   426: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   429: goto -318 -> 111
    //   432: iconst_0
    //   433: ireturn
    //   434: ldc 26
    //   436: new 110	java/lang/StringBuilder
    //   439: dup
    //   440: invokespecial 353	java/lang/StringBuilder:<init>	()V
    //   443: aload_3
    //   444: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   447: ldc_w 484
    //   450: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   453: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   456: invokestatic 90	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   459: invokestatic 463	com/mi/milink/sdk/base/os/Native:getDefaultVersionName	()Ljava/lang/String;
    //   462: iconst_1
    //   463: anewarray 61	java/lang/String
    //   466: dup
    //   467: iconst_0
    //   468: aload_3
    //   469: aastore
    //   470: invokestatic 480	com/mi/milink/sdk/base/os/Native:forceCopySoFile	(Ljava/lang/String;[Ljava/lang/String;)V
    //   473: goto -324 -> 149
    //   476: astore 4
    //   478: ldc 26
    //   480: new 110	java/lang/StringBuilder
    //   483: dup
    //   484: invokespecial 353	java/lang/StringBuilder:<init>	()V
    //   487: aload_3
    //   488: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   491: ldc_w 486
    //   494: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   500: aload 4
    //   502: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   505: goto -356 -> 149
    //   508: astore 4
    //   510: ldc 26
    //   512: new 110	java/lang/StringBuilder
    //   515: dup
    //   516: invokespecial 353	java/lang/StringBuilder:<init>	()V
    //   519: aload_3
    //   520: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   523: ldc_w 486
    //   526: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   529: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   532: aload 4
    //   534: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   537: goto -388 -> 149
    //   540: astore 4
    //   542: ldc 26
    //   544: new 110	java/lang/StringBuilder
    //   547: dup
    //   548: ldc_w 461
    //   551: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   554: aload_2
    //   555: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   558: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   561: ldc_w 471
    //   564: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   567: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   570: aload 4
    //   572: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   575: goto -332 -> 243
    //   578: astore 4
    //   580: ldc 26
    //   582: new 110	java/lang/StringBuilder
    //   585: dup
    //   586: ldc_w 461
    //   589: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   592: aload_2
    //   593: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   596: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   599: ldc_w 471
    //   602: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   605: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   608: aload 4
    //   610: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   613: goto -370 -> 243
    //   616: aload_3
    //   617: invokestatic 488	com/mi/milink/sdk/base/os/Native:isSameLength	(Ljava/lang/String;)Z
    //   620: ifne +16 -> 636
    //   623: ldc 26
    //   625: ldc_w 490
    //   628: invokestatic 90	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   631: iconst_1
    //   632: istore_1
    //   633: goto -366 -> 267
    //   636: aload_3
    //   637: invokestatic 492	com/mi/milink/sdk/base/os/Native:isSameMd5	(Ljava/lang/String;)Z
    //   640: ifne +246 -> 886
    //   643: ldc 26
    //   645: ldc_w 494
    //   648: invokestatic 90	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   651: iconst_1
    //   652: istore_1
    //   653: goto -386 -> 267
    //   656: iconst_0
    //   657: ireturn
    //   658: astore 4
    //   660: ldc 26
    //   662: new 110	java/lang/StringBuilder
    //   665: dup
    //   666: invokespecial 353	java/lang/StringBuilder:<init>	()V
    //   669: aload_3
    //   670: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   673: ldc_w 496
    //   676: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   679: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   682: aload 4
    //   684: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   687: goto -359 -> 328
    //   690: astore 4
    //   692: ldc 26
    //   694: new 110	java/lang/StringBuilder
    //   697: dup
    //   698: invokespecial 353	java/lang/StringBuilder:<init>	()V
    //   701: aload_3
    //   702: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   705: ldc_w 496
    //   708: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   711: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   714: aload 4
    //   716: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   719: goto -391 -> 328
    //   722: aload_2
    //   723: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   726: astore_3
    //   727: ldc 26
    //   729: new 110	java/lang/StringBuilder
    //   732: dup
    //   733: ldc_w 455
    //   736: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   739: aload_3
    //   740: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   743: ldc_w 498
    //   746: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   749: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   752: invokestatic 90	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   755: aload_3
    //   756: invokestatic 474	java/lang/System:load	(Ljava/lang/String;)V
    //   759: getstatic 37	com/mi/milink/sdk/base/os/Native:REAL_SO_PATH	Ljava/util/HashMap;
    //   762: aload_0
    //   763: aload_3
    //   764: invokevirtual 453	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   767: pop
    //   768: iconst_1
    //   769: ireturn
    //   770: astore_3
    //   771: ldc 26
    //   773: new 110	java/lang/StringBuilder
    //   776: dup
    //   777: ldc_w 461
    //   780: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   783: aload_2
    //   784: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   787: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   790: ldc_w 500
    //   793: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   796: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   799: aload_3
    //   800: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   803: getstatic 37	com/mi/milink/sdk/base/os/Native:REAL_SO_PATH	Ljava/util/HashMap;
    //   806: aload_0
    //   807: aconst_null
    //   808: invokevirtual 453	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   811: pop
    //   812: iconst_0
    //   813: ireturn
    //   814: astore_3
    //   815: ldc 26
    //   817: new 110	java/lang/StringBuilder
    //   820: dup
    //   821: ldc_w 461
    //   824: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   827: aload_2
    //   828: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   831: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   834: ldc_w 500
    //   837: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   840: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   843: aload_3
    //   844: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   847: goto -44 -> 803
    //   850: astore_3
    //   851: ldc 26
    //   853: new 110	java/lang/StringBuilder
    //   856: dup
    //   857: ldc_w 461
    //   860: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   863: aload_2
    //   864: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   867: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   870: ldc_w 500
    //   873: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   876: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   879: aload_3
    //   880: invokestatic 389	com/mi/milink/sdk/base/debug/CustomLogcat:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   883: goto -80 -> 803
    //   886: iconst_0
    //   887: istore_1
    //   888: goto -621 -> 267
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	891	0	paramString	String
    //   266	622	1	i	int
    //   35	829	2	localFile	File
    //   23	741	3	str1	String
    //   770	30	3	localUnsatisfiedLinkError1	UnsatisfiedLinkError
    //   814	30	3	localException1	Exception
    //   850	30	3	localError1	Error
    //   79	28	4	localUnsatisfiedLinkError2	UnsatisfiedLinkError
    //   160	41	4	str2	String
    //   208	31	4	localUnsatisfiedLinkError3	UnsatisfiedLinkError
    //   362	28	4	localException2	Exception
    //   397	28	4	localError2	Error
    //   476	25	4	localNativeException1	NativeException
    //   508	25	4	localException3	Exception
    //   540	31	4	localException4	Exception
    //   578	31	4	localError3	Error
    //   658	25	4	localNativeException2	NativeException
    //   690	25	4	localException5	Exception
    // Exception table:
    //   from	to	target	type
    //   45	77	79	java/lang/UnsatisfiedLinkError
    //   156	206	208	java/lang/UnsatisfiedLinkError
    //   45	77	362	java/lang/Exception
    //   45	77	397	java/lang/Error
    //   459	473	476	com/mi/milink/sdk/base/os/Native$NativeException
    //   459	473	508	java/lang/Exception
    //   156	206	540	java/lang/Exception
    //   156	206	578	java/lang/Error
    //   314	328	658	com/mi/milink/sdk/base/os/Native$NativeException
    //   314	328	690	java/lang/Exception
    //   722	768	770	java/lang/UnsatisfiedLinkError
    //   722	768	814	java/lang/Exception
    //   722	768	850	java/lang/Error
  }
  
  private static void setCopiedInSpecifiedVersion(String paramString1, String paramString2, boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = Global.getSharedPreferences("guarder", 0);
    paramString1 = getCopiedKey(paramString1, paramString2);
    localSharedPreferences.edit().putBoolean(paramString1, paramBoolean).apply();
  }
  
  public static class NativeException
    extends RuntimeException
  {
    private static final long serialVersionUID = 411247780482311098L;
    
    public NativeException() {}
    
    public NativeException(String paramString)
    {
      super();
    }
    
    public NativeException(String paramString, Throwable paramThrowable)
    {
      super(paramThrowable);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\Native.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */