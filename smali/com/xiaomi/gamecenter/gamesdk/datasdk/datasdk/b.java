package com.xiaomi.gamecenter.gamesdk.datasdk.datasdk;

import android.app.Application;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.c;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.BBean;

public final class b
{
  DataSender a = DataSender.getInstance();
  private d b = new d("SaveMessageHandlerThread");
  private c c;
  private b d;
  private a e;
  
  b()
  {
    this.b.start();
    this.c = new c(this.b.getLooper());
    this.d = new b("CollectionSuccessHandlerThread");
    this.d.start();
    this.e = new a(this.d.getLooper(), (byte)0);
  }
  
  final void a(BBean paramBBean)
  {
    Message localMessage = this.c.obtainMessage(102);
    localMessage.obj = paramBBean;
    this.c.sendMessage(localMessage);
  }
  
  private final class a
    extends Handler
  {
    private a(Looper paramLooper)
    {
      super();
    }
    
    public final void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default: 
        return;
      }
      for (;;)
      {
        Object localObject;
        try
        {
          localObject = ((ConnectivityManager)c.a().getSystemService("connectivity")).getActiveNetworkInfo();
          if ((localObject == null) || (!((NetworkInfo)localObject).isAvailable())) {
            break label233;
          }
          if (((NetworkInfo)localObject).getType() == 1)
          {
            localObject = "Wifi";
            if ("WithOutNetwork".equals(localObject)) {
              break;
            }
            b.this.a.prepareAndSendEventInfos((String)paramMessage.obj);
            return;
          }
        }
        catch (Exception paramMessage)
        {
          paramMessage.printStackTrace();
          return;
        }
        if (((NetworkInfo)localObject).getType() == 0) {}
        switch (((NetworkInfo)localObject).getSubtype())
        {
        default: 
          for (;;)
          {
            localObject = ((NetworkInfo)localObject).getSubtypeName();
            if ((((String)localObject).equalsIgnoreCase("TD-SCDMA")) || (((String)localObject).equalsIgnoreCase("WCDMA"))) {
              break label242;
            }
            if (!((String)localObject).equalsIgnoreCase("CDMA2000")) {
              break label266;
            }
            break label242;
            localObject = "UnknownNetwork";
            break;
            localObject = "WithOutNetwork";
            break;
          }
          localObject = "3G";
          break;
        case 1: 
        case 2: 
        case 4: 
        case 7: 
        case 11: 
        case 16: 
          localObject = "2G";
          break;
        case 3: 
        case 5: 
        case 6: 
        case 8: 
        case 9: 
        case 10: 
        case 12: 
        case 14: 
        case 15: 
        case 17: 
          localObject = "3G";
          break;
        case 13: 
        case 18: 
          label233:
          label242:
          localObject = "4G";
          continue;
          label266:
          localObject = "UnknownNetwork";
        }
      }
    }
  }
  
  private final class b
    extends HandlerThread
  {
    b(String paramString)
    {
      super();
    }
  }
  
  private class c
    extends Handler
  {
    public c(Looper paramLooper)
    {
      super();
    }
    
    /* Error */
    public void handleMessage(Message paramMessage)
    {
      // Byte code:
      //   0: aload_1
      //   1: getfield 29	android/os/Message:what	I
      //   4: tableswitch	default:+20->24, 102:+21->25
      //   24: return
      //   25: invokestatic 35	java/lang/System:currentTimeMillis	()J
      //   28: lstore_2
      //   29: aload_1
      //   30: getfield 39	android/os/Message:obj	Ljava/lang/Object;
      //   33: checkcast 41	com/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean
      //   36: astore 7
      //   38: new 43	java/lang/StringBuilder
      //   41: dup
      //   42: invokespecial 46	java/lang/StringBuilder:<init>	()V
      //   45: astore_1
      //   46: aload_1
      //   47: invokestatic 51	com/xiaomi/gamecenter/gamesdk/datasdk/b/c:a	()Landroid/app/Application;
      //   50: invokevirtual 57	android/app/Application:getFilesDir	()Ljava/io/File;
      //   53: invokevirtual 63	java/io/File:getAbsolutePath	()Ljava/lang/String;
      //   56: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   59: getstatic 71	java/io/File:separator	Ljava/lang/String;
      //   62: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   65: ldc 73
      //   67: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   70: getstatic 71	java/io/File:separator	Ljava/lang/String;
      //   73: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   76: lload_2
      //   77: invokevirtual 76	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   80: ldc 78
      //   82: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   85: pop
      //   86: aload_1
      //   87: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   90: astore_1
      //   91: new 59	java/io/File
      //   94: dup
      //   95: aload_1
      //   96: invokespecial 84	java/io/File:<init>	(Ljava/lang/String;)V
      //   99: invokevirtual 88	java/io/File:exists	()Z
      //   102: ifeq +67 -> 169
      //   105: new 43	java/lang/StringBuilder
      //   108: dup
      //   109: invokespecial 46	java/lang/StringBuilder:<init>	()V
      //   112: astore_1
      //   113: aload_1
      //   114: invokestatic 51	com/xiaomi/gamecenter/gamesdk/datasdk/b/c:a	()Landroid/app/Application;
      //   117: invokevirtual 57	android/app/Application:getFilesDir	()Ljava/io/File;
      //   120: invokevirtual 63	java/io/File:getAbsolutePath	()Ljava/lang/String;
      //   123: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   126: getstatic 71	java/io/File:separator	Ljava/lang/String;
      //   129: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   132: ldc 73
      //   134: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   137: getstatic 71	java/io/File:separator	Ljava/lang/String;
      //   140: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   143: astore 5
      //   145: lload_2
      //   146: lconst_1
      //   147: ladd
      //   148: lstore_2
      //   149: aload 5
      //   151: lload_2
      //   152: invokevirtual 76	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   155: ldc 78
      //   157: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   160: pop
      //   161: aload_1
      //   162: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   165: astore_1
      //   166: goto -75 -> 91
      //   169: new 43	java/lang/StringBuilder
      //   172: dup
      //   173: invokespecial 46	java/lang/StringBuilder:<init>	()V
      //   176: lload_2
      //   177: invokevirtual 76	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   180: ldc 78
      //   182: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   185: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   188: astore 5
      //   190: aload 7
      //   192: invokevirtual 89	com/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean:toString	()Ljava/lang/String;
      //   195: astore 8
      //   197: new 43	java/lang/StringBuilder
      //   200: dup
      //   201: invokespecial 46	java/lang/StringBuilder:<init>	()V
      //   204: astore 6
      //   206: aload 6
      //   208: invokestatic 51	com/xiaomi/gamecenter/gamesdk/datasdk/b/c:a	()Landroid/app/Application;
      //   211: invokevirtual 57	android/app/Application:getFilesDir	()Ljava/io/File;
      //   214: invokevirtual 63	java/io/File:getAbsolutePath	()Ljava/lang/String;
      //   217: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   220: getstatic 71	java/io/File:separator	Ljava/lang/String;
      //   223: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   226: ldc 73
      //   228: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   231: getstatic 71	java/io/File:separator	Ljava/lang/String;
      //   234: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   237: pop
      //   238: aload 6
      //   240: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   243: astore_1
      //   244: aload 6
      //   246: aload 5
      //   248: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   251: pop
      //   252: aload 6
      //   254: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   257: astore 5
      //   259: new 59	java/io/File
      //   262: dup
      //   263: new 43	java/lang/StringBuilder
      //   266: dup
      //   267: invokespecial 46	java/lang/StringBuilder:<init>	()V
      //   270: aload_1
      //   271: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   274: invokestatic 95	java/util/UUID:randomUUID	()Ljava/util/UUID;
      //   277: invokevirtual 96	java/util/UUID:toString	()Ljava/lang/String;
      //   280: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   283: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   286: invokespecial 84	java/io/File:<init>	(Ljava/lang/String;)V
      //   289: astore 9
      //   291: new 59	java/io/File
      //   294: dup
      //   295: aload 5
      //   297: invokespecial 84	java/io/File:<init>	(Ljava/lang/String;)V
      //   300: astore 10
      //   302: aconst_null
      //   303: astore 5
      //   305: aconst_null
      //   306: astore 6
      //   308: aload 5
      //   310: astore_1
      //   311: aload 9
      //   313: invokevirtual 88	java/io/File:exists	()Z
      //   316: ifne +59 -> 375
      //   319: aload 5
      //   321: astore_1
      //   322: aload 9
      //   324: invokevirtual 99	java/io/File:createNewFile	()Z
      //   327: istore 4
      //   329: iload 4
      //   331: ifne +44 -> 375
      //   334: aload_0
      //   335: getfield 13	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c:a	Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;
      //   338: invokestatic 102	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b:a	(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;
      //   341: bipush 100
      //   343: invokevirtual 108	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a:obtainMessage	(I)Landroid/os/Message;
      //   346: astore_1
      //   347: aload_1
      //   348: aload 7
      //   350: invokevirtual 111	com/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean:getEvent	()Ljava/lang/String;
      //   353: putfield 39	android/os/Message:obj	Ljava/lang/Object;
      //   356: aload_0
      //   357: getfield 13	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c:a	Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;
      //   360: invokestatic 102	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b:a	(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;
      //   363: aload_1
      //   364: invokevirtual 115	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a:sendMessage	(Landroid/os/Message;)Z
      //   367: pop
      //   368: return
      //   369: astore_1
      //   370: aload_1
      //   371: invokevirtual 118	java/lang/Exception:printStackTrace	()V
      //   374: return
      //   375: aload 5
      //   377: astore_1
      //   378: new 120	java/io/FileWriter
      //   381: dup
      //   382: aload 9
      //   384: iconst_1
      //   385: invokespecial 123	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
      //   388: astore 5
      //   390: aload 5
      //   392: aload 8
      //   394: invokevirtual 126	java/io/FileWriter:write	(Ljava/lang/String;)V
      //   397: aload 5
      //   399: invokevirtual 129	java/io/FileWriter:flush	()V
      //   402: aload 5
      //   404: invokevirtual 132	java/io/FileWriter:close	()V
      //   407: aload 10
      //   409: invokevirtual 88	java/io/File:exists	()Z
      //   412: ifne -78 -> 334
      //   415: aload 9
      //   417: aload 10
      //   419: invokevirtual 136	java/io/File:renameTo	(Ljava/io/File;)Z
      //   422: ifne -88 -> 334
      //   425: ldc -118
      //   427: new 43	java/lang/StringBuilder
      //   430: dup
      //   431: ldc -116
      //   433: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   436: aload 10
      //   438: invokevirtual 144	java/io/File:getName	()Ljava/lang/String;
      //   441: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   444: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   447: invokestatic 150	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
      //   450: pop
      //   451: goto -117 -> 334
      //   454: astore_1
      //   455: ldc -118
      //   457: ldc -104
      //   459: aload_1
      //   460: invokestatic 155	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   463: pop
      //   464: goto -57 -> 407
      //   467: astore_1
      //   468: aload 6
      //   470: astore 5
      //   472: aload_1
      //   473: astore 6
      //   475: aload 5
      //   477: astore_1
      //   478: ldc -118
      //   480: ldc -104
      //   482: aload 6
      //   484: invokestatic 155	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   487: pop
      //   488: aload 5
      //   490: ifnull -156 -> 334
      //   493: aload 5
      //   495: invokevirtual 132	java/io/FileWriter:close	()V
      //   498: goto -164 -> 334
      //   501: astore_1
      //   502: ldc -118
      //   504: ldc -104
      //   506: aload_1
      //   507: invokestatic 155	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   510: pop
      //   511: goto -177 -> 334
      //   514: astore 6
      //   516: aload_1
      //   517: astore 5
      //   519: aload 6
      //   521: astore_1
      //   522: aload 5
      //   524: ifnull +8 -> 532
      //   527: aload 5
      //   529: invokevirtual 132	java/io/FileWriter:close	()V
      //   532: aload_1
      //   533: athrow
      //   534: astore 5
      //   536: ldc -118
      //   538: ldc -104
      //   540: aload 5
      //   542: invokestatic 155	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   545: pop
      //   546: goto -14 -> 532
      //   549: astore_1
      //   550: goto -28 -> 522
      //   553: astore 6
      //   555: goto -80 -> 475
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	558	0	this	c
      //   0	558	1	paramMessage	Message
      //   28	149	2	l	long
      //   327	3	4	bool	boolean
      //   143	385	5	localObject1	Object
      //   534	7	5	localIOException1	java.io.IOException
      //   204	279	6	localObject2	Object
      //   514	6	6	localObject3	Object
      //   553	1	6	localIOException2	java.io.IOException
      //   36	313	7	localBBean	BBean
      //   195	198	8	str	String
      //   289	127	9	localFile1	java.io.File
      //   300	137	10	localFile2	java.io.File
      // Exception table:
      //   from	to	target	type
      //   25	91	369	java/lang/Exception
      //   91	145	369	java/lang/Exception
      //   149	166	369	java/lang/Exception
      //   169	302	369	java/lang/Exception
      //   334	368	369	java/lang/Exception
      //   402	407	369	java/lang/Exception
      //   407	451	369	java/lang/Exception
      //   455	464	369	java/lang/Exception
      //   493	498	369	java/lang/Exception
      //   502	511	369	java/lang/Exception
      //   527	532	369	java/lang/Exception
      //   532	534	369	java/lang/Exception
      //   536	546	369	java/lang/Exception
      //   402	407	454	java/io/IOException
      //   311	319	467	java/io/IOException
      //   322	329	467	java/io/IOException
      //   378	390	467	java/io/IOException
      //   493	498	501	java/io/IOException
      //   311	319	514	finally
      //   322	329	514	finally
      //   378	390	514	finally
      //   478	488	514	finally
      //   527	532	534	java/io/IOException
      //   390	402	549	finally
      //   390	402	553	java/io/IOException
    }
  }
  
  private static class d
    extends HandlerThread
  {
    public d(String paramString)
    {
      super();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\datasdk\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */