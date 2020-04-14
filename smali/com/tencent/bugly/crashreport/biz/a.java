package com.tencent.bugly.crashreport.biz;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.am;
import com.tencent.bugly.proguard.j;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.s;
import com.tencent.bugly.proguard.t;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a
{
  private Context a;
  private long b;
  private int c;
  
  public a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  private static ContentValues a(UserInfoBean paramUserInfoBean)
  {
    if (paramUserInfoBean == null) {}
    do
    {
      return null;
      try
      {
        ContentValues localContentValues = new ContentValues();
        if (paramUserInfoBean.a > 0L) {
          localContentValues.put("_id", Long.valueOf(paramUserInfoBean.a));
        }
        localContentValues.put("_tm", Long.valueOf(paramUserInfoBean.e));
        localContentValues.put("_ut", Long.valueOf(paramUserInfoBean.f));
        localContentValues.put("_tp", Integer.valueOf(paramUserInfoBean.b));
        localContentValues.put("_pc", paramUserInfoBean.c);
        Parcel localParcel = Parcel.obtain();
        paramUserInfoBean.writeToParcel(localParcel, 0);
        paramUserInfoBean = localParcel.marshall();
        localParcel.recycle();
        localContentValues.put("_dt", paramUserInfoBean);
        return localContentValues;
      }
      catch (Throwable paramUserInfoBean) {}
    } while (w.a(paramUserInfoBean));
    paramUserInfoBean.printStackTrace();
    return null;
  }
  
  private static UserInfoBean a(Cursor paramCursor)
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
        localObject = (UserInfoBean)com.tencent.bugly.proguard.a.a((byte[])localObject, UserInfoBean.CREATOR);
        paramCursor = (Cursor)localObject;
        if (localObject != null)
        {
          ((UserInfoBean)localObject).a = l;
          return (UserInfoBean)localObject;
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
  
  private static void a(List<UserInfoBean> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {}
    do
    {
      return;
      StringBuilder localStringBuilder = new StringBuilder();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject = (UserInfoBean)paramList.next();
        localStringBuilder.append(" or _id").append(" = ").append(((UserInfoBean)localObject).a);
      }
      Object localObject = localStringBuilder.toString();
      paramList = (List<UserInfoBean>)localObject;
      if (((String)localObject).length() > 0) {
        paramList = ((String)localObject).substring(4);
      }
      localStringBuilder.setLength(0);
      try
      {
        w.c("deleted %s data %d", new Object[] { "t_ui", Integer.valueOf(o.a().a("t_ui", paramList, null, null, true)) });
        return;
      }
      catch (Throwable paramList) {}
    } while (w.a(paramList));
    paramList.printStackTrace();
  }
  
  /* Error */
  public final List<UserInfoBean> a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_1
    //   3: ifnull +55 -> 58
    //   6: aload_1
    //   7: invokevirtual 219	java/lang/String:trim	()Ljava/lang/String;
    //   10: invokevirtual 197	java/lang/String:length	()I
    //   13: ifle +45 -> 58
    //   16: goto +345 -> 361
    //   19: invokestatic 143	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   22: ldc -111
    //   24: aconst_null
    //   25: aload_1
    //   26: aconst_null
    //   27: aconst_null
    //   28: iconst_1
    //   29: invokevirtual 222	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;
    //   32: astore_1
    //   33: aload_1
    //   34: ifnonnull +54 -> 88
    //   37: aload_1
    //   38: ifnull +18 -> 56
    //   41: aload_1
    //   42: invokeinterface 225 1 0
    //   47: ifne +9 -> 56
    //   50: aload_1
    //   51: invokeinterface 228 1 0
    //   56: aconst_null
    //   57: areturn
    //   58: iconst_1
    //   59: istore_2
    //   60: goto +301 -> 361
    //   63: new 162	java/lang/StringBuilder
    //   66: dup
    //   67: ldc -26
    //   69: invokespecial 233	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   72: aload_1
    //   73: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: ldc -21
    //   78: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 192	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: astore_1
    //   85: goto -66 -> 19
    //   88: new 162	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   95: astore 6
    //   97: new 237	java/util/ArrayList
    //   100: dup
    //   101: invokespecial 238	java/util/ArrayList:<init>	()V
    //   104: astore 5
    //   106: aload_1
    //   107: invokeinterface 241 1 0
    //   112: ifeq +145 -> 257
    //   115: aload_1
    //   116: invokestatic 243	com/tencent/bugly/crashreport/biz/a:a	(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/biz/UserInfoBean;
    //   119: astore 7
    //   121: aload 7
    //   123: ifnull +52 -> 175
    //   126: aload 5
    //   128: aload 7
    //   130: invokeinterface 247 2 0
    //   135: pop
    //   136: goto -30 -> 106
    //   139: astore 5
    //   141: aload 5
    //   143: invokestatic 108	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   146: ifne +8 -> 154
    //   149: aload 5
    //   151: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   154: aload_1
    //   155: ifnull +18 -> 173
    //   158: aload_1
    //   159: invokeinterface 225 1 0
    //   164: ifne +9 -> 173
    //   167: aload_1
    //   168: invokeinterface 228 1 0
    //   173: aconst_null
    //   174: areturn
    //   175: aload_1
    //   176: aload_1
    //   177: ldc 39
    //   179: invokeinterface 118 2 0
    //   184: invokeinterface 126 2 0
    //   189: lstore_3
    //   190: aload 6
    //   192: ldc -77
    //   194: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: ldc -71
    //   199: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: lload_3
    //   203: invokevirtual 188	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   206: pop
    //   207: goto -101 -> 106
    //   210: astore 7
    //   212: ldc -7
    //   214: iconst_0
    //   215: anewarray 4	java/lang/Object
    //   218: invokestatic 252	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   221: pop
    //   222: goto -116 -> 106
    //   225: astore 6
    //   227: aload_1
    //   228: astore 5
    //   230: aload 6
    //   232: astore_1
    //   233: aload 5
    //   235: ifnull +20 -> 255
    //   238: aload 5
    //   240: invokeinterface 225 1 0
    //   245: ifne +10 -> 255
    //   248: aload 5
    //   250: invokeinterface 228 1 0
    //   255: aload_1
    //   256: athrow
    //   257: aload 6
    //   259: invokevirtual 192	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: astore 6
    //   264: aload 6
    //   266: invokevirtual 197	java/lang/String:length	()I
    //   269: ifle +45 -> 314
    //   272: aload 6
    //   274: iconst_4
    //   275: invokevirtual 201	java/lang/String:substring	(I)Ljava/lang/String;
    //   278: astore 6
    //   280: ldc -2
    //   282: iconst_2
    //   283: anewarray 4	java/lang/Object
    //   286: dup
    //   287: iconst_0
    //   288: ldc -111
    //   290: aastore
    //   291: dup
    //   292: iconst_1
    //   293: invokestatic 143	com/tencent/bugly/proguard/o:a	()Lcom/tencent/bugly/proguard/o;
    //   296: ldc -111
    //   298: aload 6
    //   300: aconst_null
    //   301: aconst_null
    //   302: iconst_1
    //   303: invokevirtual 210	com/tencent/bugly/proguard/o:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I
    //   306: invokestatic 68	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   309: aastore
    //   310: invokestatic 252	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   313: pop
    //   314: aload_1
    //   315: ifnull +18 -> 333
    //   318: aload_1
    //   319: invokeinterface 225 1 0
    //   324: ifne +9 -> 333
    //   327: aload_1
    //   328: invokeinterface 228 1 0
    //   333: aload 5
    //   335: areturn
    //   336: astore_1
    //   337: aconst_null
    //   338: astore 5
    //   340: goto -107 -> 233
    //   343: astore 6
    //   345: aload_1
    //   346: astore 5
    //   348: aload 6
    //   350: astore_1
    //   351: goto -118 -> 233
    //   354: astore 5
    //   356: aconst_null
    //   357: astore_1
    //   358: goto -217 -> 141
    //   361: iload_2
    //   362: ifeq -299 -> 63
    //   365: aconst_null
    //   366: astore_1
    //   367: goto -348 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	370	0	this	a
    //   0	370	1	paramString	String
    //   1	361	2	i	int
    //   189	14	3	l	long
    //   104	23	5	localArrayList	ArrayList
    //   139	11	5	localThrowable1	Throwable
    //   228	119	5	str1	String
    //   354	1	5	localThrowable2	Throwable
    //   95	96	6	localStringBuilder	StringBuilder
    //   225	33	6	localObject1	Object
    //   262	37	6	str2	String
    //   343	6	6	localObject2	Object
    //   119	10	7	localUserInfoBean	UserInfoBean
    //   210	1	7	localThrowable3	Throwable
    // Exception table:
    //   from	to	target	type
    //   88	106	139	java/lang/Throwable
    //   106	121	139	java/lang/Throwable
    //   126	136	139	java/lang/Throwable
    //   212	222	139	java/lang/Throwable
    //   257	314	139	java/lang/Throwable
    //   175	207	210	java/lang/Throwable
    //   88	106	225	finally
    //   106	121	225	finally
    //   126	136	225	finally
    //   175	207	225	finally
    //   212	222	225	finally
    //   257	314	225	finally
    //   6	16	336	finally
    //   19	33	336	finally
    //   63	85	336	finally
    //   141	154	343	finally
    //   6	16	354	java/lang/Throwable
    //   19	33	354	java/lang/Throwable
    //   63	85	354	java/lang/Throwable
  }
  
  public final void a()
  {
    this.b = (com.tencent.bugly.proguard.a.o() + 86400000L);
    v.a().a(new b(), this.b - System.currentTimeMillis() + 5000L);
  }
  
  public final void a(int paramInt, boolean paramBoolean, long paramLong)
  {
    int i = 1;
    Object localObject = com.tencent.bugly.crashreport.common.strategy.a.a().c();
    if ((localObject != null) && (!((StrategyBean)localObject).e) && (paramInt != 1) && (paramInt != 3))
    {
      w.e("UserInfo is disable", new Object[0]);
      return;
    }
    if (paramInt == 1) {
      this.c += 1;
    }
    localObject = this.a;
    if (paramInt == 1) {}
    for (;;)
    {
      localObject = com.tencent.bugly.crashreport.common.info.a.a((Context)localObject);
      UserInfoBean localUserInfoBean = new UserInfoBean();
      localUserInfoBean.b = paramInt;
      localUserInfoBean.c = ((com.tencent.bugly.crashreport.common.info.a)localObject).d;
      localUserInfoBean.d = ((com.tencent.bugly.crashreport.common.info.a)localObject).f();
      localUserInfoBean.e = System.currentTimeMillis();
      localUserInfoBean.f = -1L;
      localUserInfoBean.n = ((com.tencent.bugly.crashreport.common.info.a)localObject).i;
      localUserInfoBean.o = i;
      localUserInfoBean.l = ((com.tencent.bugly.crashreport.common.info.a)localObject).n;
      localUserInfoBean.m = ((com.tencent.bugly.crashreport.common.info.a)localObject).o;
      localUserInfoBean.g = ((com.tencent.bugly.crashreport.common.info.a)localObject).p;
      localUserInfoBean.h = ((com.tencent.bugly.crashreport.common.info.a)localObject).q;
      localUserInfoBean.i = ((com.tencent.bugly.crashreport.common.info.a)localObject).r;
      localUserInfoBean.k = ((com.tencent.bugly.crashreport.common.info.a)localObject).s;
      localUserInfoBean.r = ((com.tencent.bugly.crashreport.common.info.a)localObject).w();
      localUserInfoBean.s = ((com.tencent.bugly.crashreport.common.info.a)localObject).A();
      localUserInfoBean.p = ((com.tencent.bugly.crashreport.common.info.a)localObject).B();
      localUserInfoBean.q = ((com.tencent.bugly.crashreport.common.info.a)localObject).C();
      v.a().a(new a(localUserInfoBean, paramBoolean), 0L);
      return;
      i = 0;
    }
  }
  
  public final void b()
  {
    int k = 1;
    label456:
    label544:
    label549:
    label552:
    label559:
    label566:
    label571:
    label575:
    label578:
    for (;;)
    {
      int i;
      int j;
      try
      {
        Object localObject1 = com.tencent.bugly.crashreport.common.info.a.a(this.a).d;
        localObject2 = new ArrayList();
        localObject1 = a((String)localObject1);
        if (localObject1 != null)
        {
          int m = ((List)localObject1).size() - 10;
          if (m > 0)
          {
            i = 0;
            if (i >= ((List)localObject1).size() - 1) {
              break label566;
            }
            j = i + 1;
            if (j >= ((List)localObject1).size()) {
              break label559;
            }
            if (((UserInfoBean)((List)localObject1).get(i)).e <= ((UserInfoBean)((List)localObject1).get(j)).e) {
              break label552;
            }
            localObject3 = (UserInfoBean)((List)localObject1).get(i);
            ((List)localObject1).set(i, ((List)localObject1).get(j));
            ((List)localObject1).set(j, localObject3);
            break label552;
            if (i < m)
            {
              ((List)localObject2).add(((List)localObject1).get(i));
              i += 1;
              continue;
            }
          }
          Object localObject3 = ((List)localObject1).iterator();
          i = 0;
          if (((Iterator)localObject3).hasNext())
          {
            UserInfoBean localUserInfoBean = (UserInfoBean)((Iterator)localObject3).next();
            if (localUserInfoBean.f != -1L)
            {
              ((Iterator)localObject3).remove();
              if (localUserInfoBean.e < com.tencent.bugly.proguard.a.o()) {
                ((List)localObject2).add(localUserInfoBean);
              }
            }
            if (localUserInfoBean.e <= System.currentTimeMillis() - 600000L) {
              break label549;
            }
            if (localUserInfoBean.b == 1) {
              break label571;
            }
            if (localUserInfoBean.b != 4) {
              break label549;
            }
            break label571;
          }
          if (i <= 15) {
            break label544;
          }
          w.d("[userinfo] userinfo too many times in 10 min: %d", new Object[] { Integer.valueOf(i) });
          i = 0;
          break label578;
          if (((List)localObject2).size() > 0) {
            a((List)localObject2);
          }
          if ((i != 0) && (localObject1 != null))
          {
            i = ((List)localObject1).size();
            if (i != 0) {
              continue;
            }
          }
        }
        else
        {
          localObject1 = new ArrayList();
          i = 1;
          continue;
        }
        w.c("[userinfo] do userinfo, size: %d", new Object[] { Integer.valueOf(((List)localObject1).size()) });
        if (this.c == 1)
        {
          i = k;
          localObject2 = com.tencent.bugly.proguard.a.a((List)localObject1, i);
          if (localObject2 != null) {
            break label456;
          }
          w.d("[biz] create uPkg fail!", new Object[0]);
          continue;
        }
        i = 2;
      }
      finally {}
      continue;
      Object localObject2 = com.tencent.bugly.proguard.a.a((j)localObject2);
      if (localObject2 == null)
      {
        w.d("[biz] send encode fail!", new Object[0]);
      }
      else
      {
        localObject2 = com.tencent.bugly.proguard.a.a(this.a, 640, (byte[])localObject2);
        if (localObject2 == null)
        {
          w.d("request package is null.", new Object[0]);
        }
        else
        {
          s local1 = new s()
          {
            public final void a(boolean paramAnonymousBoolean)
            {
              if (paramAnonymousBoolean)
              {
                w.c("up success do final", new Object[0]);
                long l = System.currentTimeMillis();
                Iterator localIterator = localList.iterator();
                while (localIterator.hasNext())
                {
                  UserInfoBean localUserInfoBean = (UserInfoBean)localIterator.next();
                  localUserInfoBean.f = l;
                  a.a(a.this, localUserInfoBean);
                }
              }
            }
          };
          t.a().a(1001, (am)localObject2, null, local1);
          continue;
          i = 1;
          break label578;
          break label575;
          j += 1;
          continue;
          i += 1;
          continue;
          i = 0;
          continue;
          i += 1;
        }
      }
    }
  }
  
  final class a
    implements Runnable
  {
    private boolean a;
    private UserInfoBean b;
    
    public a(UserInfoBean paramUserInfoBean, boolean paramBoolean)
    {
      this.b = paramUserInfoBean;
      this.a = paramBoolean;
    }
    
    public final void run()
    {
      try
      {
        if (this.b != null)
        {
          UserInfoBean localUserInfoBean = this.b;
          if (localUserInfoBean != null)
          {
            com.tencent.bugly.crashreport.common.info.a locala = com.tencent.bugly.crashreport.common.info.a.a();
            if (locala != null) {
              localUserInfoBean.j = locala.d();
            }
          }
          w.c("record userinfo", new Object[0]);
          a.a(a.this, this.b);
        }
        if (this.a) {
          a.this.b();
        }
        return;
      }
      catch (Throwable localThrowable)
      {
        while (w.a(localThrowable)) {}
        localThrowable.printStackTrace();
      }
    }
  }
  
  final class b
    implements Runnable
  {
    b() {}
    
    public final void run()
    {
      long l = System.currentTimeMillis();
      if (l < a.a(a.this))
      {
        v.a().a(new b(a.this), a.a(a.this) - l + 5000L);
        return;
      }
      a.b(a.this);
      a.this.a(3, false, 0L);
      a.this.a();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\tencent\bugly\crashreport\biz\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */