package com.alipay.sdk.sys;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.app.statistic.a;
import com.alipay.sdk.data.c;
import com.ta.utdid2.device.UTDevice;
import java.io.File;

public final class b
{
  private static b b;
  public Context a;
  
  public static b a()
  {
    if (b == null) {
      b = new b();
    }
    return b;
  }
  
  /* Error */
  private static String a(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: ldc 24
    //   2: astore 4
    //   4: aconst_null
    //   5: astore 6
    //   7: aconst_null
    //   8: astore 5
    //   10: aload 4
    //   12: astore_1
    //   13: aload 5
    //   15: astore_2
    //   16: aload 6
    //   18: astore_3
    //   19: new 26	java/lang/ProcessBuilder
    //   22: dup
    //   23: aload_0
    //   24: invokespecial 29	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   27: astore_0
    //   28: aload 4
    //   30: astore_1
    //   31: aload 5
    //   33: astore_2
    //   34: aload 6
    //   36: astore_3
    //   37: aload_0
    //   38: iconst_0
    //   39: invokevirtual 33	java/lang/ProcessBuilder:redirectErrorStream	(Z)Ljava/lang/ProcessBuilder;
    //   42: pop
    //   43: aload 4
    //   45: astore_1
    //   46: aload 5
    //   48: astore_2
    //   49: aload 6
    //   51: astore_3
    //   52: aload_0
    //   53: invokevirtual 37	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   56: astore_0
    //   57: aload 4
    //   59: astore_1
    //   60: aload_0
    //   61: astore_2
    //   62: aload_0
    //   63: astore_3
    //   64: new 39	java/io/DataOutputStream
    //   67: dup
    //   68: aload_0
    //   69: invokevirtual 45	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   72: invokespecial 48	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   75: astore 5
    //   77: aload 4
    //   79: astore_1
    //   80: aload_0
    //   81: astore_2
    //   82: aload_0
    //   83: astore_3
    //   84: new 50	java/io/DataInputStream
    //   87: dup
    //   88: aload_0
    //   89: invokevirtual 54	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   92: invokespecial 57	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   95: invokevirtual 61	java/io/DataInputStream:readLine	()Ljava/lang/String;
    //   98: astore 4
    //   100: aload 4
    //   102: astore_1
    //   103: aload_0
    //   104: astore_2
    //   105: aload_0
    //   106: astore_3
    //   107: aload 5
    //   109: ldc 63
    //   111: invokevirtual 67	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   114: aload 4
    //   116: astore_1
    //   117: aload_0
    //   118: astore_2
    //   119: aload_0
    //   120: astore_3
    //   121: aload 5
    //   123: invokevirtual 70	java/io/DataOutputStream:flush	()V
    //   126: aload 4
    //   128: astore_1
    //   129: aload_0
    //   130: astore_2
    //   131: aload_0
    //   132: astore_3
    //   133: aload_0
    //   134: invokevirtual 74	java/lang/Process:waitFor	()I
    //   137: pop
    //   138: aload_0
    //   139: invokevirtual 77	java/lang/Process:destroy	()V
    //   142: aload 4
    //   144: areturn
    //   145: astore_0
    //   146: aload_2
    //   147: invokevirtual 77	java/lang/Process:destroy	()V
    //   150: aload_1
    //   151: areturn
    //   152: astore_0
    //   153: aload_1
    //   154: areturn
    //   155: astore_0
    //   156: aload_3
    //   157: invokevirtual 77	java/lang/Process:destroy	()V
    //   160: aload_0
    //   161: athrow
    //   162: astore_0
    //   163: aload 4
    //   165: areturn
    //   166: astore_1
    //   167: goto -7 -> 160
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	170	0	paramArrayOfString	String[]
    //   12	142	1	str1	String
    //   166	1	1	localException	Exception
    //   15	132	2	localObject1	Object
    //   18	139	3	localObject2	Object
    //   2	162	4	str2	String
    //   8	114	5	localDataOutputStream	java.io.DataOutputStream
    //   5	45	6	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   19	28	145	java/lang/Throwable
    //   37	43	145	java/lang/Throwable
    //   52	57	145	java/lang/Throwable
    //   64	77	145	java/lang/Throwable
    //   84	100	145	java/lang/Throwable
    //   107	114	145	java/lang/Throwable
    //   121	126	145	java/lang/Throwable
    //   133	138	145	java/lang/Throwable
    //   146	150	152	java/lang/Exception
    //   19	28	155	finally
    //   37	43	155	finally
    //   52	57	155	finally
    //   64	77	155	finally
    //   84	100	155	finally
    //   107	114	155	finally
    //   121	126	155	finally
    //   133	138	155	finally
    //   138	142	162	java/lang/Exception
    //   156	160	166	java/lang/Exception
  }
  
  public static boolean b()
  {
    boolean bool = true;
    int i = 0;
    while (i < 5) {
      try
      {
        String str = new String[] { "/system/xbin/", "/system/bin/", "/system/sbin/", "/sbin/", "/vendor/bin/" }[i] + "su";
        if (new File(str).exists())
        {
          str = a(new String[] { "ls", "-l", str });
          if (!TextUtils.isEmpty(str))
          {
            i = str.indexOf("root");
            int j = str.lastIndexOf("root");
            if (i != j) {}
          }
          else
          {
            bool = false;
          }
          return bool;
        }
        i += 1;
      }
      catch (Exception localException) {}
    }
    return false;
  }
  
  private Context d()
  {
    return this.a;
  }
  
  private static c e()
  {
    return c.a();
  }
  
  public final void a(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }
  
  public final String c()
  {
    try
    {
      String str = UTDevice.getUtdid(this.a);
      return str;
    }
    catch (Throwable localThrowable)
    {
      a.a("third", "GetUtdidEx", localThrowable);
    }
    return "";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\sys\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */