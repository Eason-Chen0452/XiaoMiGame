package com.mi.milink.sdk.base.debug;

import com.mi.milink.sdk.debug.MiLinkTracer;
import com.mi.milink.sdk.util.CommonUtils;
import com.mi.milink.sdk.util.FileUtils;
import java.io.File;
import java.io.FileFilter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;

public class FileTracerConfig
{
  public static final int DEF_BUFFER_SIZE = 8192;
  public static final long DEF_FLUSH_INTERVAL = 10000L;
  public static final String DEF_FOLDER_FORMAT = "yyyy-MM-dd";
  public static final String DEF_THREAD_NAME = "Tracer.File";
  public static final String DEF_TRACE_FILEEXT = ".log";
  private static final FileFilter DEF_TRACE_FOLDER_FILTER = new FileTracerConfig.1();
  public static final long FOREVER = 172800000L;
  public static final int NO_LIMITED = Integer.MAX_VALUE;
  public static final int PRIORITY_BACKGROUND = 10;
  public static final int PRIORITY_STANDARD = 0;
  private Comparator<? super File> mBlockComparetor = new FileTracerConfig.3(this);
  private String mFileExt = ".log";
  private long mFlushInterval = 10000L;
  private long mKeepPeriod = 172800000L;
  private FileFilter mLogFileFilter = new FileTracerConfig.2(this);
  private int mMaxBlockCount = Integer.MAX_VALUE;
  private int mMaxBlockSize = Integer.MAX_VALUE;
  private int mMaxBufferSize = 8192;
  private File mRootFolder;
  private String mThreadName = "Tracer.File";
  private int mThreadPriority = 10;
  
  public FileTracerConfig(File paramFile)
  {
    this(paramFile, Integer.MAX_VALUE, Integer.MAX_VALUE, 8192, "Tracer.File", 10000L, 10, ".log", 172800000L);
  }
  
  public FileTracerConfig(File paramFile, int paramInt1, int paramInt2, int paramInt3, String paramString1, long paramLong1, int paramInt4, String paramString2, long paramLong2)
  {
    setRootFolder(paramFile);
    setMaxBlockCount(paramInt1);
    setMaxBlockSize(paramInt2);
    setMaxBufferSize(paramInt3);
    setThreadName(paramString1);
    setFlushInterval(paramLong1);
    setThreadPriority(paramInt4);
    setFileExt(paramString2);
    setKeepPeriod(paramLong2);
  }
  
  private File ensureBlockCount(File paramFile)
  {
    File[] arrayOfFile = getAllBlocksInFolder(paramFile);
    if ((arrayOfFile == null) || (arrayOfFile.length == 0))
    {
      paramFile = new File(paramFile, "1" + getFileExt());
      return paramFile;
    }
    sortBlocksByIndex(arrayOfFile);
    File localFile2 = arrayOfFile[(arrayOfFile.length - 1)];
    int j = arrayOfFile.length - getMaxBlockCount();
    int i = j;
    File localFile1 = localFile2;
    if ((int)localFile2.length() > getMaxBlockSize())
    {
      i = getBlockCountFromFile(localFile2);
      localFile1 = new File(paramFile, i + 1 + getFileExt());
      i = j + 1;
    }
    j = 0;
    for (;;)
    {
      paramFile = localFile1;
      if (j >= i) {
        break;
      }
      arrayOfFile[j].delete();
      j += 1;
    }
  }
  
  private static int getBlockCountFromFile(File paramFile)
  {
    try
    {
      paramFile = paramFile.getName();
      int i = Integer.parseInt(paramFile.substring(0, paramFile.indexOf('.')));
      return i;
    }
    catch (Exception paramFile) {}
    return -1;
  }
  
  public static long getTimeFromFolder(File paramFile)
  {
    try
    {
      long l = CommonUtils.createDataFormat("yyyy-MM-dd").parse(paramFile.getName()).getTime();
      return l;
    }
    catch (Exception paramFile) {}
    return -1L;
  }
  
  private File getWorkFile(long paramLong)
  {
    return ensureBlockCount(getWorkFolder(paramLong));
  }
  
  private File getWorkFolderPath(long paramLong)
  {
    return new File(getRootFolder(), CommonUtils.createDataFormat("yyyy-MM-dd").format(Long.valueOf(paramLong)));
  }
  
  public void cleanWorkFolders()
  {
    int j = 0;
    if (getRootFolder() == null) {}
    for (;;)
    {
      return;
      try
      {
        File[] arrayOfFile1 = getRootFolder().listFiles(DEF_TRACE_FOLDER_FILTER);
        if (arrayOfFile1 == null) {
          continue;
        }
        k = arrayOfFile1.length;
        i = 0;
        while (i < k)
        {
          File localFile = arrayOfFile1[i];
          long l = getTimeFromFolder(localFile);
          if (System.currentTimeMillis() - l > getKeepPeriod()) {
            FileUtils.deleteFile(localFile);
          }
          i += 1;
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        return;
      }
      catch (OutOfMemoryError localOutOfMemoryError1)
      {
        try
        {
          File[] arrayOfFile2 = MiLinkTracer.getLogFileFolderPath().listFiles();
          if (arrayOfFile2 == null) {
            continue;
          }
          int k = arrayOfFile2.length;
          int i = j;
          while (i < k)
          {
            FileUtils.deleteFile(arrayOfFile2[i]);
            i += 1;
          }
          return;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          return;
        }
        catch (OutOfMemoryError localOutOfMemoryError2)
        {
          localOutOfMemoryError2.printStackTrace();
        }
      }
    }
  }
  
  public File[] getAllBlocksInFolder(File paramFile)
  {
    return paramFile.listFiles(this.mLogFileFilter);
  }
  
  public File getCurrFile()
  {
    return getWorkFile(System.currentTimeMillis());
  }
  
  public String getFileExt()
  {
    return this.mFileExt;
  }
  
  public long getFlushInterval()
  {
    return this.mFlushInterval;
  }
  
  public long getKeepPeriod()
  {
    return this.mKeepPeriod;
  }
  
  public int getMaxBlockCount()
  {
    return this.mMaxBlockCount;
  }
  
  public int getMaxBlockSize()
  {
    return this.mMaxBlockSize;
  }
  
  public int getMaxBufferSize()
  {
    return this.mMaxBufferSize;
  }
  
  public File getRootFolder()
  {
    return this.mRootFolder;
  }
  
  public long getSizeOfBlocks(File paramFile)
  {
    ensureBlockCount(paramFile);
    return getSizeOfBlocks(getAllBlocksInFolder(paramFile));
  }
  
  public long getSizeOfBlocks(File[] paramArrayOfFile)
  {
    long l1 = 0L;
    int j = paramArrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      File localFile = paramArrayOfFile[i];
      long l2 = l1;
      if (localFile.exists())
      {
        l2 = l1;
        if (localFile.isFile()) {
          l2 = l1 + localFile.length();
        }
      }
      i += 1;
      l1 = l2;
    }
    return l1;
  }
  
  public String getThreadName()
  {
    return this.mThreadName;
  }
  
  public int getThreadPriority()
  {
    return this.mThreadPriority;
  }
  
  public File getWorkFolder(long paramLong)
  {
    File localFile = getWorkFolderPath(paramLong);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return localFile;
  }
  
  public boolean isWorkFolderExists(long paramLong)
  {
    return getWorkFolderPath(paramLong).exists();
  }
  
  public void setFileExt(String paramString)
  {
    this.mFileExt = paramString;
  }
  
  public void setFlushInterval(long paramLong)
  {
    this.mFlushInterval = paramLong;
  }
  
  public void setKeepPeriod(long paramLong)
  {
    this.mKeepPeriod = paramLong;
  }
  
  public void setMaxBlockCount(int paramInt)
  {
    this.mMaxBlockCount = paramInt;
  }
  
  public void setMaxBlockSize(int paramInt)
  {
    this.mMaxBlockSize = paramInt;
  }
  
  public void setMaxBufferSize(int paramInt)
  {
    this.mMaxBufferSize = paramInt;
  }
  
  public void setRootFolder(File paramFile)
  {
    this.mRootFolder = paramFile;
  }
  
  public void setThreadName(String paramString)
  {
    this.mThreadName = paramString;
  }
  
  public void setThreadPriority(int paramInt)
  {
    this.mThreadPriority = paramInt;
  }
  
  public File[] sortBlocksByIndex(File[] paramArrayOfFile)
  {
    Arrays.sort(paramArrayOfFile, this.mBlockComparetor);
    return paramArrayOfFile;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\FileTracerConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */