package com.tencent.bugly.proguard;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class a
{
  protected HashMap<String, HashMap<String, byte[]>> a = new HashMap();
  protected String b;
  h c;
  private HashMap<String, Object> d;
  
  a()
  {
    new HashMap();
    this.d = new HashMap();
    this.b = "GBK";
    this.c = new h();
  }
  
  /* Error */
  public static am a(Context paramContext, int paramInt, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: invokestatic 42	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   3: astore 4
    //   5: invokestatic 47	com/tencent/bugly/crashreport/common/strategy/a:a	()Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   8: invokevirtual 50	com/tencent/bugly/crashreport/common/strategy/a:c	()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    //   11: astore 5
    //   13: aload 4
    //   15: ifnull +8 -> 23
    //   18: aload 5
    //   20: ifnonnull +15 -> 35
    //   23: ldc 52
    //   25: iconst_0
    //   26: anewarray 4	java/lang/Object
    //   29: invokestatic 58	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   32: pop
    //   33: aconst_null
    //   34: areturn
    //   35: new 60	com/tencent/bugly/proguard/am
    //   38: dup
    //   39: invokespecial 61	com/tencent/bugly/proguard/am:<init>	()V
    //   42: astore 6
    //   44: aload 4
    //   46: monitorenter
    //   47: aload 6
    //   49: iconst_1
    //   50: putfield 64	com/tencent/bugly/proguard/am:a	I
    //   53: aload 6
    //   55: aload 4
    //   57: invokevirtual 67	com/tencent/bugly/crashreport/common/info/a:e	()Ljava/lang/String;
    //   60: putfield 68	com/tencent/bugly/proguard/am:b	Ljava/lang/String;
    //   63: aload 6
    //   65: aload 4
    //   67: getfield 70	com/tencent/bugly/crashreport/common/info/a:c	Ljava/lang/String;
    //   70: putfield 71	com/tencent/bugly/proguard/am:c	Ljava/lang/String;
    //   73: aload 6
    //   75: aload 4
    //   77: getfield 74	com/tencent/bugly/crashreport/common/info/a:i	Ljava/lang/String;
    //   80: putfield 76	com/tencent/bugly/proguard/am:d	Ljava/lang/String;
    //   83: aload 6
    //   85: aload 4
    //   87: getfield 79	com/tencent/bugly/crashreport/common/info/a:j	Ljava/lang/String;
    //   90: putfield 81	com/tencent/bugly/proguard/am:e	Ljava/lang/String;
    //   93: aload 4
    //   95: invokevirtual 85	java/lang/Object:getClass	()Ljava/lang/Class;
    //   98: pop
    //   99: aload 6
    //   101: ldc 87
    //   103: putfield 90	com/tencent/bugly/proguard/am:f	Ljava/lang/String;
    //   106: aload 6
    //   108: iload_1
    //   109: putfield 93	com/tencent/bugly/proguard/am:g	I
    //   112: aload_2
    //   113: astore_3
    //   114: aload_2
    //   115: ifnonnull +9 -> 124
    //   118: ldc 95
    //   120: invokevirtual 101	java/lang/String:getBytes	()[B
    //   123: astore_3
    //   124: aload 6
    //   126: aload_3
    //   127: putfield 105	com/tencent/bugly/proguard/am:h	[B
    //   130: aload 6
    //   132: aload 4
    //   134: getfield 106	com/tencent/bugly/crashreport/common/info/a:f	Ljava/lang/String;
    //   137: putfield 107	com/tencent/bugly/proguard/am:i	Ljava/lang/String;
    //   140: aload 6
    //   142: aload 4
    //   144: getfield 109	com/tencent/bugly/crashreport/common/info/a:g	Ljava/lang/String;
    //   147: putfield 110	com/tencent/bugly/proguard/am:j	Ljava/lang/String;
    //   150: aload 6
    //   152: new 19	java/util/HashMap
    //   155: dup
    //   156: invokespecial 20	java/util/HashMap:<init>	()V
    //   159: putfield 114	com/tencent/bugly/proguard/am:k	Ljava/util/Map;
    //   162: aload 6
    //   164: aload 4
    //   166: invokevirtual 116	com/tencent/bugly/crashreport/common/info/a:d	()Ljava/lang/String;
    //   169: putfield 119	com/tencent/bugly/proguard/am:l	Ljava/lang/String;
    //   172: aload 6
    //   174: aload 5
    //   176: getfield 124	com/tencent/bugly/crashreport/common/strategy/StrategyBean:l	J
    //   179: putfield 127	com/tencent/bugly/proguard/am:m	J
    //   182: aload 6
    //   184: aload 4
    //   186: invokevirtual 129	com/tencent/bugly/crashreport/common/info/a:g	()Ljava/lang/String;
    //   189: putfield 132	com/tencent/bugly/proguard/am:o	Ljava/lang/String;
    //   192: aload 6
    //   194: aload_0
    //   195: invokestatic 135	com/tencent/bugly/proguard/a:e	(Landroid/content/Context;)Ljava/lang/String;
    //   198: putfield 138	com/tencent/bugly/proguard/am:p	Ljava/lang/String;
    //   201: aload 6
    //   203: invokestatic 144	java/lang/System:currentTimeMillis	()J
    //   206: putfield 147	com/tencent/bugly/proguard/am:q	J
    //   209: aload 6
    //   211: new 149	java/lang/StringBuilder
    //   214: dup
    //   215: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   218: aload 4
    //   220: invokevirtual 152	com/tencent/bugly/crashreport/common/info/a:j	()Ljava/lang/String;
    //   223: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: putfield 162	com/tencent/bugly/proguard/am:r	Ljava/lang/String;
    //   232: aload 6
    //   234: aload 4
    //   236: invokevirtual 164	com/tencent/bugly/crashreport/common/info/a:i	()Ljava/lang/String;
    //   239: putfield 167	com/tencent/bugly/proguard/am:s	Ljava/lang/String;
    //   242: aload 6
    //   244: new 149	java/lang/StringBuilder
    //   247: dup
    //   248: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   251: aload 4
    //   253: invokevirtual 169	com/tencent/bugly/crashreport/common/info/a:l	()Ljava/lang/String;
    //   256: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: putfield 172	com/tencent/bugly/proguard/am:t	Ljava/lang/String;
    //   265: aload 6
    //   267: aload 4
    //   269: invokevirtual 174	com/tencent/bugly/crashreport/common/info/a:k	()Ljava/lang/String;
    //   272: putfield 177	com/tencent/bugly/proguard/am:u	Ljava/lang/String;
    //   275: aload 6
    //   277: new 149	java/lang/StringBuilder
    //   280: dup
    //   281: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   284: aload 4
    //   286: invokevirtual 179	com/tencent/bugly/crashreport/common/info/a:m	()Ljava/lang/String;
    //   289: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: putfield 182	com/tencent/bugly/proguard/am:v	Ljava/lang/String;
    //   298: aload 6
    //   300: aload 6
    //   302: getfield 138	com/tencent/bugly/proguard/am:p	Ljava/lang/String;
    //   305: putfield 185	com/tencent/bugly/proguard/am:w	Ljava/lang/String;
    //   308: aload 4
    //   310: invokevirtual 85	java/lang/Object:getClass	()Ljava/lang/Class;
    //   313: pop
    //   314: aload 6
    //   316: ldc -69
    //   318: putfield 190	com/tencent/bugly/proguard/am:n	Ljava/lang/String;
    //   321: aload 4
    //   323: monitorexit
    //   324: aload 6
    //   326: getfield 114	com/tencent/bugly/proguard/am:k	Ljava/util/Map;
    //   329: ldc -64
    //   331: new 149	java/lang/StringBuilder
    //   334: dup
    //   335: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   338: aload 4
    //   340: getfield 196	com/tencent/bugly/crashreport/common/info/a:y	Z
    //   343: invokevirtual 199	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   346: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   349: invokeinterface 205 3 0
    //   354: pop
    //   355: aload 6
    //   357: getfield 114	com/tencent/bugly/proguard/am:k	Ljava/util/Map;
    //   360: ldc -49
    //   362: new 149	java/lang/StringBuilder
    //   365: dup
    //   366: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   369: aload 4
    //   371: getfield 210	com/tencent/bugly/crashreport/common/info/a:x	Z
    //   374: invokevirtual 199	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   377: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   380: invokeinterface 205 3 0
    //   385: pop
    //   386: aload 6
    //   388: areturn
    //   389: astore_0
    //   390: aload_0
    //   391: invokestatic 213	com/tencent/bugly/proguard/w:b	(Ljava/lang/Throwable;)Z
    //   394: ifne +7 -> 401
    //   397: aload_0
    //   398: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   401: aconst_null
    //   402: areturn
    //   403: astore_0
    //   404: aload 4
    //   406: monitorexit
    //   407: aload_0
    //   408: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	409	0	paramContext	Context
    //   0	409	1	paramInt	int
    //   0	409	2	paramArrayOfByte	byte[]
    //   113	14	3	arrayOfByte	byte[]
    //   3	402	4	locala	com.tencent.bugly.crashreport.common.info.a
    //   11	164	5	localStrategyBean	StrategyBean
    //   42	345	6	localam	am
    // Exception table:
    //   from	to	target	type
    //   35	47	389	java/lang/Throwable
    //   324	386	389	java/lang/Throwable
    //   404	409	389	java/lang/Throwable
    //   47	112	403	finally
    //   118	124	403	finally
    //   124	324	403	finally
  }
  
  public static an a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramArrayOfByte != null) {}
    for (;;)
    {
      try
      {
        Object localObject = new d();
        ((d)localObject).p();
        ((d)localObject).a("utf-8");
        ((d)localObject).a(paramArrayOfByte);
        paramArrayOfByte = ((d)localObject).b("detail", new an());
        if (!an.class.isInstance(paramArrayOfByte)) {
          break label166;
        }
        paramArrayOfByte = (an)an.class.cast(paramArrayOfByte);
        localObject = paramArrayOfByte;
        if (!paramBoolean)
        {
          localObject = paramArrayOfByte;
          if (paramArrayOfByte != null)
          {
            localObject = paramArrayOfByte;
            if (paramArrayOfByte.c != null)
            {
              localObject = paramArrayOfByte;
              if (paramArrayOfByte.c.length > 0)
              {
                w.c("resp buf %d", new Object[] { Integer.valueOf(paramArrayOfByte.c.length) });
                paramArrayOfByte.c = a(paramArrayOfByte.c, 2, 1, StrategyBean.a);
                localObject = paramArrayOfByte;
                if (paramArrayOfByte.c == null)
                {
                  w.e("resp sbuffer error!", new Object[0]);
                  localObject = null;
                }
              }
            }
          }
        }
        return (an)localObject;
      }
      catch (Throwable paramArrayOfByte)
      {
        if (!w.b(paramArrayOfByte)) {
          paramArrayOfByte.printStackTrace();
        }
      }
      return null;
      label166:
      paramArrayOfByte = null;
    }
  }
  
  public static aq a(UserInfoBean paramUserInfoBean)
  {
    if (paramUserInfoBean == null) {
      return null;
    }
    aq localaq = new aq();
    localaq.a = paramUserInfoBean.e;
    localaq.e = paramUserInfoBean.j;
    localaq.d = paramUserInfoBean.c;
    localaq.c = paramUserInfoBean.d;
    localaq.g = com.tencent.bugly.crashreport.common.info.a.a().h();
    if (paramUserInfoBean.o == 1)
    {
      bool = true;
      localaq.h = bool;
      switch (paramUserInfoBean.b)
      {
      default: 
        if ((paramUserInfoBean.b < 10) || (paramUserInfoBean.b >= 20)) {
          break;
        }
        localaq.b = ((byte)paramUserInfoBean.b);
      }
    }
    else
    {
      for (;;)
      {
        localaq.f = new HashMap();
        if (paramUserInfoBean.p >= 0) {
          localaq.f.put("C01", paramUserInfoBean.p);
        }
        if (paramUserInfoBean.q >= 0) {
          localaq.f.put("C02", paramUserInfoBean.q);
        }
        if ((paramUserInfoBean.r == null) || (paramUserInfoBean.r.size() <= 0)) {
          break label376;
        }
        localObject1 = paramUserInfoBean.r.entrySet().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Map.Entry)((Iterator)localObject1).next();
          localaq.f.put("C03_" + (String)((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue());
        }
        bool = false;
        break;
        localaq.b = 1;
        continue;
        localaq.b = 2;
        continue;
        localaq.b = 4;
        continue;
        localaq.b = 3;
      }
    }
    w.e("unknown uinfo type %d ", new Object[] { Integer.valueOf(paramUserInfoBean.b) });
    return null;
    label376:
    if ((paramUserInfoBean.s != null) && (paramUserInfoBean.s.size() > 0))
    {
      localObject1 = paramUserInfoBean.s.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localaq.f.put("C04_" + (String)((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue());
      }
    }
    Object localObject1 = localaq.f;
    Object localObject2 = new StringBuilder();
    if (!paramUserInfoBean.l) {}
    for (boolean bool = true;; bool = false)
    {
      ((Map)localObject1).put("A36", bool);
      localaq.f.put("F02", paramUserInfoBean.g);
      localaq.f.put("F03", paramUserInfoBean.h);
      localaq.f.put("F04", paramUserInfoBean.j);
      localaq.f.put("F05", paramUserInfoBean.i);
      localaq.f.put("F06", paramUserInfoBean.m);
      localaq.f.put("F10", paramUserInfoBean.k);
      w.c("summary type %d vm:%d", new Object[] { Byte.valueOf(localaq.b), Integer.valueOf(localaq.f.size()) });
      return localaq;
    }
  }
  
  public static ar a(List<UserInfoBean> paramList, int paramInt)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    Object localObject = com.tencent.bugly.crashreport.common.info.a.a();
    ar localar = new ar();
    localar.b = ((com.tencent.bugly.crashreport.common.info.a)localObject).d;
    localar.c = ((com.tencent.bugly.crashreport.common.info.a)localObject).g();
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      aq localaq = a((UserInfoBean)paramList.next());
      if (localaq != null) {
        localArrayList.add(localaq);
      }
    }
    localar.d = localArrayList;
    localar.e = new HashMap();
    localar.e.put("A7", ((com.tencent.bugly.crashreport.common.info.a)localObject).e);
    localar.e.put("A6", ((com.tencent.bugly.crashreport.common.info.a)localObject).r());
    localar.e.put("A5", ((com.tencent.bugly.crashreport.common.info.a)localObject).q());
    localar.e.put("A2", ((com.tencent.bugly.crashreport.common.info.a)localObject).o());
    localar.e.put("A1", ((com.tencent.bugly.crashreport.common.info.a)localObject).o());
    localar.e.put("A24", ((com.tencent.bugly.crashreport.common.info.a)localObject).g);
    localar.e.put("A17", ((com.tencent.bugly.crashreport.common.info.a)localObject).p());
    localar.e.put("A15", ((com.tencent.bugly.crashreport.common.info.a)localObject).t());
    localar.e.put("A13", ((com.tencent.bugly.crashreport.common.info.a)localObject).u());
    localar.e.put("F08", ((com.tencent.bugly.crashreport.common.info.a)localObject).u);
    localar.e.put("F09", ((com.tencent.bugly.crashreport.common.info.a)localObject).v);
    paramList = ((com.tencent.bugly.crashreport.common.info.a)localObject).A();
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramList = paramList.entrySet().iterator();
      while (paramList.hasNext())
      {
        localObject = (Map.Entry)paramList.next();
        localar.e.put("C04_" + (String)((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
      }
    }
    switch (paramInt)
    {
    default: 
      w.e("unknown up type %d ", new Object[] { Integer.valueOf(paramInt) });
      return null;
    }
    for (localar.a = 1;; localar.a = 2) {
      return localar;
    }
  }
  
  public static <T extends j> T a(byte[] paramArrayOfByte, Class<T> paramClass)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0)) {
      return null;
    }
    try
    {
      paramClass = (j)paramClass.newInstance();
      paramArrayOfByte = new h(paramArrayOfByte);
      paramArrayOfByte.a("utf-8");
      paramClass.a(paramArrayOfByte);
      return paramClass;
    }
    catch (Throwable paramArrayOfByte)
    {
      if (!w.b(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static Object a(String paramString1, String paramString2, Object paramObject, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramString1 = Class.forName(paramString1).getDeclaredMethod(paramString2, paramArrayOfClass);
      paramString1.setAccessible(true);
      paramString1 = paramString1.invoke(null, paramArrayOfObject);
      return paramString1;
    }
    catch (Exception paramString1) {}
    return null;
  }
  
  public static <T> T a(byte[] paramArrayOfByte, Parcelable.Creator<T> paramCreator)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    try
    {
      paramArrayOfByte = paramCreator.createFromParcel(localParcel);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
      return null;
    }
    finally
    {
      if (localParcel != null) {
        localParcel.recycle();
      }
    }
  }
  
  public static String a(Context paramContext)
  {
    Object localObject;
    if (!AppInfo.a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      w.d("no READ_PHONE_STATE permission to get IMEI", new Object[0]);
      localObject = "null";
    }
    for (;;)
    {
      return (String)localObject;
      if (paramContext == null) {
        return null;
      }
      try
      {
        paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
        localObject = paramContext;
        if (paramContext != null) {
          Log.i(w.a, "failed to get IMEI");
        }
      }
      catch (Throwable paramContext)
      {
        try
        {
          localObject = paramContext.toLowerCase();
          return (String)localObject;
        }
        catch (Throwable localThrowable)
        {
          for (;;) {}
        }
        paramContext = paramContext;
        paramContext = null;
      }
    }
    return paramContext;
  }
  
  /* Error */
  public static String a(Context paramContext, int paramInt, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 567
    //   4: invokestatic 532	com/tencent/bugly/crashreport/common/info/AppInfo:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   7: ifne +18 -> 25
    //   10: ldc_w 569
    //   13: iconst_0
    //   14: anewarray 4	java/lang/Object
    //   17: invokestatic 536	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   20: pop
    //   21: aconst_null
    //   22: astore_2
    //   23: aload_2
    //   24: areturn
    //   25: aload_2
    //   26: ifnonnull +214 -> 240
    //   29: iconst_4
    //   30: anewarray 97	java/lang/String
    //   33: astore_0
    //   34: aload_0
    //   35: iconst_0
    //   36: ldc_w 571
    //   39: aastore
    //   40: aload_0
    //   41: iconst_1
    //   42: ldc_w 573
    //   45: aastore
    //   46: aload_0
    //   47: iconst_2
    //   48: ldc_w 575
    //   51: aastore
    //   52: aload_0
    //   53: iconst_3
    //   54: ldc_w 577
    //   57: aastore
    //   58: aconst_null
    //   59: astore_2
    //   60: aconst_null
    //   61: astore 4
    //   63: new 149	java/lang/StringBuilder
    //   66: dup
    //   67: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   70: astore 5
    //   72: invokestatic 583	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   75: aload_0
    //   76: invokevirtual 587	java/lang/Runtime:exec	([Ljava/lang/String;)Ljava/lang/Process;
    //   79: astore_0
    //   80: new 589	java/io/BufferedReader
    //   83: dup
    //   84: new 591	java/io/InputStreamReader
    //   87: dup
    //   88: aload_0
    //   89: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   92: invokespecial 600	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   95: invokespecial 603	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   98: astore_2
    //   99: aload_2
    //   100: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   103: astore_3
    //   104: aload_3
    //   105: ifnull +178 -> 283
    //   108: aload 5
    //   110: aload_3
    //   111: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc_w 608
    //   117: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: pop
    //   121: iload_1
    //   122: ifle -23 -> 99
    //   125: aload 5
    //   127: invokevirtual 611	java/lang/StringBuilder:length	()I
    //   130: iload_1
    //   131: if_icmple -32 -> 99
    //   134: aload 5
    //   136: iconst_0
    //   137: aload 5
    //   139: invokevirtual 611	java/lang/StringBuilder:length	()I
    //   142: iload_1
    //   143: isub
    //   144: invokevirtual 615	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   147: pop
    //   148: goto -49 -> 99
    //   151: astore_3
    //   152: aload_0
    //   153: astore_2
    //   154: aload_3
    //   155: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   158: ifne +9 -> 167
    //   161: aload_0
    //   162: astore_2
    //   163: aload_3
    //   164: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   167: aload_0
    //   168: astore_2
    //   169: aload 5
    //   171: new 149	java/lang/StringBuilder
    //   174: dup
    //   175: ldc_w 619
    //   178: invokespecial 340	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   181: aload_3
    //   182: invokevirtual 620	java/lang/Throwable:toString	()Ljava/lang/String;
    //   185: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: ldc_w 622
    //   191: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: astore_3
    //   204: aload_3
    //   205: astore_2
    //   206: aload_0
    //   207: ifnull -184 -> 23
    //   210: aload_0
    //   211: invokevirtual 626	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   214: invokevirtual 631	java/io/OutputStream:close	()V
    //   217: aload_0
    //   218: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   221: invokevirtual 634	java/io/InputStream:close	()V
    //   224: aload_0
    //   225: invokevirtual 637	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   228: invokevirtual 634	java/io/InputStream:close	()V
    //   231: aload_3
    //   232: areturn
    //   233: astore_0
    //   234: aload_0
    //   235: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   238: aload_3
    //   239: areturn
    //   240: bipush 6
    //   242: anewarray 97	java/lang/String
    //   245: astore_0
    //   246: aload_0
    //   247: iconst_0
    //   248: ldc_w 571
    //   251: aastore
    //   252: aload_0
    //   253: iconst_1
    //   254: ldc_w 573
    //   257: aastore
    //   258: aload_0
    //   259: iconst_2
    //   260: ldc_w 575
    //   263: aastore
    //   264: aload_0
    //   265: iconst_3
    //   266: ldc_w 577
    //   269: aastore
    //   270: aload_0
    //   271: iconst_4
    //   272: ldc_w 640
    //   275: aastore
    //   276: aload_0
    //   277: iconst_5
    //   278: aload_2
    //   279: aastore
    //   280: goto -222 -> 58
    //   283: aload 5
    //   285: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: astore_3
    //   289: aload_3
    //   290: astore_2
    //   291: aload_0
    //   292: ifnull -269 -> 23
    //   295: aload_0
    //   296: invokevirtual 626	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   299: invokevirtual 631	java/io/OutputStream:close	()V
    //   302: aload_0
    //   303: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   306: invokevirtual 634	java/io/InputStream:close	()V
    //   309: aload_0
    //   310: invokevirtual 637	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   313: invokevirtual 634	java/io/InputStream:close	()V
    //   316: aload_3
    //   317: areturn
    //   318: astore_0
    //   319: aload_0
    //   320: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   323: aload_3
    //   324: areturn
    //   325: astore_2
    //   326: aload_2
    //   327: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   330: goto -28 -> 302
    //   333: astore_2
    //   334: aload_2
    //   335: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   338: goto -29 -> 309
    //   341: astore_2
    //   342: aload_2
    //   343: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   346: goto -129 -> 217
    //   349: astore_2
    //   350: aload_2
    //   351: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   354: goto -130 -> 224
    //   357: astore_0
    //   358: aload_2
    //   359: ifnull +24 -> 383
    //   362: aload_2
    //   363: invokevirtual 626	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   366: invokevirtual 631	java/io/OutputStream:close	()V
    //   369: aload_2
    //   370: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   373: invokevirtual 634	java/io/InputStream:close	()V
    //   376: aload_2
    //   377: invokevirtual 637	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   380: invokevirtual 634	java/io/InputStream:close	()V
    //   383: aload_0
    //   384: athrow
    //   385: astore_3
    //   386: aload_3
    //   387: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   390: goto -21 -> 369
    //   393: astore_3
    //   394: aload_3
    //   395: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   398: goto -22 -> 376
    //   401: astore_2
    //   402: aload_2
    //   403: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   406: goto -23 -> 383
    //   409: astore_3
    //   410: aload_0
    //   411: astore_2
    //   412: aload_3
    //   413: astore_0
    //   414: goto -56 -> 358
    //   417: astore_3
    //   418: aload 4
    //   420: astore_0
    //   421: goto -269 -> 152
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	424	0	paramContext	Context
    //   0	424	1	paramInt	int
    //   0	424	2	paramString	String
    //   103	8	3	str1	String
    //   151	31	3	localThrowable1	Throwable
    //   203	121	3	str2	String
    //   385	2	3	localIOException1	java.io.IOException
    //   393	2	3	localIOException2	java.io.IOException
    //   409	4	3	localObject1	Object
    //   417	1	3	localThrowable2	Throwable
    //   61	358	4	localObject2	Object
    //   70	214	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   80	99	151	java/lang/Throwable
    //   99	104	151	java/lang/Throwable
    //   108	121	151	java/lang/Throwable
    //   125	148	151	java/lang/Throwable
    //   283	289	151	java/lang/Throwable
    //   224	231	233	java/io/IOException
    //   309	316	318	java/io/IOException
    //   295	302	325	java/io/IOException
    //   302	309	333	java/io/IOException
    //   210	217	341	java/io/IOException
    //   217	224	349	java/io/IOException
    //   72	80	357	finally
    //   154	161	357	finally
    //   163	167	357	finally
    //   169	204	357	finally
    //   362	369	385	java/io/IOException
    //   369	376	393	java/io/IOException
    //   376	383	401	java/io/IOException
    //   80	99	409	finally
    //   99	104	409	finally
    //   108	121	409	finally
    //   125	148	409	finally
    //   283	289	409	finally
    //   72	80	417	java/lang/Throwable
  }
  
  public static String a(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramString.trim().equals(""))) {
      return "";
    }
    paramContext = a(paramContext, new String[] { "/system/bin/sh", "-c", "getprop " + paramString });
    if ((paramContext != null) && (paramContext.size() > 0)) {
      return (String)paramContext.get(0);
    }
    return "fail";
  }
  
  public static String a(Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return "";
    }
    try
    {
      StringWriter localStringWriter = new StringWriter();
      paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
      paramThrowable = localStringWriter.getBuffer().toString();
      return paramThrowable;
    }
    catch (Throwable paramThrowable)
    {
      if (!w.a(paramThrowable)) {
        paramThrowable.printStackTrace();
      }
    }
    return "fail";
  }
  
  public static String a(ArrayList<String> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    String str1;
    if (i < paramArrayList.size())
    {
      String str2 = (String)paramArrayList.get(i);
      if ((str2.equals("java.lang.Integer")) || (str2.equals("int"))) {
        str1 = "int32";
      }
      for (;;)
      {
        paramArrayList.set(i, str1);
        i += 1;
        break;
        if ((str2.equals("java.lang.Boolean")) || (str2.equals("boolean")))
        {
          str1 = "bool";
        }
        else if ((str2.equals("java.lang.Byte")) || (str2.equals("byte")))
        {
          str1 = "char";
        }
        else if ((str2.equals("java.lang.Double")) || (str2.equals("double")))
        {
          str1 = "double";
        }
        else if ((str2.equals("java.lang.Float")) || (str2.equals("float")))
        {
          str1 = "float";
        }
        else if ((str2.equals("java.lang.Long")) || (str2.equals("long")))
        {
          str1 = "int64";
        }
        else if ((str2.equals("java.lang.Short")) || (str2.equals("short")))
        {
          str1 = "short";
        }
        else
        {
          if (str2.equals("java.lang.Character")) {
            throw new IllegalArgumentException("can not support java.lang.Character");
          }
          if (str2.equals("java.lang.String"))
          {
            str1 = "string";
          }
          else if (str2.equals("java.util.List"))
          {
            str1 = "list";
          }
          else
          {
            str1 = str2;
            if (str2.equals("java.util.Map")) {
              str1 = "map";
            }
          }
        }
      }
    }
    Collections.reverse(paramArrayList);
    i = 0;
    if (i < paramArrayList.size())
    {
      str1 = (String)paramArrayList.get(i);
      if (str1.equals("list"))
      {
        paramArrayList.set(i - 1, "<" + (String)paramArrayList.get(i - 1));
        paramArrayList.set(0, (String)paramArrayList.get(0) + ">");
      }
      for (;;)
      {
        i += 1;
        break;
        if (str1.equals("map"))
        {
          paramArrayList.set(i - 1, "<" + (String)paramArrayList.get(i - 1) + ",");
          paramArrayList.set(0, (String)paramArrayList.get(0) + ">");
        }
        else if (str1.equals("Array"))
        {
          paramArrayList.set(i - 1, "<" + (String)paramArrayList.get(i - 1));
          paramArrayList.set(0, (String)paramArrayList.get(0) + ">");
        }
      }
    }
    Collections.reverse(paramArrayList);
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      localStringBuffer.append((String)paramArrayList.next());
    }
    return localStringBuffer.toString();
  }
  
  public static String a(Date paramDate)
  {
    if (paramDate == null) {
      return null;
    }
    try
    {
      paramDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(paramDate);
      return paramDate;
    }
    catch (Exception paramDate) {}
    return new Date().toString();
  }
  
  /* Error */
  public static ArrayList<String> a(Context paramContext, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 400	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 401	java/util/ArrayList:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: invokestatic 787	com/tencent/bugly/crashreport/common/info/a:a	(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    //   15: invokevirtual 790	com/tencent/bugly/crashreport/common/info/a:D	()Z
    //   18: ifeq +28 -> 46
    //   21: new 400	java/util/ArrayList
    //   24: dup
    //   25: invokespecial 401	java/util/ArrayList:<init>	()V
    //   28: astore_0
    //   29: aload_0
    //   30: new 97	java/lang/String
    //   33: dup
    //   34: ldc_w 792
    //   37: invokespecial 793	java/lang/String:<init>	(Ljava/lang/String;)V
    //   40: invokevirtual 407	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   43: pop
    //   44: aload_0
    //   45: areturn
    //   46: invokestatic 583	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   49: aload_1
    //   50: invokevirtual 587	java/lang/Runtime:exec	([Ljava/lang/String;)Ljava/lang/Process;
    //   53: astore_0
    //   54: new 589	java/io/BufferedReader
    //   57: dup
    //   58: new 591	java/io/InputStreamReader
    //   61: dup
    //   62: aload_0
    //   63: invokevirtual 597	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   66: invokespecial 600	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   69: invokespecial 603	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   72: astore_1
    //   73: aload_1
    //   74: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   77: astore_2
    //   78: aload_2
    //   79: ifnull +56 -> 135
    //   82: aload 4
    //   84: aload_2
    //   85: invokevirtual 407	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   88: pop
    //   89: goto -16 -> 73
    //   92: astore 4
    //   94: aconst_null
    //   95: astore_0
    //   96: aload_0
    //   97: astore_3
    //   98: aload_1
    //   99: astore_2
    //   100: aload 4
    //   102: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   105: ifne +12 -> 117
    //   108: aload_0
    //   109: astore_3
    //   110: aload_1
    //   111: astore_2
    //   112: aload 4
    //   114: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   117: aload_1
    //   118: ifnull +7 -> 125
    //   121: aload_1
    //   122: invokevirtual 794	java/io/BufferedReader:close	()V
    //   125: aload_0
    //   126: ifnull +7 -> 133
    //   129: aload_0
    //   130: invokevirtual 794	java/io/BufferedReader:close	()V
    //   133: aconst_null
    //   134: areturn
    //   135: new 589	java/io/BufferedReader
    //   138: dup
    //   139: new 591	java/io/InputStreamReader
    //   142: dup
    //   143: aload_0
    //   144: invokevirtual 637	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   147: invokespecial 600	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   150: invokespecial 603	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   153: astore_0
    //   154: aload_0
    //   155: astore_3
    //   156: aload_1
    //   157: astore_2
    //   158: aload_0
    //   159: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   162: astore 5
    //   164: aload 5
    //   166: ifnull +23 -> 189
    //   169: aload_0
    //   170: astore_3
    //   171: aload_1
    //   172: astore_2
    //   173: aload 4
    //   175: aload 5
    //   177: invokevirtual 407	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   180: pop
    //   181: goto -27 -> 154
    //   184: astore 4
    //   186: goto -90 -> 96
    //   189: aload_1
    //   190: invokevirtual 794	java/io/BufferedReader:close	()V
    //   193: aload_0
    //   194: invokevirtual 794	java/io/BufferedReader:close	()V
    //   197: aload 4
    //   199: areturn
    //   200: astore_0
    //   201: aload_0
    //   202: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   205: aload 4
    //   207: areturn
    //   208: astore_1
    //   209: aload_1
    //   210: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   213: goto -20 -> 193
    //   216: astore_1
    //   217: aload_1
    //   218: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   221: goto -96 -> 125
    //   224: astore_0
    //   225: aload_0
    //   226: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   229: goto -96 -> 133
    //   232: astore_0
    //   233: aconst_null
    //   234: astore_1
    //   235: aload_1
    //   236: ifnull +7 -> 243
    //   239: aload_1
    //   240: invokevirtual 794	java/io/BufferedReader:close	()V
    //   243: aload_3
    //   244: ifnull +7 -> 251
    //   247: aload_3
    //   248: invokevirtual 794	java/io/BufferedReader:close	()V
    //   251: aload_0
    //   252: athrow
    //   253: astore_1
    //   254: aload_1
    //   255: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   258: goto -15 -> 243
    //   261: astore_1
    //   262: aload_1
    //   263: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   266: goto -15 -> 251
    //   269: astore_0
    //   270: goto -35 -> 235
    //   273: astore_0
    //   274: aload_2
    //   275: astore_1
    //   276: goto -41 -> 235
    //   279: astore 4
    //   281: aconst_null
    //   282: astore_0
    //   283: aconst_null
    //   284: astore_1
    //   285: goto -189 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	288	0	paramContext	Context
    //   0	288	1	paramArrayOfString	String[]
    //   77	198	2	localObject	Object
    //   1	247	3	localContext	Context
    //   9	74	4	localArrayList	ArrayList
    //   92	82	4	localThrowable1	Throwable
    //   184	22	4	localThrowable2	Throwable
    //   279	1	4	localThrowable3	Throwable
    //   162	14	5	str	String
    // Exception table:
    //   from	to	target	type
    //   73	78	92	java/lang/Throwable
    //   82	89	92	java/lang/Throwable
    //   135	154	92	java/lang/Throwable
    //   158	164	184	java/lang/Throwable
    //   173	181	184	java/lang/Throwable
    //   193	197	200	java/io/IOException
    //   189	193	208	java/io/IOException
    //   121	125	216	java/io/IOException
    //   129	133	224	java/io/IOException
    //   46	73	232	finally
    //   239	243	253	java/io/IOException
    //   247	251	261	java/io/IOException
    //   73	78	269	finally
    //   82	89	269	finally
    //   135	154	269	finally
    //   100	108	273	finally
    //   112	117	273	finally
    //   158	164	273	finally
    //   173	181	273	finally
    //   46	73	279	java/lang/Throwable
  }
  
  public static Map<String, String> a(int paramInt, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap(12);
    Object localObject = Thread.getAllStackTraces();
    if (localObject == null) {
      return null;
    }
    Thread.currentThread().getId();
    StringBuilder localStringBuilder = new StringBuilder();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localStringBuilder.setLength(0);
      if ((localEntry.getValue() != null) && (((StackTraceElement[])localEntry.getValue()).length != 0))
      {
        StackTraceElement[] arrayOfStackTraceElement = (StackTraceElement[])localEntry.getValue();
        int j = arrayOfStackTraceElement.length;
        int i = 0;
        for (;;)
        {
          StackTraceElement localStackTraceElement;
          if (i < j)
          {
            localStackTraceElement = arrayOfStackTraceElement[i];
            if ((paramInt > 0) && (localStringBuilder.length() >= paramInt)) {
              localStringBuilder.append("\n[Stack over limit size :" + paramInt + " , has been cutted !]");
            }
          }
          else
          {
            localHashMap.put(((Thread)localEntry.getKey()).getName() + "(" + ((Thread)localEntry.getKey()).getId() + ")", localStringBuilder.toString());
            break;
          }
          localStringBuilder.append(localStackTraceElement.toString()).append("\n");
          i += 1;
        }
      }
    }
    return localHashMap;
  }
  
  public static Map<String, PlugInBean> a(Parcel paramParcel)
  {
    paramParcel = paramParcel.readBundle();
    if (paramParcel == null) {
      return null;
    }
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int j = ((Integer)paramParcel.get("pluginNum")).intValue();
    int i = 0;
    while (i < j)
    {
      localArrayList1.add(paramParcel.getString("pluginKey" + i));
      i += 1;
    }
    i = 0;
    while (i < j)
    {
      String str1 = paramParcel.getString("pluginVal" + i + "plugInId");
      String str2 = paramParcel.getString("pluginVal" + i + "plugInUUID");
      localArrayList2.add(new PlugInBean(str1, paramParcel.getString("pluginVal" + i + "plugInVersion"), str2));
      i += 1;
    }
    if (localArrayList1.size() == localArrayList2.size())
    {
      paramParcel = new HashMap(localArrayList1.size());
      i = 0;
      while (i < localArrayList1.size())
      {
        paramParcel.put(localArrayList1.get(i), PlugInBean.class.cast(localArrayList2.get(i)));
        i += 1;
      }
    }
    for (;;)
    {
      return paramParcel;
      w.e("map plugin parcel error!", new Object[0]);
      paramParcel = null;
    }
  }
  
  public static void a(Parcel paramParcel, Map<String, PlugInBean> paramMap)
  {
    int k = 0;
    if ((paramMap == null) || (paramMap == null) || (paramMap.size() <= 0))
    {
      paramParcel.writeBundle(null);
      return;
    }
    int i = paramMap.size();
    ArrayList localArrayList1 = new ArrayList(i);
    ArrayList localArrayList2 = new ArrayList(i);
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localArrayList1.add(localEntry.getKey());
      localArrayList2.add(localEntry.getValue());
    }
    paramMap = new Bundle();
    paramMap.putInt("pluginNum", localArrayList1.size());
    i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= localArrayList1.size()) {
        break;
      }
      paramMap.putString("pluginKey" + i, (String)localArrayList1.get(i));
      i += 1;
    }
    while (j < localArrayList1.size())
    {
      paramMap.putString("pluginVal" + j + "plugInId", ((PlugInBean)localArrayList2.get(j)).a);
      paramMap.putString("pluginVal" + j + "plugInUUID", ((PlugInBean)localArrayList2.get(j)).c);
      paramMap.putString("pluginVal" + j + "plugInVersion", ((PlugInBean)localArrayList2.get(j)).b);
      j += 1;
    }
    paramParcel.writeBundle(paramMap);
  }
  
  private void a(ArrayList<String> paramArrayList, Object paramObject)
  {
    if (paramObject.getClass().isArray())
    {
      if (!paramObject.getClass().getComponentType().toString().equals("byte")) {
        throw new IllegalArgumentException("only byte[] is supported");
      }
      if (Array.getLength(paramObject) > 0)
      {
        paramArrayList.add("java.util.List");
        a(paramArrayList, Array.get(paramObject, 0));
        return;
      }
      paramArrayList.add("Array");
      paramArrayList.add("?");
      return;
    }
    if ((paramObject instanceof Array)) {
      throw new IllegalArgumentException("can not support Array, please use List");
    }
    if ((paramObject instanceof List))
    {
      paramArrayList.add("java.util.List");
      paramObject = (List)paramObject;
      if (((List)paramObject).size() > 0)
      {
        a(paramArrayList, ((List)paramObject).get(0));
        return;
      }
      paramArrayList.add("?");
      return;
    }
    if ((paramObject instanceof Map))
    {
      paramArrayList.add("java.util.Map");
      Object localObject = (Map)paramObject;
      if (((Map)localObject).size() > 0)
      {
        paramObject = ((Map)localObject).keySet().iterator().next();
        localObject = ((Map)localObject).get(paramObject);
        paramArrayList.add(paramObject.getClass().getName());
        a(paramArrayList, localObject);
        return;
      }
      paramArrayList.add("?");
      paramArrayList.add("?");
      return;
    }
    paramArrayList.add(paramObject.getClass().getName());
  }
  
  public static boolean a(Context paramContext, String paramString, long paramLong)
  {
    w.c("[Util] try to lock file:%s (pid=%d | tid=%d)", new Object[] { paramString, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    try
    {
      File localFile = new File(paramContext.getFilesDir() + File.separator + paramString);
      if (localFile.exists())
      {
        if (System.currentTimeMillis() - localFile.lastModified() < paramLong) {
          return false;
        }
        w.c("[Util] lock file(%s) is expired, unlock it", new Object[] { paramString });
        b(paramContext, paramString);
      }
      if (localFile.createNewFile())
      {
        w.c("[Util] successfully locked file:%s (pid=%d | tid=%d)", new Object[] { paramString, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
        return true;
      }
    }
    catch (Throwable paramContext)
    {
      w.a(paramContext);
    }
    return false;
  }
  
  /* Error */
  public static boolean a(File paramFile1, File paramFile2, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: ldc_w 958
    //   6: iconst_0
    //   7: anewarray 4	java/lang/Object
    //   10: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   13: pop
    //   14: aload_0
    //   15: ifnull +15 -> 30
    //   18: aload_1
    //   19: ifnull +11 -> 30
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual 959	java/io/File:equals	(Ljava/lang/Object;)Z
    //   27: ifeq +16 -> 43
    //   30: ldc_w 961
    //   33: iconst_0
    //   34: anewarray 4	java/lang/Object
    //   37: invokestatic 536	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   40: pop
    //   41: iconst_0
    //   42: ireturn
    //   43: aload_0
    //   44: invokevirtual 943	java/io/File:exists	()Z
    //   47: ifeq +10 -> 57
    //   50: aload_0
    //   51: invokevirtual 964	java/io/File:canRead	()Z
    //   54: ifne +16 -> 70
    //   57: ldc_w 966
    //   60: iconst_0
    //   61: anewarray 4	java/lang/Object
    //   64: invokestatic 536	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   67: pop
    //   68: iconst_0
    //   69: ireturn
    //   70: aload_1
    //   71: invokevirtual 969	java/io/File:getParentFile	()Ljava/io/File;
    //   74: ifnull +21 -> 95
    //   77: aload_1
    //   78: invokevirtual 969	java/io/File:getParentFile	()Ljava/io/File;
    //   81: invokevirtual 943	java/io/File:exists	()Z
    //   84: ifne +11 -> 95
    //   87: aload_1
    //   88: invokevirtual 969	java/io/File:getParentFile	()Ljava/io/File;
    //   91: invokevirtual 972	java/io/File:mkdirs	()Z
    //   94: pop
    //   95: aload_1
    //   96: invokevirtual 943	java/io/File:exists	()Z
    //   99: ifne +8 -> 107
    //   102: aload_1
    //   103: invokevirtual 953	java/io/File:createNewFile	()Z
    //   106: pop
    //   107: aload_1
    //   108: invokevirtual 943	java/io/File:exists	()Z
    //   111: ifeq -70 -> 41
    //   114: aload_1
    //   115: invokevirtual 964	java/io/File:canRead	()Z
    //   118: ifeq -77 -> 41
    //   121: new 974	java/io/FileInputStream
    //   124: dup
    //   125: aload_0
    //   126: invokespecial 977	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   129: astore_3
    //   130: new 979	java/util/zip/ZipOutputStream
    //   133: dup
    //   134: new 981	java/io/FileOutputStream
    //   137: dup
    //   138: aload_1
    //   139: invokespecial 982	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   142: invokespecial 985	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   145: astore 4
    //   147: aload 4
    //   149: bipush 8
    //   151: invokevirtual 988	java/util/zip/ZipOutputStream:setMethod	(I)V
    //   154: aload 4
    //   156: new 990	java/util/zip/ZipEntry
    //   159: dup
    //   160: aload_0
    //   161: invokevirtual 991	java/io/File:getName	()Ljava/lang/String;
    //   164: invokespecial 992	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   167: invokevirtual 996	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   170: sipush 5000
    //   173: newarray <illegal type>
    //   175: astore_0
    //   176: aload_3
    //   177: aload_0
    //   178: invokevirtual 1000	java/io/FileInputStream:read	([B)I
    //   181: istore_2
    //   182: iload_2
    //   183: ifle +79 -> 262
    //   186: aload 4
    //   188: aload_0
    //   189: iconst_0
    //   190: iload_2
    //   191: invokevirtual 1003	java/util/zip/ZipOutputStream:write	([BII)V
    //   194: goto -18 -> 176
    //   197: astore 5
    //   199: aload_3
    //   200: astore_1
    //   201: aload 4
    //   203: astore_0
    //   204: aload 5
    //   206: astore_3
    //   207: aload_3
    //   208: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   211: ifne +7 -> 218
    //   214: aload_3
    //   215: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   218: aload_1
    //   219: ifnull +7 -> 226
    //   222: aload_1
    //   223: invokevirtual 1004	java/io/FileInputStream:close	()V
    //   226: aload_0
    //   227: ifnull +7 -> 234
    //   230: aload_0
    //   231: invokevirtual 1005	java/util/zip/ZipOutputStream:close	()V
    //   234: ldc_w 1007
    //   237: iconst_0
    //   238: anewarray 4	java/lang/Object
    //   241: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   244: pop
    //   245: iconst_0
    //   246: ireturn
    //   247: astore_3
    //   248: aload_3
    //   249: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   252: ifne -145 -> 107
    //   255: aload_3
    //   256: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   259: goto -152 -> 107
    //   262: aload 4
    //   264: invokevirtual 1010	java/util/zip/ZipOutputStream:flush	()V
    //   267: aload 4
    //   269: invokevirtual 1013	java/util/zip/ZipOutputStream:closeEntry	()V
    //   272: aload_3
    //   273: invokevirtual 1004	java/io/FileInputStream:close	()V
    //   276: aload 4
    //   278: invokevirtual 1005	java/util/zip/ZipOutputStream:close	()V
    //   281: ldc_w 1007
    //   284: iconst_0
    //   285: anewarray 4	java/lang/Object
    //   288: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   291: pop
    //   292: iconst_1
    //   293: ireturn
    //   294: astore_0
    //   295: aload_0
    //   296: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   299: goto -23 -> 276
    //   302: astore_0
    //   303: aload_0
    //   304: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   307: goto -26 -> 281
    //   310: astore_1
    //   311: aload_1
    //   312: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   315: goto -89 -> 226
    //   318: astore_0
    //   319: aload_0
    //   320: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   323: goto -89 -> 234
    //   326: astore_1
    //   327: aconst_null
    //   328: astore_0
    //   329: aconst_null
    //   330: astore_3
    //   331: aload_3
    //   332: ifnull +7 -> 339
    //   335: aload_3
    //   336: invokevirtual 1004	java/io/FileInputStream:close	()V
    //   339: aload_0
    //   340: ifnull +7 -> 347
    //   343: aload_0
    //   344: invokevirtual 1005	java/util/zip/ZipOutputStream:close	()V
    //   347: ldc_w 1007
    //   350: iconst_0
    //   351: anewarray 4	java/lang/Object
    //   354: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   357: pop
    //   358: aload_1
    //   359: athrow
    //   360: astore_3
    //   361: aload_3
    //   362: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   365: goto -26 -> 339
    //   368: astore_0
    //   369: aload_0
    //   370: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   373: goto -26 -> 347
    //   376: astore_1
    //   377: aconst_null
    //   378: astore_0
    //   379: goto -48 -> 331
    //   382: astore_1
    //   383: aload 4
    //   385: astore_0
    //   386: goto -55 -> 331
    //   389: astore 4
    //   391: aload_1
    //   392: astore_3
    //   393: aload 4
    //   395: astore_1
    //   396: goto -65 -> 331
    //   399: astore_3
    //   400: aconst_null
    //   401: astore_0
    //   402: aload 4
    //   404: astore_1
    //   405: goto -198 -> 207
    //   408: astore 4
    //   410: aconst_null
    //   411: astore_0
    //   412: aload_3
    //   413: astore_1
    //   414: aload 4
    //   416: astore_3
    //   417: goto -210 -> 207
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	420	0	paramFile1	File
    //   0	420	1	paramFile2	File
    //   0	420	2	paramInt	int
    //   129	86	3	localObject1	Object
    //   247	26	3	localThrowable1	Throwable
    //   330	6	3	localObject2	Object
    //   360	2	3	localIOException	java.io.IOException
    //   392	1	3	localFile	File
    //   399	14	3	localThrowable2	Throwable
    //   416	1	3	localThrowable3	Throwable
    //   1	383	4	localZipOutputStream	java.util.zip.ZipOutputStream
    //   389	14	4	localObject3	Object
    //   408	7	4	localThrowable4	Throwable
    //   197	8	5	localThrowable5	Throwable
    // Exception table:
    //   from	to	target	type
    //   147	176	197	java/lang/Throwable
    //   176	182	197	java/lang/Throwable
    //   186	194	197	java/lang/Throwable
    //   262	272	197	java/lang/Throwable
    //   70	95	247	java/lang/Throwable
    //   95	107	247	java/lang/Throwable
    //   272	276	294	java/io/IOException
    //   276	281	302	java/io/IOException
    //   222	226	310	java/io/IOException
    //   230	234	318	java/io/IOException
    //   121	130	326	finally
    //   335	339	360	java/io/IOException
    //   343	347	368	java/io/IOException
    //   130	147	376	finally
    //   147	176	382	finally
    //   176	182	382	finally
    //   186	194	382	finally
    //   262	272	382	finally
    //   207	218	389	finally
    //   121	130	399	java/lang/Throwable
    //   130	147	408	java/lang/Throwable
  }
  
  /* Error */
  public static byte[] a(int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: bipush 16
    //   5: newarray <illegal type>
    //   7: astore_3
    //   8: new 1016	java/io/DataInputStream
    //   11: dup
    //   12: new 974	java/io/FileInputStream
    //   15: dup
    //   16: new 932	java/io/File
    //   19: dup
    //   20: ldc_w 1018
    //   23: invokespecial 940	java/io/File:<init>	(Ljava/lang/String;)V
    //   26: invokespecial 977	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   29: invokespecial 1019	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   32: astore_2
    //   33: aload_2
    //   34: astore_1
    //   35: aload_2
    //   36: aload_3
    //   37: invokevirtual 1022	java/io/DataInputStream:readFully	([B)V
    //   40: aload_2
    //   41: invokevirtual 1023	java/io/DataInputStream:close	()V
    //   44: aload_3
    //   45: astore_1
    //   46: ldc 2
    //   48: monitorexit
    //   49: aload_1
    //   50: areturn
    //   51: astore_3
    //   52: aconst_null
    //   53: astore_2
    //   54: aload_2
    //   55: astore_1
    //   56: ldc_w 1025
    //   59: iconst_1
    //   60: anewarray 4	java/lang/Object
    //   63: dup
    //   64: iconst_0
    //   65: aload_3
    //   66: aastore
    //   67: invokestatic 58	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   70: pop
    //   71: aload_2
    //   72: ifnull +7 -> 79
    //   75: aload_2
    //   76: invokevirtual 1023	java/io/DataInputStream:close	()V
    //   79: ldc_w 1027
    //   82: invokestatic 1033	javax/crypto/KeyGenerator:getInstance	(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    //   85: astore_1
    //   86: aload_1
    //   87: sipush 128
    //   90: new 1035	java/security/SecureRandom
    //   93: dup
    //   94: invokespecial 1036	java/security/SecureRandom:<init>	()V
    //   97: invokevirtual 1040	javax/crypto/KeyGenerator:init	(ILjava/security/SecureRandom;)V
    //   100: aload_1
    //   101: invokevirtual 1044	javax/crypto/KeyGenerator:generateKey	()Ljavax/crypto/SecretKey;
    //   104: invokeinterface 1049 1 0
    //   109: astore_1
    //   110: goto -64 -> 46
    //   113: aload_1
    //   114: ifnull +7 -> 121
    //   117: aload_1
    //   118: invokevirtual 1023	java/io/DataInputStream:close	()V
    //   121: aload_2
    //   122: athrow
    //   123: astore_1
    //   124: aload_1
    //   125: invokestatic 213	com/tencent/bugly/proguard/w:b	(Ljava/lang/Throwable;)Z
    //   128: ifne +7 -> 135
    //   131: aload_1
    //   132: invokevirtual 1050	java/lang/Exception:printStackTrace	()V
    //   135: aconst_null
    //   136: astore_1
    //   137: goto -91 -> 46
    //   140: astore_1
    //   141: ldc 2
    //   143: monitorexit
    //   144: aload_1
    //   145: athrow
    //   146: astore_2
    //   147: goto -34 -> 113
    //   150: astore_3
    //   151: goto -97 -> 54
    //   154: astore_2
    //   155: aconst_null
    //   156: astore_1
    //   157: goto -44 -> 113
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	160	0	paramInt	int
    //   34	84	1	localObject1	Object
    //   123	9	1	localException1	Exception
    //   136	1	1	localObject2	Object
    //   140	5	1	localObject3	Object
    //   156	1	1	localObject4	Object
    //   32	90	2	localDataInputStream	java.io.DataInputStream
    //   146	1	2	localObject5	Object
    //   154	1	2	localObject6	Object
    //   7	38	3	arrayOfByte	byte[]
    //   51	15	3	localException2	Exception
    //   150	1	3	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   3	33	51	java/lang/Exception
    //   40	44	123	java/lang/Exception
    //   75	79	123	java/lang/Exception
    //   79	110	123	java/lang/Exception
    //   117	121	123	java/lang/Exception
    //   121	123	123	java/lang/Exception
    //   40	44	140	finally
    //   75	79	140	finally
    //   79	110	140	finally
    //   117	121	140	finally
    //   121	123	140	finally
    //   124	135	140	finally
    //   35	40	146	finally
    //   56	71	146	finally
    //   35	40	150	java/lang/Exception
    //   3	33	154	finally
  }
  
  public static byte[] a(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte2, "AES");
      Cipher localCipher = Cipher.getInstance("AES/GCM/NoPadding");
      localCipher.init(paramInt, localSecretKeySpec, new IvParameterSpec(paramArrayOfByte2));
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      if (!w.b(paramArrayOfByte1)) {
        paramArrayOfByte1.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] a(long paramLong)
  {
    try
    {
      byte[] arrayOfByte = paramLong.getBytes("utf-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }
  
  public static byte[] a(am paramam)
  {
    try
    {
      d locald = new d();
      locald.p();
      locald.a("utf-8");
      locald.b(1);
      locald.b("RqdServer");
      locald.c("sync");
      locald.a("detail", paramam);
      paramam = locald.a();
      return paramam;
    }
    catch (Throwable paramam)
    {
      if (!w.b(paramam)) {
        paramam.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] a(j paramj)
  {
    try
    {
      i locali = new i();
      locali.a("utf-8");
      paramj.a(locali);
      paramj = locali.b();
      return paramj;
    }
    catch (Throwable paramj)
    {
      if (!w.b(paramj)) {
        paramj.printStackTrace();
      }
    }
    return null;
  }
  
  /* Error */
  public static byte[] a(File paramFile, String paramString)
  {
    // Byte code:
    //   0: ldc_w 958
    //   3: iconst_0
    //   4: anewarray 4	java/lang/Object
    //   7: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   10: pop
    //   11: ldc_w 1109
    //   14: astore_3
    //   15: aload_0
    //   16: ifnull +437 -> 453
    //   19: aload_0
    //   20: invokevirtual 943	java/io/File:exists	()Z
    //   23: ifeq +430 -> 453
    //   26: aload_0
    //   27: invokevirtual 964	java/io/File:canRead	()Z
    //   30: ifeq +423 -> 453
    //   33: new 974	java/io/FileInputStream
    //   36: dup
    //   37: aload_0
    //   38: invokespecial 977	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   41: astore_3
    //   42: aload_0
    //   43: invokevirtual 991	java/io/File:getName	()Ljava/lang/String;
    //   46: astore 4
    //   48: aload_3
    //   49: astore_0
    //   50: aload 4
    //   52: astore_3
    //   53: new 1111	java/io/ByteArrayInputStream
    //   56: dup
    //   57: aload_1
    //   58: ldc_w 1113
    //   61: invokevirtual 1079	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   64: invokespecial 1114	java/io/ByteArrayInputStream:<init>	([B)V
    //   67: astore 6
    //   69: new 1116	java/io/ByteArrayOutputStream
    //   72: dup
    //   73: invokespecial 1117	java/io/ByteArrayOutputStream:<init>	()V
    //   76: astore 7
    //   78: new 979	java/util/zip/ZipOutputStream
    //   81: dup
    //   82: aload 7
    //   84: invokespecial 985	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   87: astore_1
    //   88: aload_1
    //   89: astore 4
    //   91: aload_0
    //   92: astore 5
    //   94: aload_1
    //   95: bipush 8
    //   97: invokevirtual 988	java/util/zip/ZipOutputStream:setMethod	(I)V
    //   100: aload_1
    //   101: astore 4
    //   103: aload_0
    //   104: astore 5
    //   106: aload_1
    //   107: new 990	java/util/zip/ZipEntry
    //   110: dup
    //   111: aload_3
    //   112: invokespecial 992	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   115: invokevirtual 996	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   118: aload_1
    //   119: astore 4
    //   121: aload_0
    //   122: astore 5
    //   124: sipush 1024
    //   127: newarray <illegal type>
    //   129: astore_3
    //   130: aload_0
    //   131: ifnull +88 -> 219
    //   134: aload_1
    //   135: astore 4
    //   137: aload_0
    //   138: astore 5
    //   140: aload_0
    //   141: aload_3
    //   142: invokevirtual 1000	java/io/FileInputStream:read	([B)I
    //   145: istore_2
    //   146: iload_2
    //   147: ifle +72 -> 219
    //   150: aload_1
    //   151: astore 4
    //   153: aload_0
    //   154: astore 5
    //   156: aload_1
    //   157: aload_3
    //   158: iconst_0
    //   159: iload_2
    //   160: invokevirtual 1003	java/util/zip/ZipOutputStream:write	([BII)V
    //   163: goto -29 -> 134
    //   166: astore_3
    //   167: aload_1
    //   168: astore 4
    //   170: aload_0
    //   171: astore 5
    //   173: aload_3
    //   174: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   177: ifne +13 -> 190
    //   180: aload_1
    //   181: astore 4
    //   183: aload_0
    //   184: astore 5
    //   186: aload_3
    //   187: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   190: aload_0
    //   191: ifnull +7 -> 198
    //   194: aload_0
    //   195: invokevirtual 1004	java/io/FileInputStream:close	()V
    //   198: aload_1
    //   199: ifnull +7 -> 206
    //   202: aload_1
    //   203: invokevirtual 1005	java/util/zip/ZipOutputStream:close	()V
    //   206: ldc_w 1007
    //   209: iconst_0
    //   210: anewarray 4	java/lang/Object
    //   213: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   216: pop
    //   217: aconst_null
    //   218: areturn
    //   219: aload_1
    //   220: astore 4
    //   222: aload_0
    //   223: astore 5
    //   225: aload 6
    //   227: aload_3
    //   228: invokevirtual 1118	java/io/ByteArrayInputStream:read	([B)I
    //   231: istore_2
    //   232: iload_2
    //   233: ifle +55 -> 288
    //   236: aload_1
    //   237: astore 4
    //   239: aload_0
    //   240: astore 5
    //   242: aload_1
    //   243: aload_3
    //   244: iconst_0
    //   245: iload_2
    //   246: invokevirtual 1003	java/util/zip/ZipOutputStream:write	([BII)V
    //   249: goto -30 -> 219
    //   252: astore_1
    //   253: aload 5
    //   255: astore_0
    //   256: aload 4
    //   258: astore_3
    //   259: aload_0
    //   260: ifnull +7 -> 267
    //   263: aload_0
    //   264: invokevirtual 1004	java/io/FileInputStream:close	()V
    //   267: aload_3
    //   268: ifnull +7 -> 275
    //   271: aload_3
    //   272: invokevirtual 1005	java/util/zip/ZipOutputStream:close	()V
    //   275: ldc_w 1007
    //   278: iconst_0
    //   279: anewarray 4	java/lang/Object
    //   282: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   285: pop
    //   286: aload_1
    //   287: athrow
    //   288: aload_1
    //   289: astore 4
    //   291: aload_0
    //   292: astore 5
    //   294: aload_1
    //   295: invokevirtual 1013	java/util/zip/ZipOutputStream:closeEntry	()V
    //   298: aload_1
    //   299: astore 4
    //   301: aload_0
    //   302: astore 5
    //   304: aload_1
    //   305: invokevirtual 1010	java/util/zip/ZipOutputStream:flush	()V
    //   308: aload_1
    //   309: astore 4
    //   311: aload_0
    //   312: astore 5
    //   314: aload_1
    //   315: invokevirtual 1121	java/util/zip/ZipOutputStream:finish	()V
    //   318: aload_1
    //   319: astore 4
    //   321: aload_0
    //   322: astore 5
    //   324: aload 7
    //   326: invokevirtual 1124	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   329: astore_3
    //   330: aload_0
    //   331: ifnull +7 -> 338
    //   334: aload_0
    //   335: invokevirtual 1004	java/io/FileInputStream:close	()V
    //   338: aload_1
    //   339: invokevirtual 1005	java/util/zip/ZipOutputStream:close	()V
    //   342: ldc_w 1007
    //   345: iconst_0
    //   346: anewarray 4	java/lang/Object
    //   349: invokestatic 260	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   352: pop
    //   353: aload_3
    //   354: areturn
    //   355: astore_0
    //   356: aload_0
    //   357: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   360: goto -22 -> 338
    //   363: astore_0
    //   364: aload_0
    //   365: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   368: goto -26 -> 342
    //   371: astore_0
    //   372: aload_0
    //   373: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   376: goto -178 -> 198
    //   379: astore_0
    //   380: aload_0
    //   381: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   384: goto -178 -> 206
    //   387: astore_0
    //   388: aload_0
    //   389: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   392: goto -125 -> 267
    //   395: astore_0
    //   396: aload_0
    //   397: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   400: goto -125 -> 275
    //   403: astore_1
    //   404: aconst_null
    //   405: astore_3
    //   406: aconst_null
    //   407: astore_0
    //   408: goto -149 -> 259
    //   411: astore_1
    //   412: aload_3
    //   413: astore_0
    //   414: aconst_null
    //   415: astore_3
    //   416: goto -157 -> 259
    //   419: astore_1
    //   420: aconst_null
    //   421: astore_3
    //   422: goto -163 -> 259
    //   425: astore_3
    //   426: aconst_null
    //   427: astore_1
    //   428: aconst_null
    //   429: astore_0
    //   430: goto -263 -> 167
    //   433: astore_1
    //   434: aload_3
    //   435: astore_0
    //   436: aconst_null
    //   437: astore 4
    //   439: aload_1
    //   440: astore_3
    //   441: aload 4
    //   443: astore_1
    //   444: goto -277 -> 167
    //   447: astore_3
    //   448: aconst_null
    //   449: astore_1
    //   450: goto -283 -> 167
    //   453: aconst_null
    //   454: astore_0
    //   455: goto -402 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	458	0	paramFile	File
    //   0	458	1	paramString	String
    //   145	101	2	i	int
    //   14	144	3	localObject1	Object
    //   166	78	3	localThrowable1	Throwable
    //   258	164	3	localObject2	Object
    //   425	10	3	localThrowable2	Throwable
    //   440	1	3	str1	String
    //   447	1	3	localThrowable3	Throwable
    //   46	396	4	str2	String
    //   92	231	5	localFile	File
    //   67	159	6	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   76	249	7	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   94	100	166	java/lang/Throwable
    //   106	118	166	java/lang/Throwable
    //   124	130	166	java/lang/Throwable
    //   140	146	166	java/lang/Throwable
    //   156	163	166	java/lang/Throwable
    //   225	232	166	java/lang/Throwable
    //   242	249	166	java/lang/Throwable
    //   294	298	166	java/lang/Throwable
    //   304	308	166	java/lang/Throwable
    //   314	318	166	java/lang/Throwable
    //   324	330	166	java/lang/Throwable
    //   94	100	252	finally
    //   106	118	252	finally
    //   124	130	252	finally
    //   140	146	252	finally
    //   156	163	252	finally
    //   173	180	252	finally
    //   186	190	252	finally
    //   225	232	252	finally
    //   242	249	252	finally
    //   294	298	252	finally
    //   304	308	252	finally
    //   314	318	252	finally
    //   324	330	252	finally
    //   334	338	355	java/io/IOException
    //   338	342	363	java/io/IOException
    //   194	198	371	java/io/IOException
    //   202	206	379	java/io/IOException
    //   263	267	387	java/io/IOException
    //   271	275	395	java/io/IOException
    //   19	42	403	finally
    //   42	48	411	finally
    //   53	88	419	finally
    //   19	42	425	java/lang/Throwable
    //   42	48	433	java/lang/Throwable
    //   53	88	447	java/lang/Throwable
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte == null) {
      return paramArrayOfByte;
    }
    w.c("rqdp{  zp:} %s rqdp{  len:} %s", new Object[] { Integer.valueOf(2), Integer.valueOf(paramArrayOfByte.length) });
    try
    {
      ab localab = aa.a(2);
      if (localab == null) {
        return null;
      }
      paramArrayOfByte = localab.a(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      if (!w.a(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    try
    {
      paramArrayOfByte = b(a(paramArrayOfByte, 1, paramString), 2);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      if (!w.a(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    if ((paramArrayOfByte == null) || (paramInt == -1)) {
      return paramArrayOfByte;
    }
    if (paramInt == 1) {}
    Object localObject;
    try
    {
      localObject = new af();
    }
    catch (Throwable paramArrayOfByte)
    {
      if (w.a(paramArrayOfByte)) {
        break label55;
      }
      paramArrayOfByte.printStackTrace();
      label55:
      w.d("encrytype %d %s", new Object[] { Integer.valueOf(paramInt), paramString });
      return null;
    }
    if (paramInt == 3) {
      localObject = new ae();
    } else {
      localObject = null;
    }
    while (localObject != null)
    {
      ((ag)localObject).a(paramString);
      paramArrayOfByte = ((ag)localObject).a(paramArrayOfByte);
      return paramArrayOfByte;
    }
    return null;
  }
  
  public static String b()
  {
    try
    {
      String str = Build.MODEL;
      return str;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return "fail";
  }
  
  public static String b(Context paramContext)
  {
    Object localObject;
    if (!AppInfo.a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      w.d("no READ_PHONE_STATE permission to get IMSI", new Object[0]);
      localObject = "null";
    }
    for (;;)
    {
      return (String)localObject;
      if (paramContext == null) {
        return null;
      }
      try
      {
        paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
        localObject = paramContext;
        if (paramContext != null) {
          Log.i(w.a, "failed to get IMSI");
        }
      }
      catch (Throwable paramContext)
      {
        try
        {
          localObject = paramContext.toLowerCase();
          return (String)localObject;
        }
        catch (Throwable localThrowable)
        {
          for (;;) {}
        }
        paramContext = paramContext;
        paramContext = null;
      }
    }
    return paramContext;
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      return "NULL";
    }
    try
    {
      Object localObject = MessageDigest.getInstance("SHA-1");
      ((MessageDigest)localObject).update(paramArrayOfByte);
      paramArrayOfByte = ((MessageDigest)localObject).digest();
      if (paramArrayOfByte == null) {
        return "";
      }
      localObject = new StringBuffer();
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
        if (str.length() == 1) {
          ((StringBuffer)localObject).append("0");
        }
        ((StringBuffer)localObject).append(str);
        i += 1;
      }
      paramArrayOfByte = ((StringBuffer)localObject).toString().toUpperCase();
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      if (!w.a(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static Map<String, String> b(Parcel paramParcel)
  {
    int i = 0;
    paramParcel = paramParcel.readBundle();
    if (paramParcel == null) {
      return null;
    }
    ArrayList localArrayList1 = paramParcel.getStringArrayList("keys");
    ArrayList localArrayList2 = paramParcel.getStringArrayList("values");
    if ((localArrayList1 != null) && (localArrayList2 != null) && (localArrayList1.size() == localArrayList2.size()))
    {
      paramParcel = new HashMap(localArrayList1.size());
      while (i < localArrayList1.size())
      {
        paramParcel.put(localArrayList1.get(i), localArrayList2.get(i));
        i += 1;
      }
    }
    for (;;)
    {
      return paramParcel;
      w.e("map parcel error!", new Object[0]);
      paramParcel = null;
    }
  }
  
  public static void b(Parcel paramParcel, Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap == null) || (paramMap.size() <= 0))
    {
      paramParcel.writeBundle(null);
      return;
    }
    int i = paramMap.size();
    ArrayList localArrayList1 = new ArrayList(i);
    ArrayList localArrayList2 = new ArrayList(i);
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localArrayList1.add(localEntry.getKey());
      localArrayList2.add(localEntry.getValue());
    }
    paramMap = new Bundle();
    paramMap.putStringArrayList("keys", localArrayList1);
    paramMap.putStringArrayList("values", localArrayList2);
    paramParcel.writeBundle(paramMap);
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    w.c("[Util] try to unlock file:%s (pid=%d | tid=%d)", new Object[] { paramString, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    try
    {
      paramContext = new File(paramContext.getFilesDir() + File.separator + paramString);
      if (paramContext.exists())
      {
        if (paramContext.delete()) {
          w.c("[Util] successfully unlocked file:%s (pid=%d | tid=%d)", new Object[] { paramString, Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
        }
      }
      else {
        return true;
      }
      return false;
    }
    catch (Throwable paramContext)
    {
      w.a(paramContext);
    }
    return false;
  }
  
  public static byte[] b(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      paramArrayOfByte2 = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(paramArrayOfByte2));
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      localCipher.init(1, paramArrayOfByte2);
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      if (!w.b(paramArrayOfByte1)) {
        paramArrayOfByte1.printStackTrace();
      }
    }
    return null;
  }
  
  public static byte[] b(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte == null) || (paramInt == -1)) {
      return paramArrayOfByte;
    }
    w.c("rqdp{  unzp:} %s rqdp{  len:} %s", new Object[] { Integer.valueOf(paramInt), Integer.valueOf(paramArrayOfByte.length) });
    try
    {
      ab localab = aa.a(paramInt);
      if (localab == null) {
        return null;
      }
      paramArrayOfByte = localab.b(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Throwable paramArrayOfByte)
    {
      if (!w.a(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
    return null;
  }
  
  public static long c(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(new String(paramArrayOfByte, "utf-8"));
      return l;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return -1L;
  }
  
  public static String c()
  {
    try
    {
      String str = Build.VERSION.RELEASE;
      return str;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return "fail";
  }
  
  /* Error */
  public static String c(Context paramContext)
  {
    // Byte code:
    //   0: ldc_w 662
    //   3: astore_1
    //   4: aload_0
    //   5: ifnonnull +5 -> 10
    //   8: aload_1
    //   9: areturn
    //   10: aload_0
    //   11: invokevirtual 1255	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   14: ldc_w 1257
    //   17: invokestatic 1262	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   20: astore_0
    //   21: aload_0
    //   22: ifnonnull +7 -> 29
    //   25: ldc_w 538
    //   28: areturn
    //   29: aload_0
    //   30: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   33: astore_1
    //   34: aload_1
    //   35: areturn
    //   36: astore_2
    //   37: aload_1
    //   38: astore_0
    //   39: aload_0
    //   40: astore_1
    //   41: aload_2
    //   42: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   45: ifne -37 -> 8
    //   48: getstatic 555	com/tencent/bugly/proguard/w:a	Ljava/lang/String;
    //   51: ldc_w 1264
    //   54: invokestatic 562	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   57: pop
    //   58: aload_0
    //   59: areturn
    //   60: astore_2
    //   61: goto -22 -> 39
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	paramContext	Context
    //   3	38	1	localObject	Object
    //   36	6	2	localThrowable1	Throwable
    //   60	1	2	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   10	21	36	java/lang/Throwable
    //   29	34	60	java/lang/Throwable
  }
  
  public static int d()
  {
    try
    {
      int i = Build.VERSION.SDK_INT;
      return i;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return -1;
  }
  
  public static String d(Context paramContext)
  {
    Object localObject = "fail";
    if (paramContext == null) {
      paramContext = "fail";
    }
    do
    {
      return paramContext;
      try
      {
        paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        if (paramContext == null) {
          return "null";
        }
        localObject = paramContext;
        paramContext = paramContext.toLowerCase();
        return paramContext;
      }
      catch (Throwable localThrowable)
      {
        paramContext = (Context)localObject;
      }
    } while (w.a(localThrowable));
    localThrowable.printStackTrace();
    return (String)localObject;
  }
  
  public static String e()
  {
    try
    {
      String str2 = p();
      String str1 = str2;
      if (str2 == null) {
        str1 = System.getProperty("os.arch");
      }
      str1 = str1;
      return str1;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return "fail";
  }
  
  public static String e(Context paramContext)
  {
    for (;;)
    {
      try
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (localNetworkInfo == null) {
          return null;
        }
        if (localNetworkInfo.getType() == 1) {
          return "WIFI";
        }
        if (localNetworkInfo.getType() != 0) {
          continue;
        }
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext == null) {
          continue;
        }
        int i = paramContext.getNetworkType();
        switch (i)
        {
        case 15: 
          paramContext = "MOBILE(" + i + ")";
        }
      }
      catch (Exception paramContext)
      {
        if (w.a(paramContext)) {
          continue;
        }
        paramContext.printStackTrace();
        return "unknown";
        paramContext = "unknown";
        break;
        return "unknown";
      }
      return "HSPA+";
    }
    return paramContext;
    return "GPRS";
    return "EDGE";
    return "UMTS";
    return "HSDPA";
    return "HSUPA";
    return "HSPA";
    return "CDMA";
    return "EVDO_0";
    return "EVDO_A";
    return "1xRTT";
    return "iDen";
    return "EVDO_B";
    return "LTE";
    return "eHRPD";
  }
  
  public static long f()
  {
    long l1 = -1L;
    try
    {
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      long l2 = localStatFs.getBlockSize();
      int i = localStatFs.getBlockCount();
      l1 = i * l2;
    }
    catch (Throwable localThrowable)
    {
      while (w.a(localThrowable)) {}
      localThrowable.printStackTrace();
    }
    return l1;
    return -1L;
  }
  
  public static boolean f(Context paramContext)
  {
    boolean bool3 = false;
    int i;
    if ((Build.TAGS != null) && (Build.TAGS.contains("test-keys"))) {
      i = 1;
    }
    try
    {
      for (;;)
      {
        bool1 = new File("/system/app/Superuser.apk").exists();
        Object localObject3 = null;
        String str = null;
        paramContext = a(paramContext, new String[] { "/system/bin/sh", "-c", "type su" });
        Object localObject1 = localObject3;
        if (paramContext == null) {
          break label174;
        }
        localObject1 = localObject3;
        if (paramContext.size() <= 0) {
          break label174;
        }
        localObject1 = paramContext.iterator();
        for (paramContext = str; ((Iterator)localObject1).hasNext(); paramContext = Boolean.valueOf(false))
        {
          str = (String)((Iterator)localObject1).next();
          w.c(str, new Object[0]);
          if (!str.contains("not found")) {
            break label215;
          }
        }
        i = 0;
      }
    }
    catch (Throwable localThrowable)
    {
      label174:
      label215:
      for (;;)
      {
        boolean bool1 = false;
        continue;
        Object localObject2 = paramContext;
        if (paramContext == null) {
          localObject2 = Boolean.valueOf(true);
        }
        if (localObject2 == null) {}
        for (boolean bool2 = false;; bool2 = ((Boolean)localObject2).booleanValue())
        {
          if ((i == 0) && (!bool1))
          {
            bool1 = bool3;
            if (!Boolean.valueOf(bool2).booleanValue()) {}
          }
          else
          {
            bool1 = true;
          }
          return bool1;
        }
      }
    }
  }
  
  public static long g()
  {
    long l1 = -1L;
    try
    {
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      long l2 = localStatFs.getBlockSize();
      int i = localStatFs.getAvailableBlocks();
      l1 = i * l2;
    }
    catch (Throwable localThrowable)
    {
      while (w.a(localThrowable)) {}
      localThrowable.printStackTrace();
    }
    return l1;
    return -1L;
  }
  
  /* Error */
  public static long h()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 1385	java/io/FileReader
    //   6: dup
    //   7: ldc_w 1387
    //   10: invokespecial 1388	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   13: astore 4
    //   15: new 589	java/io/BufferedReader
    //   18: dup
    //   19: aload 4
    //   21: sipush 2048
    //   24: invokespecial 1391	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   27: astore_3
    //   28: aload_3
    //   29: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   32: ldc_w 1393
    //   35: iconst_2
    //   36: invokevirtual 1397	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   39: iconst_1
    //   40: aaload
    //   41: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   44: ldc_w 1399
    //   47: ldc 95
    //   49: invokevirtual 1403	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   52: invokevirtual 644	java/lang/String:trim	()Ljava/lang/String;
    //   55: invokestatic 1246	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   58: lstore_0
    //   59: lload_0
    //   60: bipush 10
    //   62: lshl
    //   63: lstore_0
    //   64: aload_3
    //   65: invokevirtual 794	java/io/BufferedReader:close	()V
    //   68: aload 4
    //   70: invokevirtual 1404	java/io/FileReader:close	()V
    //   73: lload_0
    //   74: lreturn
    //   75: astore_2
    //   76: aload_2
    //   77: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   80: ifne -12 -> 68
    //   83: aload_2
    //   84: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   87: goto -19 -> 68
    //   90: astore_2
    //   91: aload_2
    //   92: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   95: ifne -22 -> 73
    //   98: aload_2
    //   99: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   102: lload_0
    //   103: lreturn
    //   104: astore 4
    //   106: aconst_null
    //   107: astore_2
    //   108: aload 5
    //   110: astore_3
    //   111: aload 4
    //   113: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   116: ifne +8 -> 124
    //   119: aload 4
    //   121: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   124: aload_3
    //   125: ifnull +7 -> 132
    //   128: aload_3
    //   129: invokevirtual 794	java/io/BufferedReader:close	()V
    //   132: aload_2
    //   133: ifnull +7 -> 140
    //   136: aload_2
    //   137: invokevirtual 1404	java/io/FileReader:close	()V
    //   140: ldc2_w 1405
    //   143: lreturn
    //   144: astore_3
    //   145: aload_3
    //   146: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   149: ifne -17 -> 132
    //   152: aload_3
    //   153: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   156: goto -24 -> 132
    //   159: astore_2
    //   160: aload_2
    //   161: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   164: ifne -24 -> 140
    //   167: aload_2
    //   168: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   171: goto -31 -> 140
    //   174: astore_2
    //   175: aconst_null
    //   176: astore_3
    //   177: aconst_null
    //   178: astore 4
    //   180: aload_3
    //   181: ifnull +7 -> 188
    //   184: aload_3
    //   185: invokevirtual 794	java/io/BufferedReader:close	()V
    //   188: aload 4
    //   190: ifnull +8 -> 198
    //   193: aload 4
    //   195: invokevirtual 1404	java/io/FileReader:close	()V
    //   198: aload_2
    //   199: athrow
    //   200: astore_3
    //   201: aload_3
    //   202: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   205: ifne -17 -> 188
    //   208: aload_3
    //   209: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   212: goto -24 -> 188
    //   215: astore_3
    //   216: aload_3
    //   217: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   220: ifne -22 -> 198
    //   223: aload_3
    //   224: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   227: goto -29 -> 198
    //   230: astore_2
    //   231: aconst_null
    //   232: astore_3
    //   233: goto -53 -> 180
    //   236: astore_2
    //   237: goto -57 -> 180
    //   240: astore 5
    //   242: aload_2
    //   243: astore 4
    //   245: aload 5
    //   247: astore_2
    //   248: goto -68 -> 180
    //   251: astore_3
    //   252: aload 4
    //   254: astore_2
    //   255: aload_3
    //   256: astore 4
    //   258: aload 5
    //   260: astore_3
    //   261: goto -150 -> 111
    //   264: astore 5
    //   266: aload 4
    //   268: astore_2
    //   269: aload 5
    //   271: astore 4
    //   273: goto -162 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   58	45	0	l	long
    //   75	9	2	localIOException1	java.io.IOException
    //   90	9	2	localIOException2	java.io.IOException
    //   107	30	2	localObject1	Object
    //   159	9	2	localIOException3	java.io.IOException
    //   174	25	2	localObject2	Object
    //   230	1	2	localObject3	Object
    //   236	7	2	localObject4	Object
    //   247	22	2	localObject5	Object
    //   27	102	3	localObject6	Object
    //   144	9	3	localIOException4	java.io.IOException
    //   176	9	3	localObject7	Object
    //   200	9	3	localIOException5	java.io.IOException
    //   215	9	3	localIOException6	java.io.IOException
    //   232	1	3	localObject8	Object
    //   251	5	3	localThrowable1	Throwable
    //   260	1	3	localObject9	Object
    //   13	56	4	localFileReader	java.io.FileReader
    //   104	16	4	localThrowable2	Throwable
    //   178	94	4	localObject10	Object
    //   1	108	5	localObject11	Object
    //   240	19	5	localObject12	Object
    //   264	6	5	localThrowable3	Throwable
    // Exception table:
    //   from	to	target	type
    //   64	68	75	java/io/IOException
    //   68	73	90	java/io/IOException
    //   3	15	104	java/lang/Throwable
    //   128	132	144	java/io/IOException
    //   136	140	159	java/io/IOException
    //   3	15	174	finally
    //   184	188	200	java/io/IOException
    //   193	198	215	java/io/IOException
    //   15	28	230	finally
    //   28	59	236	finally
    //   111	124	240	finally
    //   15	28	251	java/lang/Throwable
    //   28	59	264	java/lang/Throwable
  }
  
  /* Error */
  public static long i()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: new 1385	java/io/FileReader
    //   6: dup
    //   7: ldc_w 1387
    //   10: invokespecial 1388	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   13: astore 8
    //   15: new 589	java/io/BufferedReader
    //   18: dup
    //   19: aload 8
    //   21: sipush 2048
    //   24: invokespecial 1391	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   27: astore 7
    //   29: aload 7
    //   31: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   34: pop
    //   35: aload 7
    //   37: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   40: ldc_w 1393
    //   43: iconst_2
    //   44: invokevirtual 1397	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   47: iconst_1
    //   48: aaload
    //   49: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   52: ldc_w 1399
    //   55: ldc 95
    //   57: invokevirtual 1403	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   60: invokevirtual 644	java/lang/String:trim	()Ljava/lang/String;
    //   63: invokestatic 1246	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   66: lstore_0
    //   67: aload 7
    //   69: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   72: ldc_w 1393
    //   75: iconst_2
    //   76: invokevirtual 1397	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   79: iconst_1
    //   80: aaload
    //   81: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   84: ldc_w 1399
    //   87: ldc 95
    //   89: invokevirtual 1403	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   92: invokevirtual 644	java/lang/String:trim	()Ljava/lang/String;
    //   95: invokestatic 1246	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   98: lstore_2
    //   99: aload 7
    //   101: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   104: ldc_w 1393
    //   107: iconst_2
    //   108: invokevirtual 1397	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   111: iconst_1
    //   112: aaload
    //   113: invokevirtual 554	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   116: ldc_w 1399
    //   119: ldc 95
    //   121: invokevirtual 1403	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   124: invokevirtual 644	java/lang/String:trim	()Ljava/lang/String;
    //   127: invokestatic 1246	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   130: lstore 4
    //   132: lload_0
    //   133: bipush 10
    //   135: lshl
    //   136: lload_2
    //   137: bipush 10
    //   139: lshl
    //   140: ladd
    //   141: lload 4
    //   143: bipush 10
    //   145: lshl
    //   146: ladd
    //   147: lstore_0
    //   148: aload 7
    //   150: invokevirtual 794	java/io/BufferedReader:close	()V
    //   153: aload 8
    //   155: invokevirtual 1404	java/io/FileReader:close	()V
    //   158: lload_0
    //   159: lreturn
    //   160: astore 6
    //   162: aload 6
    //   164: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   167: ifne -14 -> 153
    //   170: aload 6
    //   172: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   175: goto -22 -> 153
    //   178: astore 6
    //   180: aload 6
    //   182: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   185: ifne -27 -> 158
    //   188: aload 6
    //   190: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   193: lload_0
    //   194: lreturn
    //   195: astore 8
    //   197: aconst_null
    //   198: astore 6
    //   200: aload 9
    //   202: astore 7
    //   204: aload 8
    //   206: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   209: ifne +8 -> 217
    //   212: aload 8
    //   214: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   217: aload 7
    //   219: ifnull +8 -> 227
    //   222: aload 7
    //   224: invokevirtual 794	java/io/BufferedReader:close	()V
    //   227: aload 6
    //   229: ifnull +8 -> 237
    //   232: aload 6
    //   234: invokevirtual 1404	java/io/FileReader:close	()V
    //   237: ldc2_w 1405
    //   240: lreturn
    //   241: astore 7
    //   243: aload 7
    //   245: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   248: ifne -21 -> 227
    //   251: aload 7
    //   253: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   256: goto -29 -> 227
    //   259: astore 6
    //   261: aload 6
    //   263: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   266: ifne -29 -> 237
    //   269: aload 6
    //   271: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   274: goto -37 -> 237
    //   277: astore 6
    //   279: aconst_null
    //   280: astore 7
    //   282: aconst_null
    //   283: astore 8
    //   285: aload 7
    //   287: ifnull +8 -> 295
    //   290: aload 7
    //   292: invokevirtual 794	java/io/BufferedReader:close	()V
    //   295: aload 8
    //   297: ifnull +8 -> 305
    //   300: aload 8
    //   302: invokevirtual 1404	java/io/FileReader:close	()V
    //   305: aload 6
    //   307: athrow
    //   308: astore 7
    //   310: aload 7
    //   312: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   315: ifne -20 -> 295
    //   318: aload 7
    //   320: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   323: goto -28 -> 295
    //   326: astore 7
    //   328: aload 7
    //   330: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   333: ifne -28 -> 305
    //   336: aload 7
    //   338: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   341: goto -36 -> 305
    //   344: astore 6
    //   346: aconst_null
    //   347: astore 7
    //   349: goto -64 -> 285
    //   352: astore 6
    //   354: goto -69 -> 285
    //   357: astore 9
    //   359: aload 6
    //   361: astore 8
    //   363: aload 9
    //   365: astore 6
    //   367: goto -82 -> 285
    //   370: astore 7
    //   372: aload 8
    //   374: astore 6
    //   376: aload 7
    //   378: astore 8
    //   380: aload 9
    //   382: astore 7
    //   384: goto -180 -> 204
    //   387: astore 9
    //   389: aload 8
    //   391: astore 6
    //   393: aload 9
    //   395: astore 8
    //   397: goto -193 -> 204
    // Local variable table:
    //   start	length	slot	name	signature
    //   66	128	0	l1	long
    //   98	39	2	l2	long
    //   130	12	4	l3	long
    //   160	11	6	localIOException1	java.io.IOException
    //   178	11	6	localIOException2	java.io.IOException
    //   198	35	6	localObject1	Object
    //   259	11	6	localIOException3	java.io.IOException
    //   277	29	6	localObject2	Object
    //   344	1	6	localObject3	Object
    //   352	8	6	localObject4	Object
    //   365	27	6	localObject5	Object
    //   27	196	7	localObject6	Object
    //   241	11	7	localIOException4	java.io.IOException
    //   280	11	7	localObject7	Object
    //   308	11	7	localIOException5	java.io.IOException
    //   326	11	7	localIOException6	java.io.IOException
    //   347	1	7	localObject8	Object
    //   370	7	7	localThrowable1	Throwable
    //   382	1	7	localObject9	Object
    //   13	141	8	localFileReader	java.io.FileReader
    //   195	18	8	localThrowable2	Throwable
    //   283	113	8	localObject10	Object
    //   1	200	9	localObject11	Object
    //   357	24	9	localObject12	Object
    //   387	7	9	localThrowable3	Throwable
    // Exception table:
    //   from	to	target	type
    //   148	153	160	java/io/IOException
    //   153	158	178	java/io/IOException
    //   3	15	195	java/lang/Throwable
    //   222	227	241	java/io/IOException
    //   232	237	259	java/io/IOException
    //   3	15	277	finally
    //   290	295	308	java/io/IOException
    //   300	305	326	java/io/IOException
    //   15	29	344	finally
    //   29	132	352	finally
    //   204	217	357	finally
    //   15	29	370	java/lang/Throwable
    //   29	132	387	java/lang/Throwable
  }
  
  public static long j()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (int i = 1; i == 0; i = 0) {
      return 0L;
    }
    try
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      i = localStatFs.getBlockSize();
      int j = localStatFs.getBlockCount();
      long l = j;
      return i * l;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return -2L;
  }
  
  public static long k()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (int i = 1; i == 0; i = 0) {
      return 0L;
    }
    try
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      i = localStatFs.getBlockSize();
      int j = localStatFs.getAvailableBlocks();
      long l = j;
      return i * l;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return -2L;
  }
  
  public static String l()
  {
    Object localObject = "fail";
    try
    {
      String str = Locale.getDefault().getCountry();
      localObject = str;
    }
    catch (Throwable localThrowable)
    {
      while (w.a(localThrowable)) {}
      localThrowable.printStackTrace();
    }
    return (String)localObject;
    return "fail";
  }
  
  public static String m()
  {
    Object localObject = "fail";
    try
    {
      String str = Build.BRAND;
      localObject = str;
    }
    catch (Throwable localThrowable)
    {
      while (w.a(localThrowable)) {}
      localThrowable.printStackTrace();
    }
    return (String)localObject;
    return "fail";
  }
  
  public static String n()
  {
    try
    {
      String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date());
      return str;
    }
    catch (Exception localException) {}
    return new Date().toString();
  }
  
  public static long o()
  {
    try
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
      long l = localSimpleDateFormat.parse(localSimpleDateFormat.format(new Date())).getTime();
      return l;
    }
    catch (Throwable localThrowable)
    {
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    return -1L;
  }
  
  /* Error */
  private static String p()
  {
    // Byte code:
    //   0: new 1385	java/io/FileReader
    //   3: dup
    //   4: ldc_w 1435
    //   7: invokespecial 1388	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   10: astore_1
    //   11: new 589	java/io/BufferedReader
    //   14: dup
    //   15: aload_1
    //   16: sipush 2048
    //   19: invokespecial 1391	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   22: astore 5
    //   24: aload 5
    //   26: astore_3
    //   27: aload_1
    //   28: astore_2
    //   29: aload 5
    //   31: invokevirtual 606	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   34: astore_0
    //   35: aload_0
    //   36: ifnull +291 -> 327
    //   39: aload 5
    //   41: astore_3
    //   42: aload_1
    //   43: astore_2
    //   44: aload_0
    //   45: ldc_w 1437
    //   48: iconst_2
    //   49: invokevirtual 1397	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   52: astore_0
    //   53: aload 5
    //   55: astore_3
    //   56: aload_1
    //   57: astore_2
    //   58: aload_0
    //   59: arraylength
    //   60: iconst_2
    //   61: if_icmpne -37 -> 24
    //   64: aload 5
    //   66: astore_3
    //   67: aload_1
    //   68: astore_2
    //   69: aload_0
    //   70: iconst_0
    //   71: aaload
    //   72: ldc_w 1439
    //   75: invokevirtual 647	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   78: ifeq +41 -> 119
    //   81: aload_0
    //   82: iconst_1
    //   83: aaload
    //   84: astore_0
    //   85: aload_0
    //   86: astore_2
    //   87: aload_0
    //   88: ifnull +20 -> 108
    //   91: aload 5
    //   93: astore_3
    //   94: aload_1
    //   95: astore_2
    //   96: aload_0
    //   97: ldc_w 756
    //   100: invokevirtual 1442	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   103: iconst_0
    //   104: aaload
    //   105: astore_0
    //   106: aload_0
    //   107: astore_2
    //   108: aload 5
    //   110: invokevirtual 794	java/io/BufferedReader:close	()V
    //   113: aload_1
    //   114: invokevirtual 1404	java/io/FileReader:close	()V
    //   117: aload_2
    //   118: areturn
    //   119: aload 5
    //   121: astore_3
    //   122: aload_1
    //   123: astore_2
    //   124: aload_0
    //   125: iconst_0
    //   126: aaload
    //   127: ldc_w 1444
    //   130: invokevirtual 647	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   133: ifeq -109 -> 24
    //   136: aload_0
    //   137: iconst_1
    //   138: aaload
    //   139: astore_0
    //   140: goto -55 -> 85
    //   143: astore_0
    //   144: aload_0
    //   145: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   148: ifne -35 -> 113
    //   151: aload_0
    //   152: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   155: goto -42 -> 113
    //   158: astore_0
    //   159: aload_0
    //   160: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   163: ifne -46 -> 117
    //   166: aload_0
    //   167: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   170: aload_2
    //   171: areturn
    //   172: astore 4
    //   174: aconst_null
    //   175: astore_0
    //   176: aconst_null
    //   177: astore_1
    //   178: aload_0
    //   179: astore_3
    //   180: aload_1
    //   181: astore_2
    //   182: aload 4
    //   184: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   187: ifne +12 -> 199
    //   190: aload_0
    //   191: astore_3
    //   192: aload_1
    //   193: astore_2
    //   194: aload 4
    //   196: invokevirtual 216	java/lang/Throwable:printStackTrace	()V
    //   199: aload_0
    //   200: ifnull +7 -> 207
    //   203: aload_0
    //   204: invokevirtual 794	java/io/BufferedReader:close	()V
    //   207: aload_1
    //   208: ifnull +7 -> 215
    //   211: aload_1
    //   212: invokevirtual 1404	java/io/FileReader:close	()V
    //   215: aconst_null
    //   216: areturn
    //   217: astore_0
    //   218: aload_0
    //   219: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   222: ifne -15 -> 207
    //   225: aload_0
    //   226: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   229: goto -22 -> 207
    //   232: astore_0
    //   233: aload_0
    //   234: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   237: ifne -22 -> 215
    //   240: aload_0
    //   241: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   244: goto -29 -> 215
    //   247: astore_0
    //   248: aconst_null
    //   249: astore_3
    //   250: aconst_null
    //   251: astore_1
    //   252: aload_3
    //   253: ifnull +7 -> 260
    //   256: aload_3
    //   257: invokevirtual 794	java/io/BufferedReader:close	()V
    //   260: aload_1
    //   261: ifnull +7 -> 268
    //   264: aload_1
    //   265: invokevirtual 1404	java/io/FileReader:close	()V
    //   268: aload_0
    //   269: athrow
    //   270: astore_2
    //   271: aload_2
    //   272: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   275: ifne -15 -> 260
    //   278: aload_2
    //   279: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   282: goto -22 -> 260
    //   285: astore_1
    //   286: aload_1
    //   287: invokestatic 617	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   290: ifne -22 -> 268
    //   293: aload_1
    //   294: invokevirtual 638	java/io/IOException:printStackTrace	()V
    //   297: goto -29 -> 268
    //   300: astore_0
    //   301: aconst_null
    //   302: astore_3
    //   303: goto -51 -> 252
    //   306: astore_0
    //   307: aload_2
    //   308: astore_1
    //   309: goto -57 -> 252
    //   312: astore 4
    //   314: aconst_null
    //   315: astore_0
    //   316: goto -138 -> 178
    //   319: astore 4
    //   321: aload 5
    //   323: astore_0
    //   324: goto -146 -> 178
    //   327: aconst_null
    //   328: astore_0
    //   329: goto -244 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   34	106	0	localObject1	Object
    //   143	9	0	localIOException1	java.io.IOException
    //   158	9	0	localIOException2	java.io.IOException
    //   175	29	0	localObject2	Object
    //   217	9	0	localIOException3	java.io.IOException
    //   232	9	0	localIOException4	java.io.IOException
    //   247	22	0	localObject3	Object
    //   300	1	0	localObject4	Object
    //   306	1	0	localObject5	Object
    //   315	14	0	localBufferedReader1	java.io.BufferedReader
    //   10	255	1	localFileReader	java.io.FileReader
    //   285	9	1	localIOException5	java.io.IOException
    //   308	1	1	localObject6	Object
    //   28	166	2	localObject7	Object
    //   270	38	2	localIOException6	java.io.IOException
    //   26	277	3	localObject8	Object
    //   172	23	4	localThrowable1	Throwable
    //   312	1	4	localThrowable2	Throwable
    //   319	1	4	localThrowable3	Throwable
    //   22	300	5	localBufferedReader2	java.io.BufferedReader
    // Exception table:
    //   from	to	target	type
    //   108	113	143	java/io/IOException
    //   113	117	158	java/io/IOException
    //   0	11	172	java/lang/Throwable
    //   203	207	217	java/io/IOException
    //   211	215	232	java/io/IOException
    //   0	11	247	finally
    //   256	260	270	java/io/IOException
    //   264	268	285	java/io/IOException
    //   11	24	300	finally
    //   29	35	306	finally
    //   44	53	306	finally
    //   58	64	306	finally
    //   69	81	306	finally
    //   96	106	306	finally
    //   124	136	306	finally
    //   182	190	306	finally
    //   194	199	306	finally
    //   11	24	312	java/lang/Throwable
    //   29	35	319	java/lang/Throwable
    //   44	53	319	java/lang/Throwable
    //   58	64	319	java/lang/Throwable
    //   69	81	319	java/lang/Throwable
    //   96	106	319	java/lang/Throwable
    //   124	136	319	java/lang/Throwable
  }
  
  public void a(String paramString)
  {
    this.b = paramString;
  }
  
  public <T> void a(String paramString, T paramT)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("put key can not is null");
    }
    if (paramT == null) {
      throw new IllegalArgumentException("put value can not is null");
    }
    if ((paramT instanceof Set)) {
      throw new IllegalArgumentException("can not support Set");
    }
    Object localObject = new i();
    ((i)localObject).a(this.b);
    ((i)localObject).a(paramT, 0);
    localObject = k.a(((i)localObject).a());
    HashMap localHashMap = new HashMap(1);
    ArrayList localArrayList = new ArrayList(1);
    a(localArrayList, paramT);
    localHashMap.put(a(localArrayList), localObject);
    this.d.remove(paramString);
    this.a.put(paramString, localHashMap);
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    this.c.a(paramArrayOfByte);
    this.c.a(this.b);
    paramArrayOfByte = new HashMap(1);
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("", new byte[0]);
    paramArrayOfByte.put("", localHashMap);
    this.a = this.c.a(paramArrayOfByte, 0, false);
  }
  
  public byte[] a()
  {
    i locali = new i(0);
    locali.a(this.b);
    locali.a(this.a, 0);
    return k.a(locali.a());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\tencent\bugly\proguard\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */