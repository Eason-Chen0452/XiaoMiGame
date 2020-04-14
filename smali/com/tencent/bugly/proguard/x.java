package com.tencent.bugly.proguard;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;

public final class x
{
  public static boolean a;
  private static SimpleDateFormat b = null;
  private static int c;
  private static StringBuilder d;
  private static StringBuilder e;
  private static a f;
  private static String g;
  private static String h;
  private static Context i;
  private static String j;
  private static boolean k;
  private static int l;
  private static Object m;
  private static Object n;
  private static Method o;
  
  static
  {
    a = true;
    c = 5120;
    m = new Object();
    n = null;
    o = null;
    try
    {
      b = new SimpleDateFormat("MM-dd HH:mm:ss");
      o = Class.forName("com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler").getDeclaredMethod("appendLogToNative", new Class[] { String.class, String.class, String.class });
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public static void a(int paramInt)
  {
    synchronized (m)
    {
      c = paramInt;
      if (paramInt < 0) {
        c = 0;
      }
      while (paramInt <= 10240) {
        return;
      }
      c = 10240;
    }
  }
  
  /* Error */
  public static void a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 83	com/tencent/bugly/proguard/x:k	Z
    //   6: ifne +15 -> 21
    //   9: aload_0
    //   10: ifnull +11 -> 21
    //   13: getstatic 40	com/tencent/bugly/proguard/x:a	Z
    //   16: istore_1
    //   17: iload_1
    //   18: ifne +7 -> 25
    //   21: ldc 2
    //   23: monitorexit
    //   24: return
    //   25: new 85	java/lang/StringBuilder
    //   28: dup
    //   29: iconst_0
    //   30: invokespecial 87	java/lang/StringBuilder:<init>	(I)V
    //   33: putstatic 89	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   36: new 85	java/lang/StringBuilder
    //   39: dup
    //   40: iconst_0
    //   41: invokespecial 87	java/lang/StringBuilder:<init>	(I)V
    //   44: putstatic 91	com/tencent/bugly/proguard/x:d	Ljava/lang/StringBuilder;
    //   47: aload_0
    //   48: putstatic 93	com/tencent/bugly/proguard/x:i	Landroid/content/Context;
    //   51: aload_0
    //   52: invokestatic 98	com/tencent/bugly/crashreport/common/info/a:a	(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    //   55: astore_0
    //   56: aload_0
    //   57: getfield 100	com/tencent/bugly/crashreport/common/info/a:d	Ljava/lang/String;
    //   60: putstatic 102	com/tencent/bugly/proguard/x:g	Ljava/lang/String;
    //   63: aload_0
    //   64: invokevirtual 106	java/lang/Object:getClass	()Ljava/lang/Class;
    //   67: pop
    //   68: ldc 108
    //   70: putstatic 110	com/tencent/bugly/proguard/x:h	Ljava/lang/String;
    //   73: new 85	java/lang/StringBuilder
    //   76: dup
    //   77: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   80: getstatic 93	com/tencent/bugly/proguard/x:i	Landroid/content/Context;
    //   83: invokevirtual 117	android/content/Context:getFilesDir	()Ljava/io/File;
    //   86: invokevirtual 123	java/io/File:getPath	()Ljava/lang/String;
    //   89: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: ldc -127
    //   94: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: getstatic 102	com/tencent/bugly/proguard/x:g	Ljava/lang/String;
    //   100: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc -125
    //   105: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: getstatic 110	com/tencent/bugly/proguard/x:h	Ljava/lang/String;
    //   111: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc -123
    //   116: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: putstatic 138	com/tencent/bugly/proguard/x:j	Ljava/lang/String;
    //   125: invokestatic 144	android/os/Process:myPid	()I
    //   128: putstatic 146	com/tencent/bugly/proguard/x:l	I
    //   131: iconst_1
    //   132: putstatic 83	com/tencent/bugly/proguard/x:k	Z
    //   135: goto -114 -> 21
    //   138: astore_0
    //   139: ldc 2
    //   141: monitorexit
    //   142: aload_0
    //   143: athrow
    //   144: astore_0
    //   145: goto -14 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	paramContext	Context
    //   16	2	1	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	9	138	finally
    //   13	17	138	finally
    //   25	131	138	finally
    //   131	135	138	finally
    //   25	131	144	java/lang/Throwable
  }
  
  /* Error */
  public static void a(String arg0, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 83	com/tencent/bugly/proguard/x:k	Z
    //   6: ifeq +13 -> 19
    //   9: getstatic 40	com/tencent/bugly/proguard/x:a	Z
    //   12: istore 4
    //   14: iload 4
    //   16: ifne +7 -> 23
    //   19: ldc 2
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: aload_1
    //   25: aload_2
    //   26: invokestatic 150	com/tencent/bugly/proguard/x:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    //   29: pop
    //   30: invokestatic 153	android/os/Process:myTid	()I
    //   33: istore_3
    //   34: getstatic 91	com/tencent/bugly/proguard/x:d	Ljava/lang/StringBuilder;
    //   37: iconst_0
    //   38: invokevirtual 156	java/lang/StringBuilder:setLength	(I)V
    //   41: aload_2
    //   42: astore 5
    //   44: aload_2
    //   45: invokevirtual 159	java/lang/String:length	()I
    //   48: sipush 30720
    //   51: if_icmple +23 -> 74
    //   54: aload_2
    //   55: aload_2
    //   56: invokevirtual 159	java/lang/String:length	()I
    //   59: sipush 30720
    //   62: isub
    //   63: aload_2
    //   64: invokevirtual 159	java/lang/String:length	()I
    //   67: iconst_1
    //   68: isub
    //   69: invokevirtual 163	java/lang/String:substring	(II)Ljava/lang/String;
    //   72: astore 5
    //   74: new 165	java/util/Date
    //   77: dup
    //   78: invokespecial 166	java/util/Date:<init>	()V
    //   81: astore_2
    //   82: getstatic 38	com/tencent/bugly/proguard/x:b	Ljava/text/SimpleDateFormat;
    //   85: ifnull +131 -> 216
    //   88: getstatic 38	com/tencent/bugly/proguard/x:b	Ljava/text/SimpleDateFormat;
    //   91: aload_2
    //   92: invokevirtual 170	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   95: astore_2
    //   96: getstatic 91	com/tencent/bugly/proguard/x:d	Ljava/lang/StringBuilder;
    //   99: aload_2
    //   100: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc -84
    //   105: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: getstatic 146	com/tencent/bugly/proguard/x:l	I
    //   111: invokevirtual 175	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   114: ldc -84
    //   116: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: iload_3
    //   120: invokevirtual 175	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   123: ldc -84
    //   125: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: aload_0
    //   129: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc -84
    //   134: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload_1
    //   138: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc -79
    //   143: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload 5
    //   148: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: ldc -77
    //   153: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: pop
    //   157: getstatic 91	com/tencent/bugly/proguard/x:d	Ljava/lang/StringBuilder;
    //   160: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: astore_1
    //   164: getstatic 47	com/tencent/bugly/proguard/x:m	Ljava/lang/Object;
    //   167: astore_0
    //   168: aload_0
    //   169: monitorenter
    //   170: getstatic 89	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   173: aload_1
    //   174: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: pop
    //   178: aload_0
    //   179: monitorexit
    //   180: getstatic 89	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   183: invokevirtual 180	java/lang/StringBuilder:length	()I
    //   186: getstatic 42	com/tencent/bugly/proguard/x:c	I
    //   189: if_icmple -170 -> 19
    //   192: invokestatic 185	com/tencent/bugly/proguard/v:a	()Lcom/tencent/bugly/proguard/v;
    //   195: new 6	com/tencent/bugly/proguard/x$1
    //   198: dup
    //   199: aload_1
    //   200: invokespecial 186	com/tencent/bugly/proguard/x$1:<init>	(Ljava/lang/String;)V
    //   203: invokevirtual 189	com/tencent/bugly/proguard/v:a	(Ljava/lang/Runnable;)Z
    //   206: pop
    //   207: goto -188 -> 19
    //   210: astore_0
    //   211: ldc 2
    //   213: monitorexit
    //   214: aload_0
    //   215: athrow
    //   216: aload_2
    //   217: invokevirtual 190	java/util/Date:toString	()Ljava/lang/String;
    //   220: astore_2
    //   221: goto -125 -> 96
    //   224: astore_1
    //   225: aload_0
    //   226: monitorexit
    //   227: aload_1
    //   228: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	1	paramString2	String
    //   0	229	2	paramString3	String
    //   33	87	3	i1	int
    //   12	3	4	bool	boolean
    //   42	105	5	str	String
    // Exception table:
    //   from	to	target	type
    //   3	14	210	finally
    //   23	41	210	finally
    //   44	74	210	finally
    //   74	96	210	finally
    //   96	170	210	finally
    //   180	207	210	finally
    //   216	221	210	finally
    //   225	229	210	finally
    //   170	180	224	finally
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return;
    }
    Object localObject2 = paramThrowable.getMessage();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "";
    }
    localObject1 = new StringBuilder().append((String)localObject1).append('\n');
    if (paramThrowable == null) {}
    for (paramThrowable = "";; paramThrowable = ((StringWriter)localObject2).toString())
    {
      a(paramString1, paramString2, paramThrowable);
      return;
      localObject2 = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter((Writer)localObject2);
      paramThrowable.printStackTrace(localPrintWriter);
      localPrintWriter.flush();
    }
  }
  
  /* Error */
  public static byte[] a(boolean paramBoolean)
  {
    // Byte code:
    //   0: getstatic 40	com/tencent/bugly/proguard/x:a	Z
    //   3: ifne +5 -> 8
    //   6: aconst_null
    //   7: areturn
    //   8: getstatic 47	com/tencent/bugly/proguard/x:m	Ljava/lang/Object;
    //   11: astore_3
    //   12: aload_3
    //   13: monitorenter
    //   14: iload_0
    //   15: ifeq +49 -> 64
    //   18: getstatic 78	com/tencent/bugly/proguard/x:f	Lcom/tencent/bugly/proguard/x$a;
    //   21: ifnull +43 -> 64
    //   24: getstatic 78	com/tencent/bugly/proguard/x:f	Lcom/tencent/bugly/proguard/x$a;
    //   27: invokestatic 219	com/tencent/bugly/proguard/x$a:d	(Lcom/tencent/bugly/proguard/x$a;)Z
    //   30: ifeq +34 -> 64
    //   33: getstatic 78	com/tencent/bugly/proguard/x:f	Lcom/tencent/bugly/proguard/x$a;
    //   36: invokestatic 222	com/tencent/bugly/proguard/x$a:a	(Lcom/tencent/bugly/proguard/x$a;)Ljava/io/File;
    //   39: astore_2
    //   40: getstatic 89	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   43: invokevirtual 180	java/lang/StringBuilder:length	()I
    //   46: istore_1
    //   47: iload_1
    //   48: ifne +21 -> 69
    //   51: aload_2
    //   52: ifnonnull +17 -> 69
    //   55: aload_3
    //   56: monitorexit
    //   57: aconst_null
    //   58: areturn
    //   59: astore_2
    //   60: aload_3
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aconst_null
    //   65: astore_2
    //   66: goto -26 -> 40
    //   69: aload_2
    //   70: getstatic 89	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   73: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokestatic 227	com/tencent/bugly/proguard/a:a	(Ljava/io/File;Ljava/lang/String;)[B
    //   79: astore_2
    //   80: aload_3
    //   81: monitorexit
    //   82: aload_2
    //   83: areturn
    //   84: astore_2
    //   85: aload_3
    //   86: monitorexit
    //   87: aconst_null
    //   88: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	paramBoolean	boolean
    //   46	2	1	i1	int
    //   39	13	2	localFile	File
    //   59	4	2	localObject1	Object
    //   65	18	2	localObject2	Object
    //   84	1	2	localThrowable	Throwable
    //   11	75	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   18	40	59	finally
    //   40	47	59	finally
    //   55	57	59	finally
    //   69	80	59	finally
    //   80	82	59	finally
    //   18	40	84	java/lang/Throwable
    //   40	47	84	java/lang/Throwable
    //   69	80	84	java/lang/Throwable
  }
  
  private static boolean b(String paramString1, String paramString2, String paramString3)
  {
    if (o == null) {
      return false;
    }
    if (n == null)
    {
      Object localObject = a.a("com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler", "getInstance", null, null, null);
      n = localObject;
      if (localObject == null) {
        return false;
      }
    }
    try
    {
      boolean bool = ((Boolean)o.invoke(n, new Object[] { paramString1, paramString2, paramString3 })).booleanValue();
      return bool;
    }
    catch (Throwable paramString1)
    {
      Log.w(w.a, paramString1.getMessage());
    }
    return false;
  }
  
  public static final class a
  {
    private boolean a;
    private File b;
    private String c;
    private long d;
    private long e = 30720L;
    
    public a(String paramString)
    {
      if ((paramString == null) || (paramString.equals(""))) {
        return;
      }
      this.c = paramString;
      this.a = a();
    }
    
    private boolean a()
    {
      boolean bool = false;
      try
      {
        this.b = new File(this.c);
        if ((this.b.exists()) && (!this.b.delete())) {}
        for (this.a = false;; this.a = false)
        {
          return bool;
          if (this.b.createNewFile()) {
            break;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          this.a = false;
          bool = true;
        }
      }
      finally {}
    }
    
    /* Error */
    public final boolean a(String paramString)
    {
      // Byte code:
      //   0: iconst_0
      //   1: istore_2
      //   2: aload_0
      //   3: monitorenter
      //   4: aload_0
      //   5: getfield 39	com/tencent/bugly/proguard/x$a:a	Z
      //   8: istore_3
      //   9: iload_3
      //   10: ifne +7 -> 17
      //   13: aload_0
      //   14: monitorexit
      //   15: iload_2
      //   16: ireturn
      //   17: new 63	java/io/FileOutputStream
      //   20: dup
      //   21: aload_0
      //   22: getfield 43	com/tencent/bugly/proguard/x$a:b	Ljava/io/File;
      //   25: iconst_1
      //   26: invokespecial 66	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
      //   29: astore 6
      //   31: aload_1
      //   32: ldc 68
      //   34: invokevirtual 72	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   37: astore_1
      //   38: aload 6
      //   40: aload_1
      //   41: invokevirtual 76	java/io/FileOutputStream:write	([B)V
      //   44: aload 6
      //   46: invokevirtual 79	java/io/FileOutputStream:flush	()V
      //   49: aload 6
      //   51: invokevirtual 82	java/io/FileOutputStream:close	()V
      //   54: aload_0
      //   55: getfield 84	com/tencent/bugly/proguard/x$a:d	J
      //   58: lstore 4
      //   60: aload_0
      //   61: aload_1
      //   62: arraylength
      //   63: i2l
      //   64: lload 4
      //   66: ladd
      //   67: putfield 84	com/tencent/bugly/proguard/x$a:d	J
      //   70: iconst_1
      //   71: istore_2
      //   72: goto -59 -> 13
      //   75: astore_1
      //   76: aload_0
      //   77: iconst_0
      //   78: putfield 39	com/tencent/bugly/proguard/x$a:a	Z
      //   81: goto -68 -> 13
      //   84: astore_1
      //   85: aload_0
      //   86: monitorexit
      //   87: aload_1
      //   88: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	89	0	this	a
      //   0	89	1	paramString	String
      //   1	71	2	bool1	boolean
      //   8	2	3	bool2	boolean
      //   58	7	4	l	long
      //   29	21	6	localFileOutputStream	java.io.FileOutputStream
      // Exception table:
      //   from	to	target	type
      //   17	70	75	java/lang/Throwable
      //   4	9	84	finally
      //   17	70	84	finally
      //   76	81	84	finally
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\tencent\bugly\proguard\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */