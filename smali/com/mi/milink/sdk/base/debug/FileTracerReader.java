package com.mi.milink.sdk.base.debug;

import com.mi.milink.sdk.util.FileUtils;
import java.io.File;

public class FileTracerReader
{
  private static final int DEF_BUFFER_SIZE = 8192;
  private static final String TAG = FileTracerReader.class.getSimpleName();
  private FileTracerConfig mConfig;
  
  public FileTracerReader(FileTracer paramFileTracer)
  {
    this(paramFileTracer.getConfig());
  }
  
  public FileTracerReader(FileTracerConfig paramFileTracerConfig)
  {
    setConfig(paramFileTracerConfig);
  }
  
  /* Error */
  private File doPack(long paramLong, File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 46	com/mi/milink/sdk/base/debug/FileTracerReader:getConfig	()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;
    //   4: lload_1
    //   5: invokevirtual 52	com/mi/milink/sdk/base/debug/FileTracerConfig:getWorkFolder	(J)Ljava/io/File;
    //   8: astore 7
    //   10: aload_0
    //   11: invokevirtual 46	com/mi/milink/sdk/base/debug/FileTracerReader:getConfig	()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;
    //   14: aload 7
    //   16: invokevirtual 56	com/mi/milink/sdk/base/debug/FileTracerConfig:getAllBlocksInFolder	(Ljava/io/File;)[Ljava/io/File;
    //   19: astore 11
    //   21: new 58	java/io/File
    //   24: dup
    //   25: aload_3
    //   26: new 60	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   33: aload 7
    //   35: invokevirtual 64	java/io/File:getName	()Ljava/lang/String;
    //   38: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: aload_0
    //   42: invokevirtual 46	com/mi/milink/sdk/base/debug/FileTracerReader:getConfig	()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;
    //   45: invokevirtual 71	com/mi/milink/sdk/base/debug/FileTracerConfig:getFileExt	()Ljava/lang/String;
    //   48: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokespecial 77	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   57: astore 12
    //   59: aload 12
    //   61: invokevirtual 81	java/io/File:exists	()Z
    //   64: ifeq +9 -> 73
    //   67: aload 12
    //   69: invokevirtual 84	java/io/File:delete	()Z
    //   72: pop
    //   73: aload 11
    //   75: ifnonnull +12 -> 87
    //   78: aload 12
    //   80: invokevirtual 87	java/io/File:createNewFile	()Z
    //   83: pop
    //   84: aload 12
    //   86: areturn
    //   87: aload_0
    //   88: invokevirtual 46	com/mi/milink/sdk/base/debug/FileTracerReader:getConfig	()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;
    //   91: aload 11
    //   93: invokevirtual 91	com/mi/milink/sdk/base/debug/FileTracerConfig:sortBlocksByIndex	([Ljava/io/File;)[Ljava/io/File;
    //   96: pop
    //   97: sipush 8192
    //   100: newarray <illegal type>
    //   102: astore 13
    //   104: new 93	java/io/BufferedOutputStream
    //   107: dup
    //   108: new 95	java/io/FileOutputStream
    //   111: dup
    //   112: aload 12
    //   114: iconst_1
    //   115: invokespecial 98	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   118: invokespecial 101	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   121: astore 8
    //   123: aload 11
    //   125: arraylength
    //   126: istore 5
    //   128: iconst_0
    //   129: istore 4
    //   131: aconst_null
    //   132: astore_3
    //   133: iload 4
    //   135: iload 5
    //   137: if_icmpge +126 -> 263
    //   140: aload 11
    //   142: iload 4
    //   144: aaload
    //   145: astore 7
    //   147: aload_3
    //   148: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   151: pop
    //   152: new 109	java/io/BufferedInputStream
    //   155: dup
    //   156: new 111	java/io/FileInputStream
    //   159: dup
    //   160: aload 7
    //   162: invokespecial 114	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   165: invokespecial 117	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   168: astore 7
    //   170: aload 8
    //   172: astore 9
    //   174: aload 7
    //   176: astore 10
    //   178: aload 7
    //   180: aload 13
    //   182: iconst_0
    //   183: sipush 8192
    //   186: invokevirtual 121	java/io/BufferedInputStream:read	([BII)I
    //   189: istore 6
    //   191: iload 6
    //   193: ifle +58 -> 251
    //   196: aload 8
    //   198: astore 9
    //   200: aload 7
    //   202: astore 10
    //   204: aload 8
    //   206: aload 13
    //   208: iconst_0
    //   209: iload 6
    //   211: invokevirtual 125	java/io/BufferedOutputStream:write	([BII)V
    //   214: goto -44 -> 170
    //   217: astore 9
    //   219: aload 7
    //   221: astore_3
    //   222: aload 9
    //   224: astore 7
    //   226: aload 8
    //   228: astore 9
    //   230: aload_3
    //   231: astore 10
    //   233: aload 7
    //   235: invokevirtual 128	java/io/IOException:printStackTrace	()V
    //   238: aload 8
    //   240: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   243: pop
    //   244: aload_3
    //   245: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   248: pop
    //   249: aconst_null
    //   250: areturn
    //   251: iload 4
    //   253: iconst_1
    //   254: iadd
    //   255: istore 4
    //   257: aload 7
    //   259: astore_3
    //   260: goto -127 -> 133
    //   263: aload 8
    //   265: invokevirtual 131	java/io/BufferedOutputStream:flush	()V
    //   268: aload 8
    //   270: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   273: pop
    //   274: aload_3
    //   275: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   278: pop
    //   279: aload 12
    //   281: areturn
    //   282: astore 7
    //   284: aconst_null
    //   285: astore 8
    //   287: aconst_null
    //   288: astore_3
    //   289: aload 8
    //   291: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   294: pop
    //   295: aload_3
    //   296: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   299: pop
    //   300: aload 7
    //   302: athrow
    //   303: astore_3
    //   304: aload 12
    //   306: areturn
    //   307: astore 7
    //   309: aconst_null
    //   310: astore_3
    //   311: goto -22 -> 289
    //   314: astore 7
    //   316: aload 10
    //   318: astore_3
    //   319: aload 9
    //   321: astore 8
    //   323: goto -34 -> 289
    //   326: astore 7
    //   328: goto -39 -> 289
    //   331: astore 7
    //   333: aconst_null
    //   334: astore 8
    //   336: aconst_null
    //   337: astore_3
    //   338: goto -112 -> 226
    //   341: astore 7
    //   343: aconst_null
    //   344: astore_3
    //   345: goto -119 -> 226
    //   348: astore 7
    //   350: goto -124 -> 226
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	353	0	this	FileTracerReader
    //   0	353	1	paramLong	long
    //   0	353	3	paramFile	File
    //   129	127	4	i	int
    //   126	12	5	j	int
    //   189	21	6	k	int
    //   8	250	7	localObject1	Object
    //   282	19	7	localObject2	Object
    //   307	1	7	localObject3	Object
    //   314	1	7	localObject4	Object
    //   326	1	7	localObject5	Object
    //   331	1	7	localIOException1	java.io.IOException
    //   341	1	7	localIOException2	java.io.IOException
    //   348	1	7	localIOException3	java.io.IOException
    //   121	214	8	localObject6	Object
    //   172	27	9	localObject7	Object
    //   217	6	9	localIOException4	java.io.IOException
    //   228	92	9	localObject8	Object
    //   176	141	10	localObject9	Object
    //   19	122	11	arrayOfFile	File[]
    //   57	248	12	localFile	File
    //   102	105	13	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   178	191	217	java/io/IOException
    //   204	214	217	java/io/IOException
    //   104	123	282	finally
    //   78	84	303	java/io/IOException
    //   123	128	307	finally
    //   178	191	314	finally
    //   204	214	314	finally
    //   233	238	314	finally
    //   147	170	326	finally
    //   263	268	326	finally
    //   104	123	331	java/io/IOException
    //   123	128	341	java/io/IOException
    //   147	170	348	java/io/IOException
    //   263	268	348	java/io/IOException
  }
  
  public FileTracerConfig getConfig()
  {
    return this.mConfig;
  }
  
  public File pack(long paramLong, File paramFile)
  {
    return pack(paramLong, paramFile, true);
  }
  
  public File pack(long paramLong, File paramFile, boolean paramBoolean)
  {
    paramFile = doPack(paramLong, paramFile);
    if (paramFile == null) {}
    File localFile;
    do
    {
      return null;
      if (!paramBoolean) {
        break;
      }
      localFile = new File(paramFile.getAbsolutePath() + ".zip");
    } while (!FileUtils.zip(paramFile, localFile));
    return localFile;
    return paramFile;
  }
  
  /* Error */
  @Deprecated
  public boolean read(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, ReaderCallback paramReaderCallback)
  {
    // Byte code:
    //   0: aload 7
    //   2: ifnonnull +5 -> 7
    //   5: iconst_0
    //   6: ireturn
    //   7: aload_3
    //   8: astore 11
    //   10: aload_3
    //   11: ifnonnull +10 -> 21
    //   14: sipush 8192
    //   17: newarray <illegal type>
    //   19: astore 11
    //   21: iconst_0
    //   22: istore 8
    //   24: aload_0
    //   25: invokevirtual 46	com/mi/milink/sdk/base/debug/FileTracerReader:getConfig	()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;
    //   28: lload_1
    //   29: invokevirtual 52	com/mi/milink/sdk/base/debug/FileTracerConfig:getWorkFolder	(J)Ljava/io/File;
    //   32: astore_3
    //   33: aload_0
    //   34: invokevirtual 46	com/mi/milink/sdk/base/debug/FileTracerReader:getConfig	()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;
    //   37: aload_3
    //   38: invokevirtual 56	com/mi/milink/sdk/base/debug/FileTracerConfig:getAllBlocksInFolder	(Ljava/io/File;)[Ljava/io/File;
    //   41: astore 12
    //   43: aload 12
    //   45: ifnonnull +5 -> 50
    //   48: iconst_0
    //   49: ireturn
    //   50: aload_0
    //   51: invokevirtual 46	com/mi/milink/sdk/base/debug/FileTracerReader:getConfig	()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;
    //   54: aload 12
    //   56: invokevirtual 91	com/mi/milink/sdk/base/debug/FileTracerConfig:sortBlocksByIndex	([Ljava/io/File;)[Ljava/io/File;
    //   59: pop
    //   60: aconst_null
    //   61: astore_3
    //   62: iload 4
    //   64: istore 6
    //   66: aload_3
    //   67: astore 9
    //   69: iload 6
    //   71: aload 12
    //   73: arraylength
    //   74: if_icmpge +152 -> 226
    //   77: aload 12
    //   79: iload 6
    //   81: aaload
    //   82: astore 10
    //   84: aload_3
    //   85: astore 9
    //   87: iload 5
    //   89: i2l
    //   90: aload 10
    //   92: invokevirtual 159	java/io/File:length	()J
    //   95: lcmp
    //   96: ifle +20 -> 116
    //   99: aload_3
    //   100: astore 9
    //   102: iload 5
    //   104: aload 10
    //   106: invokevirtual 159	java/io/File:length	()J
    //   109: l2i
    //   110: isub
    //   111: istore 4
    //   113: goto +150 -> 263
    //   116: aload_3
    //   117: astore 9
    //   119: aload_3
    //   120: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   123: pop
    //   124: aload_3
    //   125: astore 9
    //   127: new 109	java/io/BufferedInputStream
    //   130: dup
    //   131: new 111	java/io/FileInputStream
    //   134: dup
    //   135: aload 10
    //   137: invokespecial 114	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   140: invokespecial 117	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   143: astore 10
    //   145: iload 5
    //   147: ifle +109 -> 256
    //   150: iload 5
    //   152: i2l
    //   153: lstore_1
    //   154: aload 10
    //   156: lload_1
    //   157: invokevirtual 163	java/io/BufferedInputStream:skip	(J)J
    //   160: pop2
    //   161: iconst_0
    //   162: istore 4
    //   164: aload 10
    //   166: aload 11
    //   168: iconst_0
    //   169: aload 11
    //   171: arraylength
    //   172: invokevirtual 121	java/io/BufferedInputStream:read	([BII)I
    //   175: istore 5
    //   177: iload 5
    //   179: ifle +38 -> 217
    //   182: aload 7
    //   184: aload_0
    //   185: aload 11
    //   187: iload 5
    //   189: invokeinterface 167 4 0
    //   194: goto -30 -> 164
    //   197: astore 7
    //   199: aload 10
    //   201: astore_3
    //   202: aload_3
    //   203: astore 9
    //   205: aload 7
    //   207: invokevirtual 128	java/io/IOException:printStackTrace	()V
    //   210: aload_3
    //   211: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   214: pop
    //   215: iconst_0
    //   216: ireturn
    //   217: iconst_1
    //   218: istore 8
    //   220: aload 10
    //   222: astore_3
    //   223: goto +40 -> 263
    //   226: aload_3
    //   227: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   230: pop
    //   231: iload 8
    //   233: ireturn
    //   234: astore_3
    //   235: aload 10
    //   237: astore 9
    //   239: aload 9
    //   241: invokestatic 107	com/mi/milink/sdk/util/CommonUtils:closeDataObject	(Ljava/lang/Object;)Z
    //   244: pop
    //   245: aload_3
    //   246: athrow
    //   247: astore_3
    //   248: goto -9 -> 239
    //   251: astore 7
    //   253: goto -51 -> 202
    //   256: iload 5
    //   258: istore 4
    //   260: goto -96 -> 164
    //   263: iload 6
    //   265: iconst_1
    //   266: iadd
    //   267: istore 6
    //   269: iload 4
    //   271: istore 5
    //   273: goto -207 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	276	0	this	FileTracerReader
    //   0	276	1	paramLong	long
    //   0	276	3	paramArrayOfByte	byte[]
    //   0	276	4	paramInt1	int
    //   0	276	5	paramInt2	int
    //   0	276	6	paramInt3	int
    //   0	276	7	paramReaderCallback	ReaderCallback
    //   22	210	8	bool	boolean
    //   67	173	9	localObject1	Object
    //   82	154	10	localObject2	Object
    //   8	178	11	arrayOfByte	byte[]
    //   41	37	12	arrayOfFile	File[]
    // Exception table:
    //   from	to	target	type
    //   154	161	197	java/io/IOException
    //   164	177	197	java/io/IOException
    //   182	194	197	java/io/IOException
    //   154	161	234	finally
    //   164	177	234	finally
    //   182	194	234	finally
    //   69	77	247	finally
    //   87	99	247	finally
    //   102	113	247	finally
    //   119	124	247	finally
    //   127	145	247	finally
    //   205	210	247	finally
    //   69	77	251	java/io/IOException
    //   87	99	251	java/io/IOException
    //   102	113	251	java/io/IOException
    //   119	124	251	java/io/IOException
    //   127	145	251	java/io/IOException
  }
  
  public void setConfig(FileTracerConfig paramFileTracerConfig)
  {
    this.mConfig = paramFileTracerConfig;
  }
  
  @Deprecated
  public static abstract interface ReaderCallback
  {
    public abstract void onTraceRead(FileTracerReader paramFileTracerReader, byte[] paramArrayOfByte, int paramInt);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\FileTracerReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */