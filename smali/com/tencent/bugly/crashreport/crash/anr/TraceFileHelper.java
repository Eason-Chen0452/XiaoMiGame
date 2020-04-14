package com.tencent.bugly.crashreport.crash.anr;

import com.tencent.bugly.proguard.w;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TraceFileHelper
{
  private static String a(BufferedReader paramBufferedReader)
    throws IOException
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < 3)
    {
      String str = paramBufferedReader.readLine();
      if (str == null) {
        return null;
      }
      localStringBuffer.append(str + "\n");
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  private static Object[] a(BufferedReader paramBufferedReader, Pattern... paramVarArgs)
    throws IOException
  {
    if ((paramBufferedReader == null) || (paramVarArgs == null)) {
      return null;
    }
    for (;;)
    {
      String str = paramBufferedReader.readLine();
      if (str == null) {
        break;
      }
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        Pattern localPattern = paramVarArgs[i];
        if (localPattern.matcher(str).matches()) {
          return new Object[] { localPattern, str };
        }
        i += 1;
      }
    }
  }
  
  private static String b(BufferedReader paramBufferedReader)
    throws IOException
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (;;)
    {
      String str = paramBufferedReader.readLine();
      if ((str == null) || (str.trim().length() <= 0)) {
        break;
      }
      localStringBuffer.append(str + "\n");
    }
    return localStringBuffer.toString();
  }
  
  public static a readFirstDumpInfo(String paramString, final boolean paramBoolean)
  {
    if (paramString == null)
    {
      w.e("path:%s", new Object[] { paramString });
      return null;
    }
    a locala = new a();
    readTraceFile(paramString, new b()
    {
      public final boolean a(long paramAnonymousLong)
      {
        w.c("process end %d", new Object[] { Long.valueOf(paramAnonymousLong) });
        return false;
      }
      
      public final boolean a(long paramAnonymousLong1, long paramAnonymousLong2, String paramAnonymousString)
      {
        w.c("new process %s", new Object[] { paramAnonymousString });
        this.a.a = paramAnonymousLong1;
        this.a.b = paramAnonymousString;
        this.a.c = paramAnonymousLong2;
        return paramBoolean;
      }
      
      public final boolean a(String paramAnonymousString1, int paramAnonymousInt, String paramAnonymousString2, String paramAnonymousString3)
      {
        w.c("new thread %s", new Object[] { paramAnonymousString1 });
        if (this.a.d == null) {
          this.a.d = new HashMap();
        }
        this.a.d.put(paramAnonymousString1, new String[] { paramAnonymousString2, paramAnonymousString3, paramAnonymousInt });
        return true;
      }
    });
    if ((locala.a > 0L) && (locala.c > 0L) && (locala.b != null)) {
      return locala;
    }
    w.e("first dump error %s", new Object[] { locala.a + " " + locala.c + " " + locala.b });
    return null;
  }
  
  public static a readTargetDumpInfo(String paramString1, String paramString2, final boolean paramBoolean)
  {
    if ((paramString1 == null) || (paramString2 == null)) {
      paramString1 = null;
    }
    a locala;
    do
    {
      return paramString1;
      locala = new a();
      readTraceFile(paramString2, new b()
      {
        public final boolean a(long paramAnonymousLong)
        {
          boolean bool = false;
          w.c("process end %d", new Object[] { Long.valueOf(paramAnonymousLong) });
          if ((this.a.a <= 0L) || (this.a.c <= 0L) || (this.a.b == null)) {
            bool = true;
          }
          return bool;
        }
        
        public final boolean a(long paramAnonymousLong1, long paramAnonymousLong2, String paramAnonymousString)
        {
          w.c("new process %s", new Object[] { paramAnonymousString });
          if (!paramAnonymousString.equals(paramAnonymousString)) {}
          do
          {
            return true;
            this.a.a = paramAnonymousLong1;
            this.a.b = paramAnonymousString;
            this.a.c = paramAnonymousLong2;
          } while (paramBoolean);
          return false;
        }
        
        public final boolean a(String paramAnonymousString1, int paramAnonymousInt, String paramAnonymousString2, String paramAnonymousString3)
        {
          w.c("new thread %s", new Object[] { paramAnonymousString1 });
          if ((this.a.a <= 0L) || (this.a.c <= 0L) || (this.a.b == null)) {
            return true;
          }
          if (this.a.d == null) {
            this.a.d = new HashMap();
          }
          this.a.d.put(paramAnonymousString1, new String[] { paramAnonymousString2, paramAnonymousString3, paramAnonymousInt });
          return true;
        }
      });
      if ((locala.a <= 0L) || (locala.c <= 0L)) {
        break;
      }
      paramString1 = locala;
    } while (locala.b != null);
    return null;
  }
  
  /* Error */
  public static void readTraceFile(String paramString, b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +7 -> 8
    //   4: aload_1
    //   5: ifnonnull +4 -> 9
    //   8: return
    //   9: new 111	java/io/File
    //   12: dup
    //   13: aload_0
    //   14: invokespecial 114	java/io/File:<init>	(Ljava/lang/String;)V
    //   17: astore 7
    //   19: aload 7
    //   21: invokevirtual 117	java/io/File:exists	()Z
    //   24: ifeq -16 -> 8
    //   27: aload 7
    //   29: invokevirtual 121	java/io/File:lastModified	()J
    //   32: pop2
    //   33: aload 7
    //   35: invokevirtual 123	java/io/File:length	()J
    //   38: pop2
    //   39: aconst_null
    //   40: astore_0
    //   41: new 27	java/io/BufferedReader
    //   44: dup
    //   45: new 125	java/io/FileReader
    //   48: dup
    //   49: aload 7
    //   51: invokespecial 128	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   54: invokespecial 131	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   57: astore 7
    //   59: ldc -123
    //   61: invokestatic 137	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   64: astore_0
    //   65: ldc -117
    //   67: invokestatic 137	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   70: astore 8
    //   72: ldc -115
    //   74: invokestatic 137	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   77: astore 9
    //   79: ldc -113
    //   81: invokestatic 137	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   84: astore 10
    //   86: new 145	java/text/SimpleDateFormat
    //   89: dup
    //   90: ldc -109
    //   92: getstatic 153	java/util/Locale:US	Ljava/util/Locale;
    //   95: invokespecial 156	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   98: astore 11
    //   100: aload 7
    //   102: iconst_1
    //   103: anewarray 51	java/util/regex/Pattern
    //   106: dup
    //   107: iconst_0
    //   108: aload_0
    //   109: aastore
    //   110: invokestatic 158	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:a	(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    //   113: astore 12
    //   115: aload 12
    //   117: ifnull +443 -> 560
    //   120: aload 12
    //   122: iconst_1
    //   123: aaload
    //   124: invokevirtual 159	java/lang/Object:toString	()Ljava/lang/String;
    //   127: ldc -95
    //   129: invokevirtual 165	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   132: astore 12
    //   134: aload 12
    //   136: iconst_2
    //   137: aaload
    //   138: invokestatic 171	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   141: lstore_2
    //   142: aload 11
    //   144: new 33	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   151: aload 12
    //   153: iconst_4
    //   154: aaload
    //   155: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: ldc 104
    //   160: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: aload 12
    //   165: iconst_5
    //   166: aaload
    //   167: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokevirtual 175	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   176: invokevirtual 180	java/util/Date:getTime	()J
    //   179: lstore 4
    //   181: aload 7
    //   183: iconst_1
    //   184: anewarray 51	java/util/regex/Pattern
    //   187: dup
    //   188: iconst_0
    //   189: aload 9
    //   191: aastore
    //   192: invokestatic 158	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:a	(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    //   195: astore 12
    //   197: aload 12
    //   199: ifnonnull +22 -> 221
    //   202: aload 7
    //   204: invokevirtual 183	java/io/BufferedReader:close	()V
    //   207: return
    //   208: astore_0
    //   209: aload_0
    //   210: invokestatic 186	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   213: ifne -205 -> 8
    //   216: aload_0
    //   217: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   220: return
    //   221: aload 9
    //   223: aload 12
    //   225: iconst_1
    //   226: aaload
    //   227: invokevirtual 159	java/lang/Object:toString	()Ljava/lang/String;
    //   230: invokevirtual 55	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   233: astore 12
    //   235: aload 12
    //   237: invokevirtual 192	java/util/regex/Matcher:find	()Z
    //   240: pop
    //   241: aload 12
    //   243: iconst_1
    //   244: invokevirtual 196	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   247: pop
    //   248: aload_1
    //   249: lload_2
    //   250: lload 4
    //   252: aload 12
    //   254: iconst_1
    //   255: invokevirtual 196	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   258: invokeinterface 199 6 0
    //   263: istore 6
    //   265: iload 6
    //   267: ifne +22 -> 289
    //   270: aload 7
    //   272: invokevirtual 183	java/io/BufferedReader:close	()V
    //   275: return
    //   276: astore_0
    //   277: aload_0
    //   278: invokestatic 186	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   281: ifne -273 -> 8
    //   284: aload_0
    //   285: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   288: return
    //   289: aload 7
    //   291: iconst_2
    //   292: anewarray 51	java/util/regex/Pattern
    //   295: dup
    //   296: iconst_0
    //   297: aload 10
    //   299: aastore
    //   300: dup
    //   301: iconst_1
    //   302: aload 8
    //   304: aastore
    //   305: invokestatic 158	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:a	(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    //   308: astore 12
    //   310: aload 12
    //   312: ifnull -212 -> 100
    //   315: aload 12
    //   317: iconst_0
    //   318: aaload
    //   319: aload 10
    //   321: if_acmpne +190 -> 511
    //   324: aload 12
    //   326: iconst_1
    //   327: aaload
    //   328: invokevirtual 159	java/lang/Object:toString	()Ljava/lang/String;
    //   331: astore 12
    //   333: ldc -55
    //   335: invokestatic 137	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   338: aload 12
    //   340: invokevirtual 55	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   343: astore 13
    //   345: aload 13
    //   347: invokevirtual 192	java/util/regex/Matcher:find	()Z
    //   350: pop
    //   351: aload 13
    //   353: invokevirtual 203	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   356: astore 13
    //   358: aload 13
    //   360: iconst_1
    //   361: aload 13
    //   363: invokevirtual 70	java/lang/String:length	()I
    //   366: iconst_1
    //   367: isub
    //   368: invokevirtual 207	java/lang/String:substring	(II)Ljava/lang/String;
    //   371: astore 13
    //   373: aload 12
    //   375: ldc -47
    //   377: invokevirtual 213	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   380: pop
    //   381: ldc -41
    //   383: invokestatic 137	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   386: aload 12
    //   388: invokevirtual 55	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   391: astore 12
    //   393: aload 12
    //   395: invokevirtual 192	java/util/regex/Matcher:find	()Z
    //   398: pop
    //   399: aload 12
    //   401: invokevirtual 203	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   404: astore 12
    //   406: aload_1
    //   407: aload 13
    //   409: aload 12
    //   411: aload 12
    //   413: ldc -39
    //   415: invokevirtual 221	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   418: iconst_1
    //   419: iadd
    //   420: invokevirtual 223	java/lang/String:substring	(I)Ljava/lang/String;
    //   423: invokestatic 228	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   426: aload 7
    //   428: invokestatic 230	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:a	(Ljava/io/BufferedReader;)Ljava/lang/String;
    //   431: aload 7
    //   433: invokestatic 232	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:b	(Ljava/io/BufferedReader;)Ljava/lang/String;
    //   436: invokeinterface 235 5 0
    //   441: pop
    //   442: goto -153 -> 289
    //   445: astore_1
    //   446: aload 7
    //   448: astore_0
    //   449: ldc -19
    //   451: iconst_2
    //   452: anewarray 4	java/lang/Object
    //   455: dup
    //   456: iconst_0
    //   457: aload_1
    //   458: invokevirtual 241	java/lang/Object:getClass	()Ljava/lang/Class;
    //   461: invokevirtual 246	java/lang/Class:getName	()Ljava/lang/String;
    //   464: aastore
    //   465: dup
    //   466: iconst_1
    //   467: new 33	java/lang/StringBuilder
    //   470: dup
    //   471: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   474: aload_1
    //   475: invokevirtual 249	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   478: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   481: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   484: aastore
    //   485: invokestatic 252	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   488: pop
    //   489: aload_0
    //   490: ifnull -482 -> 8
    //   493: aload_0
    //   494: invokevirtual 183	java/io/BufferedReader:close	()V
    //   497: return
    //   498: astore_0
    //   499: aload_0
    //   500: invokestatic 186	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   503: ifne -495 -> 8
    //   506: aload_0
    //   507: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   510: return
    //   511: aload_1
    //   512: aload 12
    //   514: iconst_1
    //   515: aaload
    //   516: invokevirtual 159	java/lang/Object:toString	()Ljava/lang/String;
    //   519: ldc -95
    //   521: invokevirtual 165	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   524: iconst_2
    //   525: aaload
    //   526: invokestatic 171	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   529: invokeinterface 255 3 0
    //   534: istore 6
    //   536: iload 6
    //   538: ifne -438 -> 100
    //   541: aload 7
    //   543: invokevirtual 183	java/io/BufferedReader:close	()V
    //   546: return
    //   547: astore_0
    //   548: aload_0
    //   549: invokestatic 186	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   552: ifne -544 -> 8
    //   555: aload_0
    //   556: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   559: return
    //   560: aload 7
    //   562: invokevirtual 183	java/io/BufferedReader:close	()V
    //   565: return
    //   566: astore_0
    //   567: aload_0
    //   568: invokestatic 186	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   571: ifne -563 -> 8
    //   574: aload_0
    //   575: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   578: return
    //   579: astore_0
    //   580: aconst_null
    //   581: astore_1
    //   582: aload_1
    //   583: ifnull +7 -> 590
    //   586: aload_1
    //   587: invokevirtual 183	java/io/BufferedReader:close	()V
    //   590: aload_0
    //   591: athrow
    //   592: astore_1
    //   593: aload_1
    //   594: invokestatic 186	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   597: ifne -7 -> 590
    //   600: aload_1
    //   601: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   604: goto -14 -> 590
    //   607: astore_0
    //   608: aload 7
    //   610: astore_1
    //   611: goto -29 -> 582
    //   614: astore 7
    //   616: aload_0
    //   617: astore_1
    //   618: aload 7
    //   620: astore_0
    //   621: goto -39 -> 582
    //   624: astore_1
    //   625: goto -176 -> 449
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	628	0	paramString	String
    //   0	628	1	paramb	b
    //   141	109	2	l1	long
    //   179	72	4	l2	long
    //   263	274	6	bool	boolean
    //   17	592	7	localObject1	Object
    //   614	5	7	localObject2	Object
    //   70	233	8	localPattern1	Pattern
    //   77	145	9	localPattern2	Pattern
    //   84	236	10	localPattern3	Pattern
    //   98	45	11	localSimpleDateFormat	java.text.SimpleDateFormat
    //   113	400	12	localObject3	Object
    //   343	65	13	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   202	207	208	java/io/IOException
    //   270	275	276	java/io/IOException
    //   59	100	445	java/lang/Exception
    //   100	115	445	java/lang/Exception
    //   120	197	445	java/lang/Exception
    //   221	265	445	java/lang/Exception
    //   289	310	445	java/lang/Exception
    //   324	442	445	java/lang/Exception
    //   511	536	445	java/lang/Exception
    //   493	497	498	java/io/IOException
    //   541	546	547	java/io/IOException
    //   560	565	566	java/io/IOException
    //   41	59	579	finally
    //   586	590	592	java/io/IOException
    //   59	100	607	finally
    //   100	115	607	finally
    //   120	197	607	finally
    //   221	265	607	finally
    //   289	310	607	finally
    //   324	442	607	finally
    //   511	536	607	finally
    //   449	489	614	finally
    //   41	59	624	java/lang/Exception
  }
  
  public static final class a
  {
    public long a;
    public String b;
    public long c;
    public Map<String, String[]> d;
  }
  
  public static abstract interface b
  {
    public abstract boolean a(long paramLong);
    
    public abstract boolean a(long paramLong1, long paramLong2, String paramString);
    
    public abstract boolean a(String paramString1, int paramInt, String paramString2, String paramString3);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\anr\TraceFileHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */