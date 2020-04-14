package com.alipay.apmobilesecuritysdk.g;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class a
{
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramContext == null) || (com.alipay.b.a.a.a.a.a(paramString1)) || (com.alipay.b.a.a.a.a.a(paramString2))) {}
    for (;;)
    {
      return null;
      try
      {
        paramContext = com.alipay.b.a.a.d.c.a(paramContext, paramString1, paramString2, "");
        if (!com.alipay.b.a.a.a.a.a(paramContext))
        {
          paramContext = com.alipay.b.a.a.a.a.c.b(com.alipay.b.a.a.a.a.c.a(), paramContext);
          return paramContext;
        }
      }
      catch (Exception paramContext) {}
    }
    return null;
  }
  
  public static String a(String paramString1, String paramString2)
  {
    if ((com.alipay.b.a.a.a.a.a(paramString1)) || (com.alipay.b.a.a.a.a.a(paramString2))) {}
    for (;;)
    {
      return null;
      try
      {
        paramString1 = com.alipay.b.a.a.d.a.a(paramString1);
        if (!com.alipay.b.a.a.a.a.a(paramString1))
        {
          paramString1 = new JSONObject(paramString1).getString(paramString2);
          if (!com.alipay.b.a.a.a.a.a(paramString1))
          {
            paramString1 = com.alipay.b.a.a.a.a.c.b(com.alipay.b.a.a.a.a.c.a(), paramString1);
            return paramString1;
          }
        }
      }
      catch (Exception paramString1) {}
    }
    return null;
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((com.alipay.b.a.a.a.a.a(paramString1)) || (com.alipay.b.a.a.a.a.a(paramString2)) || (paramContext == null)) {
      return;
    }
    try
    {
      paramString3 = com.alipay.b.a.a.a.a.c.a(com.alipay.b.a.a.a.a.c.a(), paramString3);
      HashMap localHashMap = new HashMap();
      localHashMap.put(paramString2, paramString3);
      com.alipay.b.a.a.d.c.a(paramContext, paramString1, localHashMap);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  /* Error */
  public static void a(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 13	com/alipay/b/a/a/a/a:a	(Ljava/lang/String;)Z
    //   4: ifne +10 -> 14
    //   7: aload_1
    //   8: invokestatic 13	com/alipay/b/a/a/a/a:a	(Ljava/lang/String;)Z
    //   11: ifeq +4 -> 15
    //   14: return
    //   15: invokestatic 25	com/alipay/b/a/a/a/a/c:a	()Ljava/lang/String;
    //   18: aload_2
    //   19: invokestatic 47	com/alipay/b/a/a/a/a/c:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   22: astore_2
    //   23: new 37	org/json/JSONObject
    //   26: dup
    //   27: invokespecial 67	org/json/JSONObject:<init>	()V
    //   30: astore_3
    //   31: aload_3
    //   32: aload_1
    //   33: aload_2
    //   34: invokevirtual 70	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   37: pop
    //   38: aload_3
    //   39: invokevirtual 73	org/json/JSONObject:toString	()Ljava/lang/String;
    //   42: astore_1
    //   43: aload_1
    //   44: invokestatic 13	com/alipay/b/a/a/a/a:a	(Ljava/lang/String;)Z
    //   47: ifne +9 -> 56
    //   50: aload_0
    //   51: aload_1
    //   52: invokestatic 78	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   55: pop
    //   56: invokestatic 83	com/alipay/b/a/a/d/b:a	()Z
    //   59: ifeq -45 -> 14
    //   62: new 85	java/lang/StringBuilder
    //   65: dup
    //   66: ldc 87
    //   68: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   71: getstatic 94	java/io/File:separator	Ljava/lang/String;
    //   74: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: aload_0
    //   78: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: astore_0
    //   85: invokestatic 83	com/alipay/b/a/a/d/b:a	()Z
    //   88: ifeq -74 -> 14
    //   91: new 90	java/io/File
    //   94: dup
    //   95: invokestatic 105	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   98: aload_0
    //   99: invokespecial 108	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   102: astore_0
    //   103: aload_0
    //   104: invokevirtual 111	java/io/File:exists	()Z
    //   107: ifne +11 -> 118
    //   110: aload_0
    //   111: invokevirtual 114	java/io/File:getParentFile	()Ljava/io/File;
    //   114: invokevirtual 117	java/io/File:mkdirs	()Z
    //   117: pop
    //   118: new 90	java/io/File
    //   121: dup
    //   122: aload_0
    //   123: invokevirtual 120	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   126: invokespecial 121	java/io/File:<init>	(Ljava/lang/String;)V
    //   129: astore_0
    //   130: new 123	java/io/FileWriter
    //   133: dup
    //   134: aload_0
    //   135: iconst_0
    //   136: invokespecial 126	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   139: astore_0
    //   140: aload_0
    //   141: aload_1
    //   142: invokevirtual 129	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   145: aload_0
    //   146: invokevirtual 132	java/io/FileWriter:close	()V
    //   149: return
    //   150: astore_0
    //   151: return
    //   152: astore_0
    //   153: aconst_null
    //   154: astore_0
    //   155: aload_0
    //   156: ifnull -142 -> 14
    //   159: aload_0
    //   160: invokevirtual 132	java/io/FileWriter:close	()V
    //   163: return
    //   164: astore_0
    //   165: return
    //   166: astore_0
    //   167: aconst_null
    //   168: astore_1
    //   169: aload_1
    //   170: ifnull +7 -> 177
    //   173: aload_1
    //   174: invokevirtual 132	java/io/FileWriter:close	()V
    //   177: aload_0
    //   178: athrow
    //   179: astore_0
    //   180: return
    //   181: astore_1
    //   182: goto -5 -> 177
    //   185: astore_0
    //   186: return
    //   187: astore_1
    //   188: aload_0
    //   189: astore_2
    //   190: aload_1
    //   191: astore_0
    //   192: aload_2
    //   193: astore_1
    //   194: goto -25 -> 169
    //   197: astore_1
    //   198: goto -43 -> 155
    //   201: astore_2
    //   202: goto -146 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	paramString1	String
    //   0	205	1	paramString2	String
    //   0	205	2	paramString3	String
    //   30	9	3	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   145	149	150	java/io/IOException
    //   130	140	152	java/lang/Exception
    //   159	163	164	java/io/IOException
    //   130	140	166	finally
    //   85	118	179	java/lang/Exception
    //   118	130	179	java/lang/Exception
    //   145	149	179	java/lang/Exception
    //   159	163	179	java/lang/Exception
    //   173	177	179	java/lang/Exception
    //   177	179	179	java/lang/Exception
    //   173	177	181	java/io/IOException
    //   15	43	185	java/lang/Exception
    //   43	56	185	java/lang/Exception
    //   56	85	185	java/lang/Exception
    //   140	145	187	finally
    //   140	145	197	java/lang/Exception
    //   43	56	201	java/lang/Throwable
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\apmobilesecuritysdk\g\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */