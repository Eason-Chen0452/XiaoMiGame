package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.os.Process;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class TypefaceCompatUtil
{
  private static final String CACHE_FILE_PREFIX = ".font";
  private static final String TAG = "TypefaceCompatUtil";
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  @Nullable
  @RequiresApi(19)
  public static ByteBuffer copyToDirectBuffer(Context paramContext, Resources paramResources, int paramInt)
  {
    paramContext = getTempFile(paramContext);
    if (paramContext == null) {
      return null;
    }
    try
    {
      boolean bool = copyToFile(paramContext, paramResources, paramInt);
      if (!bool) {
        return null;
      }
      paramResources = mmap(paramContext);
      return paramResources;
    }
    finally
    {
      paramContext.delete();
    }
  }
  
  public static boolean copyToFile(File paramFile, Resources paramResources, int paramInt)
  {
    Resources localResources = null;
    try
    {
      paramResources = paramResources.openRawResource(paramInt);
      localResources = paramResources;
      boolean bool = copyToFile(paramFile, paramResources);
      return bool;
    }
    finally
    {
      closeQuietly(localResources);
    }
  }
  
  /* Error */
  public static boolean copyToFile(File paramFile, java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: new 66	java/io/FileOutputStream
    //   8: dup
    //   9: aload_0
    //   10: iconst_0
    //   11: invokespecial 69	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   14: astore_0
    //   15: sipush 1024
    //   18: newarray <illegal type>
    //   20: astore_3
    //   21: aload_1
    //   22: aload_3
    //   23: invokevirtual 75	java/io/InputStream:read	([B)I
    //   26: istore_2
    //   27: iload_2
    //   28: iconst_m1
    //   29: if_icmpeq +50 -> 79
    //   32: aload_0
    //   33: aload_3
    //   34: iconst_0
    //   35: iload_2
    //   36: invokevirtual 79	java/io/FileOutputStream:write	([BII)V
    //   39: goto -18 -> 21
    //   42: astore_1
    //   43: aload_0
    //   44: astore_3
    //   45: ldc 15
    //   47: new 81	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   54: ldc 84
    //   56: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_1
    //   60: invokevirtual 92	java/io/IOException:getMessage	()Ljava/lang/String;
    //   63: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokestatic 101	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   72: pop
    //   73: aload_0
    //   74: invokestatic 64	android/support/v4/graphics/TypefaceCompatUtil:closeQuietly	(Ljava/io/Closeable;)V
    //   77: iconst_0
    //   78: ireturn
    //   79: aload_0
    //   80: invokestatic 64	android/support/v4/graphics/TypefaceCompatUtil:closeQuietly	(Ljava/io/Closeable;)V
    //   83: iconst_1
    //   84: ireturn
    //   85: astore_0
    //   86: aload_3
    //   87: invokestatic 64	android/support/v4/graphics/TypefaceCompatUtil:closeQuietly	(Ljava/io/Closeable;)V
    //   90: aload_0
    //   91: athrow
    //   92: astore_1
    //   93: aload_0
    //   94: astore_3
    //   95: aload_1
    //   96: astore_0
    //   97: goto -11 -> 86
    //   100: astore_1
    //   101: aload 4
    //   103: astore_0
    //   104: goto -61 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	paramFile	File
    //   0	107	1	paramInputStream	java.io.InputStream
    //   26	10	2	i	int
    //   1	94	3	localObject1	Object
    //   3	99	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   15	21	42	java/io/IOException
    //   21	27	42	java/io/IOException
    //   32	39	42	java/io/IOException
    //   5	15	85	finally
    //   45	73	85	finally
    //   15	21	92	finally
    //   21	27	92	finally
    //   32	39	92	finally
    //   5	15	100	java/io/IOException
  }
  
  @Nullable
  public static File getTempFile(Context paramContext)
  {
    String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
    int i = 0;
    while (i < 100)
    {
      File localFile = new File(paramContext.getCacheDir(), str + i);
      try
      {
        boolean bool = localFile.createNewFile();
        if (bool) {
          return localFile;
        }
      }
      catch (IOException localIOException)
      {
        i += 1;
      }
    }
    return null;
  }
  
  /* Error */
  @Nullable
  @RequiresApi(19)
  public static ByteBuffer mmap(Context paramContext, android.os.CancellationSignal paramCancellationSignal, android.net.Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 134	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_0
    //   5: aload_0
    //   6: aload_2
    //   7: ldc -120
    //   9: aload_1
    //   10: invokevirtual 142	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    //   13: astore_2
    //   14: aload_2
    //   15: ifnonnull +35 -> 50
    //   18: aload_2
    //   19: ifnull +11 -> 30
    //   22: iconst_0
    //   23: ifeq +20 -> 43
    //   26: aload_2
    //   27: invokevirtual 145	android/os/ParcelFileDescriptor:close	()V
    //   30: aconst_null
    //   31: astore_1
    //   32: aload_1
    //   33: areturn
    //   34: astore_0
    //   35: new 147	java/lang/NullPointerException
    //   38: dup
    //   39: invokespecial 148	java/lang/NullPointerException:<init>	()V
    //   42: athrow
    //   43: aload_2
    //   44: invokevirtual 145	android/os/ParcelFileDescriptor:close	()V
    //   47: goto -17 -> 30
    //   50: new 150	java/io/FileInputStream
    //   53: dup
    //   54: aload_2
    //   55: invokevirtual 154	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   58: invokespecial 157	java/io/FileInputStream:<init>	(Ljava/io/FileDescriptor;)V
    //   61: astore 5
    //   63: aload 5
    //   65: invokevirtual 161	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   68: astore_0
    //   69: aload_0
    //   70: invokevirtual 167	java/nio/channels/FileChannel:size	()J
    //   73: lstore_3
    //   74: aload_0
    //   75: getstatic 173	java/nio/channels/FileChannel$MapMode:READ_ONLY	Ljava/nio/channels/FileChannel$MapMode;
    //   78: lconst_0
    //   79: lload_3
    //   80: invokevirtual 177	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   83: astore_0
    //   84: aload 5
    //   86: ifnull +12 -> 98
    //   89: iconst_0
    //   90: ifeq +60 -> 150
    //   93: aload 5
    //   95: invokevirtual 178	java/io/FileInputStream:close	()V
    //   98: aload_0
    //   99: astore_1
    //   100: aload_2
    //   101: ifnull -69 -> 32
    //   104: iconst_0
    //   105: ifeq +59 -> 164
    //   108: aload_2
    //   109: invokevirtual 145	android/os/ParcelFileDescriptor:close	()V
    //   112: aload_0
    //   113: areturn
    //   114: astore_0
    //   115: new 147	java/lang/NullPointerException
    //   118: dup
    //   119: invokespecial 148	java/lang/NullPointerException:<init>	()V
    //   122: athrow
    //   123: astore_0
    //   124: new 147	java/lang/NullPointerException
    //   127: dup
    //   128: invokespecial 148	java/lang/NullPointerException:<init>	()V
    //   131: athrow
    //   132: astore_1
    //   133: aload_1
    //   134: athrow
    //   135: astore_0
    //   136: aload_2
    //   137: ifnull +11 -> 148
    //   140: aload_1
    //   141: ifnull +77 -> 218
    //   144: aload_2
    //   145: invokevirtual 145	android/os/ParcelFileDescriptor:close	()V
    //   148: aload_0
    //   149: athrow
    //   150: aload 5
    //   152: invokevirtual 178	java/io/FileInputStream:close	()V
    //   155: goto -57 -> 98
    //   158: astore_0
    //   159: aconst_null
    //   160: astore_1
    //   161: goto -25 -> 136
    //   164: aload_2
    //   165: invokevirtual 145	android/os/ParcelFileDescriptor:close	()V
    //   168: aload_0
    //   169: areturn
    //   170: astore_0
    //   171: aload_0
    //   172: athrow
    //   173: astore_1
    //   174: aload 5
    //   176: ifnull +12 -> 188
    //   179: aload_0
    //   180: ifnull +21 -> 201
    //   183: aload 5
    //   185: invokevirtual 178	java/io/FileInputStream:close	()V
    //   188: aload_1
    //   189: athrow
    //   190: astore 5
    //   192: aload_0
    //   193: aload 5
    //   195: invokevirtual 182	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   198: goto -10 -> 188
    //   201: aload 5
    //   203: invokevirtual 178	java/io/FileInputStream:close	()V
    //   206: goto -18 -> 188
    //   209: astore_2
    //   210: aload_1
    //   211: aload_2
    //   212: invokevirtual 182	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   215: goto -67 -> 148
    //   218: aload_2
    //   219: invokevirtual 145	android/os/ParcelFileDescriptor:close	()V
    //   222: goto -74 -> 148
    //   225: astore_1
    //   226: aconst_null
    //   227: astore_0
    //   228: goto -54 -> 174
    //   231: astore_0
    //   232: aconst_null
    //   233: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	234	0	paramContext	Context
    //   0	234	1	paramCancellationSignal	android.os.CancellationSignal
    //   0	234	2	paramUri	android.net.Uri
    //   73	7	3	l	long
    //   61	123	5	localFileInputStream	FileInputStream
    //   190	12	5	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   26	30	34	java/lang/Throwable
    //   108	112	114	java/lang/Throwable
    //   93	98	123	java/lang/Throwable
    //   50	63	132	java/lang/Throwable
    //   124	132	132	java/lang/Throwable
    //   150	155	132	java/lang/Throwable
    //   188	190	132	java/lang/Throwable
    //   192	198	132	java/lang/Throwable
    //   201	206	132	java/lang/Throwable
    //   133	135	135	finally
    //   50	63	158	finally
    //   93	98	158	finally
    //   124	132	158	finally
    //   150	155	158	finally
    //   183	188	158	finally
    //   188	190	158	finally
    //   192	198	158	finally
    //   201	206	158	finally
    //   63	84	170	java/lang/Throwable
    //   171	173	173	finally
    //   183	188	190	java/lang/Throwable
    //   144	148	209	java/lang/Throwable
    //   63	84	225	finally
    //   5	14	231	java/io/IOException
    //   26	30	231	java/io/IOException
    //   35	43	231	java/io/IOException
    //   43	47	231	java/io/IOException
    //   108	112	231	java/io/IOException
    //   115	123	231	java/io/IOException
    //   144	148	231	java/io/IOException
    //   148	150	231	java/io/IOException
    //   164	168	231	java/io/IOException
    //   210	215	231	java/io/IOException
    //   218	222	231	java/io/IOException
  }
  
  @Nullable
  @RequiresApi(19)
  private static ByteBuffer mmap(File paramFile)
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      try
      {
        paramFile = localFileInputStream.getChannel();
        long l = paramFile.size();
        paramFile = paramFile.map(FileChannel.MapMode.READ_ONLY, 0L, l);
        if ((localFileInputStream == null) || (0 != 0)) {
          try
          {
            localFileInputStream.close();
            return paramFile;
          }
          catch (Throwable paramFile)
          {
            throw new NullPointerException();
          }
        }
        localFileInputStream.close();
        return paramFile;
      }
      catch (Throwable paramFile)
      {
        paramFile = paramFile;
        try
        {
          throw paramFile;
        }
        finally
        {
          if ((localFileInputStream == null) || (paramFile != null)) {
            try
            {
              localFileInputStream.close();
              throw ((Throwable)localObject1);
            }
            catch (Throwable localThrowable)
            {
              for (;;)
              {
                paramFile.addSuppressed(localThrowable);
              }
            }
          }
          localThrowable.close();
        }
      }
      finally
      {
        for (;;)
        {
          localObject2 = finally;
          paramFile = null;
        }
      }
      return null;
    }
    catch (IOException paramFile) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\android\support\v4\graphics\TypefaceCompatUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */