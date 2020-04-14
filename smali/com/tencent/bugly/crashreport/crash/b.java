package com.tencent.bugly.crashreport.crash;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.BuglyStrategy.a;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.ah;
import com.tencent.bugly.proguard.aj;
import com.tencent.bugly.proguard.ak;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.am;
import com.tencent.bugly.proguard.j;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.q;
import com.tencent.bugly.proguard.s;
import com.tencent.bugly.proguard.t;
import com.tencent.bugly.proguard.w;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
{
  private static int a = 0;
  private Context b;
  private o c;
  private com.tencent.bugly.crashreport.common.strategy.a d;
  private n e;
  private BuglyStrategy.a f;
  
  public b(int paramInt, Context paramContext, t paramt, o paramo, com.tencent.bugly.crashreport.common.strategy.a parama, BuglyStrategy.a parama1, n paramn)
  {
    a = paramInt;
    this.b = paramContext;
    this.c = paramo;
    this.d = parama;
    this.f = parama1;
    this.e = paramn;
  }
  
  private static CrashDetailBean a(Cursor paramCursor)
  {
    if (paramCursor == null) {
      paramCursor = null;
    }
    for (;;)
    {
      return paramCursor;
      try
      {
        Object localObject = paramCursor.getBlob(paramCursor.getColumnIndex("_dt"));
        if (localObject == null) {
          return null;
        }
        long l = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
        localObject = (CrashDetailBean)com.tencent.bugly.proguard.a.a((byte[])localObject, CrashDetailBean.CREATOR);
        paramCursor = (Cursor)localObject;
        if (localObject != null)
        {
          ((CrashDetailBean)localObject).a = l;
          return (CrashDetailBean)localObject;
        }
      }
      catch (Throwable paramCursor)
      {
        if (!w.a(paramCursor)) {
          paramCursor.printStackTrace();
        }
      }
    }
    return null;
  }
  
  private CrashDetailBean a(List<a> paramList, CrashDetailBean paramCrashDetailBean)
  {
    if ((paramList == null) || (paramList.size() == 0))
    {
      paramList = paramCrashDetailBean;
      return paramList;
    }
    Object localObject1 = null;
    Object localObject2 = new ArrayList(10);
    Object localObject3 = paramList.iterator();
    a locala;
    while (((Iterator)localObject3).hasNext())
    {
      locala = (a)((Iterator)localObject3).next();
      if (locala.e) {
        ((List)localObject2).add(locala);
      }
    }
    if (((List)localObject2).size() > 0)
    {
      localObject3 = b((List)localObject2);
      if ((localObject3 != null) && (((List)localObject3).size() > 0))
      {
        Collections.sort((List)localObject3);
        int i = 0;
        while (i < ((List)localObject3).size())
        {
          localObject2 = (CrashDetailBean)((List)localObject3).get(i);
          if (i == 0)
          {
            localObject1 = localObject2;
            label154:
            i += 1;
          }
          else
          {
            if (((CrashDetailBean)localObject2).s == null) {
              break label535;
            }
            localObject2 = ((CrashDetailBean)localObject2).s.split("\n");
            if (localObject2 == null) {
              break label535;
            }
            int k = localObject2.length;
            int j = 0;
            while (j < k)
            {
              locala = localObject2[j];
              if (!((CrashDetailBean)localObject1).s.contains(locala))
              {
                ((CrashDetailBean)localObject1).t += 1;
                ((CrashDetailBean)localObject1).s = (((CrashDetailBean)localObject1).s + locala + "\n");
              }
              j += 1;
            }
          }
        }
      }
    }
    for (;;)
    {
      if (localObject1 == null)
      {
        paramCrashDetailBean.j = true;
        paramCrashDetailBean.t = 0;
        paramCrashDetailBean.s = "";
        localObject1 = paramCrashDetailBean;
      }
      for (;;)
      {
        paramList = paramList.iterator();
        while (paramList.hasNext())
        {
          localObject2 = (a)paramList.next();
          if ((!((a)localObject2).e) && (!((a)localObject2).d) && (!((CrashDetailBean)localObject1).s.contains(((a)localObject2).b)))
          {
            ((CrashDetailBean)localObject1).t += 1;
            ((CrashDetailBean)localObject1).s = (((CrashDetailBean)localObject1).s + ((a)localObject2).b + "\n");
          }
        }
        paramList = (List<a>)localObject1;
        if (((CrashDetailBean)localObject1).r == paramCrashDetailBean.r) {
          break;
        }
        paramList = (List<a>)localObject1;
        if (((CrashDetailBean)localObject1).s.contains(paramCrashDetailBean.r)) {
          break;
        }
        ((CrashDetailBean)localObject1).t += 1;
        ((CrashDetailBean)localObject1).s = (((CrashDetailBean)localObject1).s + paramCrashDetailBean.r + "\n");
        return (CrashDetailBean)localObject1;
      }
      label535:
      break label154;
      localObject1 = null;
    }
  }
  
  /* Error */
  private static aj a(String paramString1, Context paramContext, String paramString2)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +7 -> 8
    //   4: aload_1
    //   5: ifnonnull +15 -> 20
    //   8: ldc -76
    //   10: iconst_0
    //   11: anewarray 4	java/lang/Object
    //   14: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   17: pop
    //   18: aconst_null
    //   19: areturn
    //   20: ldc -71
    //   22: iconst_1
    //   23: anewarray 4	java/lang/Object
    //   26: dup
    //   27: iconst_0
    //   28: aload_2
    //   29: aastore
    //   30: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   33: pop
    //   34: new 189	java/io/File
    //   37: dup
    //   38: aload_2
    //   39: invokespecial 192	java/io/File:<init>	(Ljava/lang/String;)V
    //   42: astore_2
    //   43: new 189	java/io/File
    //   46: dup
    //   47: aload_1
    //   48: invokevirtual 198	android/content/Context:getCacheDir	()Ljava/io/File;
    //   51: aload_0
    //   52: invokespecial 201	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   55: astore 4
    //   57: aload_2
    //   58: aload 4
    //   60: sipush 5000
    //   63: invokestatic 204	com/tencent/bugly/proguard/a:a	(Ljava/io/File;Ljava/io/File;I)Z
    //   66: ifne +15 -> 81
    //   69: ldc -50
    //   71: iconst_0
    //   72: anewarray 4	java/lang/Object
    //   75: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   78: pop
    //   79: aconst_null
    //   80: areturn
    //   81: new 208	java/io/ByteArrayOutputStream
    //   84: dup
    //   85: invokespecial 209	java/io/ByteArrayOutputStream:<init>	()V
    //   88: astore_2
    //   89: new 211	java/io/FileInputStream
    //   92: dup
    //   93: aload 4
    //   95: invokespecial 214	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   98: astore_1
    //   99: aload_1
    //   100: astore_0
    //   101: sipush 1000
    //   104: newarray <illegal type>
    //   106: astore 5
    //   108: aload_1
    //   109: astore_0
    //   110: aload_1
    //   111: aload 5
    //   113: invokevirtual 218	java/io/FileInputStream:read	([B)I
    //   116: istore_3
    //   117: iload_3
    //   118: ifle +72 -> 190
    //   121: aload_1
    //   122: astore_0
    //   123: aload_2
    //   124: aload 5
    //   126: iconst_0
    //   127: iload_3
    //   128: invokevirtual 222	java/io/ByteArrayOutputStream:write	([BII)V
    //   131: aload_1
    //   132: astore_0
    //   133: aload_2
    //   134: invokevirtual 225	java/io/ByteArrayOutputStream:flush	()V
    //   137: goto -29 -> 108
    //   140: astore_2
    //   141: aload_1
    //   142: astore_0
    //   143: aload_2
    //   144: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   147: ifne +9 -> 156
    //   150: aload_1
    //   151: astore_0
    //   152: aload_2
    //   153: invokevirtual 80	java/lang/Throwable:printStackTrace	()V
    //   156: aload_1
    //   157: ifnull +7 -> 164
    //   160: aload_1
    //   161: invokevirtual 228	java/io/FileInputStream:close	()V
    //   164: aload 4
    //   166: invokevirtual 231	java/io/File:exists	()Z
    //   169: ifeq -151 -> 18
    //   172: ldc -23
    //   174: iconst_0
    //   175: anewarray 4	java/lang/Object
    //   178: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   181: pop
    //   182: aload 4
    //   184: invokevirtual 236	java/io/File:delete	()Z
    //   187: pop
    //   188: aconst_null
    //   189: areturn
    //   190: aload_1
    //   191: astore_0
    //   192: aload_2
    //   193: invokevirtual 240	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   196: astore_2
    //   197: aload_1
    //   198: astore_0
    //   199: ldc -14
    //   201: iconst_1
    //   202: anewarray 4	java/lang/Object
    //   205: dup
    //   206: iconst_0
    //   207: aload_2
    //   208: arraylength
    //   209: invokestatic 248	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   212: aastore
    //   213: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   216: pop
    //   217: aload_1
    //   218: astore_0
    //   219: new 250	com/tencent/bugly/proguard/aj
    //   222: dup
    //   223: iconst_2
    //   224: aload 4
    //   226: invokevirtual 253	java/io/File:getName	()Ljava/lang/String;
    //   229: aload_2
    //   230: invokespecial 256	com/tencent/bugly/proguard/aj:<init>	(BLjava/lang/String;[B)V
    //   233: astore_2
    //   234: aload_1
    //   235: invokevirtual 228	java/io/FileInputStream:close	()V
    //   238: aload 4
    //   240: invokevirtual 231	java/io/File:exists	()Z
    //   243: ifeq +19 -> 262
    //   246: ldc -23
    //   248: iconst_0
    //   249: anewarray 4	java/lang/Object
    //   252: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   255: pop
    //   256: aload 4
    //   258: invokevirtual 236	java/io/File:delete	()Z
    //   261: pop
    //   262: aload_2
    //   263: areturn
    //   264: astore_0
    //   265: aload_0
    //   266: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   269: ifne -31 -> 238
    //   272: aload_0
    //   273: invokevirtual 257	java/io/IOException:printStackTrace	()V
    //   276: goto -38 -> 238
    //   279: astore_0
    //   280: aload_0
    //   281: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   284: ifne -120 -> 164
    //   287: aload_0
    //   288: invokevirtual 257	java/io/IOException:printStackTrace	()V
    //   291: goto -127 -> 164
    //   294: astore_1
    //   295: aconst_null
    //   296: astore_0
    //   297: aload_0
    //   298: ifnull +7 -> 305
    //   301: aload_0
    //   302: invokevirtual 228	java/io/FileInputStream:close	()V
    //   305: aload 4
    //   307: invokevirtual 231	java/io/File:exists	()Z
    //   310: ifeq +19 -> 329
    //   313: ldc -23
    //   315: iconst_0
    //   316: anewarray 4	java/lang/Object
    //   319: invokestatic 187	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   322: pop
    //   323: aload 4
    //   325: invokevirtual 236	java/io/File:delete	()Z
    //   328: pop
    //   329: aload_1
    //   330: athrow
    //   331: astore_0
    //   332: aload_0
    //   333: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   336: ifne -31 -> 305
    //   339: aload_0
    //   340: invokevirtual 257	java/io/IOException:printStackTrace	()V
    //   343: goto -38 -> 305
    //   346: astore_1
    //   347: goto -50 -> 297
    //   350: astore_2
    //   351: aconst_null
    //   352: astore_1
    //   353: goto -212 -> 141
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	356	0	paramString1	String
    //   0	356	1	paramContext	Context
    //   0	356	2	paramString2	String
    //   116	12	3	i	int
    //   55	269	4	localFile	java.io.File
    //   106	19	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   101	108	140	java/lang/Throwable
    //   110	117	140	java/lang/Throwable
    //   123	131	140	java/lang/Throwable
    //   133	137	140	java/lang/Throwable
    //   192	197	140	java/lang/Throwable
    //   199	217	140	java/lang/Throwable
    //   219	234	140	java/lang/Throwable
    //   234	238	264	java/io/IOException
    //   160	164	279	java/io/IOException
    //   89	99	294	finally
    //   301	305	331	java/io/IOException
    //   101	108	346	finally
    //   110	117	346	finally
    //   123	131	346	finally
    //   133	137	346	finally
    //   143	150	346	finally
    //   152	156	346	finally
    //   192	197	346	finally
    //   199	217	346	finally
    //   219	234	346	finally
    //   89	99	350	java/lang/Throwable
  }
  
  private static ak a(Context paramContext, CrashDetailBean paramCrashDetailBean, com.tencent.bugly.crashreport.common.info.a parama)
  {
    boolean bool2 = true;
    if ((paramContext == null) || (paramCrashDetailBean == null) || (parama == null))
    {
      w.d("enExp args == null", new Object[0]);
      return null;
    }
    ak localak = new ak();
    Object localObject1;
    Map.Entry localEntry;
    ah localah;
    switch (paramCrashDetailBean.b)
    {
    default: 
      w.e("crash type error! %d", new Object[] { Integer.valueOf(paramCrashDetailBean.b) });
      localak.b = paramCrashDetailBean.r;
      localak.c = paramCrashDetailBean.n;
      localak.d = paramCrashDetailBean.o;
      localak.e = paramCrashDetailBean.p;
      localak.g = paramCrashDetailBean.q;
      localak.h = paramCrashDetailBean.y;
      localak.i = paramCrashDetailBean.c;
      localak.j = null;
      localak.l = paramCrashDetailBean.m;
      localak.m = paramCrashDetailBean.e;
      localak.f = paramCrashDetailBean.A;
      localak.t = com.tencent.bugly.crashreport.common.info.a.a().h();
      localak.n = null;
      if ((paramCrashDetailBean.i != null) && (paramCrashDetailBean.i.size() > 0))
      {
        localak.o = new ArrayList();
        localObject1 = paramCrashDetailBean.i.entrySet().iterator();
      }
      break;
    case 3: 
    case 0: 
    case 1: 
    case 2: 
    case 4: 
    case 6: 
    case 5: 
      while (((Iterator)localObject1).hasNext())
      {
        localEntry = (Map.Entry)((Iterator)localObject1).next();
        localah = new ah();
        localah.a = ((PlugInBean)localEntry.getValue()).a;
        localah.c = ((PlugInBean)localEntry.getValue()).c;
        localah.d = ((PlugInBean)localEntry.getValue()).b;
        localah.b = parama.q();
        localak.o.add(localah);
        continue;
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "203";; localObject1 = "103")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "200";; localObject1 = "100")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "201";; localObject1 = "101")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "202";; localObject1 = "102")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "204";; localObject1 = "104")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "206";; localObject1 = "106")
        {
          localak.a = ((String)localObject1);
          break;
        }
        if (paramCrashDetailBean.j) {}
        for (localObject1 = "207";; localObject1 = "107")
        {
          localak.a = ((String)localObject1);
          break;
        }
      }
    }
    if ((paramCrashDetailBean.h != null) && (paramCrashDetailBean.h.size() > 0))
    {
      localak.p = new ArrayList();
      localObject1 = paramCrashDetailBean.h.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localEntry = (Map.Entry)((Iterator)localObject1).next();
        localah = new ah();
        localah.a = ((PlugInBean)localEntry.getValue()).a;
        localah.c = ((PlugInBean)localEntry.getValue()).c;
        localah.d = ((PlugInBean)localEntry.getValue()).b;
        localak.p.add(localah);
      }
    }
    if (paramCrashDetailBean.j)
    {
      localak.k = paramCrashDetailBean.t;
      if ((paramCrashDetailBean.s != null) && (paramCrashDetailBean.s.length() > 0)) {
        if (localak.q == null) {
          localak.q = new ArrayList();
        }
      }
    }
    label2673:
    Object localObject2;
    long l;
    boolean bool3;
    boolean bool4;
    boolean bool5;
    try
    {
      localak.q.add(new aj((byte)1, "alltimes.txt", paramCrashDetailBean.s.getBytes("utf-8")));
      int j = localak.k;
      if (localak.q != null)
      {
        i = localak.q.size();
        w.c("crashcount:%d sz:%d", new Object[] { Integer.valueOf(j), Integer.valueOf(i) });
        if (paramCrashDetailBean.w != null) {
          if (localak.q == null) {
            localak.q = new ArrayList();
          }
        }
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException3)
    {
      try
      {
        localak.q.add(new aj((byte)1, "log.txt", paramCrashDetailBean.w.getBytes("utf-8")));
        if ((paramCrashDetailBean.x != null) && (paramCrashDetailBean.x.length > 0))
        {
          localObject1 = new aj((byte)2, "buglylog.zip", paramCrashDetailBean.x);
          w.c("attach user log", new Object[0]);
          if (localak.q == null) {
            localak.q = new ArrayList();
          }
          localak.q.add(localObject1);
        }
        if (paramCrashDetailBean.b == 3)
        {
          if (localak.q == null) {
            localak.q = new ArrayList();
          }
          if ((paramCrashDetailBean.N == null) || (!paramCrashDetailBean.N.containsKey("BUGLY_CR_01"))) {}
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException3)
      {
        try
        {
          localak.q.add(new aj((byte)1, "anrMessage.txt", ((String)paramCrashDetailBean.N.get("BUGLY_CR_01")).getBytes("utf-8")));
          w.c("attach anr message", new Object[0]);
          paramCrashDetailBean.N.remove("BUGLY_CR_01");
          if (paramCrashDetailBean.v != null)
          {
            localObject1 = a("trace.zip", paramContext, paramCrashDetailBean.v);
            if (localObject1 != null)
            {
              w.c("attach traces", new Object[0]);
              localak.q.add(localObject1);
            }
          }
          if (paramCrashDetailBean.b == 1)
          {
            if (localak.q == null) {
              localak.q = new ArrayList();
            }
            if (paramCrashDetailBean.v != null)
            {
              paramContext = a("tomb.zip", paramContext, paramCrashDetailBean.v);
              if (paramContext != null)
              {
                w.c("attach tombs", new Object[0]);
                localak.q.add(paramContext);
              }
            }
          }
          if ((paramCrashDetailBean.S != null) && (paramCrashDetailBean.S.length > 0))
          {
            if (localak.q == null) {
              localak.q = new ArrayList();
            }
            localak.q.add(new aj((byte)1, "userExtraByteData", paramCrashDetailBean.S));
            w.c("attach extraData", new Object[0]);
          }
          localak.r = new HashMap();
          localak.r.put("A9", paramCrashDetailBean.B);
          localak.r.put("A11", paramCrashDetailBean.C);
          localak.r.put("A10", paramCrashDetailBean.D);
          localak.r.put("A23", paramCrashDetailBean.f);
          localak.r.put("A7", parama.e);
          localak.r.put("A6", parama.r());
          localak.r.put("A5", parama.q());
          localak.r.put("A22", parama.g());
          localak.r.put("A2", paramCrashDetailBean.F);
          localak.r.put("A1", paramCrashDetailBean.E);
          localak.r.put("A24", parama.g);
          localak.r.put("A17", paramCrashDetailBean.G);
          localak.r.put("A3", parama.j());
          localak.r.put("A16", parama.l());
          localak.r.put("A25", parama.m());
          localak.r.put("A14", parama.k());
          localak.r.put("A15", parama.t());
          localak.r.put("A13", parama.u());
          localak.r.put("A34", paramCrashDetailBean.z);
          if (parama.w != null) {
            localak.r.put("productIdentify", parama.w);
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException3)
        {
          try
          {
            for (;;)
            {
              localak.r.put("A26", URLEncoder.encode(paramCrashDetailBean.H, "utf-8"));
              if (paramCrashDetailBean.b == 1)
              {
                localak.r.put("A27", paramCrashDetailBean.J);
                localak.r.put("A28", paramCrashDetailBean.I);
                localak.r.put("A29", paramCrashDetailBean.k);
              }
              localak.r.put("A30", paramCrashDetailBean.K);
              localak.r.put("A18", paramCrashDetailBean.L);
              paramContext = localak.r;
              localObject1 = new StringBuilder();
              if (paramCrashDetailBean.M) {
                break;
              }
              bool1 = true;
              paramContext.put("A36", bool1);
              localak.r.put("F02", parama.p);
              localak.r.put("F03", parama.q);
              localak.r.put("F04", parama.d());
              localak.r.put("F05", parama.r);
              localak.r.put("F06", parama.o);
              localak.r.put("F08", parama.u);
              localak.r.put("F09", parama.v);
              localak.r.put("F10", parama.s);
              if (paramCrashDetailBean.O >= 0) {
                localak.r.put("C01", paramCrashDetailBean.O);
              }
              if (paramCrashDetailBean.P >= 0) {
                localak.r.put("C02", paramCrashDetailBean.P);
              }
              if ((paramCrashDetailBean.Q == null) || (paramCrashDetailBean.Q.size() <= 0)) {
                break label2673;
              }
              paramContext = paramCrashDetailBean.Q.entrySet().iterator();
              while (paramContext.hasNext())
              {
                localObject1 = (Map.Entry)paramContext.next();
                localak.r.put("C03_" + (String)((Map.Entry)localObject1).getKey(), ((Map.Entry)localObject1).getValue());
              }
              localUnsupportedEncodingException1 = localUnsupportedEncodingException1;
              localUnsupportedEncodingException1.printStackTrace();
              localak.q = null;
              continue;
              int i = 0;
              continue;
              localUnsupportedEncodingException2 = localUnsupportedEncodingException2;
              localUnsupportedEncodingException2.printStackTrace();
              localak.q = null;
            }
            localUnsupportedEncodingException3 = localUnsupportedEncodingException3;
            localUnsupportedEncodingException3.printStackTrace();
            localak.q = null;
          }
          catch (UnsupportedEncodingException paramContext)
          {
            for (;;)
            {
              paramContext.printStackTrace();
              continue;
              bool1 = false;
            }
            if ((paramCrashDetailBean.R != null) && (paramCrashDetailBean.R.size() > 0))
            {
              paramContext = paramCrashDetailBean.R.entrySet().iterator();
              while (paramContext.hasNext())
              {
                localObject2 = (Map.Entry)paramContext.next();
                localak.r.put("C04_" + (String)((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue());
              }
            }
            localak.s = null;
            if ((paramCrashDetailBean.N != null) && (paramCrashDetailBean.N.size() > 0))
            {
              localak.s = paramCrashDetailBean.N;
              w.a("setted message size %d", new Object[] { Integer.valueOf(localak.s.size()) });
            }
            paramContext = paramCrashDetailBean.n;
            localObject2 = paramCrashDetailBean.c;
            parama = parama.d();
            l = (paramCrashDetailBean.r - paramCrashDetailBean.L) / 1000L;
            bool3 = paramCrashDetailBean.k;
            bool4 = paramCrashDetailBean.M;
            bool5 = paramCrashDetailBean.j;
            if (paramCrashDetailBean.b != 1) {}
          }
        }
      }
    }
    for (boolean bool1 = bool2;; bool1 = false)
    {
      w.c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", new Object[] { paramContext, localObject2, parama, Long.valueOf(l), Boolean.valueOf(bool3), Boolean.valueOf(bool4), Boolean.valueOf(bool5), Boolean.valueOf(bool1), Integer.valueOf(paramCrashDetailBean.t), paramCrashDetailBean.s, Boolean.valueOf(paramCrashDetailBean.d), Integer.valueOf(localak.r.size()) });
      return localak;
    }
  }
  
  private static List<a> a(List<a> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    long l = com.tencent.bugly.proguard.a.o();
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      a locala = (a)paramList.next();
      if ((locala.d) && (locala.b < l - 86400000L)) {
        localArrayList.add(locala);
      }
    }
    return localArrayList;
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, Thread paramThread, String paramString4, CrashDetailBean paramCrashDetailBean)
  {
    com.tencent.bugly.crashreport.common.info.a locala = com.tencent.bugly.crashreport.common.info.a.a();
    if (locala == null) {
      return;
    }
    w.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
    w.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
    w.e("# PKG NAME: %s", new Object[] { locala.c });
    w.e("# APP VER: %s", new Object[] { locala.i });
    w.e("# LAUNCH TIME: %s", new Object[] { com.tencent.bugly.proguard.a.a(new Date(com.tencent.bugly.crashreport.common.info.a.a().a)) });
    w.e("# CRASH TYPE: %s", new Object[] { paramString1 });
    w.e("# CRASH TIME: %s", new Object[] { paramString2 });
    w.e("# CRASH PROCESS: %s", new Object[] { paramString3 });
    if (paramThread != null) {
      w.e("# CRASH THREAD: %s", new Object[] { paramThread.getName() });
    }
    if (paramCrashDetailBean != null)
    {
      w.e("# REPORT ID: %s", new Object[] { paramCrashDetailBean.c });
      paramString2 = locala.f;
      if (locala.u().booleanValue())
      {
        paramString1 = "ROOTED";
        w.e("# CRASH DEVICE: %s %s", new Object[] { paramString2, paramString1 });
        w.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", new Object[] { Long.valueOf(paramCrashDetailBean.B), Long.valueOf(paramCrashDetailBean.C), Long.valueOf(paramCrashDetailBean.D) });
        w.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", new Object[] { Long.valueOf(paramCrashDetailBean.E), Long.valueOf(paramCrashDetailBean.F), Long.valueOf(paramCrashDetailBean.G) });
        paramString1 = paramCrashDetailBean.J;
        if ((paramString1 == null) || (paramString1.trim().length() <= 0)) {
          break label439;
        }
        i = 0;
        label343:
        if (i != 0) {
          break label445;
        }
        w.e("# EXCEPTION FIRED BY %s %s", new Object[] { paramCrashDetailBean.J, paramCrashDetailBean.I });
      }
    }
    else
    {
      label375:
      if ((paramString4 == null) || (paramString4.trim().length() <= 0)) {
        break label517;
      }
    }
    label439:
    label445:
    label517:
    for (int i = 0;; i = 1)
    {
      if (i == 0)
      {
        w.e("# CRASH STACK: ", new Object[0]);
        w.e(paramString4, new Object[0]);
      }
      w.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
      return;
      paramString1 = "UNROOT";
      break;
      i = 1;
      break label343;
      if (paramCrashDetailBean.b != 3) {
        break label375;
      }
      if (paramCrashDetailBean.N == null) {}
      for (paramString1 = "null";; paramString1 = (String)paramCrashDetailBean.N.get("BUGLY_CR_01"))
      {
        w.e("# EXCEPTION ANR MESSAGE:\n %s", new Object[] { paramString1 });
        break;
      }
    }
  }
  
  public static void a(boolean paramBoolean, List<CrashDetailBean> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      w.c("up finish update state %b", new Object[] { Boolean.valueOf(paramBoolean) });
      Iterator localIterator = paramList.iterator();
      CrashDetailBean localCrashDetailBean;
      while (localIterator.hasNext())
      {
        localCrashDetailBean = (CrashDetailBean)localIterator.next();
        w.c("pre uid:%s uc:%d re:%b me:%b", new Object[] { localCrashDetailBean.c, Integer.valueOf(localCrashDetailBean.l), Boolean.valueOf(localCrashDetailBean.d), Boolean.valueOf(localCrashDetailBean.j) });
        localCrashDetailBean.l += 1;
        localCrashDetailBean.d = paramBoolean;
        w.c("set uid:%s uc:%d re:%b me:%b", new Object[] { localCrashDetailBean.c, Integer.valueOf(localCrashDetailBean.l), Boolean.valueOf(localCrashDetailBean.d), Boolean.valueOf(localCrashDetailBean.j) });
      }
      localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        localCrashDetailBean = (CrashDetailBean)localIterator.next();
        c.a().a(localCrashDetailBean);
      }
      w.c("update state size %d", new Object[] { Integer.valueOf(paramList.size()) });
    }
    if (!paramBoolean) {
      w.b("[crash] upload fail.", new Object[0]);
    }
  }
  
  private static a b(Cursor paramCursor)
  {
    boolean bool2 = true;
    if (paramCursor == null) {}
    for (;;)
    {
      return null;
      try
      {
        a locala = new a();
        locala.a = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
        locala.b = paramCursor.getLong(paramCursor.getColumnIndex("_tm"));
        locala.c = paramCursor.getString(paramCursor.getColumnIndex("_s1"));
        if (paramCursor.getInt(paramCursor.getColumnIndex("_up")) == 1)
        {
          bool1 = true;
          locala.d = bool1;
          if (paramCursor.getInt(paramCursor.getColumnIndex("_me")) != 1) {
            break label150;
          }
        }
        label150:
        for (boolean bool1 = bool2;; bool1 = false)
        {
          locala.e = bool1;
          locala.f = paramCursor.getInt(paramCursor.getColumnIndex("_uc"));
          return locala;
          bool1 = false;
          break;
        }
        if (w.a(paramCursor)) {}
      }
      catch (Throwable paramCursor) {}
    }
    paramCursor.printStackTrace();
    return null;
  }
  
  /* Error */
  private List<a> b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 89	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 338	java/util/ArrayList:<init>	()V
    //   9: astore 5
    //   11: invokestatic 808	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   14: ldc_w 810
    //   17: bipush 6
    //   19: anewarray 136	java/lang/String
    //   22: dup
    //   23: iconst_0
    //   24: ldc 54
    //   26: aastore
    //   27: dup
    //   28: iconst_1
    //   29: ldc_w 783
    //   32: aastore
    //   33: dup
    //   34: iconst_2
    //   35: ldc_w 785
    //   38: aastore
    //   39: dup
    //   40: iconst_3
    //   41: ldc_w 792
    //   44: aastore
    //   45: dup
    //   46: iconst_4
    //   47: ldc_w 798
    //   50: aastore
    //   51: dup
    //   52: iconst_5
    //   53: ldc_w 800
    //   56: aastore
    //   57: aconst_null
    //   58: aconst_null
    //   59: aconst_null
    //   60: iconst_1
    //   61: invokevirtual 813	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;
    //   64: astore 4
    //   66: aload 4
    //   68: astore_3
    //   69: aload_3
    //   70: ifnonnull +24 -> 94
    //   73: aload_3
    //   74: ifnull +18 -> 92
    //   77: aload_3
    //   78: invokeinterface 816 1 0
    //   83: ifne +9 -> 92
    //   86: aload_3
    //   87: invokeinterface 817 1 0
    //   92: aconst_null
    //   93: areturn
    //   94: new 142	java/lang/StringBuilder
    //   97: dup
    //   98: invokespecial 143	java/lang/StringBuilder:<init>	()V
    //   101: astore 4
    //   103: aload_3
    //   104: invokeinterface 820 1 0
    //   109: ifeq +149 -> 258
    //   112: aload_3
    //   113: invokestatic 822	com/tencent/bugly/crashreport/crash/b:b	(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;
    //   116: astore 6
    //   118: aload 6
    //   120: ifnull +53 -> 173
    //   123: aload 5
    //   125: aload 6
    //   127: invokeinterface 115 2 0
    //   132: pop
    //   133: goto -30 -> 103
    //   136: astore 4
    //   138: aload 4
    //   140: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   143: ifne +8 -> 151
    //   146: aload 4
    //   148: invokevirtual 80	java/lang/Throwable:printStackTrace	()V
    //   151: aload_3
    //   152: ifnull +18 -> 170
    //   155: aload_3
    //   156: invokeinterface 816 1 0
    //   161: ifne +9 -> 170
    //   164: aload_3
    //   165: invokeinterface 817 1 0
    //   170: aload 5
    //   172: areturn
    //   173: aload_3
    //   174: aload_3
    //   175: ldc 54
    //   177: invokeinterface 48 2 0
    //   182: invokeinterface 58 2 0
    //   187: lstore_1
    //   188: aload 4
    //   190: ldc_w 824
    //   193: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: ldc_w 826
    //   199: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: lload_1
    //   203: invokevirtual 170	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   206: pop
    //   207: goto -104 -> 103
    //   210: astore 6
    //   212: ldc_w 828
    //   215: iconst_0
    //   216: anewarray 4	java/lang/Object
    //   219: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   222: pop
    //   223: goto -120 -> 103
    //   226: astore 5
    //   228: aload_3
    //   229: astore 4
    //   231: aload 5
    //   233: astore_3
    //   234: aload 4
    //   236: ifnull +20 -> 256
    //   239: aload 4
    //   241: invokeinterface 816 1 0
    //   246: ifne +10 -> 256
    //   249: aload 4
    //   251: invokeinterface 817 1 0
    //   256: aload_3
    //   257: athrow
    //   258: aload 4
    //   260: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: astore 4
    //   265: aload 4
    //   267: invokevirtual 408	java/lang/String:length	()I
    //   270: ifle +48 -> 318
    //   273: aload 4
    //   275: iconst_4
    //   276: invokevirtual 831	java/lang/String:substring	(I)Ljava/lang/String;
    //   279: astore 4
    //   281: ldc_w 833
    //   284: iconst_2
    //   285: anewarray 4	java/lang/Object
    //   288: dup
    //   289: iconst_0
    //   290: ldc_w 810
    //   293: aastore
    //   294: dup
    //   295: iconst_1
    //   296: invokestatic 808	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   299: ldc_w 810
    //   302: aload 4
    //   304: aconst_null
    //   305: aconst_null
    //   306: iconst_1
    //   307: invokevirtual 836	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I
    //   310: invokestatic 248	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   313: aastore
    //   314: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   317: pop
    //   318: aload_3
    //   319: ifnull +18 -> 337
    //   322: aload_3
    //   323: invokeinterface 816 1 0
    //   328: ifne +9 -> 337
    //   331: aload_3
    //   332: invokeinterface 817 1 0
    //   337: aload 5
    //   339: areturn
    //   340: astore_3
    //   341: aconst_null
    //   342: astore 4
    //   344: goto -110 -> 234
    //   347: astore 5
    //   349: aload_3
    //   350: astore 4
    //   352: aload 5
    //   354: astore_3
    //   355: goto -121 -> 234
    //   358: astore 4
    //   360: goto -222 -> 138
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	363	0	this	b
    //   187	16	1	l	long
    //   1	331	3	localObject1	Object
    //   340	10	3	localObject2	Object
    //   354	1	3	localObject3	Object
    //   64	38	4	localObject4	Object
    //   136	53	4	localThrowable1	Throwable
    //   229	122	4	localObject5	Object
    //   358	1	4	localThrowable2	Throwable
    //   9	162	5	localArrayList	ArrayList
    //   226	112	5	localList	List<a>
    //   347	6	5	localObject6	Object
    //   116	10	6	locala	a
    //   210	1	6	localThrowable3	Throwable
    // Exception table:
    //   from	to	target	type
    //   94	103	136	java/lang/Throwable
    //   103	118	136	java/lang/Throwable
    //   123	133	136	java/lang/Throwable
    //   212	223	136	java/lang/Throwable
    //   258	318	136	java/lang/Throwable
    //   173	207	210	java/lang/Throwable
    //   94	103	226	finally
    //   103	118	226	finally
    //   123	133	226	finally
    //   173	207	226	finally
    //   212	223	226	finally
    //   258	318	226	finally
    //   11	66	340	finally
    //   138	151	347	finally
    //   11	66	358	java/lang/Throwable
  }
  
  /* Error */
  private List<CrashDetailBean> b(List<a> paramList)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +12 -> 13
    //   4: aload_1
    //   5: invokeinterface 87 1 0
    //   10: ifne +5 -> 15
    //   13: aconst_null
    //   14: areturn
    //   15: new 142	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 143	java/lang/StringBuilder:<init>	()V
    //   22: astore 5
    //   24: aload_1
    //   25: invokeinterface 96 1 0
    //   30: astore_1
    //   31: aload_1
    //   32: invokeinterface 102 1 0
    //   37: ifeq +40 -> 77
    //   40: aload_1
    //   41: invokeinterface 106 1 0
    //   46: checkcast 108	com/tencent/bugly/crashreport/crash/a
    //   49: astore 4
    //   51: aload 5
    //   53: ldc_w 824
    //   56: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: ldc_w 826
    //   62: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: aload 4
    //   67: getfield 781	com/tencent/bugly/crashreport/crash/a:a	J
    //   70: invokevirtual 170	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   73: pop
    //   74: goto -43 -> 31
    //   77: aload 5
    //   79: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: astore 4
    //   84: aload 4
    //   86: astore_1
    //   87: aload 4
    //   89: invokevirtual 408	java/lang/String:length	()I
    //   92: ifle +10 -> 102
    //   95: aload 4
    //   97: iconst_4
    //   98: invokevirtual 831	java/lang/String:substring	(I)Ljava/lang/String;
    //   101: astore_1
    //   102: aload 5
    //   104: iconst_0
    //   105: invokevirtual 840	java/lang/StringBuilder:setLength	(I)V
    //   108: invokestatic 808	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   111: ldc_w 810
    //   114: aconst_null
    //   115: aload_1
    //   116: aconst_null
    //   117: aconst_null
    //   118: iconst_1
    //   119: invokevirtual 813	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;
    //   122: astore_1
    //   123: aload_1
    //   124: ifnonnull +24 -> 148
    //   127: aload_1
    //   128: ifnull +18 -> 146
    //   131: aload_1
    //   132: invokeinterface 816 1 0
    //   137: ifne +9 -> 146
    //   140: aload_1
    //   141: invokeinterface 817 1 0
    //   146: aconst_null
    //   147: areturn
    //   148: new 89	java/util/ArrayList
    //   151: dup
    //   152: invokespecial 338	java/util/ArrayList:<init>	()V
    //   155: astore 4
    //   157: aload_1
    //   158: invokeinterface 820 1 0
    //   163: ifeq +148 -> 311
    //   166: aload_1
    //   167: invokestatic 842	com/tencent/bugly/crashreport/crash/b:a	(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    //   170: astore 6
    //   172: aload 6
    //   174: ifnull +52 -> 226
    //   177: aload 4
    //   179: aload 6
    //   181: invokeinterface 115 2 0
    //   186: pop
    //   187: goto -30 -> 157
    //   190: astore 4
    //   192: aload 4
    //   194: invokestatic 77	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   197: ifne +8 -> 205
    //   200: aload 4
    //   202: invokevirtual 80	java/lang/Throwable:printStackTrace	()V
    //   205: aload_1
    //   206: ifnull +18 -> 224
    //   209: aload_1
    //   210: invokeinterface 816 1 0
    //   215: ifne +9 -> 224
    //   218: aload_1
    //   219: invokeinterface 817 1 0
    //   224: aconst_null
    //   225: areturn
    //   226: aload_1
    //   227: aload_1
    //   228: ldc 54
    //   230: invokeinterface 48 2 0
    //   235: invokeinterface 58 2 0
    //   240: lstore_2
    //   241: aload 5
    //   243: ldc_w 824
    //   246: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: ldc_w 826
    //   252: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: lload_2
    //   256: invokevirtual 170	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   259: pop
    //   260: goto -103 -> 157
    //   263: astore 6
    //   265: ldc_w 828
    //   268: iconst_0
    //   269: anewarray 4	java/lang/Object
    //   272: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   275: pop
    //   276: goto -119 -> 157
    //   279: astore 5
    //   281: aload_1
    //   282: astore 4
    //   284: aload 5
    //   286: astore_1
    //   287: aload 4
    //   289: ifnull +20 -> 309
    //   292: aload 4
    //   294: invokeinterface 816 1 0
    //   299: ifne +10 -> 309
    //   302: aload 4
    //   304: invokeinterface 817 1 0
    //   309: aload_1
    //   310: athrow
    //   311: aload 5
    //   313: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   316: astore 5
    //   318: aload 5
    //   320: invokevirtual 408	java/lang/String:length	()I
    //   323: ifle +48 -> 371
    //   326: aload 5
    //   328: iconst_4
    //   329: invokevirtual 831	java/lang/String:substring	(I)Ljava/lang/String;
    //   332: astore 5
    //   334: ldc_w 833
    //   337: iconst_2
    //   338: anewarray 4	java/lang/Object
    //   341: dup
    //   342: iconst_0
    //   343: ldc_w 810
    //   346: aastore
    //   347: dup
    //   348: iconst_1
    //   349: invokestatic 808	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   352: ldc_w 810
    //   355: aload 5
    //   357: aconst_null
    //   358: aconst_null
    //   359: iconst_1
    //   360: invokevirtual 836	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I
    //   363: invokestatic 248	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   366: aastore
    //   367: invokestatic 183	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   370: pop
    //   371: aload_1
    //   372: ifnull +18 -> 390
    //   375: aload_1
    //   376: invokeinterface 816 1 0
    //   381: ifne +9 -> 390
    //   384: aload_1
    //   385: invokeinterface 817 1 0
    //   390: aload 4
    //   392: areturn
    //   393: astore_1
    //   394: aconst_null
    //   395: astore 4
    //   397: goto -110 -> 287
    //   400: astore 5
    //   402: aload_1
    //   403: astore 4
    //   405: aload 5
    //   407: astore_1
    //   408: goto -121 -> 287
    //   411: astore 4
    //   413: aconst_null
    //   414: astore_1
    //   415: goto -223 -> 192
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	418	0	this	b
    //   0	418	1	paramList	List<a>
    //   240	16	2	l	long
    //   49	129	4	localObject1	Object
    //   190	11	4	localThrowable1	Throwable
    //   282	122	4	localList	List<a>
    //   411	1	4	localThrowable2	Throwable
    //   22	220	5	localStringBuilder	StringBuilder
    //   279	33	5	localObject2	Object
    //   316	40	5	str	String
    //   400	6	5	localObject3	Object
    //   170	10	6	localCrashDetailBean	CrashDetailBean
    //   263	1	6	localThrowable3	Throwable
    // Exception table:
    //   from	to	target	type
    //   148	157	190	java/lang/Throwable
    //   157	172	190	java/lang/Throwable
    //   177	187	190	java/lang/Throwable
    //   265	276	190	java/lang/Throwable
    //   311	371	190	java/lang/Throwable
    //   226	260	263	java/lang/Throwable
    //   148	157	279	finally
    //   157	172	279	finally
    //   177	187	279	finally
    //   226	260	279	finally
    //   265	276	279	finally
    //   311	371	279	finally
    //   108	123	393	finally
    //   192	205	400	finally
    //   108	123	411	java/lang/Throwable
  }
  
  private static void c(List<a> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {}
    do
    {
      return;
      StringBuilder localStringBuilder = new StringBuilder();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (a)paramList.next();
        localStringBuilder.append(" or _id").append(" = ").append(((a)localObject).a);
      }
      Object localObject = localStringBuilder.toString();
      paramList = (List<a>)localObject;
      if (((String)localObject).length() > 0) {
        paramList = ((String)localObject).substring(4);
      }
      localStringBuilder.setLength(0);
      try
      {
        w.c("deleted %s data %d", new Object[] { "t_cr", Integer.valueOf(o.a().a("t_cr", paramList, null, null, true)) });
        return;
      }
      catch (Throwable paramList) {}
    } while (w.a(paramList));
    paramList.printStackTrace();
  }
  
  private static ContentValues d(CrashDetailBean paramCrashDetailBean)
  {
    int j = 1;
    if (paramCrashDetailBean == null) {}
    for (;;)
    {
      return null;
      try
      {
        ContentValues localContentValues = new ContentValues();
        if (paramCrashDetailBean.a > 0L) {
          localContentValues.put("_id", Long.valueOf(paramCrashDetailBean.a));
        }
        localContentValues.put("_tm", Long.valueOf(paramCrashDetailBean.r));
        localContentValues.put("_s1", paramCrashDetailBean.u);
        if (paramCrashDetailBean.d)
        {
          i = 1;
          localContentValues.put("_up", Integer.valueOf(i));
          if (!paramCrashDetailBean.j) {
            break label156;
          }
        }
        label156:
        for (int i = j;; i = 0)
        {
          localContentValues.put("_me", Integer.valueOf(i));
          localContentValues.put("_uc", Integer.valueOf(paramCrashDetailBean.l));
          Parcel localParcel = Parcel.obtain();
          paramCrashDetailBean.writeToParcel(localParcel, 0);
          paramCrashDetailBean = localParcel.marshall();
          localParcel.recycle();
          localContentValues.put("_dt", paramCrashDetailBean);
          return localContentValues;
          i = 0;
          break;
        }
        if (w.a(paramCrashDetailBean)) {}
      }
      catch (Throwable paramCrashDetailBean) {}
    }
    paramCrashDetailBean.printStackTrace();
    return null;
  }
  
  private static void d(List<CrashDetailBean> paramList)
  {
    if (paramList != null) {
      try
      {
        if (paramList.size() == 0) {
          return;
        }
        StringBuilder localStringBuilder = new StringBuilder();
        paramList = paramList.iterator();
        Object localObject;
        while (paramList.hasNext())
        {
          localObject = (CrashDetailBean)paramList.next();
          localStringBuilder.append(" or _id").append(" = ").append(((CrashDetailBean)localObject).a);
        }
        return;
      }
      catch (Throwable paramList)
      {
        if (!w.a(paramList))
        {
          paramList.printStackTrace();
          return;
          localObject = localStringBuilder.toString();
          paramList = (List<CrashDetailBean>)localObject;
          if (((String)localObject).length() > 0) {
            paramList = ((String)localObject).substring(4);
          }
          localStringBuilder.setLength(0);
          w.c("deleted %s data %d", new Object[] { "t_cr", Integer.valueOf(o.a().a("t_cr", paramList, null, null, true)) });
        }
      }
    }
  }
  
  public final List<CrashDetailBean> a()
  {
    Object localObject1 = com.tencent.bugly.crashreport.common.strategy.a.a().c();
    if (localObject1 == null) {
      w.d("have not synced remote!", new Object[0]);
    }
    long l1;
    long l2;
    do
    {
      return null;
      if (!((StrategyBean)localObject1).d)
      {
        w.d("Crashreport remote closed, please check your APPID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
        w.b("[init] WARNING! Crashreport closed by server, please check your APPID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
        return null;
      }
      l1 = System.currentTimeMillis();
      l2 = com.tencent.bugly.proguard.a.o();
      localList = b();
    } while ((localList == null) || (localList.size() <= 0));
    localObject1 = new ArrayList();
    Object localObject2 = localList.iterator();
    Object localObject3;
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (a)((Iterator)localObject2).next();
      if (((a)localObject3).b < l2 - c.f)
      {
        ((Iterator)localObject2).remove();
        ((List)localObject1).add(localObject3);
      }
      else if (((a)localObject3).d)
      {
        if (((a)localObject3).b >= l1 - 86400000L)
        {
          ((Iterator)localObject2).remove();
        }
        else if (!((a)localObject3).e)
        {
          ((Iterator)localObject2).remove();
          ((List)localObject1).add(localObject3);
        }
      }
      else if ((((a)localObject3).f >= 3L) && (((a)localObject3).b < l1 - 86400000L))
      {
        ((Iterator)localObject2).remove();
        ((List)localObject1).add(localObject3);
      }
    }
    if (((List)localObject1).size() > 0) {
      c((List)localObject1);
    }
    localObject1 = new ArrayList();
    List localList = b(localList);
    if ((localList != null) && (localList.size() > 0))
    {
      localObject2 = com.tencent.bugly.crashreport.common.info.a.a().i;
      localObject3 = localList.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        CrashDetailBean localCrashDetailBean = (CrashDetailBean)((Iterator)localObject3).next();
        if (!((String)localObject2).equals(localCrashDetailBean.f))
        {
          ((Iterator)localObject3).remove();
          ((List)localObject1).add(localCrashDetailBean);
        }
      }
    }
    if (((List)localObject1).size() > 0) {
      d((List)localObject1);
    }
    return localList;
  }
  
  public final void a(CrashDetailBean paramCrashDetailBean, long paramLong, boolean paramBoolean)
  {
    w.a("try to upload right now", new Object[0]);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramCrashDetailBean);
    a(localArrayList, 5000L, paramBoolean);
    int i = paramCrashDetailBean.b;
    if (this.e != null) {
      paramCrashDetailBean = this.e;
    }
  }
  
  public final void a(final List<CrashDetailBean> paramList, long paramLong, boolean paramBoolean)
  {
    Object localObject = null;
    if (!this.d.c().d)
    {
      w.d("remote report is disable!", new Object[0]);
      w.b("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new Object[0]);
    }
    while ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    for (;;)
    {
      Context localContext;
      com.tencent.bugly.crashreport.common.info.a locala;
      try
      {
        localContext = this.b;
        locala = com.tencent.bugly.crashreport.common.info.a.a();
        if ((localContext != null) && (paramList != null) && (paramList.size() != 0) && (locala != null)) {
          break label145;
        }
        w.d("enEXPPkg args == null!", new Object[0]);
        if (localObject != null) {
          break label217;
        }
        w.d("create eupPkg fail!", new Object[0]);
        return;
      }
      catch (Throwable paramList)
      {
        w.e("req cr error %s", new Object[] { paramList.toString() });
      }
      if (w.b(paramList)) {
        break;
      }
      paramList.printStackTrace();
      return;
      label145:
      localObject = new al();
      ((al)localObject).a = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        CrashDetailBean localCrashDetailBean = (CrashDetailBean)localIterator.next();
        ((al)localObject).a.add(a(localContext, localCrashDetailBean, locala));
        continue;
        label217:
        localObject = com.tencent.bugly.proguard.a.a((j)localObject);
        if (localObject == null)
        {
          w.d("send encode fail!", new Object[0]);
          return;
        }
        localObject = com.tencent.bugly.proguard.a.a(this.b, 630, (byte[])localObject);
        if (localObject == null)
        {
          w.d("request package is null.", new Object[0]);
          return;
        }
        paramList = new s()
        {
          public final void a(boolean paramAnonymousBoolean)
          {
            b localb = b.this;
            b.a(paramAnonymousBoolean, paramList);
          }
        };
        if (!paramBoolean)
        {
          t.a().a(a, (am)localObject, null, paramList);
          return;
        }
        t.a().a(a, (am)localObject, null, paramList, true, paramLong);
        w.a("wake up!", new Object[0]);
        return;
      }
    }
  }
  
  public final boolean a(CrashDetailBean paramCrashDetailBean)
  {
    return a(paramCrashDetailBean, -123456789);
  }
  
  public final boolean a(CrashDetailBean paramCrashDetailBean, int paramInt)
  {
    paramInt = paramCrashDetailBean.b;
    Object localObject1 = paramCrashDetailBean.n;
    localObject1 = paramCrashDetailBean.p;
    localObject1 = paramCrashDetailBean.q;
    long l = paramCrashDetailBean.r;
    localObject1 = paramCrashDetailBean.m;
    localObject1 = paramCrashDetailBean.e;
    localObject1 = paramCrashDetailBean.c;
    if ((this.e != null) && (!this.e.c())) {
      return true;
    }
    Object localObject2;
    if (paramCrashDetailBean.b != 2)
    {
      localObject1 = new q();
      ((q)localObject1).b = 1;
      ((q)localObject1).c = paramCrashDetailBean.z;
      ((q)localObject1).d = paramCrashDetailBean.A;
      ((q)localObject1).e = paramCrashDetailBean.r;
      localObject2 = this.c;
      o.b(1);
      this.c.a((q)localObject1);
      w.b("[crash] a crash occur, handling...", new Object[0]);
    }
    for (;;)
    {
      Object localObject3 = b();
      localObject2 = null;
      localObject1 = localObject2;
      if (localObject3 == null) {
        break label405;
      }
      localObject1 = localObject2;
      if (((List)localObject3).size() <= 0) {
        break label405;
      }
      localObject1 = new ArrayList(10);
      localObject2 = new ArrayList(10);
      ((List)localObject1).addAll(a((List)localObject3));
      ((List)localObject3).removeAll((Collection)localObject1);
      if ((com.tencent.bugly.b.b) || (!c.c)) {
        break label405;
      }
      localObject3 = ((List)localObject3).iterator();
      int i;
      for (paramInt = 0; ((Iterator)localObject3).hasNext(); paramInt = i)
      {
        a locala = (a)((Iterator)localObject3).next();
        i = paramInt;
        if (paramCrashDetailBean.u.equals(locala.c))
        {
          if (locala.e) {
            paramInt = 1;
          }
          ((List)localObject2).add(locala);
          i = paramInt;
        }
      }
      w.b("[crash] a caught exception occur, handling...", new Object[0]);
    }
    if ((paramInt != 0) || (((List)localObject2).size() + 1 >= 5))
    {
      w.a("same crash occur too much do merged!", new Object[0]);
      paramCrashDetailBean = a((List)localObject2, paramCrashDetailBean);
      paramCrashDetailBean.a = -1L;
      c(paramCrashDetailBean);
      ((List)localObject1).addAll((Collection)localObject2);
      c((List)localObject1);
      w.b("[crash] save crash success. this device crash many times, won't upload crashes immediately", new Object[0]);
      return true;
    }
    label405:
    c(paramCrashDetailBean);
    c((List)localObject1);
    w.b("[crash] save crash success", new Object[0]);
    return false;
  }
  
  public final void b(CrashDetailBean paramCrashDetailBean)
  {
    if (paramCrashDetailBean == null) {
      break label4;
    }
    label4:
    while ((this.f == null) && (this.e == null)) {
      return;
    }
    for (;;)
    {
      int j;
      Object localObject1;
      Object localObject2;
      Map.Entry localEntry;
      try
      {
        w.a("[crash callback] start user's callback:onCrashHandleStart()", new Object[0]);
        switch (paramCrashDetailBean.b)
        {
        case 3: 
          j = paramCrashDetailBean.b;
          localObject1 = paramCrashDetailBean.n;
          localObject1 = paramCrashDetailBean.p;
          localObject1 = paramCrashDetailBean.q;
          long l = paramCrashDetailBean.r;
          localObject1 = null;
          if (this.e == null) {
            break label542;
          }
          localObject2 = this.e;
          localObject2 = this.e.b();
          if (localObject2 != null)
          {
            localObject1 = new HashMap(1);
            ((Map)localObject1).put("userData", localObject2);
          }
          if ((localObject1 == null) || (((Map)localObject1).size() <= 0)) {
            break label602;
          }
          paramCrashDetailBean.N = new LinkedHashMap(((Map)localObject1).size());
          Iterator localIterator = ((Map)localObject1).entrySet().iterator();
          if (!localIterator.hasNext()) {
            break label602;
          }
          localEntry = (Map.Entry)localIterator.next();
          localObject1 = (String)localEntry.getKey();
          if ((localObject1 == null) || (((String)localObject1).trim().length() <= 0)) {
            break label750;
          }
          j = 0;
          if (j != 0) {
            continue;
          }
          localObject2 = (String)localEntry.getKey();
          localObject1 = localObject2;
          if (((String)localObject2).length() > 100)
          {
            localObject1 = ((String)localObject2).substring(0, 100);
            w.d("setted key length is over limit %d substring to %s", new Object[] { Integer.valueOf(100), localObject1 });
          }
          localObject2 = (String)localEntry.getValue();
          if ((localObject2 == null) || (((String)localObject2).trim().length() <= 0)) {
            break label755;
          }
          j = 0;
          if ((j != 0) || (((String)localEntry.getValue()).length() <= 30000)) {
            break label574;
          }
          localObject2 = ((String)localEntry.getValue()).substring(((String)localEntry.getValue()).length() - 30000);
          w.d("setted %s value length is over limit %d substring", new Object[] { localObject1, Integer.valueOf(30000) });
          paramCrashDetailBean.N.put(localObject1, localObject2);
          w.a("add setted key %s value size:%d", new Object[] { localObject1, Integer.valueOf(((String)localObject2).length()) });
          continue;
          if (w.a(paramCrashDetailBean)) {
            break label4;
          }
        }
      }
      catch (Throwable paramCrashDetailBean)
      {
        w.d("crash handle callback somthing wrong! %s", new Object[] { paramCrashDetailBean.getClass().getName() });
      }
      paramCrashDetailBean.printStackTrace();
      return;
      int i = 4;
      continue;
      i = 1;
      continue;
      i = 2;
      continue;
      i = 3;
      continue;
      i = 5;
      continue;
      i = 6;
      continue;
      label542:
      if (this.f != null)
      {
        localObject1 = this.f.onCrashHandleStart(i, paramCrashDetailBean.n, paramCrashDetailBean.o, paramCrashDetailBean.q);
        continue;
        label574:
        localObject2 = (String)localEntry.getValue();
        continue;
        label602:
        w.a("[crash callback] start user's callback:onCrashHandleStart2GetExtraDatas()", new Object[0]);
        localObject1 = null;
        if (this.e != null) {
          localObject1 = this.e.a();
        }
        for (;;)
        {
          paramCrashDetailBean.S = ((byte[])localObject1);
          if (paramCrashDetailBean.S == null) {
            break;
          }
          if (paramCrashDetailBean.S.length > 30000) {
            w.d("extra bytes size %d is over limit %d will drop over part", new Object[] { Integer.valueOf(paramCrashDetailBean.S.length), Integer.valueOf(30000) });
          }
          w.a("add extra bytes %d ", new Object[] { Integer.valueOf(paramCrashDetailBean.S.length) });
          return;
          if (this.f != null) {
            localObject1 = this.f.onCrashHandleStart2GetExtraDatas(i, paramCrashDetailBean.n, paramCrashDetailBean.o, paramCrashDetailBean.q);
          }
        }
        return;
        i = 0;
        continue;
        label750:
        j = 1;
        continue;
        label755:
        j = 1;
      }
    }
  }
  
  public final void c(CrashDetailBean paramCrashDetailBean)
  {
    if (paramCrashDetailBean == null) {}
    long l;
    do
    {
      ContentValues localContentValues;
      do
      {
        return;
        localContentValues = d(paramCrashDetailBean);
      } while (localContentValues == null);
      l = o.a().a("t_cr", localContentValues, null, true);
    } while (l < 0L);
    w.c("insert %s success!", new Object[] { "t_cr" });
    paramCrashDetailBean.a = l;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */