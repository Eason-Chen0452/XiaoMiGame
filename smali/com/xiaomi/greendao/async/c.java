package com.xiaomi.greendao.async;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

final class c
  implements Handler.Callback, Runnable
{
  private static ExecutorService a = ;
  private final BlockingQueue<a> b = new LinkedBlockingQueue();
  private volatile boolean c;
  private volatile int d = 50;
  private volatile b e;
  private volatile b f;
  private volatile int g = 50;
  private int h;
  private int i;
  private Handler j;
  
  private void a(a parama)
  {
    parama.c();
    b localb = this.e;
    if (this.f != null)
    {
      if (this.j == null) {
        this.j = new Handler(Looper.getMainLooper(), this);
      }
      parama = this.j.obtainMessage(1, parama);
      this.j.sendMessage(parama);
    }
    try
    {
      this.i += 1;
      if (this.i == this.h) {
        notifyAll();
      }
      return;
    }
    finally {}
  }
  
  private void b(a parama)
  {
    c(parama);
    a(parama);
  }
  
  /* Error */
  private static void c(a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 97	java/lang/System:currentTimeMillis	()J
    //   4: putfield 100	com/xiaomi/greendao/async/a:e	J
    //   7: getstatic 105	com/xiaomi/greendao/async/d:a	[I
    //   10: aload_0
    //   11: getfield 108	com/xiaomi/greendao/async/a:a	Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;
    //   14: invokevirtual 114	com/xiaomi/greendao/async/AsyncOperation$OperationType:ordinal	()I
    //   17: iaload
    //   18: tableswitch	default:+546->564, 1:+143->161, 2:+157->175, 3:+174->192, 4:+191->209, 5:+206->224, 6:+223->241, 7:+240->258, 8:+255->273, 9:+272->290, 10:+289->307, 11:+303->321, 12:+320->338, 13:+337->355, 14:+376->394, 15:+419->437, 16:+439->457, 17:+459->477, 18:+473->491, 19:+483->501, 20:+501->519, 21:+515->533, 22:+532->550
    //   120: new 116	com/xiaomi/greendao/DaoException
    //   123: dup
    //   124: new 118	java/lang/StringBuilder
    //   127: dup
    //   128: ldc 120
    //   130: invokespecial 123	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   133: aload_0
    //   134: getfield 108	com/xiaomi/greendao/async/a:a	Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;
    //   137: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokespecial 132	com/xiaomi/greendao/DaoException:<init>	(Ljava/lang/String;)V
    //   146: athrow
    //   147: astore_1
    //   148: aload_0
    //   149: aload_1
    //   150: putfield 135	com/xiaomi/greendao/async/a:g	Ljava/lang/Throwable;
    //   153: aload_0
    //   154: invokestatic 97	java/lang/System:currentTimeMillis	()J
    //   157: putfield 137	com/xiaomi/greendao/async/a:f	J
    //   160: return
    //   161: aload_0
    //   162: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   165: aload_0
    //   166: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   169: invokevirtual 149	com/xiaomi/greendao/AbstractDao:delete	(Ljava/lang/Object;)V
    //   172: goto -19 -> 153
    //   175: aload_0
    //   176: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   179: aload_0
    //   180: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   183: checkcast 151	java/lang/Iterable
    //   186: invokevirtual 155	com/xiaomi/greendao/AbstractDao:deleteInTx	(Ljava/lang/Iterable;)V
    //   189: goto -36 -> 153
    //   192: aload_0
    //   193: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   196: aload_0
    //   197: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   200: checkcast 157	[Ljava/lang/Object;
    //   203: invokevirtual 160	com/xiaomi/greendao/AbstractDao:deleteInTx	([Ljava/lang/Object;)V
    //   206: goto -53 -> 153
    //   209: aload_0
    //   210: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   213: aload_0
    //   214: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   217: invokevirtual 164	com/xiaomi/greendao/AbstractDao:insert	(Ljava/lang/Object;)J
    //   220: pop2
    //   221: goto -68 -> 153
    //   224: aload_0
    //   225: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   228: aload_0
    //   229: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   232: checkcast 151	java/lang/Iterable
    //   235: invokevirtual 167	com/xiaomi/greendao/AbstractDao:insertInTx	(Ljava/lang/Iterable;)V
    //   238: goto -85 -> 153
    //   241: aload_0
    //   242: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   245: aload_0
    //   246: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   249: checkcast 157	[Ljava/lang/Object;
    //   252: invokevirtual 169	com/xiaomi/greendao/AbstractDao:insertInTx	([Ljava/lang/Object;)V
    //   255: goto -102 -> 153
    //   258: aload_0
    //   259: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   262: aload_0
    //   263: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   266: invokevirtual 172	com/xiaomi/greendao/AbstractDao:insertOrReplace	(Ljava/lang/Object;)J
    //   269: pop2
    //   270: goto -117 -> 153
    //   273: aload_0
    //   274: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   277: aload_0
    //   278: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   281: checkcast 151	java/lang/Iterable
    //   284: invokevirtual 175	com/xiaomi/greendao/AbstractDao:insertOrReplaceInTx	(Ljava/lang/Iterable;)V
    //   287: goto -134 -> 153
    //   290: aload_0
    //   291: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   294: aload_0
    //   295: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   298: checkcast 157	[Ljava/lang/Object;
    //   301: invokevirtual 177	com/xiaomi/greendao/AbstractDao:insertOrReplaceInTx	([Ljava/lang/Object;)V
    //   304: goto -151 -> 153
    //   307: aload_0
    //   308: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   311: aload_0
    //   312: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   315: invokevirtual 180	com/xiaomi/greendao/AbstractDao:update	(Ljava/lang/Object;)V
    //   318: goto -165 -> 153
    //   321: aload_0
    //   322: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   325: aload_0
    //   326: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   329: checkcast 151	java/lang/Iterable
    //   332: invokevirtual 183	com/xiaomi/greendao/AbstractDao:updateInTx	(Ljava/lang/Iterable;)V
    //   335: goto -182 -> 153
    //   338: aload_0
    //   339: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   342: aload_0
    //   343: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   346: checkcast 157	[Ljava/lang/Object;
    //   349: invokevirtual 185	com/xiaomi/greendao/AbstractDao:updateInTx	([Ljava/lang/Object;)V
    //   352: goto -199 -> 153
    //   355: aload_0
    //   356: invokevirtual 188	com/xiaomi/greendao/async/a:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   359: astore_1
    //   360: aload_1
    //   361: invokevirtual 193	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   364: aload_0
    //   365: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   368: checkcast 8	java/lang/Runnable
    //   371: invokeinterface 196 1 0
    //   376: aload_1
    //   377: invokevirtual 199	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   380: aload_1
    //   381: invokevirtual 202	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   384: goto -231 -> 153
    //   387: astore_2
    //   388: aload_1
    //   389: invokevirtual 202	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   392: aload_2
    //   393: athrow
    //   394: aload_0
    //   395: invokevirtual 188	com/xiaomi/greendao/async/a:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   398: astore_1
    //   399: aload_1
    //   400: invokevirtual 193	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   403: aload_0
    //   404: aload_0
    //   405: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   408: checkcast 204	java/util/concurrent/Callable
    //   411: invokeinterface 208 1 0
    //   416: putfield 210	com/xiaomi/greendao/async/a:h	Ljava/lang/Object;
    //   419: aload_1
    //   420: invokevirtual 199	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   423: aload_1
    //   424: invokevirtual 202	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   427: goto -274 -> 153
    //   430: astore_2
    //   431: aload_1
    //   432: invokevirtual 202	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   435: aload_2
    //   436: athrow
    //   437: aload_0
    //   438: aload_0
    //   439: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   442: checkcast 212	com/xiaomi/greendao/query/d
    //   445: invokevirtual 215	com/xiaomi/greendao/query/d:a	()Lcom/xiaomi/greendao/query/d;
    //   448: invokevirtual 218	com/xiaomi/greendao/query/d:b	()Ljava/util/List;
    //   451: putfield 210	com/xiaomi/greendao/async/a:h	Ljava/lang/Object;
    //   454: goto -301 -> 153
    //   457: aload_0
    //   458: aload_0
    //   459: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   462: checkcast 212	com/xiaomi/greendao/query/d
    //   465: invokevirtual 215	com/xiaomi/greendao/query/d:a	()Lcom/xiaomi/greendao/query/d;
    //   468: invokevirtual 220	com/xiaomi/greendao/query/d:c	()Ljava/lang/Object;
    //   471: putfield 210	com/xiaomi/greendao/async/a:h	Ljava/lang/Object;
    //   474: goto -321 -> 153
    //   477: aload_0
    //   478: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   481: aload_0
    //   482: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   485: invokevirtual 223	com/xiaomi/greendao/AbstractDao:deleteByKey	(Ljava/lang/Object;)V
    //   488: goto -335 -> 153
    //   491: aload_0
    //   492: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   495: invokevirtual 226	com/xiaomi/greendao/AbstractDao:deleteAll	()V
    //   498: goto -345 -> 153
    //   501: aload_0
    //   502: aload_0
    //   503: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   506: aload_0
    //   507: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   510: invokevirtual 230	com/xiaomi/greendao/AbstractDao:load	(Ljava/lang/Object;)Ljava/lang/Object;
    //   513: putfield 210	com/xiaomi/greendao/async/a:h	Ljava/lang/Object;
    //   516: goto -363 -> 153
    //   519: aload_0
    //   520: aload_0
    //   521: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   524: invokevirtual 233	com/xiaomi/greendao/AbstractDao:loadAll	()Ljava/util/List;
    //   527: putfield 210	com/xiaomi/greendao/async/a:h	Ljava/lang/Object;
    //   530: goto -377 -> 153
    //   533: aload_0
    //   534: aload_0
    //   535: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   538: invokevirtual 236	com/xiaomi/greendao/AbstractDao:count	()J
    //   541: invokestatic 242	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   544: putfield 210	com/xiaomi/greendao/async/a:h	Ljava/lang/Object;
    //   547: goto -394 -> 153
    //   550: aload_0
    //   551: getfield 140	com/xiaomi/greendao/async/a:b	Lcom/xiaomi/greendao/AbstractDao;
    //   554: aload_0
    //   555: getfield 143	com/xiaomi/greendao/async/a:c	Ljava/lang/Object;
    //   558: invokevirtual 245	com/xiaomi/greendao/AbstractDao:refresh	(Ljava/lang/Object;)V
    //   561: goto -408 -> 153
    //   564: goto -444 -> 120
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	567	0	parama	a
    //   147	3	1	localThrowable	Throwable
    //   359	73	1	localSQLiteDatabase	android.database.sqlite.SQLiteDatabase
    //   387	6	2	localObject1	Object
    //   430	6	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   7	120	147	java/lang/Throwable
    //   120	147	147	java/lang/Throwable
    //   161	172	147	java/lang/Throwable
    //   175	189	147	java/lang/Throwable
    //   192	206	147	java/lang/Throwable
    //   209	221	147	java/lang/Throwable
    //   224	238	147	java/lang/Throwable
    //   241	255	147	java/lang/Throwable
    //   258	270	147	java/lang/Throwable
    //   273	287	147	java/lang/Throwable
    //   290	304	147	java/lang/Throwable
    //   307	318	147	java/lang/Throwable
    //   321	335	147	java/lang/Throwable
    //   338	352	147	java/lang/Throwable
    //   355	364	147	java/lang/Throwable
    //   380	384	147	java/lang/Throwable
    //   388	394	147	java/lang/Throwable
    //   394	403	147	java/lang/Throwable
    //   423	427	147	java/lang/Throwable
    //   431	437	147	java/lang/Throwable
    //   437	454	147	java/lang/Throwable
    //   457	474	147	java/lang/Throwable
    //   477	488	147	java/lang/Throwable
    //   491	498	147	java/lang/Throwable
    //   501	516	147	java/lang/Throwable
    //   519	530	147	java/lang/Throwable
    //   533	547	147	java/lang/Throwable
    //   550	561	147	java/lang/Throwable
    //   364	380	387	finally
    //   403	423	430	finally
  }
  
  public final boolean handleMessage(Message paramMessage)
  {
    if (this.f != null) {
      paramMessage = paramMessage.obj;
    }
    return false;
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 44	com/xiaomi/greendao/async/c:b	Ljava/util/concurrent/BlockingQueue;
    //   4: lconst_1
    //   5: getstatic 261	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   8: invokeinterface 267 4 0
    //   13: checkcast 51	com/xiaomi/greendao/async/a
    //   16: astore 4
    //   18: aload 4
    //   20: ifnonnull +522 -> 542
    //   23: aload_0
    //   24: monitorenter
    //   25: aload_0
    //   26: getfield 44	com/xiaomi/greendao/async/c:b	Ljava/util/concurrent/BlockingQueue;
    //   29: invokeinterface 269 1 0
    //   34: checkcast 51	com/xiaomi/greendao/async/a
    //   37: astore 4
    //   39: aload 4
    //   41: ifnonnull +16 -> 57
    //   44: aload_0
    //   45: iconst_0
    //   46: putfield 271	com/xiaomi/greendao/async/c:c	Z
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_0
    //   52: iconst_0
    //   53: putfield 271	com/xiaomi/greendao/async/c:c	Z
    //   56: return
    //   57: aload_0
    //   58: monitorexit
    //   59: aload 4
    //   61: invokevirtual 274	com/xiaomi/greendao/async/a:a	()Z
    //   64: ifeq +464 -> 528
    //   67: aload_0
    //   68: getfield 44	com/xiaomi/greendao/async/c:b	Ljava/util/concurrent/BlockingQueue;
    //   71: aload_0
    //   72: getfield 48	com/xiaomi/greendao/async/c:g	I
    //   75: i2l
    //   76: getstatic 277	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   79: invokeinterface 267 4 0
    //   84: checkcast 51	com/xiaomi/greendao/async/a
    //   87: astore 6
    //   89: aload 6
    //   91: ifnull +437 -> 528
    //   94: aload 4
    //   96: aload 6
    //   98: invokevirtual 280	com/xiaomi/greendao/async/a:a	(Lcom/xiaomi/greendao/async/a;)Z
    //   101: ifeq +412 -> 513
    //   104: new 282	java/util/ArrayList
    //   107: dup
    //   108: invokespecial 283	java/util/ArrayList:<init>	()V
    //   111: astore 5
    //   113: aload 5
    //   115: aload 4
    //   117: invokevirtual 287	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   120: pop
    //   121: aload 5
    //   123: aload 6
    //   125: invokevirtual 287	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   128: pop
    //   129: aload 4
    //   131: invokevirtual 188	com/xiaomi/greendao/async/a:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   134: astore 4
    //   136: aload 4
    //   138: invokevirtual 193	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   141: iconst_0
    //   142: istore_1
    //   143: iload_1
    //   144: aload 5
    //   146: invokevirtual 290	java/util/ArrayList:size	()I
    //   149: if_icmpge +388 -> 537
    //   152: aload 5
    //   154: iload_1
    //   155: invokevirtual 294	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   158: checkcast 51	com/xiaomi/greendao/async/a
    //   161: astore 7
    //   163: aload 7
    //   165: invokestatic 87	com/xiaomi/greendao/async/c:c	(Lcom/xiaomi/greendao/async/a;)V
    //   168: aload 7
    //   170: getfield 135	com/xiaomi/greendao/async/a:g	Ljava/lang/Throwable;
    //   173: ifnull +150 -> 323
    //   176: iconst_1
    //   177: istore_2
    //   178: iload_2
    //   179: ifne +358 -> 537
    //   182: iload_1
    //   183: aload 5
    //   185: invokevirtual 290	java/util/ArrayList:size	()I
    //   188: iconst_1
    //   189: isub
    //   190: if_icmpne +355 -> 545
    //   193: aload_0
    //   194: getfield 44	com/xiaomi/greendao/async/c:b	Ljava/util/concurrent/BlockingQueue;
    //   197: invokeinterface 297 1 0
    //   202: checkcast 51	com/xiaomi/greendao/async/a
    //   205: astore 6
    //   207: iload_1
    //   208: aload_0
    //   209: getfield 46	com/xiaomi/greendao/async/c:d	I
    //   212: if_icmpge +127 -> 339
    //   215: aload 7
    //   217: aload 6
    //   219: invokevirtual 280	com/xiaomi/greendao/async/a:a	(Lcom/xiaomi/greendao/async/a;)Z
    //   222: ifeq +117 -> 339
    //   225: aload_0
    //   226: getfield 44	com/xiaomi/greendao/async/c:b	Ljava/util/concurrent/BlockingQueue;
    //   229: invokeinterface 300 1 0
    //   234: checkcast 51	com/xiaomi/greendao/async/a
    //   237: astore 7
    //   239: aload 7
    //   241: aload 6
    //   243: if_acmpeq +85 -> 328
    //   246: new 116	com/xiaomi/greendao/DaoException
    //   249: dup
    //   250: ldc_w 302
    //   253: invokespecial 132	com/xiaomi/greendao/DaoException:<init>	(Ljava/lang/String;)V
    //   256: athrow
    //   257: astore 5
    //   259: aload 4
    //   261: invokevirtual 202	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   264: aload 5
    //   266: athrow
    //   267: astore 4
    //   269: new 118	java/lang/StringBuilder
    //   272: dup
    //   273: invokespecial 303	java/lang/StringBuilder:<init>	()V
    //   276: invokestatic 309	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   279: invokevirtual 312	java/lang/Thread:getName	()Ljava/lang/String;
    //   282: invokevirtual 315	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: ldc_w 317
    //   288: invokevirtual 315	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: aload 4
    //   296: invokestatic 322	com/xiaomi/greendao/DaoLog:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   299: pop
    //   300: aload_0
    //   301: iconst_0
    //   302: putfield 271	com/xiaomi/greendao/async/c:c	Z
    //   305: return
    //   306: astore 4
    //   308: aload_0
    //   309: monitorexit
    //   310: aload 4
    //   312: athrow
    //   313: astore 4
    //   315: aload_0
    //   316: iconst_0
    //   317: putfield 271	com/xiaomi/greendao/async/c:c	Z
    //   320: aload 4
    //   322: athrow
    //   323: iconst_0
    //   324: istore_2
    //   325: goto -147 -> 178
    //   328: aload 5
    //   330: aload 7
    //   332: invokevirtual 287	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   335: pop
    //   336: goto +209 -> 545
    //   339: aload 4
    //   341: invokevirtual 199	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   344: iconst_1
    //   345: istore_3
    //   346: aload 4
    //   348: invokevirtual 202	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   351: iload_3
    //   352: ifeq +111 -> 463
    //   355: aload 5
    //   357: invokevirtual 290	java/util/ArrayList:size	()I
    //   360: istore_1
    //   361: aload 5
    //   363: invokevirtual 326	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   366: astore 4
    //   368: aload 4
    //   370: invokeinterface 331 1 0
    //   375: ifeq -375 -> 0
    //   378: aload 4
    //   380: invokeinterface 334 1 0
    //   385: checkcast 51	com/xiaomi/greendao/async/a
    //   388: astore 5
    //   390: aload 5
    //   392: iload_1
    //   393: putfield 335	com/xiaomi/greendao/async/a:i	I
    //   396: aload_0
    //   397: aload 5
    //   399: invokespecial 89	com/xiaomi/greendao/async/c:a	(Lcom/xiaomi/greendao/async/a;)V
    //   402: goto -34 -> 368
    //   405: astore 4
    //   407: new 118	java/lang/StringBuilder
    //   410: dup
    //   411: ldc_w 337
    //   414: invokespecial 123	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   417: iload_3
    //   418: invokevirtual 340	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   421: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   424: aload 4
    //   426: invokestatic 342	com/xiaomi/greendao/DaoLog:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   429: pop
    //   430: iconst_0
    //   431: istore_3
    //   432: goto -81 -> 351
    //   435: astore 4
    //   437: new 118	java/lang/StringBuilder
    //   440: dup
    //   441: ldc_w 337
    //   444: invokespecial 123	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   447: iconst_0
    //   448: invokevirtual 340	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   451: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   454: aload 4
    //   456: invokestatic 342	com/xiaomi/greendao/DaoLog:a	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   459: pop
    //   460: goto -196 -> 264
    //   463: ldc_w 344
    //   466: invokestatic 347	com/xiaomi/greendao/DaoLog:b	(Ljava/lang/String;)I
    //   469: pop
    //   470: aload 5
    //   472: invokevirtual 326	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   475: astore 4
    //   477: aload 4
    //   479: invokeinterface 331 1 0
    //   484: ifeq -484 -> 0
    //   487: aload 4
    //   489: invokeinterface 334 1 0
    //   494: checkcast 51	com/xiaomi/greendao/async/a
    //   497: astore 5
    //   499: aload 5
    //   501: invokevirtual 349	com/xiaomi/greendao/async/a:d	()V
    //   504: aload_0
    //   505: aload 5
    //   507: invokespecial 351	com/xiaomi/greendao/async/c:b	(Lcom/xiaomi/greendao/async/a;)V
    //   510: goto -33 -> 477
    //   513: aload_0
    //   514: aload 4
    //   516: invokespecial 351	com/xiaomi/greendao/async/c:b	(Lcom/xiaomi/greendao/async/a;)V
    //   519: aload_0
    //   520: aload 6
    //   522: invokespecial 351	com/xiaomi/greendao/async/c:b	(Lcom/xiaomi/greendao/async/a;)V
    //   525: goto -525 -> 0
    //   528: aload_0
    //   529: aload 4
    //   531: invokespecial 351	com/xiaomi/greendao/async/c:b	(Lcom/xiaomi/greendao/async/a;)V
    //   534: goto -534 -> 0
    //   537: iconst_0
    //   538: istore_3
    //   539: goto -193 -> 346
    //   542: goto -483 -> 59
    //   545: iload_1
    //   546: iconst_1
    //   547: iadd
    //   548: istore_1
    //   549: goto -406 -> 143
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	552	0	this	c
    //   142	407	1	k	int
    //   177	148	2	m	int
    //   345	194	3	bool	boolean
    //   16	244	4	localObject1	Object
    //   267	28	4	localInterruptedException	InterruptedException
    //   306	5	4	localObject2	Object
    //   313	34	4	localObject3	Object
    //   366	13	4	localIterator1	java.util.Iterator
    //   405	20	4	localRuntimeException1	RuntimeException
    //   435	20	4	localRuntimeException2	RuntimeException
    //   475	55	4	localIterator2	java.util.Iterator
    //   111	73	5	localArrayList	java.util.ArrayList
    //   257	105	5	localObject4	Object
    //   388	118	5	locala1	a
    //   87	434	6	locala2	a
    //   161	170	7	locala3	a
    // Exception table:
    //   from	to	target	type
    //   143	176	257	finally
    //   182	239	257	finally
    //   246	257	257	finally
    //   328	336	257	finally
    //   339	344	257	finally
    //   0	18	267	java/lang/InterruptedException
    //   23	25	267	java/lang/InterruptedException
    //   59	89	267	java/lang/InterruptedException
    //   94	141	267	java/lang/InterruptedException
    //   259	264	267	java/lang/InterruptedException
    //   264	267	267	java/lang/InterruptedException
    //   310	313	267	java/lang/InterruptedException
    //   346	351	267	java/lang/InterruptedException
    //   355	368	267	java/lang/InterruptedException
    //   368	402	267	java/lang/InterruptedException
    //   407	430	267	java/lang/InterruptedException
    //   437	460	267	java/lang/InterruptedException
    //   463	477	267	java/lang/InterruptedException
    //   477	510	267	java/lang/InterruptedException
    //   513	525	267	java/lang/InterruptedException
    //   528	534	267	java/lang/InterruptedException
    //   25	39	306	finally
    //   44	51	306	finally
    //   57	59	306	finally
    //   308	310	306	finally
    //   0	18	313	finally
    //   23	25	313	finally
    //   59	89	313	finally
    //   94	141	313	finally
    //   259	264	313	finally
    //   264	267	313	finally
    //   269	300	313	finally
    //   310	313	313	finally
    //   346	351	313	finally
    //   355	368	313	finally
    //   368	402	313	finally
    //   407	430	313	finally
    //   437	460	313	finally
    //   463	477	313	finally
    //   477	510	313	finally
    //   513	525	313	finally
    //   528	534	313	finally
    //   346	351	405	java/lang/RuntimeException
    //   259	264	435	java/lang/RuntimeException
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\greendao\async\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */