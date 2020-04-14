package com.alipay.sdk.encrypt;

public final class c
{
  /* Error */
  public static byte[] a(byte[] paramArrayOfByte)
    throws java.io.IOException
  {
    // Byte code:
    //   0: new 17	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 20	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore 4
    //   10: new 22	java/io/ByteArrayOutputStream
    //   13: dup
    //   14: invokespecial 23	java/io/ByteArrayOutputStream:<init>	()V
    //   17: astore_3
    //   18: new 25	java/util/zip/GZIPOutputStream
    //   21: dup
    //   22: aload_3
    //   23: invokespecial 28	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   26: astore_2
    //   27: sipush 4096
    //   30: newarray <illegal type>
    //   32: astore_0
    //   33: aload 4
    //   35: aload_0
    //   36: invokevirtual 32	java/io/ByteArrayInputStream:read	([B)I
    //   39: istore_1
    //   40: iload_1
    //   41: iconst_m1
    //   42: if_icmpeq +42 -> 84
    //   45: aload_2
    //   46: aload_0
    //   47: iconst_0
    //   48: iload_1
    //   49: invokevirtual 36	java/util/zip/GZIPOutputStream:write	([BII)V
    //   52: goto -19 -> 33
    //   55: astore_0
    //   56: aload 4
    //   58: ifnull +8 -> 66
    //   61: aload 4
    //   63: invokevirtual 39	java/io/ByteArrayInputStream:close	()V
    //   66: aload_3
    //   67: ifnull +7 -> 74
    //   70: aload_3
    //   71: invokevirtual 40	java/io/ByteArrayOutputStream:close	()V
    //   74: aload_2
    //   75: ifnull +7 -> 82
    //   78: aload_2
    //   79: invokevirtual 41	java/util/zip/GZIPOutputStream:close	()V
    //   82: aload_0
    //   83: athrow
    //   84: aload_2
    //   85: invokevirtual 44	java/util/zip/GZIPOutputStream:flush	()V
    //   88: aload_2
    //   89: invokevirtual 47	java/util/zip/GZIPOutputStream:finish	()V
    //   92: aload_3
    //   93: invokevirtual 51	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   96: astore_0
    //   97: aload 4
    //   99: invokevirtual 39	java/io/ByteArrayInputStream:close	()V
    //   102: aload_3
    //   103: invokevirtual 40	java/io/ByteArrayOutputStream:close	()V
    //   106: aload_2
    //   107: invokevirtual 41	java/util/zip/GZIPOutputStream:close	()V
    //   110: aload_0
    //   111: areturn
    //   112: astore 4
    //   114: goto -12 -> 102
    //   117: astore_3
    //   118: goto -12 -> 106
    //   121: astore_2
    //   122: aload_0
    //   123: areturn
    //   124: astore 4
    //   126: goto -60 -> 66
    //   129: astore_3
    //   130: goto -56 -> 74
    //   133: astore_2
    //   134: goto -52 -> 82
    //   137: astore_0
    //   138: aconst_null
    //   139: astore_2
    //   140: aconst_null
    //   141: astore_3
    //   142: aconst_null
    //   143: astore 4
    //   145: goto -89 -> 56
    //   148: astore_0
    //   149: aconst_null
    //   150: astore_2
    //   151: aconst_null
    //   152: astore_3
    //   153: goto -97 -> 56
    //   156: astore_0
    //   157: aconst_null
    //   158: astore_2
    //   159: goto -103 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	paramArrayOfByte	byte[]
    //   39	10	1	i	int
    //   26	81	2	localGZIPOutputStream	java.util.zip.GZIPOutputStream
    //   121	1	2	localException1	Exception
    //   133	1	2	localException2	Exception
    //   139	20	2	localObject1	Object
    //   17	86	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   117	1	3	localException3	Exception
    //   129	1	3	localException4	Exception
    //   141	12	3	localObject2	Object
    //   8	90	4	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   112	1	4	localException5	Exception
    //   124	1	4	localException6	Exception
    //   143	1	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   27	33	55	finally
    //   33	40	55	finally
    //   45	52	55	finally
    //   84	97	55	finally
    //   97	102	112	java/lang/Exception
    //   102	106	117	java/lang/Exception
    //   106	110	121	java/lang/Exception
    //   61	66	124	java/lang/Exception
    //   70	74	129	java/lang/Exception
    //   78	82	133	java/lang/Exception
    //   0	10	137	finally
    //   10	18	148	finally
    //   18	27	156	finally
  }
  
  /* Error */
  public static byte[] b(byte[] paramArrayOfByte)
    throws java.io.IOException
  {
    // Byte code:
    //   0: new 17	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 20	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore 4
    //   10: new 55	java/util/zip/GZIPInputStream
    //   13: dup
    //   14: aload 4
    //   16: invokespecial 58	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   19: astore_3
    //   20: sipush 4096
    //   23: newarray <illegal type>
    //   25: astore_0
    //   26: new 22	java/io/ByteArrayOutputStream
    //   29: dup
    //   30: invokespecial 23	java/io/ByteArrayOutputStream:<init>	()V
    //   33: astore_2
    //   34: aload_3
    //   35: aload_0
    //   36: iconst_0
    //   37: sipush 4096
    //   40: invokevirtual 61	java/util/zip/GZIPInputStream:read	([BII)I
    //   43: istore_1
    //   44: iload_1
    //   45: iconst_m1
    //   46: if_icmpeq +29 -> 75
    //   49: aload_2
    //   50: aload_0
    //   51: iconst_0
    //   52: iload_1
    //   53: invokevirtual 62	java/io/ByteArrayOutputStream:write	([BII)V
    //   56: goto -22 -> 34
    //   59: astore_0
    //   60: aload_2
    //   61: invokevirtual 40	java/io/ByteArrayOutputStream:close	()V
    //   64: aload_3
    //   65: invokevirtual 63	java/util/zip/GZIPInputStream:close	()V
    //   68: aload 4
    //   70: invokevirtual 39	java/io/ByteArrayInputStream:close	()V
    //   73: aload_0
    //   74: athrow
    //   75: aload_2
    //   76: invokevirtual 64	java/io/ByteArrayOutputStream:flush	()V
    //   79: aload_2
    //   80: invokevirtual 51	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   83: astore_0
    //   84: aload_2
    //   85: invokevirtual 40	java/io/ByteArrayOutputStream:close	()V
    //   88: aload_3
    //   89: invokevirtual 63	java/util/zip/GZIPInputStream:close	()V
    //   92: aload 4
    //   94: invokevirtual 39	java/io/ByteArrayInputStream:close	()V
    //   97: aload_0
    //   98: areturn
    //   99: astore_2
    //   100: goto -12 -> 88
    //   103: astore_2
    //   104: goto -12 -> 92
    //   107: astore_2
    //   108: aload_0
    //   109: areturn
    //   110: astore_2
    //   111: goto -47 -> 64
    //   114: astore_2
    //   115: goto -47 -> 68
    //   118: astore_2
    //   119: goto -46 -> 73
    //   122: astore_0
    //   123: aconst_null
    //   124: astore_3
    //   125: aconst_null
    //   126: astore_2
    //   127: aconst_null
    //   128: astore 4
    //   130: goto -70 -> 60
    //   133: astore_0
    //   134: aconst_null
    //   135: astore_3
    //   136: aconst_null
    //   137: astore_2
    //   138: goto -78 -> 60
    //   141: astore_0
    //   142: aconst_null
    //   143: astore_2
    //   144: goto -84 -> 60
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	147	0	paramArrayOfByte	byte[]
    //   43	10	1	i	int
    //   33	52	2	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   99	1	2	localException1	Exception
    //   103	1	2	localException2	Exception
    //   107	1	2	localException3	Exception
    //   110	1	2	localException4	Exception
    //   114	1	2	localException5	Exception
    //   118	1	2	localException6	Exception
    //   126	18	2	localObject	Object
    //   19	117	3	localGZIPInputStream	java.util.zip.GZIPInputStream
    //   8	121	4	localByteArrayInputStream	java.io.ByteArrayInputStream
    // Exception table:
    //   from	to	target	type
    //   34	44	59	finally
    //   49	56	59	finally
    //   75	84	59	finally
    //   84	88	99	java/lang/Exception
    //   88	92	103	java/lang/Exception
    //   92	97	107	java/lang/Exception
    //   60	64	110	java/lang/Exception
    //   64	68	114	java/lang/Exception
    //   68	73	118	java/lang/Exception
    //   0	10	122	finally
    //   10	20	133	finally
    //   20	34	141	finally
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\encrypt\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */