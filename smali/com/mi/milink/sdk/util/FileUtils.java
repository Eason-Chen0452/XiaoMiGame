package com.mi.milink.sdk.util;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class FileUtils
{
  public static final int CPY_BUFFER_SIZE = 4096;
  public static final int ZIP_BUFFER_SIZE = 4096;
  public static final String ZIP_FILE_EXT = ".zip";
  
  /* Error */
  public static boolean copyFile(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: new 23	java/io/FileInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 26	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   8: astore_3
    //   9: new 28	java/io/BufferedOutputStream
    //   12: dup
    //   13: new 30	java/io/FileOutputStream
    //   16: dup
    //   17: aload_1
    //   18: invokespecial 31	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   21: invokespecial 34	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   24: astore_1
    //   25: sipush 4096
    //   28: newarray <illegal type>
    //   30: astore_0
    //   31: aload_3
    //   32: aload_0
    //   33: invokevirtual 38	java/io/FileInputStream:read	([B)I
    //   36: istore_2
    //   37: iconst_m1
    //   38: iload_2
    //   39: if_icmpeq +28 -> 67
    //   42: aload_1
    //   43: aload_0
    //   44: iconst_0
    //   45: iload_2
    //   46: invokevirtual 42	java/io/BufferedOutputStream:write	([BII)V
    //   49: goto -18 -> 31
    //   52: astore_0
    //   53: aload_1
    //   54: astore_0
    //   55: aload_0
    //   56: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   59: pop
    //   60: aload_3
    //   61: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   64: pop
    //   65: iconst_0
    //   66: ireturn
    //   67: aload_1
    //   68: invokevirtual 51	java/io/BufferedOutputStream:flush	()V
    //   71: aload_1
    //   72: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   75: pop
    //   76: aload_3
    //   77: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   80: pop
    //   81: iconst_1
    //   82: ireturn
    //   83: astore_0
    //   84: aconst_null
    //   85: astore_1
    //   86: aconst_null
    //   87: astore_3
    //   88: aload_1
    //   89: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   92: pop
    //   93: aload_3
    //   94: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   97: pop
    //   98: aload_0
    //   99: athrow
    //   100: astore_0
    //   101: aconst_null
    //   102: astore_1
    //   103: goto -15 -> 88
    //   106: astore_0
    //   107: goto -19 -> 88
    //   110: astore_0
    //   111: aconst_null
    //   112: astore_0
    //   113: aconst_null
    //   114: astore_3
    //   115: goto -60 -> 55
    //   118: astore_0
    //   119: aconst_null
    //   120: astore_0
    //   121: goto -66 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	paramFile1	File
    //   0	124	1	paramFile2	File
    //   36	10	2	i	int
    //   8	107	3	localFileInputStream	FileInputStream
    // Exception table:
    //   from	to	target	type
    //   25	31	52	java/io/IOException
    //   31	37	52	java/io/IOException
    //   42	49	52	java/io/IOException
    //   67	71	52	java/io/IOException
    //   0	9	83	finally
    //   9	25	100	finally
    //   25	31	106	finally
    //   31	37	106	finally
    //   42	49	106	finally
    //   67	71	106	finally
    //   0	9	110	java/io/IOException
    //   9	25	118	java/io/IOException
  }
  
  public static boolean deleteFile(File paramFile)
  {
    int i = 0;
    if (paramFile != null)
    {
      if (!paramFile.isFile()) {
        break label28;
      }
      if (paramFile.delete()) {
        break label26;
      }
      paramFile.deleteOnExit();
    }
    label26:
    label28:
    while (!paramFile.isDirectory())
    {
      return false;
      return true;
    }
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile != null)
    {
      int j = arrayOfFile.length;
      while (i < j)
      {
        deleteFile(arrayOfFile[i]);
        i += 1;
      }
    }
    return paramFile.delete();
  }
  
  public static void doZip(ZipOutputStream paramZipOutputStream, File paramFile, String paramString, byte[] paramArrayOfByte)
    throws IOException
  {
    int i = 0;
    if ((paramZipOutputStream == null) || (paramFile == null)) {
      throw new IOException("I/O Object got NullPointerException");
    }
    if (!paramFile.exists()) {
      throw new FileNotFoundException("Target File is missing");
    }
    if (CommonUtils.isTextEmpty(paramString)) {
      paramString = paramFile.getName();
    }
    while (paramFile.isFile())
    {
      try
      {
        paramFile = new BufferedInputStream(new FileInputStream(paramFile));
        try
        {
          paramZipOutputStream.putNextEntry(new ZipEntry(paramString));
          for (;;)
          {
            i = paramFile.read(paramArrayOfByte, 0, paramArrayOfByte.length);
            if (-1 == i) {
              break;
            }
            paramZipOutputStream.write(paramArrayOfByte, 0, i);
          }
          CommonUtils.closeDataObject(paramFile);
        }
        catch (IOException paramZipOutputStream) {}
      }
      catch (IOException paramZipOutputStream)
      {
        for (;;)
        {
          paramFile = null;
        }
      }
      throw paramZipOutputStream;
      paramString = paramString + File.separator + paramFile.getName();
      continue;
      CommonUtils.closeDataObject(paramFile);
    }
    for (;;)
    {
      return;
      if (paramFile.isDirectory())
      {
        paramFile = paramFile.listFiles();
        int j = paramFile.length;
        while (i < j)
        {
          doZip(paramZipOutputStream, paramFile[i], paramString, paramArrayOfByte);
          i += 1;
        }
      }
    }
  }
  
  public static byte[] readBytesFromFile(File paramFile)
    throws Exception
  {
    if (paramFile == null) {
      throw new NullPointerException("file is null ");
    }
    if (!paramFile.exists()) {
      throw new FileNotFoundException("file " + paramFile.getAbsolutePath() + " is not exist");
    }
    if (!paramFile.canRead()) {
      throw new IOException("file " + paramFile.getAbsolutePath() + " is not readable");
    }
    paramFile = new FileInputStream(paramFile);
    byte[] arrayOfByte1 = new byte['Ȁ'];
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      for (;;)
      {
        int i = paramFile.read(arrayOfByte1);
        if (i <= 0) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
      arrayOfByte2 = localByteArrayOutputStream.toByteArray();
    }
    finally
    {
      CommonUtils.closeDataObject(paramFile);
      CommonUtils.closeDataObject(localByteArrayOutputStream);
    }
    byte[] arrayOfByte2;
    CommonUtils.closeDataObject(paramFile);
    CommonUtils.closeDataObject(localByteArrayOutputStream);
    return arrayOfByte2;
  }
  
  public static String readStringFromFile(File paramFile)
    throws IOException
  {
    if (paramFile == null) {
      return null;
    }
    try
    {
      localBufferedReader = new BufferedReader(new FileReader(paramFile));
      try
      {
        paramFile = new StringBuilder();
        for (;;)
        {
          String str = localBufferedReader.readLine();
          if (str == null) {
            break;
          }
          paramFile.append(str);
          paramFile.append("\n");
        }
        CommonUtils.closeDataObject(localBufferedReader);
      }
      finally {}
    }
    finally
    {
      for (;;)
      {
        BufferedReader localBufferedReader = null;
      }
    }
    throw paramFile;
    paramFile = paramFile.toString();
    CommonUtils.closeDataObject(localBufferedReader);
    return paramFile;
  }
  
  public static void saveBytes2File(File paramFile, byte[] paramArrayOfByte)
    throws Exception
  {
    if (paramFile == null) {
      throw new NullPointerException("file is null ");
    }
    if (!paramFile.exists()) {
      paramFile.createNewFile();
    }
    if (!paramFile.canWrite()) {
      throw new IOException("file " + paramFile.getAbsolutePath() + " is not writeable");
    }
    paramFile = new FileOutputStream(paramFile);
    try
    {
      paramFile.write(paramArrayOfByte);
      return;
    }
    finally
    {
      CommonUtils.closeDataObject(paramFile);
    }
  }
  
  /* Error */
  public static boolean unjar(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +19 -> 20
    //   4: aload_0
    //   5: invokevirtual 194	java/io/File:length	()J
    //   8: lconst_1
    //   9: lcmp
    //   10: iflt +10 -> 20
    //   13: aload_0
    //   14: invokevirtual 151	java/io/File:canRead	()Z
    //   17: ifne +5 -> 22
    //   20: iconst_0
    //   21: ireturn
    //   22: aload_1
    //   23: invokevirtual 84	java/io/File:exists	()Z
    //   26: ifne +8 -> 34
    //   29: aload_1
    //   30: invokevirtual 197	java/io/File:mkdirs	()Z
    //   33: pop
    //   34: sipush 8192
    //   37: newarray <illegal type>
    //   39: astore 5
    //   41: new 199	java/util/jar/JarInputStream
    //   44: dup
    //   45: new 23	java/io/FileInputStream
    //   48: dup
    //   49: aload_0
    //   50: invokespecial 26	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   53: invokespecial 200	java/util/jar/JarInputStream:<init>	(Ljava/io/InputStream;)V
    //   56: astore 4
    //   58: aconst_null
    //   59: astore_0
    //   60: aload 4
    //   62: invokevirtual 204	java/util/jar/JarInputStream:getNextJarEntry	()Ljava/util/jar/JarEntry;
    //   65: astore_3
    //   66: aload_3
    //   67: ifnull +121 -> 188
    //   70: getstatic 210	java/lang/System:out	Ljava/io/PrintStream;
    //   73: aload_3
    //   74: invokevirtual 213	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   77: invokevirtual 218	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   80: aload_3
    //   81: invokevirtual 219	java/util/jar/JarEntry:isDirectory	()Z
    //   84: ifeq +36 -> 120
    //   87: new 55	java/io/File
    //   90: dup
    //   91: aload_1
    //   92: aload_3
    //   93: invokevirtual 213	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   96: invokespecial 222	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   99: invokevirtual 197	java/io/File:mkdirs	()Z
    //   102: pop
    //   103: goto -43 -> 60
    //   106: astore_1
    //   107: aload_0
    //   108: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   111: pop
    //   112: aload 4
    //   114: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   117: pop
    //   118: iconst_0
    //   119: ireturn
    //   120: new 28	java/io/BufferedOutputStream
    //   123: dup
    //   124: new 30	java/io/FileOutputStream
    //   127: dup
    //   128: new 55	java/io/File
    //   131: dup
    //   132: aload_1
    //   133: aload_3
    //   134: invokevirtual 213	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   137: invokespecial 222	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   140: invokespecial 31	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   143: invokespecial 34	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   146: astore_3
    //   147: aload 4
    //   149: aload 5
    //   151: iconst_0
    //   152: sipush 8192
    //   155: invokevirtual 223	java/util/jar/JarInputStream:read	([BII)I
    //   158: istore_2
    //   159: iconst_m1
    //   160: iload_2
    //   161: if_icmpeq +14 -> 175
    //   164: aload_3
    //   165: aload 5
    //   167: iconst_0
    //   168: iload_2
    //   169: invokevirtual 42	java/io/BufferedOutputStream:write	([BII)V
    //   172: goto -25 -> 147
    //   175: aload_3
    //   176: invokevirtual 51	java/io/BufferedOutputStream:flush	()V
    //   179: aload_3
    //   180: invokevirtual 226	java/io/BufferedOutputStream:close	()V
    //   183: aload_3
    //   184: astore_0
    //   185: goto -125 -> 60
    //   188: aload 4
    //   190: invokevirtual 229	java/util/jar/JarInputStream:closeEntry	()V
    //   193: aload 4
    //   195: invokevirtual 230	java/util/jar/JarInputStream:close	()V
    //   198: aload_0
    //   199: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   202: pop
    //   203: aload 4
    //   205: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   208: pop
    //   209: iconst_1
    //   210: ireturn
    //   211: astore_1
    //   212: aconst_null
    //   213: astore_0
    //   214: aconst_null
    //   215: astore 4
    //   217: aload_0
    //   218: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   221: pop
    //   222: aload 4
    //   224: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   227: pop
    //   228: aload_1
    //   229: athrow
    //   230: astore_1
    //   231: aload_3
    //   232: astore_0
    //   233: goto -16 -> 217
    //   236: astore_1
    //   237: goto -20 -> 217
    //   240: astore_0
    //   241: aconst_null
    //   242: astore_0
    //   243: aconst_null
    //   244: astore 4
    //   246: goto -139 -> 107
    //   249: astore_0
    //   250: aload_3
    //   251: astore_0
    //   252: goto -145 -> 107
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	255	0	paramFile1	File
    //   0	255	1	paramFile2	File
    //   158	11	2	i	int
    //   65	186	3	localObject	Object
    //   56	189	4	localJarInputStream	java.util.jar.JarInputStream
    //   39	127	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   60	66	106	java/io/IOException
    //   70	103	106	java/io/IOException
    //   120	147	106	java/io/IOException
    //   188	198	106	java/io/IOException
    //   41	58	211	finally
    //   147	159	230	finally
    //   164	172	230	finally
    //   175	183	230	finally
    //   60	66	236	finally
    //   70	103	236	finally
    //   120	147	236	finally
    //   188	198	236	finally
    //   41	58	240	java/io/IOException
    //   147	159	249	java/io/IOException
    //   164	172	249	java/io/IOException
    //   175	183	249	java/io/IOException
  }
  
  /* Error */
  public static boolean unzip(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +19 -> 20
    //   4: aload_0
    //   5: invokevirtual 194	java/io/File:length	()J
    //   8: lconst_1
    //   9: lcmp
    //   10: iflt +10 -> 20
    //   13: aload_0
    //   14: invokevirtual 151	java/io/File:canRead	()Z
    //   17: ifne +5 -> 22
    //   20: iconst_0
    //   21: ireturn
    //   22: aload_1
    //   23: invokevirtual 84	java/io/File:exists	()Z
    //   26: ifne +8 -> 34
    //   29: aload_1
    //   30: invokevirtual 197	java/io/File:mkdirs	()Z
    //   33: pop
    //   34: sipush 8192
    //   37: newarray <illegal type>
    //   39: astore 5
    //   41: new 233	java/util/zip/ZipInputStream
    //   44: dup
    //   45: new 23	java/io/FileInputStream
    //   48: dup
    //   49: aload_0
    //   50: invokespecial 26	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   53: invokespecial 234	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   56: astore 4
    //   58: aconst_null
    //   59: astore_0
    //   60: aload 4
    //   62: invokevirtual 238	java/util/zip/ZipInputStream:getNextEntry	()Ljava/util/zip/ZipEntry;
    //   65: astore_3
    //   66: aload_3
    //   67: ifnull +131 -> 198
    //   70: getstatic 210	java/lang/System:out	Ljava/io/PrintStream;
    //   73: aload_3
    //   74: invokevirtual 239	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   77: invokevirtual 218	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   80: aload_3
    //   81: invokevirtual 240	java/util/zip/ZipEntry:isDirectory	()Z
    //   84: ifeq +36 -> 120
    //   87: new 55	java/io/File
    //   90: dup
    //   91: aload_1
    //   92: aload_3
    //   93: invokevirtual 239	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   96: invokespecial 222	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   99: invokevirtual 197	java/io/File:mkdirs	()Z
    //   102: pop
    //   103: goto -43 -> 60
    //   106: astore_1
    //   107: aload_0
    //   108: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   111: pop
    //   112: aload 4
    //   114: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   117: pop
    //   118: iconst_0
    //   119: ireturn
    //   120: new 55	java/io/File
    //   123: dup
    //   124: aload_1
    //   125: aload_3
    //   126: invokevirtual 239	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   129: invokespecial 222	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   132: astore_3
    //   133: aload_3
    //   134: invokevirtual 244	java/io/File:getParentFile	()Ljava/io/File;
    //   137: invokevirtual 197	java/io/File:mkdirs	()Z
    //   140: pop
    //   141: new 28	java/io/BufferedOutputStream
    //   144: dup
    //   145: new 30	java/io/FileOutputStream
    //   148: dup
    //   149: aload_3
    //   150: invokespecial 31	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   153: invokespecial 34	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   156: astore_3
    //   157: aload 4
    //   159: aload 5
    //   161: iconst_0
    //   162: sipush 8192
    //   165: invokevirtual 245	java/util/zip/ZipInputStream:read	([BII)I
    //   168: istore_2
    //   169: iconst_m1
    //   170: iload_2
    //   171: if_icmpeq +14 -> 185
    //   174: aload_3
    //   175: aload 5
    //   177: iconst_0
    //   178: iload_2
    //   179: invokevirtual 42	java/io/BufferedOutputStream:write	([BII)V
    //   182: goto -25 -> 157
    //   185: aload_3
    //   186: invokevirtual 51	java/io/BufferedOutputStream:flush	()V
    //   189: aload_3
    //   190: invokevirtual 226	java/io/BufferedOutputStream:close	()V
    //   193: aload_3
    //   194: astore_0
    //   195: goto -135 -> 60
    //   198: aload 4
    //   200: invokevirtual 246	java/util/zip/ZipInputStream:closeEntry	()V
    //   203: aload 4
    //   205: invokevirtual 247	java/util/zip/ZipInputStream:close	()V
    //   208: aload_0
    //   209: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   212: pop
    //   213: aload 4
    //   215: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   218: pop
    //   219: iconst_1
    //   220: ireturn
    //   221: astore_1
    //   222: aconst_null
    //   223: astore_0
    //   224: aconst_null
    //   225: astore 4
    //   227: aload_0
    //   228: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   231: pop
    //   232: aload 4
    //   234: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   237: pop
    //   238: aload_1
    //   239: athrow
    //   240: astore_1
    //   241: aload_3
    //   242: astore_0
    //   243: goto -16 -> 227
    //   246: astore_1
    //   247: goto -20 -> 227
    //   250: astore_0
    //   251: aconst_null
    //   252: astore_0
    //   253: aconst_null
    //   254: astore 4
    //   256: goto -149 -> 107
    //   259: astore_0
    //   260: aload_3
    //   261: astore_0
    //   262: goto -155 -> 107
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	265	0	paramFile1	File
    //   0	265	1	paramFile2	File
    //   168	11	2	i	int
    //   65	196	3	localObject	Object
    //   56	199	4	localZipInputStream	java.util.zip.ZipInputStream
    //   39	137	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   60	66	106	java/io/IOException
    //   70	103	106	java/io/IOException
    //   120	157	106	java/io/IOException
    //   198	208	106	java/io/IOException
    //   41	58	221	finally
    //   157	169	240	finally
    //   174	182	240	finally
    //   185	193	240	finally
    //   60	66	246	finally
    //   70	103	246	finally
    //   120	157	246	finally
    //   198	208	246	finally
    //   41	58	250	java/io/IOException
    //   157	169	259	java/io/IOException
    //   174	182	259	java/io/IOException
    //   185	193	259	java/io/IOException
  }
  
  /* Error */
  public static void writeToFile(File paramFile, String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +7 -> 8
    //   4: aload_1
    //   5: ifnonnull +4 -> 9
    //   8: return
    //   9: new 250	java/io/BufferedWriter
    //   12: dup
    //   13: new 252	java/io/FileWriter
    //   16: dup
    //   17: aload_0
    //   18: invokespecial 253	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   21: invokespecial 256	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   24: astore_2
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 258	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   30: aload_2
    //   31: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   34: pop
    //   35: return
    //   36: astore_0
    //   37: aconst_null
    //   38: astore_1
    //   39: aload_1
    //   40: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   43: pop
    //   44: aload_0
    //   45: athrow
    //   46: astore_0
    //   47: aload_2
    //   48: astore_1
    //   49: goto -10 -> 39
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	paramFile	File
    //   0	52	1	paramString	String
    //   24	24	2	localBufferedWriter	java.io.BufferedWriter
    // Exception table:
    //   from	to	target	type
    //   9	25	36	finally
    //   25	30	46	finally
  }
  
  public static boolean zip(File paramFile1, File paramFile2)
  {
    return zip(new File[] { paramFile1 }, paramFile2);
  }
  
  /* Error */
  public static boolean zip(File[] paramArrayOfFile, File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: ifnull +12 -> 16
    //   7: aload_0
    //   8: arraylength
    //   9: ifle +7 -> 16
    //   12: aload_1
    //   13: ifnonnull +5 -> 18
    //   16: iconst_0
    //   17: ireturn
    //   18: sipush 4096
    //   21: newarray <illegal type>
    //   23: astore 5
    //   25: new 107	java/util/zip/ZipOutputStream
    //   28: dup
    //   29: new 28	java/io/BufferedOutputStream
    //   32: dup
    //   33: new 30	java/io/FileOutputStream
    //   36: dup
    //   37: aload_1
    //   38: iconst_0
    //   39: invokespecial 265	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   42: invokespecial 34	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   45: invokespecial 266	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   48: astore_1
    //   49: aload_0
    //   50: arraylength
    //   51: istore_3
    //   52: iconst_0
    //   53: istore_2
    //   54: iload_2
    //   55: iload_3
    //   56: if_icmpge +20 -> 76
    //   59: aload_1
    //   60: aload_0
    //   61: iload_2
    //   62: aaload
    //   63: aconst_null
    //   64: aload 5
    //   66: invokestatic 130	com/mi/milink/sdk/util/FileUtils:doZip	(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V
    //   69: iload_2
    //   70: iconst_1
    //   71: iadd
    //   72: istore_2
    //   73: goto -19 -> 54
    //   76: aload_1
    //   77: invokevirtual 267	java/util/zip/ZipOutputStream:flush	()V
    //   80: aload_1
    //   81: invokevirtual 268	java/util/zip/ZipOutputStream:closeEntry	()V
    //   84: aload_1
    //   85: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   88: pop
    //   89: iconst_1
    //   90: ireturn
    //   91: astore_0
    //   92: aconst_null
    //   93: astore_1
    //   94: aload_1
    //   95: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   98: pop
    //   99: iconst_0
    //   100: ireturn
    //   101: astore_0
    //   102: aload 4
    //   104: astore_1
    //   105: aload_1
    //   106: invokestatic 48	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   109: pop
    //   110: aload_0
    //   111: athrow
    //   112: astore_0
    //   113: goto -8 -> 105
    //   116: astore_0
    //   117: goto -23 -> 94
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	120	0	paramArrayOfFile	File[]
    //   0	120	1	paramFile	File
    //   53	20	2	i	int
    //   51	6	3	j	int
    //   1	102	4	localObject	Object
    //   23	42	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   18	49	91	java/io/IOException
    //   18	49	101	finally
    //   49	52	112	finally
    //   59	69	112	finally
    //   76	84	112	finally
    //   49	52	116	java/io/IOException
    //   59	69	116	java/io/IOException
    //   76	84	116	java/io/IOException
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\util\FileUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */