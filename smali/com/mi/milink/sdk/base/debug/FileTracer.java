package com.mi.milink.sdk.base.debug;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import com.mi.milink.sdk.base.data.SafeStringQueue;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.channels.FileChannel;

public class FileTracer
  extends Tracer
  implements Handler.Callback
{
  private static final int MSG_FLUSH = 1024;
  private static final String TAG = FileTracer.class.getSimpleName();
  private volatile SafeStringQueue mBufferA;
  private volatile SafeStringQueue mBufferB;
  private char[] mCharBuffer;
  private FileTracerConfig mConfig;
  private File mCurrTraceFile;
  private FileChannel mFc;
  private OutputStreamWriter mFileWriter;
  private Handler mHandler;
  private HandlerThread mHandlerThread;
  private volatile boolean mIsFlushing = false;
  private volatile SafeStringQueue mReadBuffer;
  private volatile SafeStringQueue mWriteBuffer;
  
  public FileTracer(int paramInt, boolean paramBoolean, TraceFormat paramTraceFormat, FileTracerConfig paramFileTracerConfig)
  {
    super(paramInt, paramBoolean, paramTraceFormat);
    try
    {
      setConfig(paramFileTracerConfig);
      this.mBufferA = new SafeStringQueue();
      this.mBufferB = new SafeStringQueue();
      this.mWriteBuffer = this.mBufferA;
      this.mReadBuffer = this.mBufferB;
      this.mCharBuffer = new char[paramFileTracerConfig.getMaxBufferSize()];
      obtainFileWriter();
      this.mHandlerThread = new HandlerThread(paramFileTracerConfig.getThreadName(), paramFileTracerConfig.getThreadPriority());
      if (this.mHandlerThread != null) {
        this.mHandlerThread.start();
      }
      if (this.mHandlerThread.isAlive()) {
        this.mHandler = new Handler(this.mHandlerThread.getLooper(), this);
      }
      prepareNextFlush();
      this.mHandler.postDelayed(new FileTracer.1(this), 15000L);
      return;
    }
    catch (Exception paramTraceFormat) {}
  }
  
  public FileTracer(FileTracerConfig paramFileTracerConfig)
  {
    this(63, true, TraceFormat.DEFAULT, paramFileTracerConfig);
  }
  
  private void closeFileWriter()
  {
    try
    {
      if (this.mFileWriter != null)
      {
        this.mFc = null;
        this.mFileWriter.flush();
        this.mFileWriter.close();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  /* Error */
  private void flushBuffer()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore 5
    //   8: aconst_null
    //   9: astore 6
    //   11: invokestatic 156	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   14: aload_0
    //   15: getfield 93	com/mi/milink/sdk/base/debug/FileTracer:mHandlerThread	Landroid/os/HandlerThread;
    //   18: if_acmpeq +4 -> 22
    //   21: return
    //   22: aload_0
    //   23: getfield 52	com/mi/milink/sdk/base/debug/FileTracer:mIsFlushing	Z
    //   26: ifne -5 -> 21
    //   29: aload_0
    //   30: iconst_1
    //   31: putfield 52	com/mi/milink/sdk/base/debug/FileTracer:mIsFlushing	Z
    //   34: aload_0
    //   35: invokespecial 159	com/mi/milink/sdk/base/debug/FileTracer:swapBuffers	()V
    //   38: aload 4
    //   40: astore_2
    //   41: aload 5
    //   43: astore_3
    //   44: aload_0
    //   45: invokespecial 80	com/mi/milink/sdk/base/debug/FileTracer:obtainFileWriter	()Ljava/io/Writer;
    //   48: astore 7
    //   50: aload 7
    //   52: ifnull +50 -> 102
    //   55: aload 6
    //   57: astore_1
    //   58: aload 4
    //   60: astore_2
    //   61: aload 5
    //   63: astore_3
    //   64: aload_0
    //   65: getfield 138	com/mi/milink/sdk/base/debug/FileTracer:mFc	Ljava/nio/channels/FileChannel;
    //   68: ifnull +17 -> 85
    //   71: aload 4
    //   73: astore_2
    //   74: aload 5
    //   76: astore_3
    //   77: aload_0
    //   78: getfield 138	com/mi/milink/sdk/base/debug/FileTracer:mFc	Ljava/nio/channels/FileChannel;
    //   81: invokevirtual 165	java/nio/channels/FileChannel:lock	()Ljava/nio/channels/FileLock;
    //   84: astore_1
    //   85: aload_1
    //   86: astore_2
    //   87: aload_1
    //   88: astore_3
    //   89: aload_0
    //   90: getfield 68	com/mi/milink/sdk/base/debug/FileTracer:mReadBuffer	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   93: aload 7
    //   95: aload_0
    //   96: getfield 76	com/mi/milink/sdk/base/debug/FileTracer:mCharBuffer	[C
    //   99: invokevirtual 169	com/mi/milink/sdk/base/data/SafeStringQueue:writeAndFlush	(Ljava/io/Writer;[C)V
    //   102: aload_1
    //   103: ifnull +7 -> 110
    //   106: aload_1
    //   107: invokevirtual 174	java/nio/channels/FileLock:release	()V
    //   110: aload_0
    //   111: getfield 68	com/mi/milink/sdk/base/debug/FileTracer:mReadBuffer	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   114: invokevirtual 177	com/mi/milink/sdk/base/data/SafeStringQueue:clear	()V
    //   117: aload_0
    //   118: iconst_0
    //   119: putfield 52	com/mi/milink/sdk/base/debug/FileTracer:mIsFlushing	Z
    //   122: return
    //   123: astore_1
    //   124: aload_2
    //   125: ifnull +7 -> 132
    //   128: aload_2
    //   129: invokevirtual 174	java/nio/channels/FileLock:release	()V
    //   132: aload_0
    //   133: getfield 68	com/mi/milink/sdk/base/debug/FileTracer:mReadBuffer	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   136: invokevirtual 177	com/mi/milink/sdk/base/data/SafeStringQueue:clear	()V
    //   139: goto -22 -> 117
    //   142: astore_1
    //   143: aload_3
    //   144: ifnull +7 -> 151
    //   147: aload_3
    //   148: invokevirtual 174	java/nio/channels/FileLock:release	()V
    //   151: aload_0
    //   152: getfield 68	com/mi/milink/sdk/base/debug/FileTracer:mReadBuffer	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   155: invokevirtual 177	com/mi/milink/sdk/base/data/SafeStringQueue:clear	()V
    //   158: aload_1
    //   159: athrow
    //   160: astore_1
    //   161: goto -51 -> 110
    //   164: astore_1
    //   165: goto -33 -> 132
    //   168: astore_2
    //   169: goto -18 -> 151
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	this	FileTracer
    //   1	106	1	localObject1	Object
    //   123	1	1	localException1	Exception
    //   142	17	1	localObject2	Object
    //   160	1	1	localException2	Exception
    //   164	1	1	localException3	Exception
    //   40	89	2	localObject3	Object
    //   168	1	2	localException4	Exception
    //   43	105	3	localObject4	Object
    //   3	69	4	localObject5	Object
    //   6	69	5	localObject6	Object
    //   9	47	6	localObject7	Object
    //   48	46	7	localWriter	Writer
    // Exception table:
    //   from	to	target	type
    //   44	50	123	java/lang/Exception
    //   64	71	123	java/lang/Exception
    //   77	85	123	java/lang/Exception
    //   89	102	123	java/lang/Exception
    //   44	50	142	finally
    //   64	71	142	finally
    //   77	85	142	finally
    //   89	102	142	finally
    //   106	110	160	java/lang/Exception
    //   128	132	164	java/lang/Exception
    //   147	151	168	java/lang/Exception
  }
  
  private Writer obtainFileWriter()
  {
    int j = 0;
    Object localObject = getConfig().getCurrFile();
    int i = j;
    if (this.mCurrTraceFile != null) {
      if (this.mCurrTraceFile.exists())
      {
        i = j;
        if (this.mCurrTraceFile.canWrite()) {}
      }
      else
      {
        i = 1;
      }
    }
    if ((i != 0) || ((localObject != null) && (!((File)localObject).equals(this.mCurrTraceFile))))
    {
      this.mCurrTraceFile = ((File)localObject);
      closeFileWriter();
    }
    try
    {
      localObject = new FileOutputStream(this.mCurrTraceFile, true);
      this.mFc = ((FileOutputStream)localObject).getChannel();
      this.mFileWriter = new OutputStreamWriter((OutputStream)localObject);
      return this.mFileWriter;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  private void prepareNextFlush()
  {
    this.mHandler.sendEmptyMessageDelayed(1024, getConfig().getFlushInterval());
  }
  
  /* Error */
  private void swapBuffers()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 66	com/mi/milink/sdk/base/debug/FileTracer:mWriteBuffer	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   6: aload_0
    //   7: getfield 62	com/mi/milink/sdk/base/debug/FileTracer:mBufferA	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   10: if_acmpne +22 -> 32
    //   13: aload_0
    //   14: aload_0
    //   15: getfield 64	com/mi/milink/sdk/base/debug/FileTracer:mBufferB	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   18: putfield 66	com/mi/milink/sdk/base/debug/FileTracer:mWriteBuffer	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   21: aload_0
    //   22: aload_0
    //   23: getfield 62	com/mi/milink/sdk/base/debug/FileTracer:mBufferA	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   26: putfield 68	com/mi/milink/sdk/base/debug/FileTracer:mReadBuffer	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_0
    //   33: aload_0
    //   34: getfield 62	com/mi/milink/sdk/base/debug/FileTracer:mBufferA	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   37: putfield 66	com/mi/milink/sdk/base/debug/FileTracer:mWriteBuffer	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   40: aload_0
    //   41: aload_0
    //   42: getfield 64	com/mi/milink/sdk/base/debug/FileTracer:mBufferB	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   45: putfield 68	com/mi/milink/sdk/base/debug/FileTracer:mReadBuffer	Lcom/mi/milink/sdk/base/data/SafeStringQueue;
    //   48: goto -19 -> 29
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	FileTracer
    //   51	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	29	51	finally
    //   29	31	51	finally
    //   32	48	51	finally
    //   52	54	51	finally
  }
  
  protected void doTrace(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    doTrace(getTraceFormat().formatTrace(paramInt, paramThread, paramLong, paramString1, paramString2, paramThrowable));
  }
  
  protected void doTrace(String paramString)
  {
    this.mWriteBuffer.addToBuffer(paramString);
    if (this.mWriteBuffer.getBufferSize() >= getConfig().getMaxBufferSize()) {
      flush();
    }
  }
  
  public void flush()
  {
    if (this.mHandler.hasMessages(1024)) {
      this.mHandler.removeMessages(1024);
    }
    this.mHandler.sendEmptyMessage(1024);
  }
  
  public FileTracerConfig getConfig()
  {
    return this.mConfig;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    }
    for (;;)
    {
      return true;
      flushBuffer();
      prepareNextFlush();
    }
  }
  
  public void quit()
  {
    setEnabled(false);
    closeFileWriter();
    this.mHandlerThread.quit();
  }
  
  public void setConfig(FileTracerConfig paramFileTracerConfig)
  {
    this.mConfig = paramFileTracerConfig;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\debug\FileTracer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */