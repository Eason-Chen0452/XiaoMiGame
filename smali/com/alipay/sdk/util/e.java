package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import com.alipay.sdk.app.statistic.a;

public class e
{
  public static final String b = "failed";
  public Activity a;
  private IAlixPay c;
  private final Object d = IAlixPay.class;
  private boolean e;
  private a f;
  private ServiceConnection g = new f(this);
  private IRemoteServiceCallback h = new g(this);
  
  public e(Activity paramActivity, a parama)
  {
    this.a = paramActivity;
    this.f = parama;
  }
  
  private void a()
  {
    this.a = null;
  }
  
  private void a(l.a parama)
    throws InterruptedException
  {
    if ((parama == null) || (parama.b <= 78)) {
      return;
    }
    parama = new Intent();
    parama.setClassName("com.eg.android.AlipayGphone", "com.alipay.android.app.TransProcessPayActivity");
    this.a.startActivity(parama);
    Thread.sleep(200L);
  }
  
  /* Error */
  private String b(String paramString)
  {
    // Byte code:
    //   0: new 64	android/content/Intent
    //   3: dup
    //   4: invokespecial 65	android/content/Intent:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: ldc 67
    //   11: invokevirtual 96	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   14: pop
    //   15: aload_3
    //   16: ldc 98
    //   18: invokevirtual 101	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   21: pop
    //   22: aload_0
    //   23: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   26: invokestatic 106	com/alipay/sdk/util/l:g	(Landroid/content/Context;)Ljava/lang/String;
    //   29: astore_2
    //   30: aload_0
    //   31: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   34: invokevirtual 110	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   37: aload_3
    //   38: aload_0
    //   39: getfield 40	com/alipay/sdk/util/e:g	Landroid/content/ServiceConnection;
    //   42: iconst_1
    //   43: invokevirtual 116	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   46: pop
    //   47: aload_0
    //   48: getfield 33	com/alipay/sdk/util/e:d	Ljava/lang/Object;
    //   51: astore_3
    //   52: aload_3
    //   53: monitorenter
    //   54: aload_0
    //   55: getfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   58: astore 4
    //   60: aload 4
    //   62: ifnonnull +17 -> 79
    //   65: aload_0
    //   66: getfield 33	com/alipay/sdk/util/e:d	Ljava/lang/Object;
    //   69: invokestatic 121	com/alipay/sdk/data/a:b	()Lcom/alipay/sdk/data/a;
    //   72: invokevirtual 124	com/alipay/sdk/data/a:a	()I
    //   75: i2l
    //   76: invokevirtual 127	java/lang/Object:wait	(J)V
    //   79: aload_3
    //   80: monitorexit
    //   81: aload_0
    //   82: getfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   85: ifnonnull +157 -> 242
    //   88: aload_0
    //   89: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   92: invokestatic 106	com/alipay/sdk/util/l:g	(Landroid/content/Context;)Ljava/lang/String;
    //   95: astore_1
    //   96: aload_0
    //   97: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   100: invokestatic 129	com/alipay/sdk/util/l:h	(Landroid/content/Context;)Ljava/lang/String;
    //   103: astore_3
    //   104: ldc -125
    //   106: ldc -123
    //   108: new 135	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   115: aload_2
    //   116: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: ldc -114
    //   121: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload_1
    //   125: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc -114
    //   130: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_3
    //   134: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 151	com/alipay/sdk/app/statistic/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   143: ldc 11
    //   145: astore_2
    //   146: aload_0
    //   147: getfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   150: aload_0
    //   151: getfield 45	com/alipay/sdk/util/e:h	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   154: invokeinterface 155 2 0
    //   159: aload_0
    //   160: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   163: aload_0
    //   164: getfield 40	com/alipay/sdk/util/e:g	Landroid/content/ServiceConnection;
    //   167: invokevirtual 159	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   170: aload_0
    //   171: aconst_null
    //   172: putfield 45	com/alipay/sdk/util/e:h	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   175: aload_0
    //   176: aconst_null
    //   177: putfield 40	com/alipay/sdk/util/e:g	Landroid/content/ServiceConnection;
    //   180: aload_0
    //   181: aconst_null
    //   182: putfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   185: aload_2
    //   186: astore_1
    //   187: aload_0
    //   188: getfield 161	com/alipay/sdk/util/e:e	Z
    //   191: ifeq +18 -> 209
    //   194: aload_0
    //   195: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   198: iconst_0
    //   199: invokevirtual 165	android/app/Activity:setRequestedOrientation	(I)V
    //   202: aload_0
    //   203: iconst_0
    //   204: putfield 161	com/alipay/sdk/util/e:e	Z
    //   207: aload_2
    //   208: astore_1
    //   209: aload_1
    //   210: areturn
    //   211: astore_1
    //   212: ldc -125
    //   214: ldc -89
    //   216: aload_1
    //   217: invokestatic 170	com/alipay/sdk/app/statistic/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   220: ldc 11
    //   222: areturn
    //   223: astore 4
    //   225: ldc -125
    //   227: ldc -84
    //   229: aload 4
    //   231: invokestatic 170	com/alipay/sdk/app/statistic/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   234: goto -155 -> 79
    //   237: astore_1
    //   238: aload_3
    //   239: monitorexit
    //   240: aload_1
    //   241: athrow
    //   242: aload_0
    //   243: getfield 49	com/alipay/sdk/util/e:f	Lcom/alipay/sdk/util/e$a;
    //   246: ifnull +12 -> 258
    //   249: aload_0
    //   250: getfield 49	com/alipay/sdk/util/e:f	Lcom/alipay/sdk/util/e$a;
    //   253: invokeinterface 174 1 0
    //   258: aload_0
    //   259: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   262: invokevirtual 177	android/app/Activity:getRequestedOrientation	()I
    //   265: ifne +16 -> 281
    //   268: aload_0
    //   269: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   272: iconst_1
    //   273: invokevirtual 165	android/app/Activity:setRequestedOrientation	(I)V
    //   276: aload_0
    //   277: iconst_1
    //   278: putfield 161	com/alipay/sdk/util/e:e	Z
    //   281: aload_0
    //   282: getfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   285: aload_0
    //   286: getfield 45	com/alipay/sdk/util/e:h	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   289: invokeinterface 180 2 0
    //   294: aload_0
    //   295: getfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   298: aload_1
    //   299: invokeinterface 183 2 0
    //   304: astore_2
    //   305: aload_0
    //   306: getfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   309: aload_0
    //   310: getfield 45	com/alipay/sdk/util/e:h	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   313: invokeinterface 155 2 0
    //   318: aload_0
    //   319: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   322: aload_0
    //   323: getfield 40	com/alipay/sdk/util/e:g	Landroid/content/ServiceConnection;
    //   326: invokevirtual 159	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   329: aload_0
    //   330: aconst_null
    //   331: putfield 45	com/alipay/sdk/util/e:h	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   334: aload_0
    //   335: aconst_null
    //   336: putfield 40	com/alipay/sdk/util/e:g	Landroid/content/ServiceConnection;
    //   339: aload_0
    //   340: aconst_null
    //   341: putfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   344: aload_2
    //   345: astore_1
    //   346: aload_0
    //   347: getfield 161	com/alipay/sdk/util/e:e	Z
    //   350: ifeq -141 -> 209
    //   353: aload_0
    //   354: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   357: iconst_0
    //   358: invokevirtual 165	android/app/Activity:setRequestedOrientation	(I)V
    //   361: aload_0
    //   362: iconst_0
    //   363: putfield 161	com/alipay/sdk/util/e:e	Z
    //   366: aload_2
    //   367: areturn
    //   368: astore_1
    //   369: ldc -125
    //   371: ldc -71
    //   373: aload_1
    //   374: invokestatic 170	com/alipay/sdk/app/statistic/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   377: invokestatic 189	com/alipay/sdk/app/h:a	()Ljava/lang/String;
    //   380: astore_2
    //   381: aload_0
    //   382: getfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   385: aload_0
    //   386: getfield 45	com/alipay/sdk/util/e:h	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   389: invokeinterface 155 2 0
    //   394: aload_0
    //   395: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   398: aload_0
    //   399: getfield 40	com/alipay/sdk/util/e:g	Landroid/content/ServiceConnection;
    //   402: invokevirtual 159	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   405: aload_0
    //   406: aconst_null
    //   407: putfield 45	com/alipay/sdk/util/e:h	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   410: aload_0
    //   411: aconst_null
    //   412: putfield 40	com/alipay/sdk/util/e:g	Landroid/content/ServiceConnection;
    //   415: aload_0
    //   416: aconst_null
    //   417: putfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   420: aload_2
    //   421: astore_1
    //   422: aload_0
    //   423: getfield 161	com/alipay/sdk/util/e:e	Z
    //   426: ifeq -217 -> 209
    //   429: aload_0
    //   430: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   433: iconst_0
    //   434: invokevirtual 165	android/app/Activity:setRequestedOrientation	(I)V
    //   437: aload_0
    //   438: iconst_0
    //   439: putfield 161	com/alipay/sdk/util/e:e	Z
    //   442: aload_2
    //   443: areturn
    //   444: astore_1
    //   445: aload_0
    //   446: getfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   449: aload_0
    //   450: getfield 45	com/alipay/sdk/util/e:h	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   453: invokeinterface 155 2 0
    //   458: aload_0
    //   459: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   462: aload_0
    //   463: getfield 40	com/alipay/sdk/util/e:g	Landroid/content/ServiceConnection;
    //   466: invokevirtual 159	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   469: aload_0
    //   470: aconst_null
    //   471: putfield 45	com/alipay/sdk/util/e:h	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   474: aload_0
    //   475: aconst_null
    //   476: putfield 40	com/alipay/sdk/util/e:g	Landroid/content/ServiceConnection;
    //   479: aload_0
    //   480: aconst_null
    //   481: putfield 53	com/alipay/sdk/util/e:c	Lcom/alipay/android/app/IAlixPay;
    //   484: aload_0
    //   485: getfield 161	com/alipay/sdk/util/e:e	Z
    //   488: ifeq +16 -> 504
    //   491: aload_0
    //   492: getfield 47	com/alipay/sdk/util/e:a	Landroid/app/Activity;
    //   495: iconst_0
    //   496: invokevirtual 165	android/app/Activity:setRequestedOrientation	(I)V
    //   499: aload_0
    //   500: iconst_0
    //   501: putfield 161	com/alipay/sdk/util/e:e	Z
    //   504: aload_1
    //   505: athrow
    //   506: astore_2
    //   507: goto -38 -> 469
    //   510: astore_2
    //   511: goto -53 -> 458
    //   514: astore_1
    //   515: goto -110 -> 405
    //   518: astore_1
    //   519: goto -125 -> 394
    //   522: astore_1
    //   523: goto -194 -> 329
    //   526: astore_1
    //   527: goto -209 -> 318
    //   530: astore_1
    //   531: goto -361 -> 170
    //   534: astore_1
    //   535: goto -376 -> 159
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	538	0	this	e
    //   0	538	1	paramString	String
    //   29	414	2	str	String
    //   506	1	2	localThrowable1	Throwable
    //   510	1	2	localThrowable2	Throwable
    //   7	232	3	localObject	Object
    //   58	3	4	localIAlixPay	IAlixPay
    //   223	7	4	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   30	47	211	java/lang/Throwable
    //   65	79	223	java/lang/InterruptedException
    //   54	60	237	finally
    //   65	79	237	finally
    //   79	81	237	finally
    //   225	234	237	finally
    //   81	143	368	java/lang/Throwable
    //   242	258	368	java/lang/Throwable
    //   258	281	368	java/lang/Throwable
    //   281	305	368	java/lang/Throwable
    //   81	143	444	finally
    //   242	258	444	finally
    //   258	281	444	finally
    //   281	305	444	finally
    //   369	381	444	finally
    //   458	469	506	java/lang/Throwable
    //   445	458	510	java/lang/Throwable
    //   394	405	514	java/lang/Throwable
    //   381	394	518	java/lang/Throwable
    //   318	329	522	java/lang/Throwable
    //   305	318	526	java/lang/Throwable
    //   159	170	530	java/lang/Throwable
    //   146	159	534	java/lang/Throwable
  }
  
  public final String a(String paramString)
  {
    for (;;)
    {
      try
      {
        localObject = l.a(this.a, "com.eg.android.AlipayGphone");
        if (((l.a)localObject).a()) {
          return "failed";
        }
        if (localObject != null)
        {
          int i = ((l.a)localObject).b;
          if (i > 78) {
            continue;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        Object localObject;
        a.a("biz", "CheckClientSignEx", localThrowable);
        continue;
      }
      return b(paramString);
      localObject = new Intent();
      ((Intent)localObject).setClassName("com.eg.android.AlipayGphone", "com.alipay.android.app.TransProcessPayActivity");
      this.a.startActivity((Intent)localObject);
      Thread.sleep(200L);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\util\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */