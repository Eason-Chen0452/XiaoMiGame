package com.wali.gamecenter.report;

import android.content.Context;

public class ReportDBObserver
{
  Context mContext;
  
  public ReportDBObserver(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  /* Error */
  public void onChange(boolean paramBoolean)
  {
    // Byte code:
    //   0: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   3: getfield 28	com/wali/gamecenter/report/ReportManager:isCTAluseable	Z
    //   6: ifeq +21 -> 27
    //   9: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   12: getfield 31	com/wali/gamecenter/report/ReportManager:isDebugging	Z
    //   15: ifeq +11 -> 26
    //   18: ldc 33
    //   20: ldc 35
    //   22: invokestatic 41	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   25: pop
    //   26: return
    //   27: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   30: getfield 31	com/wali/gamecenter/report/ReportManager:isDebugging	Z
    //   33: ifeq +25 -> 58
    //   36: ldc 33
    //   38: new 43	java/lang/StringBuilder
    //   41: dup
    //   42: ldc 45
    //   44: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: iload_1
    //   48: invokevirtual 52	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   51: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokestatic 41	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   57: pop
    //   58: invokestatic 62	com/wali/gamecenter/report/db/DBManager:getReportDao	()Lcom/wali/gamecenter/report/db/ReportDataDao;
    //   61: ifnull -35 -> 26
    //   64: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   67: invokevirtual 65	com/wali/gamecenter/report/ReportManager:stopCheck	()V
    //   70: new 67	java/util/ArrayList
    //   73: dup
    //   74: invokespecial 68	java/util/ArrayList:<init>	()V
    //   77: astore 9
    //   79: aconst_null
    //   80: astore 8
    //   82: aconst_null
    //   83: astore 6
    //   85: aload 8
    //   87: astore 7
    //   89: getstatic 72	com/wali/gamecenter/report/ReportManager:mDBSyncObj	Ljava/lang/Object;
    //   92: astore 10
    //   94: aload 8
    //   96: astore 7
    //   98: aload 10
    //   100: monitorenter
    //   101: aload 6
    //   103: astore 7
    //   105: invokestatic 62	com/wali/gamecenter/report/db/DBManager:getReportDao	()Lcom/wali/gamecenter/report/db/ReportDataDao;
    //   108: invokevirtual 78	com/wali/gamecenter/report/db/ReportDataDao:queryBuilder	()Lcom/xiaomi/greendao/query/e;
    //   111: astore 6
    //   113: aload 6
    //   115: astore 7
    //   117: aload 10
    //   119: monitorexit
    //   120: aload 6
    //   122: ifnull +390 -> 512
    //   125: aload 6
    //   127: astore 7
    //   129: aload 6
    //   131: invokevirtual 84	com/xiaomi/greendao/query/e:b	()Lcom/xiaomi/greendao/query/b;
    //   134: invokevirtual 90	com/xiaomi/greendao/query/b:a	()J
    //   137: lstore_2
    //   138: aload 6
    //   140: astore 7
    //   142: lload_2
    //   143: lstore 4
    //   145: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   148: getfield 31	com/wali/gamecenter/report/ReportManager:isDebugging	Z
    //   151: ifeq +32 -> 183
    //   154: ldc 33
    //   156: new 43	java/lang/StringBuilder
    //   159: dup
    //   160: ldc 92
    //   162: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   165: lload_2
    //   166: invokevirtual 95	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   169: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokestatic 41	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   175: pop
    //   176: lload_2
    //   177: lstore 4
    //   179: aload 6
    //   181: astore 7
    //   183: lload 4
    //   185: lconst_0
    //   186: lcmp
    //   187: ifgt +45 -> 232
    //   190: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   193: invokevirtual 98	com/wali/gamecenter/report/ReportManager:checkTime	()V
    //   196: return
    //   197: astore 6
    //   199: aload 10
    //   201: monitorexit
    //   202: aload 6
    //   204: athrow
    //   205: astore 8
    //   207: lconst_0
    //   208: lstore_2
    //   209: aload 7
    //   211: astore 6
    //   213: aload 8
    //   215: astore 7
    //   217: aload 7
    //   219: invokevirtual 101	java/lang/Throwable:printStackTrace	()V
    //   222: aload 6
    //   224: astore 7
    //   226: lload_2
    //   227: lstore 4
    //   229: goto -46 -> 183
    //   232: lload 4
    //   234: ldc2_w 102
    //   237: lcmp
    //   238: ifge +7 -> 245
    //   241: iload_1
    //   242: ifne +258 -> 500
    //   245: new 67	java/util/ArrayList
    //   248: dup
    //   249: invokespecial 68	java/util/ArrayList:<init>	()V
    //   252: astore 6
    //   254: aload 7
    //   256: invokevirtual 106	com/xiaomi/greendao/query/e:a	()Lcom/xiaomi/greendao/query/d;
    //   259: invokevirtual 111	com/xiaomi/greendao/query/d:b	()Ljava/util/List;
    //   262: invokeinterface 117 1 0
    //   267: astore 7
    //   269: aload 7
    //   271: invokeinterface 123 1 0
    //   276: ifeq +171 -> 447
    //   279: aload 7
    //   281: invokeinterface 127 1 0
    //   286: checkcast 129	com/wali/gamecenter/report/db/ReportData
    //   289: astore 10
    //   291: aload 6
    //   293: aload 10
    //   295: invokevirtual 133	com/wali/gamecenter/report/db/ReportData:getId	()Ljava/lang/Long;
    //   298: invokevirtual 138	java/lang/Long:longValue	()J
    //   301: invokestatic 142	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   304: invokevirtual 146	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   307: pop
    //   308: aload 10
    //   310: invokevirtual 149	com/wali/gamecenter/report/db/ReportData:getMethod	()Ljava/lang/String;
    //   313: astore 8
    //   315: aload 10
    //   317: invokevirtual 152	com/wali/gamecenter/report/db/ReportData:getParam	()Ljava/lang/String;
    //   320: invokestatic 158	com/wali/gamecenter/report/utils/ReportUtils:decryptUrl	(Ljava/lang/String;)Ljava/lang/String;
    //   323: astore 10
    //   325: ldc -96
    //   327: aload 8
    //   329: invokevirtual 165	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   332: ifeq +63 -> 395
    //   335: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   338: getfield 31	com/wali/gamecenter/report/ReportManager:isDebugging	Z
    //   341: ifeq +26 -> 367
    //   344: ldc 33
    //   346: new 43	java/lang/StringBuilder
    //   349: dup
    //   350: ldc -89
    //   352: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   355: aload 10
    //   357: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokestatic 41	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   366: pop
    //   367: aload 9
    //   369: aload 10
    //   371: invokevirtual 146	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   374: pop
    //   375: goto -106 -> 269
    //   378: astore 6
    //   380: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   383: getfield 31	com/wali/gamecenter/report/ReportManager:isDebugging	Z
    //   386: ifeq -360 -> 26
    //   389: aload 6
    //   391: invokevirtual 101	java/lang/Throwable:printStackTrace	()V
    //   394: return
    //   395: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   398: getfield 31	com/wali/gamecenter/report/ReportManager:isDebugging	Z
    //   401: ifeq +26 -> 427
    //   404: ldc 33
    //   406: new 43	java/lang/StringBuilder
    //   409: dup
    //   410: ldc -84
    //   412: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   415: aload 10
    //   417: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   423: invokestatic 41	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   426: pop
    //   427: ldc -82
    //   429: new 176	com/wali/gamecenter/report/InsertRecord
    //   432: dup
    //   433: aload 10
    //   435: iconst_0
    //   436: invokespecial 179	com/wali/gamecenter/report/InsertRecord:<init>	(Ljava/lang/String;I)V
    //   439: bipush 10
    //   441: invokestatic 185	com/wali/gamecenter/report/utils/AutoThreadFactory:AppendTask	(Ljava/lang/String;Ljava/lang/Runnable;I)V
    //   444: goto -175 -> 269
    //   447: aload 6
    //   449: invokevirtual 189	java/util/ArrayList:size	()I
    //   452: iconst_1
    //   453: if_icmple +22 -> 475
    //   456: getstatic 72	com/wali/gamecenter/report/ReportManager:mDBSyncObj	Ljava/lang/Object;
    //   459: astore 7
    //   461: aload 7
    //   463: monitorenter
    //   464: invokestatic 62	com/wali/gamecenter/report/db/DBManager:getReportDao	()Lcom/wali/gamecenter/report/db/ReportDataDao;
    //   467: aload 6
    //   469: invokevirtual 193	com/wali/gamecenter/report/db/ReportDataDao:deleteByKeyInTx	(Ljava/lang/Iterable;)V
    //   472: aload 7
    //   474: monitorexit
    //   475: aload 9
    //   477: invokevirtual 189	java/util/ArrayList:size	()I
    //   480: ifle -454 -> 26
    //   483: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   486: aload 9
    //   488: invokevirtual 197	com/wali/gamecenter/report/ReportManager:postReport	(Ljava/util/ArrayList;)V
    //   491: return
    //   492: astore 6
    //   494: aload 7
    //   496: monitorexit
    //   497: aload 6
    //   499: athrow
    //   500: invokestatic 24	com/wali/gamecenter/report/ReportManager:getInstance	()Lcom/wali/gamecenter/report/ReportManager;
    //   503: invokevirtual 98	com/wali/gamecenter/report/ReportManager:checkTime	()V
    //   506: return
    //   507: astore 7
    //   509: goto -292 -> 217
    //   512: lconst_0
    //   513: lstore_2
    //   514: goto -376 -> 138
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	517	0	this	ReportDBObserver
    //   0	517	1	paramBoolean	boolean
    //   137	377	2	l1	long
    //   143	90	4	l2	long
    //   83	97	6	locale	com.xiaomi.greendao.query.e
    //   197	6	6	localObject1	Object
    //   211	81	6	localObject2	Object
    //   378	90	6	localThrowable1	Throwable
    //   492	6	6	localObject3	Object
    //   507	1	7	localThrowable2	Throwable
    //   80	15	8	localObject5	Object
    //   205	9	8	localThrowable3	Throwable
    //   313	15	8	str	String
    //   77	410	9	localArrayList	java.util.ArrayList
    //   92	342	10	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   105	113	197	finally
    //   117	120	197	finally
    //   199	202	197	finally
    //   89	94	205	java/lang/Throwable
    //   98	101	205	java/lang/Throwable
    //   129	138	205	java/lang/Throwable
    //   202	205	205	java/lang/Throwable
    //   245	269	378	java/lang/Throwable
    //   269	367	378	java/lang/Throwable
    //   367	375	378	java/lang/Throwable
    //   395	427	378	java/lang/Throwable
    //   427	444	378	java/lang/Throwable
    //   447	464	378	java/lang/Throwable
    //   475	491	378	java/lang/Throwable
    //   497	500	378	java/lang/Throwable
    //   464	475	492	finally
    //   494	497	492	finally
    //   145	176	507	java/lang/Throwable
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\ReportDBObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */