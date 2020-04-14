package com.mi.milink.sdk.base.os;

import java.io.InputStream;

public class Console
  extends Thread
{
  private static final long CONSOLE_STREAM_READER_TIMEOUT = 1000L;
  
  public static String execute(String paramString, long paramLong)
  {
    return execute(paramString, paramLong, 1000L);
  }
  
  public static String execute(String paramString, long paramLong1, long paramLong2)
  {
    paramString = new ConsoleThread(paramString, paramLong2);
    paramString.start();
    try
    {
      paramString.join(paramLong1);
      if (paramString.isAlive()) {
        paramString.interrupt();
      }
      return paramString.getOutputData();
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public static class ConsoleReader
    extends Thread
  {
    private String outputData;
    private InputStream stream = null;
    
    public ConsoleReader(InputStream paramInputStream)
    {
      setStream(paramInputStream);
    }
    
    public String getOutputData()
    {
      return this.outputData;
    }
    
    public InputStream getStream()
    {
      return this.stream;
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: new 35	java/lang/StringBuilder
      //   3: dup
      //   4: invokespecial 36	java/lang/StringBuilder:<init>	()V
      //   7: astore 4
      //   9: new 38	java/io/BufferedReader
      //   12: dup
      //   13: new 40	java/io/InputStreamReader
      //   16: dup
      //   17: aload_0
      //   18: getfield 18	com/mi/milink/sdk/base/os/Console$ConsoleReader:stream	Ljava/io/InputStream;
      //   21: invokespecial 42	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
      //   24: invokespecial 45	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
      //   27: astore_2
      //   28: aload_2
      //   29: astore_1
      //   30: aload_2
      //   31: invokevirtual 48	java/io/BufferedReader:readLine	()Ljava/lang/String;
      //   34: astore_3
      //   35: aload_3
      //   36: ifnull +22 -> 58
      //   39: aload_2
      //   40: astore_1
      //   41: aload 4
      //   43: aload_3
      //   44: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   47: pop
      //   48: aload_2
      //   49: astore_1
      //   50: aload_2
      //   51: invokevirtual 48	java/io/BufferedReader:readLine	()Ljava/lang/String;
      //   54: astore_3
      //   55: goto -20 -> 35
      //   58: aload_2
      //   59: astore_1
      //   60: aload_2
      //   61: invokevirtual 55	java/io/BufferedReader:close	()V
      //   64: aload_2
      //   65: astore_1
      //   66: aload_0
      //   67: aload 4
      //   69: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   72: invokevirtual 62	com/mi/milink/sdk/base/os/Console$ConsoleReader:setOutputData	(Ljava/lang/String;)V
      //   75: aload_2
      //   76: invokevirtual 55	java/io/BufferedReader:close	()V
      //   79: return
      //   80: astore_1
      //   81: aconst_null
      //   82: astore_2
      //   83: aload_2
      //   84: astore_1
      //   85: aload_0
      //   86: aconst_null
      //   87: invokevirtual 62	com/mi/milink/sdk/base/os/Console$ConsoleReader:setOutputData	(Ljava/lang/String;)V
      //   90: aload_2
      //   91: ifnull -12 -> 79
      //   94: aload_2
      //   95: invokevirtual 55	java/io/BufferedReader:close	()V
      //   98: return
      //   99: astore_1
      //   100: return
      //   101: astore_1
      //   102: aconst_null
      //   103: astore_2
      //   104: aload_2
      //   105: ifnull +7 -> 112
      //   108: aload_2
      //   109: invokevirtual 55	java/io/BufferedReader:close	()V
      //   112: aload_1
      //   113: athrow
      //   114: astore_1
      //   115: return
      //   116: astore_2
      //   117: goto -5 -> 112
      //   120: astore_2
      //   121: aload_1
      //   122: astore_3
      //   123: aload_2
      //   124: astore_1
      //   125: aload_3
      //   126: astore_2
      //   127: goto -23 -> 104
      //   130: astore_1
      //   131: goto -48 -> 83
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	134	0	this	ConsoleReader
      //   29	37	1	localBufferedReader1	java.io.BufferedReader
      //   80	1	1	localException1	Exception
      //   84	1	1	localBufferedReader2	java.io.BufferedReader
      //   99	1	1	localIOException1	java.io.IOException
      //   101	12	1	localObject1	Object
      //   114	8	1	localIOException2	java.io.IOException
      //   124	1	1	localObject2	Object
      //   130	1	1	localException2	Exception
      //   27	82	2	localBufferedReader3	java.io.BufferedReader
      //   116	1	2	localIOException3	java.io.IOException
      //   120	4	2	localObject3	Object
      //   126	1	2	localObject4	Object
      //   34	92	3	localObject5	Object
      //   7	61	4	localStringBuilder	StringBuilder
      // Exception table:
      //   from	to	target	type
      //   9	28	80	java/lang/Exception
      //   94	98	99	java/io/IOException
      //   9	28	101	finally
      //   75	79	114	java/io/IOException
      //   108	112	116	java/io/IOException
      //   30	35	120	finally
      //   41	48	120	finally
      //   50	55	120	finally
      //   60	64	120	finally
      //   66	75	120	finally
      //   85	90	120	finally
      //   30	35	130	java/lang/Exception
      //   41	48	130	java/lang/Exception
      //   50	55	130	java/lang/Exception
      //   60	64	130	java/lang/Exception
      //   66	75	130	java/lang/Exception
    }
    
    public void setOutputData(String paramString)
    {
      this.outputData = paramString;
    }
    
    public void setStream(InputStream paramInputStream)
    {
      this.stream = paramInputStream;
    }
  }
  
  public static class ConsoleThread
    extends Thread
  {
    private String command = null;
    private Integer exitCode = Integer.valueOf(0);
    private String outputData = null;
    private long timeout = 1000L;
    
    public ConsoleThread(String paramString, long paramLong)
    {
      setCommand(paramString);
      setTimeout(paramLong);
    }
    
    public String getCommand()
    {
      return this.command;
    }
    
    public Integer getExitCode()
    {
      return this.exitCode;
    }
    
    public String getOutputData()
    {
      return this.outputData;
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: invokestatic 60	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
      //   3: aload_0
      //   4: invokevirtual 62	com/mi/milink/sdk/base/os/Console$ConsoleThread:getCommand	()Ljava/lang/String;
      //   7: invokevirtual 66	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
      //   10: astore_2
      //   11: aload_2
      //   12: invokevirtual 72	java/lang/Process:waitFor	()I
      //   15: istore_1
      //   16: new 74	com/mi/milink/sdk/base/os/Console$ConsoleReader
      //   19: dup
      //   20: aload_2
      //   21: invokevirtual 78	java/lang/Process:getInputStream	()Ljava/io/InputStream;
      //   24: invokespecial 81	com/mi/milink/sdk/base/os/Console$ConsoleReader:<init>	(Ljava/io/InputStream;)V
      //   27: astore_3
      //   28: aload_3
      //   29: invokevirtual 84	com/mi/milink/sdk/base/os/Console$ConsoleReader:start	()V
      //   32: aload_3
      //   33: ldc2_w 32
      //   36: invokevirtual 87	com/mi/milink/sdk/base/os/Console$ConsoleReader:join	(J)V
      //   39: aload_3
      //   40: invokevirtual 91	com/mi/milink/sdk/base/os/Console$ConsoleReader:isAlive	()Z
      //   43: ifeq +7 -> 50
      //   46: aload_3
      //   47: invokevirtual 94	com/mi/milink/sdk/base/os/Console$ConsoleReader:interrupt	()V
      //   50: aload_3
      //   51: invokevirtual 96	com/mi/milink/sdk/base/os/Console$ConsoleReader:getOutputData	()Ljava/lang/String;
      //   54: astore_3
      //   55: aload_0
      //   56: iload_1
      //   57: invokestatic 25	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   60: invokevirtual 100	com/mi/milink/sdk/base/os/Console$ConsoleThread:setExitCode	(Ljava/lang/Integer;)V
      //   63: aload_0
      //   64: aload_3
      //   65: invokevirtual 103	com/mi/milink/sdk/base/os/Console$ConsoleThread:setOutputData	(Ljava/lang/String;)V
      //   68: aload_2
      //   69: invokevirtual 106	java/lang/Process:destroy	()V
      //   72: return
      //   73: astore_2
      //   74: aload_0
      //   75: ldc 107
      //   77: invokestatic 25	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   80: invokevirtual 100	com/mi/milink/sdk/base/os/Console$ConsoleThread:setExitCode	(Ljava/lang/Integer;)V
      //   83: return
      //   84: astore_2
      //   85: aload_2
      //   86: athrow
      //   87: astore_2
      //   88: aload_0
      //   89: ldc 108
      //   91: invokestatic 25	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   94: invokevirtual 100	com/mi/milink/sdk/base/os/Console$ConsoleThread:setExitCode	(Ljava/lang/Integer;)V
      //   97: return
      //   98: astore 4
      //   100: goto -61 -> 39
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	103	0	this	ConsoleThread
      //   15	42	1	i	int
      //   10	59	2	localProcess	Process
      //   73	1	2	localIOException	java.io.IOException
      //   84	2	2	localObject1	Object
      //   87	1	2	localInterruptedException1	InterruptedException
      //   27	38	3	localObject2	Object
      //   98	1	4	localInterruptedException2	InterruptedException
      // Exception table:
      //   from	to	target	type
      //   0	32	73	java/io/IOException
      //   32	39	73	java/io/IOException
      //   39	50	73	java/io/IOException
      //   50	72	73	java/io/IOException
      //   0	32	84	finally
      //   32	39	84	finally
      //   39	50	84	finally
      //   50	72	84	finally
      //   74	83	84	finally
      //   88	97	84	finally
      //   0	32	87	java/lang/InterruptedException
      //   39	50	87	java/lang/InterruptedException
      //   50	72	87	java/lang/InterruptedException
      //   32	39	98	java/lang/InterruptedException
    }
    
    public void setCommand(String paramString)
    {
      this.command = paramString;
    }
    
    public void setExitCode(Integer paramInteger)
    {
      this.exitCode = paramInteger;
    }
    
    public void setOutputData(String paramString)
    {
      this.outputData = paramString;
    }
    
    public void setTimeout(long paramLong)
    {
      this.timeout = paramLong;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\Console.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */