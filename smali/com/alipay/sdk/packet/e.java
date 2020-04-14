package com.alipay.sdk.packet;

import com.alipay.sdk.cons.a;
import com.alipay.sdk.encrypt.d;
import com.alipay.sdk.util.l;
import java.util.Locale;

public final class e
{
  private boolean a;
  private String b;
  
  public e(boolean paramBoolean)
  {
    this.a = paramBoolean;
    this.b = l.c();
  }
  
  private static int a(String paramString)
  {
    return Integer.parseInt(paramString);
  }
  
  private static String a(int paramInt)
  {
    return String.format(Locale.getDefault(), "%05d", new Object[] { Integer.valueOf(paramInt) });
  }
  
  private static byte[] a(String paramString1, String paramString2)
  {
    return d.a(paramString1, paramString2);
  }
  
  private static byte[] a(String paramString, byte[] paramArrayOfByte)
  {
    return com.alipay.sdk.encrypt.e.a(paramString, paramArrayOfByte);
  }
  
  /* Error */
  private static byte[] a(byte[]... paramVarArgs)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: arraylength
    //   4: ifne +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: new 64	java/io/ByteArrayOutputStream
    //   12: dup
    //   13: invokespecial 65	java/io/ByteArrayOutputStream:<init>	()V
    //   16: astore_3
    //   17: new 67	java/io/DataOutputStream
    //   20: dup
    //   21: aload_3
    //   22: invokespecial 70	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   25: astore 4
    //   27: iload_1
    //   28: aload_0
    //   29: arraylength
    //   30: if_icmpge +50 -> 80
    //   33: aload_0
    //   34: iload_1
    //   35: aaload
    //   36: arraylength
    //   37: istore_2
    //   38: aload 4
    //   40: invokestatic 37	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   43: ldc 39
    //   45: iconst_1
    //   46: anewarray 4	java/lang/Object
    //   49: dup
    //   50: iconst_0
    //   51: iload_2
    //   52: invokestatic 43	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   55: aastore
    //   56: invokestatic 49	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   59: invokevirtual 74	java/lang/String:getBytes	()[B
    //   62: invokevirtual 78	java/io/DataOutputStream:write	([B)V
    //   65: aload 4
    //   67: aload_0
    //   68: iload_1
    //   69: aaload
    //   70: invokevirtual 78	java/io/DataOutputStream:write	([B)V
    //   73: iload_1
    //   74: iconst_1
    //   75: iadd
    //   76: istore_1
    //   77: goto -50 -> 27
    //   80: aload 4
    //   82: invokevirtual 81	java/io/DataOutputStream:flush	()V
    //   85: aload_3
    //   86: invokevirtual 84	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   89: astore_0
    //   90: aload_3
    //   91: invokevirtual 87	java/io/ByteArrayOutputStream:close	()V
    //   94: aload 4
    //   96: invokevirtual 88	java/io/DataOutputStream:close	()V
    //   99: aload_0
    //   100: areturn
    //   101: astore_3
    //   102: aload_0
    //   103: areturn
    //   104: astore_0
    //   105: aconst_null
    //   106: astore_0
    //   107: aconst_null
    //   108: astore_3
    //   109: aload_3
    //   110: ifnull +7 -> 117
    //   113: aload_3
    //   114: invokevirtual 87	java/io/ByteArrayOutputStream:close	()V
    //   117: aload_0
    //   118: ifnull -111 -> 7
    //   121: aload_0
    //   122: invokevirtual 88	java/io/DataOutputStream:close	()V
    //   125: aconst_null
    //   126: areturn
    //   127: astore_0
    //   128: aconst_null
    //   129: areturn
    //   130: astore_0
    //   131: aconst_null
    //   132: astore_3
    //   133: aconst_null
    //   134: astore 4
    //   136: aload 4
    //   138: ifnull +8 -> 146
    //   141: aload 4
    //   143: invokevirtual 87	java/io/ByteArrayOutputStream:close	()V
    //   146: aload_3
    //   147: ifnull +7 -> 154
    //   150: aload_3
    //   151: invokevirtual 88	java/io/DataOutputStream:close	()V
    //   154: aload_0
    //   155: athrow
    //   156: astore_3
    //   157: goto -63 -> 94
    //   160: astore_3
    //   161: goto -44 -> 117
    //   164: astore 4
    //   166: goto -20 -> 146
    //   169: astore_3
    //   170: goto -16 -> 154
    //   173: astore_0
    //   174: aconst_null
    //   175: astore 5
    //   177: aload_3
    //   178: astore 4
    //   180: aload 5
    //   182: astore_3
    //   183: goto -47 -> 136
    //   186: astore_0
    //   187: aload 4
    //   189: astore 5
    //   191: aload_3
    //   192: astore 4
    //   194: aload 5
    //   196: astore_3
    //   197: goto -61 -> 136
    //   200: astore_0
    //   201: aconst_null
    //   202: astore_0
    //   203: goto -94 -> 109
    //   206: astore_0
    //   207: aload 4
    //   209: astore_0
    //   210: goto -101 -> 109
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	213	0	paramVarArgs	byte[][]
    //   1	76	1	i	int
    //   37	15	2	j	int
    //   16	75	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   101	1	3	localException1	Exception
    //   108	43	3	localObject1	Object
    //   156	1	3	localException2	Exception
    //   160	1	3	localException3	Exception
    //   169	9	3	localException4	Exception
    //   182	15	3	localObject2	Object
    //   25	117	4	localDataOutputStream	java.io.DataOutputStream
    //   164	1	4	localException5	Exception
    //   178	30	4	localObject3	Object
    //   175	20	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   94	99	101	java/lang/Exception
    //   9	17	104	java/lang/Exception
    //   121	125	127	java/lang/Exception
    //   9	17	130	finally
    //   90	94	156	java/lang/Exception
    //   113	117	160	java/lang/Exception
    //   141	146	164	java/lang/Exception
    //   150	154	169	java/lang/Exception
    //   17	27	173	finally
    //   27	73	186	finally
    //   80	90	186	finally
    //   17	27	200	java/lang/Exception
    //   27	73	206	java/lang/Exception
    //   80	90	206	java/lang/Exception
  }
  
  private static byte[] b(String paramString, byte[] paramArrayOfByte)
  {
    return com.alipay.sdk.encrypt.e.b(paramString, paramArrayOfByte);
  }
  
  /* Error */
  public final b a(c paramc)
  {
    // Byte code:
    //   0: new 93	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_1
    //   5: getfield 98	com/alipay/sdk/packet/c:b	[B
    //   8: invokespecial 100	java/io/ByteArrayInputStream:<init>	([B)V
    //   11: astore 4
    //   13: iconst_5
    //   14: newarray <illegal type>
    //   16: astore_3
    //   17: aload 4
    //   19: aload_3
    //   20: invokevirtual 104	java/io/ByteArrayInputStream:read	([B)I
    //   23: pop
    //   24: new 45	java/lang/String
    //   27: dup
    //   28: aload_3
    //   29: invokespecial 105	java/lang/String:<init>	([B)V
    //   32: invokestatic 30	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   35: newarray <illegal type>
    //   37: astore_3
    //   38: aload 4
    //   40: aload_3
    //   41: invokevirtual 104	java/io/ByteArrayInputStream:read	([B)I
    //   44: pop
    //   45: new 45	java/lang/String
    //   48: dup
    //   49: aload_3
    //   50: invokespecial 105	java/lang/String:<init>	([B)V
    //   53: astore 5
    //   55: iconst_5
    //   56: newarray <illegal type>
    //   58: astore_3
    //   59: aload 4
    //   61: aload_3
    //   62: invokevirtual 104	java/io/ByteArrayInputStream:read	([B)I
    //   65: pop
    //   66: new 45	java/lang/String
    //   69: dup
    //   70: aload_3
    //   71: invokespecial 105	java/lang/String:<init>	([B)V
    //   74: invokestatic 30	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   77: istore_2
    //   78: iload_2
    //   79: ifle +166 -> 245
    //   82: iload_2
    //   83: newarray <illegal type>
    //   85: astore 6
    //   87: aload 4
    //   89: aload 6
    //   91: invokevirtual 104	java/io/ByteArrayInputStream:read	([B)I
    //   94: pop
    //   95: aload 6
    //   97: astore_3
    //   98: aload_0
    //   99: getfield 15	com/alipay/sdk/packet/e:a	Z
    //   102: ifeq +13 -> 115
    //   105: aload_0
    //   106: getfield 23	com/alipay/sdk/packet/e:b	Ljava/lang/String;
    //   109: aload 6
    //   111: invokestatic 90	com/alipay/sdk/encrypt/e:b	(Ljava/lang/String;[B)[B
    //   114: astore_3
    //   115: aload_1
    //   116: getfield 106	com/alipay/sdk/packet/c:a	Z
    //   119: ifeq +121 -> 240
    //   122: aload_3
    //   123: invokestatic 111	com/alipay/sdk/encrypt/c:b	([B)[B
    //   126: astore_1
    //   127: new 45	java/lang/String
    //   130: dup
    //   131: aload_1
    //   132: invokespecial 105	java/lang/String:<init>	([B)V
    //   135: astore_1
    //   136: aload 4
    //   138: invokevirtual 112	java/io/ByteArrayInputStream:close	()V
    //   141: aload 5
    //   143: astore_3
    //   144: aload_3
    //   145: ifnonnull +56 -> 201
    //   148: aload_1
    //   149: ifnonnull +52 -> 201
    //   152: aconst_null
    //   153: areturn
    //   154: astore_3
    //   155: aload 5
    //   157: astore_3
    //   158: goto -14 -> 144
    //   161: astore_1
    //   162: aconst_null
    //   163: astore 4
    //   165: aconst_null
    //   166: astore_3
    //   167: aload 4
    //   169: ifnull +66 -> 235
    //   172: aload 4
    //   174: invokevirtual 112	java/io/ByteArrayInputStream:close	()V
    //   177: aconst_null
    //   178: astore_1
    //   179: goto -35 -> 144
    //   182: astore_1
    //   183: aconst_null
    //   184: astore_1
    //   185: goto -41 -> 144
    //   188: astore_1
    //   189: aconst_null
    //   190: astore_3
    //   191: aload_3
    //   192: ifnull +7 -> 199
    //   195: aload_3
    //   196: invokevirtual 112	java/io/ByteArrayInputStream:close	()V
    //   199: aload_1
    //   200: athrow
    //   201: new 114	com/alipay/sdk/packet/b
    //   204: dup
    //   205: aload_3
    //   206: aload_1
    //   207: invokespecial 117	com/alipay/sdk/packet/b:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   210: areturn
    //   211: astore_3
    //   212: goto -13 -> 199
    //   215: astore_1
    //   216: aload 4
    //   218: astore_3
    //   219: goto -28 -> 191
    //   222: astore_1
    //   223: aconst_null
    //   224: astore_3
    //   225: goto -58 -> 167
    //   228: astore_1
    //   229: aload 5
    //   231: astore_3
    //   232: goto -65 -> 167
    //   235: aconst_null
    //   236: astore_1
    //   237: goto -93 -> 144
    //   240: aload_3
    //   241: astore_1
    //   242: goto -115 -> 127
    //   245: aconst_null
    //   246: astore_1
    //   247: goto -111 -> 136
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	250	0	this	e
    //   0	250	1	paramc	c
    //   77	6	2	i	int
    //   16	129	3	localObject1	Object
    //   154	1	3	localException1	Exception
    //   157	49	3	localObject2	Object
    //   211	1	3	localException2	Exception
    //   218	23	3	localObject3	Object
    //   11	206	4	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   53	177	5	str	String
    //   85	25	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   136	141	154	java/lang/Exception
    //   0	13	161	java/lang/Exception
    //   172	177	182	java/lang/Exception
    //   0	13	188	finally
    //   195	199	211	java/lang/Exception
    //   13	55	215	finally
    //   55	78	215	finally
    //   82	95	215	finally
    //   98	115	215	finally
    //   115	127	215	finally
    //   127	136	215	finally
    //   13	55	222	java/lang/Exception
    //   55	78	228	java/lang/Exception
    //   82	95	228	java/lang/Exception
    //   98	115	228	java/lang/Exception
    //   115	127	228	java/lang/Exception
    //   127	136	228	java/lang/Exception
  }
  
  public final c a(b paramb, boolean paramBoolean)
  {
    arrayOfByte2 = paramb.a.getBytes();
    arrayOfByte1 = paramb.b.getBytes();
    paramb = arrayOfByte1;
    bool = paramBoolean;
    if (paramBoolean) {}
    try
    {
      paramb = com.alipay.sdk.encrypt.c.a(arrayOfByte1);
      bool = paramBoolean;
    }
    catch (Exception paramb)
    {
      for (;;)
      {
        bool = false;
        paramb = arrayOfByte1;
        continue;
        paramb = a(new byte[][] { arrayOfByte2, paramb });
      }
    }
    if (this.a)
    {
      paramb = a(new byte[][] { arrayOfByte2, d.a(this.b, a.b), com.alipay.sdk.encrypt.e.a(this.b, paramb) });
      return new c(bool, paramb);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\packet\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */