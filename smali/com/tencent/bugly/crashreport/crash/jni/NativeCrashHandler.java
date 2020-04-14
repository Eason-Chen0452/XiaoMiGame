package com.tencent.bugly.crashreport.crash.jni;

import android.annotation.SuppressLint;
import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import java.io.File;

public class NativeCrashHandler
{
  private static NativeCrashHandler a;
  private static boolean l = false;
  private final Context b;
  private final com.tencent.bugly.crashreport.common.info.a c;
  private final v d;
  private NativeExceptionHandler e;
  private String f;
  private final boolean g;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private com.tencent.bugly.crashreport.crash.b m;
  
  @SuppressLint({"SdCardPath"})
  private NativeCrashHandler(Context paramContext, com.tencent.bugly.crashreport.common.info.a parama, com.tencent.bugly.crashreport.crash.b paramb, v paramv, boolean paramBoolean, String paramString)
  {
    Object localObject;
    if (paramContext == null)
    {
      localObject = paramContext;
      this.b = ((Context)localObject);
      if (paramString == null) {
        break label115;
      }
    }
    for (;;)
    {
      try
      {
        n = paramString.trim().length();
        if (n <= 0) {
          continue;
        }
        n = 0;
        if (n != 0) {
          continue;
        }
      }
      catch (Throwable paramString)
      {
        int n;
        Context localContext;
        label115:
        paramContext = com.tencent.bugly.crashreport.common.info.a.a(paramContext).c;
        paramString = "/data/data/" + paramContext + "/app_bugly";
        continue;
      }
      this.m = paramb;
      this.f = paramString;
      this.c = parama;
      this.d = paramv;
      this.g = paramBoolean;
      return;
      localContext = paramContext.getApplicationContext();
      localObject = localContext;
      if (localContext != null) {
        break;
      }
      localObject = paramContext;
      break;
      n = 1;
      continue;
      paramString = paramContext.getDir("bugly", 0).getAbsolutePath();
    }
  }
  
  /* Error */
  private void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   6: ifeq +16 -> 22
    //   9: ldc 116
    //   11: iconst_0
    //   12: anewarray 4	java/lang/Object
    //   15: invokestatic 121	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   18: pop
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: new 123	com/tencent/bugly/crashreport/crash/jni/a
    //   26: dup
    //   27: aload_0
    //   28: getfield 51	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:b	Landroid/content/Context;
    //   31: aload_0
    //   32: getfield 67	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:c	Lcom/tencent/bugly/crashreport/common/info/a;
    //   35: aload_0
    //   36: getfield 63	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:m	Lcom/tencent/bugly/crashreport/crash/b;
    //   39: invokestatic 128	com/tencent/bugly/crashreport/common/strategy/a:a	()Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   42: aload_0
    //   43: getfield 65	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:f	Ljava/lang/String;
    //   46: invokespecial 131	com/tencent/bugly/crashreport/crash/jni/a:<init>	(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Ljava/lang/String;)V
    //   49: putfield 133	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:e	Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;
    //   52: aload_0
    //   53: getfield 45	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:i	Z
    //   56: istore_3
    //   57: iload_3
    //   58: ifeq +231 -> 289
    //   61: aload_0
    //   62: aload_0
    //   63: getfield 65	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:f	Ljava/lang/String;
    //   66: iload_1
    //   67: iconst_1
    //   68: invokevirtual 137	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:regist	(Ljava/lang/String;ZI)Ljava/lang/String;
    //   71: astore 6
    //   73: aload 6
    //   75: ifnull +143 -> 218
    //   78: ldc -117
    //   80: iconst_0
    //   81: anewarray 4	java/lang/Object
    //   84: invokestatic 141	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   87: pop
    //   88: ldc -113
    //   90: iconst_1
    //   91: anewarray 4	java/lang/Object
    //   94: dup
    //   95: iconst_0
    //   96: aload 6
    //   98: aastore
    //   99: invokestatic 145	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   102: pop
    //   103: ldc -109
    //   105: ldc -107
    //   107: ldc -105
    //   109: invokevirtual 155	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   112: astore 7
    //   114: aload 6
    //   116: ldc -107
    //   118: ldc -105
    //   120: invokevirtual 155	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   123: astore 5
    //   125: aload 5
    //   127: invokevirtual 61	java/lang/String:length	()I
    //   130: iconst_2
    //   131: if_icmpne +107 -> 238
    //   134: new 97	java/lang/StringBuilder
    //   137: dup
    //   138: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   141: aload 5
    //   143: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: ldc -98
    //   148: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: astore 4
    //   156: aload 4
    //   158: invokestatic 164	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   161: aload 7
    //   163: invokestatic 164	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   166: if_icmplt +7 -> 173
    //   169: iconst_1
    //   170: putstatic 31	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:l	Z
    //   173: getstatic 31	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:l	Z
    //   176: ifeq +100 -> 276
    //   179: ldc -90
    //   181: iconst_0
    //   182: anewarray 4	java/lang/Object
    //   185: invokestatic 141	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   188: pop
    //   189: aload_0
    //   190: getfield 67	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:c	Lcom/tencent/bugly/crashreport/common/info/a;
    //   193: aload 6
    //   195: putfield 168	com/tencent/bugly/crashreport/common/info/a:l	Ljava/lang/String;
    //   198: aload_0
    //   199: iconst_1
    //   200: putfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   203: goto -184 -> 19
    //   206: astore 4
    //   208: ldc -86
    //   210: iconst_0
    //   211: anewarray 4	java/lang/Object
    //   214: invokestatic 145	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   217: pop
    //   218: aload_0
    //   219: iconst_0
    //   220: putfield 45	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:i	Z
    //   223: aload_0
    //   224: iconst_0
    //   225: putfield 43	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:h	Z
    //   228: goto -209 -> 19
    //   231: astore 4
    //   233: aload_0
    //   234: monitorexit
    //   235: aload 4
    //   237: athrow
    //   238: aload 5
    //   240: astore 4
    //   242: aload 5
    //   244: invokevirtual 61	java/lang/String:length	()I
    //   247: iconst_1
    //   248: if_icmpne -92 -> 156
    //   251: new 97	java/lang/StringBuilder
    //   254: dup
    //   255: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   258: aload 5
    //   260: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: ldc -84
    //   265: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: astore 4
    //   273: goto -117 -> 156
    //   276: ldc -82
    //   278: iconst_0
    //   279: anewarray 4	java/lang/Object
    //   282: invokestatic 121	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   285: pop
    //   286: goto -97 -> 189
    //   289: aload_0
    //   290: getfield 43	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:h	Z
    //   293: istore_1
    //   294: iload_1
    //   295: ifeq -77 -> 218
    //   298: getstatic 178	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   301: astore 4
    //   303: getstatic 178	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   306: astore 5
    //   308: aload_0
    //   309: getfield 65	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:f	Ljava/lang/String;
    //   312: astore 6
    //   314: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   317: invokevirtual 184	com/tencent/bugly/crashreport/common/info/a:q	()Ljava/lang/String;
    //   320: astore 7
    //   322: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   325: invokevirtual 187	com/tencent/bugly/crashreport/common/info/a:F	()I
    //   328: istore_2
    //   329: ldc -67
    //   331: ldc -65
    //   333: aconst_null
    //   334: iconst_4
    //   335: anewarray 193	java/lang/Class
    //   338: dup
    //   339: iconst_0
    //   340: ldc 53
    //   342: aastore
    //   343: dup
    //   344: iconst_1
    //   345: ldc 53
    //   347: aastore
    //   348: dup
    //   349: iconst_2
    //   350: aload 4
    //   352: aastore
    //   353: dup
    //   354: iconst_3
    //   355: aload 5
    //   357: aastore
    //   358: iconst_4
    //   359: anewarray 4	java/lang/Object
    //   362: dup
    //   363: iconst_0
    //   364: aload 6
    //   366: aastore
    //   367: dup
    //   368: iconst_1
    //   369: aload 7
    //   371: aastore
    //   372: dup
    //   373: iconst_2
    //   374: iload_2
    //   375: invokestatic 197	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   378: aastore
    //   379: dup
    //   380: iconst_3
    //   381: iconst_1
    //   382: invokestatic 197	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   385: aastore
    //   386: invokestatic 202	com/tencent/bugly/proguard/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   389: checkcast 53	java/lang/String
    //   392: astore 5
    //   394: aload 5
    //   396: astore 4
    //   398: aload 5
    //   400: ifnonnull +82 -> 482
    //   403: getstatic 178	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   406: astore 4
    //   408: aload_0
    //   409: getfield 65	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:f	Ljava/lang/String;
    //   412: astore 5
    //   414: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   417: invokevirtual 184	com/tencent/bugly/crashreport/common/info/a:q	()Ljava/lang/String;
    //   420: astore 6
    //   422: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   425: invokevirtual 187	com/tencent/bugly/crashreport/common/info/a:F	()I
    //   428: istore_2
    //   429: ldc -67
    //   431: ldc -52
    //   433: aconst_null
    //   434: iconst_3
    //   435: anewarray 193	java/lang/Class
    //   438: dup
    //   439: iconst_0
    //   440: ldc 53
    //   442: aastore
    //   443: dup
    //   444: iconst_1
    //   445: ldc 53
    //   447: aastore
    //   448: dup
    //   449: iconst_2
    //   450: aload 4
    //   452: aastore
    //   453: iconst_3
    //   454: anewarray 4	java/lang/Object
    //   457: dup
    //   458: iconst_0
    //   459: aload 5
    //   461: aastore
    //   462: dup
    //   463: iconst_1
    //   464: aload 6
    //   466: aastore
    //   467: dup
    //   468: iconst_2
    //   469: iload_2
    //   470: invokestatic 197	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   473: aastore
    //   474: invokestatic 202	com/tencent/bugly/proguard/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   477: checkcast 53	java/lang/String
    //   480: astore 4
    //   482: aload 4
    //   484: ifnull -266 -> 218
    //   487: aload_0
    //   488: iconst_1
    //   489: putfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   492: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   495: aload 4
    //   497: putfield 168	com/tencent/bugly/crashreport/common/info/a:l	Ljava/lang/String;
    //   500: ldc -67
    //   502: ldc -50
    //   504: aconst_null
    //   505: iconst_1
    //   506: anewarray 193	java/lang/Class
    //   509: dup
    //   510: iconst_0
    //   511: getstatic 209	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   514: aastore
    //   515: iconst_1
    //   516: anewarray 4	java/lang/Object
    //   519: dup
    //   520: iconst_0
    //   521: iconst_1
    //   522: invokestatic 212	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   525: aastore
    //   526: invokestatic 202	com/tencent/bugly/proguard/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   529: pop
    //   530: getstatic 216	com/tencent/bugly/b:b	Z
    //   533: ifeq +43 -> 576
    //   536: iconst_3
    //   537: istore_2
    //   538: ldc -67
    //   540: ldc -38
    //   542: aconst_null
    //   543: iconst_1
    //   544: anewarray 193	java/lang/Class
    //   547: dup
    //   548: iconst_0
    //   549: getstatic 178	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   552: aastore
    //   553: iconst_1
    //   554: anewarray 4	java/lang/Object
    //   557: dup
    //   558: iconst_0
    //   559: iload_2
    //   560: invokestatic 197	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   563: aastore
    //   564: invokestatic 202	com/tencent/bugly/proguard/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   567: pop
    //   568: goto -549 -> 19
    //   571: astore 4
    //   573: goto -355 -> 218
    //   576: iconst_5
    //   577: istore_2
    //   578: goto -40 -> 538
    //   581: astore 4
    //   583: goto -410 -> 173
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	586	0	this	NativeCrashHandler
    //   0	586	1	paramBoolean	boolean
    //   328	250	2	n	int
    //   56	2	3	bool	boolean
    //   154	3	4	str1	String
    //   206	1	4	localThrowable1	Throwable
    //   231	5	4	localObject1	Object
    //   240	256	4	localObject2	Object
    //   571	1	4	localThrowable2	Throwable
    //   581	1	4	localThrowable3	Throwable
    //   123	337	5	localObject3	Object
    //   71	394	6	str2	String
    //   112	258	7	str3	String
    // Exception table:
    //   from	to	target	type
    //   61	73	206	java/lang/Throwable
    //   78	156	206	java/lang/Throwable
    //   173	189	206	java/lang/Throwable
    //   189	203	206	java/lang/Throwable
    //   242	273	206	java/lang/Throwable
    //   276	286	206	java/lang/Throwable
    //   2	19	231	finally
    //   22	57	231	finally
    //   61	73	231	finally
    //   78	156	231	finally
    //   156	173	231	finally
    //   173	189	231	finally
    //   189	203	231	finally
    //   208	218	231	finally
    //   218	228	231	finally
    //   242	273	231	finally
    //   276	286	231	finally
    //   289	294	231	finally
    //   298	394	231	finally
    //   403	482	231	finally
    //   487	536	231	finally
    //   538	568	231	finally
    //   298	394	571	java/lang/Throwable
    //   403	482	571	java/lang/Throwable
    //   487	536	571	java/lang/Throwable
    //   538	568	571	java/lang/Throwable
    //   156	173	581	java/lang/Throwable
  }
  
  private static boolean a(String paramString, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        w.a("[native] trying to load so: %s", new Object[] { paramString });
        if (paramBoolean) {
          System.load(paramString);
        }
      }
      catch (Throwable localThrowable1)
      {
        paramBoolean = false;
      }
      try
      {
        w.a("[native] load so success: %s", new Object[] { paramString });
        return true;
      }
      catch (Throwable localThrowable2)
      {
        for (;;)
        {
          paramBoolean = true;
        }
      }
      System.loadLibrary(paramString);
    }
    w.d(localThrowable1.getMessage(), new Object[0]);
    w.d("[native] Failed to load so, please check.", new Object[] { paramString });
    return paramBoolean;
  }
  
  private void b()
  {
    label135:
    for (;;)
    {
      try
      {
        if (!this.j)
        {
          w.d("native already unregisted!", new Object[0]);
          return;
        }
        try
        {
          if (unregist() == null) {
            break label135;
          }
          w.a("Native Crash Report close!", new Object[0]);
          this.j = false;
        }
        catch (Throwable localThrowable1)
        {
          w.c("unregist bugly so fail", new Object[0]);
        }
        try
        {
          com.tencent.bugly.proguard.a.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new Class[] { Boolean.TYPE }, new Object[] { Boolean.valueOf(false) });
          this.j = false;
          w.c("unregist rqd so success", new Object[0]);
        }
        catch (Throwable localThrowable2)
        {
          w.c("unregist rqd so fail", new Object[0]);
          this.i = false;
          this.h = false;
        }
        continue;
        w.c("unregist bugly so success", new Object[0]);
      }
      finally {}
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        startNativeMonitor();
        return;
      }
      finally {}
      b();
    }
  }
  
  private void c(boolean paramBoolean)
  {
    try
    {
      if (this.k != paramBoolean)
      {
        w.a("user change native %b", new Object[] { Boolean.valueOf(paramBoolean) });
        this.k = paramBoolean;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static NativeCrashHandler getInstance()
  {
    try
    {
      NativeCrashHandler localNativeCrashHandler = a;
      return localNativeCrashHandler;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static NativeCrashHandler getInstance(Context paramContext, com.tencent.bugly.crashreport.common.info.a parama, com.tencent.bugly.crashreport.crash.b paramb, com.tencent.bugly.crashreport.common.strategy.a parama1, v paramv, boolean paramBoolean, String paramString)
  {
    try
    {
      if (a == null) {
        a = new NativeCrashHandler(paramContext, parama, paramb, paramv, paramBoolean, paramString);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  protected final void a()
  {
    long l1 = com.tencent.bugly.proguard.a.o();
    long l2 = c.f;
    Object localObject1 = new File(this.f);
    if ((((File)localObject1).exists()) && (((File)localObject1).isDirectory()))
    {
      localObject1 = ((File)localObject1).listFiles();
      if ((localObject1 != null) && (localObject1.length != 0)) {}
    }
    else
    {
      return;
    }
    int i3 = "tomb_".length();
    int i4 = localObject1.length;
    int n = 0;
    Object localObject2;
    String str;
    int i2;
    for (int i1 = 0;; i1 = i2)
    {
      if (n >= i4) {
        break label190;
      }
      localObject2 = localObject1[n];
      str = ((File)localObject2).getName();
      i2 = i1;
      if (str.startsWith("tomb_")) {}
      try
      {
        i2 = str.indexOf(".txt");
        if (i2 <= 0) {
          break;
        }
        long l3 = Long.parseLong(str.substring(i3, i2));
        if (l3 < l1 - l2) {
          break;
        }
        i2 = i1;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          w.e("tomb format error delete %s", new Object[] { str });
          i2 = i1;
          if (((File)localObject2).delete()) {
            i2 = i1 + 1;
          }
        }
      }
      n += 1;
    }
    label190:
    w.c("clean tombs %d", new Object[] { Integer.valueOf(i1) });
  }
  
  public boolean appendLogToNative(String paramString1, String paramString2, String paramString3)
  {
    if ((!this.i) || (!l)) {}
    do
    {
      do
      {
        return false;
      } while ((paramString1 == null) || (paramString2 == null) || (paramString3 == null));
      try
      {
        boolean bool = appendNativeLog(paramString1, paramString2, paramString3);
        return bool;
      }
      catch (UnsatisfiedLinkError paramString1)
      {
        l = false;
        return false;
      }
      catch (Throwable paramString1) {}
    } while (w.a(paramString1));
    paramString1.printStackTrace();
    return false;
  }
  
  protected native boolean appendNativeLog(String paramString1, String paramString2, String paramString3);
  
  protected native boolean appendWholeNativeLog(String paramString);
  
  public String getDumpFilePath()
  {
    try
    {
      String str = this.f;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public NativeExceptionHandler getNativeExceptionHandler()
  {
    return this.e;
  }
  
  protected native String getNativeKeyValueList();
  
  protected native String getNativeLog();
  
  public boolean isUserOpened()
  {
    try
    {
      boolean bool = this.k;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void onStrategyChanged(StrategyBean paramStrategyBean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_1
    //   5: ifnull +35 -> 40
    //   8: aload_1
    //   9: getfield 348	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   12: aload_0
    //   13: getfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   16: if_icmpeq +24 -> 40
    //   19: ldc_w 350
    //   22: iconst_1
    //   23: anewarray 4	java/lang/Object
    //   26: dup
    //   27: iconst_0
    //   28: aload_1
    //   29: getfield 348	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   32: invokestatic 212	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   35: aastore
    //   36: invokestatic 121	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   39: pop
    //   40: invokestatic 128	com/tencent/bugly/crashreport/common/strategy/a:a	()Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   43: invokevirtual 353	com/tencent/bugly/crashreport/common/strategy/a:c	()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    //   46: getfield 348	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   49: ifeq +44 -> 93
    //   52: aload_0
    //   53: getfield 49	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:k	Z
    //   56: ifeq +37 -> 93
    //   59: iload_2
    //   60: aload_0
    //   61: getfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   64: if_icmpeq +26 -> 90
    //   67: ldc_w 355
    //   70: iconst_1
    //   71: anewarray 4	java/lang/Object
    //   74: dup
    //   75: iconst_0
    //   76: iload_2
    //   77: invokestatic 212	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   80: aastore
    //   81: invokestatic 141	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   84: pop
    //   85: aload_0
    //   86: iload_2
    //   87: invokespecial 357	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:b	(Z)V
    //   90: aload_0
    //   91: monitorexit
    //   92: return
    //   93: iconst_0
    //   94: istore_2
    //   95: goto -36 -> 59
    //   98: astore_1
    //   99: aload_0
    //   100: monitorexit
    //   101: aload_1
    //   102: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	this	NativeCrashHandler
    //   0	103	1	paramStrategyBean	StrategyBean
    //   1	94	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   8	40	98	finally
    //   40	59	98	finally
    //   59	90	98	finally
  }
  
  public boolean putKeyValueToNative(String paramString1, String paramString2)
  {
    if ((!this.i) || (!l)) {}
    do
    {
      do
      {
        return false;
      } while ((paramString1 == null) || (paramString2 == null));
      try
      {
        boolean bool = putNativeKeyValue(paramString1, paramString2);
        return bool;
      }
      catch (UnsatisfiedLinkError paramString1)
      {
        l = false;
        return false;
      }
      catch (Throwable paramString1) {}
    } while (w.a(paramString1));
    paramString1.printStackTrace();
    return false;
  }
  
  protected native boolean putNativeKeyValue(String paramString1, String paramString2);
  
  protected native String regist(String paramString, boolean paramBoolean, int paramInt);
  
  protected native String removeNativeKeyValue(String paramString);
  
  public void setDumpFilePath(String paramString)
  {
    try
    {
      this.f = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void setUserOpened(boolean paramBoolean)
  {
    c(paramBoolean);
    if ((com.tencent.bugly.crashreport.common.strategy.a.a().c().d) && (isUserOpened())) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      if (paramBoolean != this.j)
      {
        w.a("native changed to %b", new Object[] { Boolean.valueOf(paramBoolean) });
        b(paramBoolean);
      }
      return;
    }
  }
  
  public void startNativeMonitor()
  {
    boolean bool = true;
    String str1;
    int n;
    label53:
    label92:
    label122:
    try
    {
      if ((this.i) || (this.h))
      {
        a(this.g);
        return;
      }
      str1 = this.c.k;
      if ((str1 == null) || (str1.trim().length() <= 0)) {
        break label177;
      }
      n = 0;
      if (n == 0) {
        str1 = this.c.k;
      }
      str1 = this.c.k;
      if ((str1 == null) || (str1.trim().length() <= 0)) {
        break label182;
      }
      n = 0;
    }
    finally {}
    String str3 = this.c.k;
    if ((str3 != null) && (str3.trim().length() > 0)) {
      n = 0;
    }
    for (;;)
    {
      this.i = a(str1, bool);
      if ((!this.i) && (!this.h)) {
        break;
      }
      a(this.g);
      this.d.b(new Runnable()
      {
        public final void run()
        {
          if (!com.tencent.bugly.proguard.a.a(NativeCrashHandler.a(NativeCrashHandler.this), "native_record_lock", 10000L))
          {
            w.a("Failed to lock file for handling native crash record.", new Object[0]);
            return;
          }
          CrashDetailBean localCrashDetailBean = b.a(NativeCrashHandler.a(NativeCrashHandler.this), NativeCrashHandler.b(NativeCrashHandler.this), NativeCrashHandler.c(NativeCrashHandler.this));
          if (localCrashDetailBean != null)
          {
            if (!NativeCrashHandler.d(NativeCrashHandler.this).a(localCrashDetailBean)) {
              NativeCrashHandler.d(NativeCrashHandler.this).a(localCrashDetailBean, 5000L, false);
            }
            b.b(NativeCrashHandler.b(NativeCrashHandler.this));
            w.a("get crash from native record!", new Object[0]);
          }
          NativeCrashHandler.this.a();
          com.tencent.bugly.proguard.a.b(NativeCrashHandler.a(NativeCrashHandler.this), "native_record_lock");
        }
      });
      break;
      label177:
      n = 1;
      break label53;
      label182:
      n = 1;
      break label208;
      label187:
      String str2 = this.c.k;
      break label92;
      n = 1;
      label208:
      while (n != 0)
      {
        bool = false;
        break label122;
        if (n == 0) {
          break label187;
        }
        str2 = "Bugly";
        break;
      }
    }
  }
  
  protected native void testCrash();
  
  public void testNativeCrash()
  {
    if (!this.i)
    {
      w.d("libBugly.so has not been load! so fail!", new Object[0]);
      return;
    }
    testCrash();
  }
  
  protected native String unregist();
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\jni\NativeCrashHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */