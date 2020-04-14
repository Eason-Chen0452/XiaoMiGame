package com.xiaomi.gamecenter.gamesdk.datasdk.datasdk;

import android.app.Application;
import android.util.Log;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.a;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.c;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.d;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.g;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.h;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.BBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.CountBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.DataBean;
import com.xiaomi.gamecenter.gamesdk.datasdk.bean.HBean;
import java.io.File;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class DataSender
{
  private static final String AC = "gamesdkstat";
  private static final String APP_SECRET = "p8WLXyWl09H3wrl";
  private static final String FROM_APP = "gamesdk";
  private static final String TAG = "DataSender";
  private CountBean cb;
  public DataBean dataBean;
  private HBean hInfo = DataSDK.getHeader();
  private boolean isSandbox;
  
  private void deleteFiles(String paramString, List<Long> paramList)
  {
    int i = 0;
    while (i < paramList.size())
    {
      File localFile = new File(paramString + File.separator + paramList.get(i) + ".txt");
      if ((localFile.isFile()) && (localFile.exists()) && (!localFile.delete())) {
        Log.w("DataSender", "deleteFiles: " + localFile.getAbsolutePath() + " delete fail");
      }
      i += 1;
    }
  }
  
  /* Error */
  private List<BBean> getActionInfo(List<Long> paramList)
  {
    // Byte code:
    //   0: new 55	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 56	java/lang/StringBuilder:<init>	()V
    //   7: invokestatic 116	com/xiaomi/gamecenter/gamesdk/datasdk/b/c:a	()Landroid/app/Application;
    //   10: invokevirtual 122	android/app/Application:getFilesDir	()Ljava/io/File;
    //   13: invokevirtual 95	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   16: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: getstatic 63	java/io/File:separator	Ljava/lang/String;
    //   22: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: astore_3
    //   29: new 55	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 56	java/lang/StringBuilder:<init>	()V
    //   36: aload_3
    //   37: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: ldc 124
    //   42: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: astore 8
    //   50: new 126	java/util/ArrayList
    //   53: dup
    //   54: invokespecial 127	java/util/ArrayList:<init>	()V
    //   57: astore 9
    //   59: iconst_0
    //   60: istore_2
    //   61: iload_2
    //   62: aload_1
    //   63: invokeinterface 51 1 0
    //   68: if_icmpge +321 -> 389
    //   71: new 53	java/io/File
    //   74: dup
    //   75: new 55	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 56	java/lang/StringBuilder:<init>	()V
    //   82: aload 8
    //   84: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: getstatic 63	java/io/File:separator	Ljava/lang/String;
    //   90: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: aload_1
    //   94: iload_2
    //   95: invokeinterface 67 2 0
    //   100: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   103: ldc 72
    //   105: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: invokespecial 79	java/io/File:<init>	(Ljava/lang/String;)V
    //   114: astore_3
    //   115: new 129	java/io/FileInputStream
    //   118: dup
    //   119: aload_3
    //   120: invokespecial 132	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   123: astore 4
    //   125: new 134	java/io/BufferedReader
    //   128: dup
    //   129: new 136	java/io/InputStreamReader
    //   132: dup
    //   133: aload 4
    //   135: invokespecial 139	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   138: invokespecial 142	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   141: astore_3
    //   142: aload_3
    //   143: astore 6
    //   145: aload 4
    //   147: astore 5
    //   149: new 55	java/lang/StringBuilder
    //   152: dup
    //   153: invokespecial 56	java/lang/StringBuilder:<init>	()V
    //   156: astore 7
    //   158: aload_3
    //   159: astore 6
    //   161: aload 4
    //   163: astore 5
    //   165: aload_3
    //   166: invokevirtual 145	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   169: astore 10
    //   171: aload 10
    //   173: ifnull +65 -> 238
    //   176: aload_3
    //   177: astore 6
    //   179: aload 4
    //   181: astore 5
    //   183: aload 7
    //   185: aload 10
    //   187: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: pop
    //   191: goto -33 -> 158
    //   194: astore 7
    //   196: aload_3
    //   197: astore 6
    //   199: aload 4
    //   201: astore 5
    //   203: ldc 20
    //   205: ldc -109
    //   207: aload 7
    //   209: invokestatic 150	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   212: pop
    //   213: aload_3
    //   214: ifnull +7 -> 221
    //   217: aload_3
    //   218: invokevirtual 153	java/io/BufferedReader:close	()V
    //   221: aload 4
    //   223: ifnull +8 -> 231
    //   226: aload 4
    //   228: invokevirtual 154	java/io/FileInputStream:close	()V
    //   231: iload_2
    //   232: iconst_1
    //   233: iadd
    //   234: istore_2
    //   235: goto -174 -> 61
    //   238: aload_3
    //   239: astore 6
    //   241: aload 4
    //   243: astore 5
    //   245: new 156	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/a
    //   248: dup
    //   249: aload_0
    //   250: invokespecial 159	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/a:<init>	(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;)V
    //   253: invokevirtual 163	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/a:getType	()Ljava/lang/reflect/Type;
    //   256: astore 10
    //   258: aload_3
    //   259: astore 6
    //   261: aload 4
    //   263: astore 5
    //   265: new 165	com/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson
    //   268: dup
    //   269: invokespecial 166	com/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson:<init>	()V
    //   272: aload 7
    //   274: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: aload 10
    //   279: invokevirtual 170	com/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson:fromJson	(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    //   282: checkcast 172	com/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean
    //   285: astore 7
    //   287: aload 7
    //   289: ifnull +20 -> 309
    //   292: aload_3
    //   293: astore 6
    //   295: aload 4
    //   297: astore 5
    //   299: aload 9
    //   301: aload 7
    //   303: invokeinterface 176 2 0
    //   308: pop
    //   309: aload_3
    //   310: invokevirtual 153	java/io/BufferedReader:close	()V
    //   313: aload 4
    //   315: invokevirtual 154	java/io/FileInputStream:close	()V
    //   318: goto -87 -> 231
    //   321: astore_3
    //   322: ldc 20
    //   324: ldc -109
    //   326: aload_3
    //   327: invokestatic 150	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   330: pop
    //   331: goto -100 -> 231
    //   334: astore_3
    //   335: ldc 20
    //   337: ldc -109
    //   339: aload_3
    //   340: invokestatic 150	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   343: pop
    //   344: goto -113 -> 231
    //   347: astore_1
    //   348: aconst_null
    //   349: astore 6
    //   351: aconst_null
    //   352: astore 4
    //   354: aload 6
    //   356: ifnull +8 -> 364
    //   359: aload 6
    //   361: invokevirtual 153	java/io/BufferedReader:close	()V
    //   364: aload 4
    //   366: ifnull +8 -> 374
    //   369: aload 4
    //   371: invokevirtual 154	java/io/FileInputStream:close	()V
    //   374: aload_1
    //   375: athrow
    //   376: astore_3
    //   377: ldc 20
    //   379: ldc -109
    //   381: aload_3
    //   382: invokestatic 150	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   385: pop
    //   386: goto -12 -> 374
    //   389: aload 9
    //   391: areturn
    //   392: astore_1
    //   393: aconst_null
    //   394: astore 6
    //   396: goto -42 -> 354
    //   399: astore_1
    //   400: aload 5
    //   402: astore 4
    //   404: goto -50 -> 354
    //   407: astore 7
    //   409: aconst_null
    //   410: astore_3
    //   411: aconst_null
    //   412: astore 4
    //   414: goto -218 -> 196
    //   417: astore 7
    //   419: aconst_null
    //   420: astore_3
    //   421: goto -225 -> 196
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	424	0	this	DataSender
    //   0	424	1	paramList	List<Long>
    //   60	175	2	i	int
    //   28	282	3	localObject1	Object
    //   321	6	3	localIOException1	java.io.IOException
    //   334	6	3	localIOException2	java.io.IOException
    //   376	6	3	localIOException3	java.io.IOException
    //   410	11	3	localObject2	Object
    //   123	290	4	localObject3	Object
    //   147	254	5	localObject4	Object
    //   143	252	6	localObject5	Object
    //   156	28	7	localStringBuilder	StringBuilder
    //   194	79	7	localException1	Exception
    //   285	17	7	localBBean	BBean
    //   407	1	7	localException2	Exception
    //   417	1	7	localException3	Exception
    //   48	35	8	str	String
    //   57	333	9	localArrayList	ArrayList
    //   169	109	10	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   149	158	194	java/lang/Exception
    //   165	171	194	java/lang/Exception
    //   183	191	194	java/lang/Exception
    //   245	258	194	java/lang/Exception
    //   265	287	194	java/lang/Exception
    //   299	309	194	java/lang/Exception
    //   309	318	321	java/io/IOException
    //   217	221	334	java/io/IOException
    //   226	231	334	java/io/IOException
    //   115	125	347	finally
    //   359	364	376	java/io/IOException
    //   369	374	376	java/io/IOException
    //   125	142	392	finally
    //   149	158	399	finally
    //   165	171	399	finally
    //   183	191	399	finally
    //   203	213	399	finally
    //   245	258	399	finally
    //   265	287	399	finally
    //   299	309	399	finally
    //   115	125	407	java/lang/Exception
    //   125	142	417	java/lang/Exception
  }
  
  private List<Long> getActionTimeByOrder(File[] paramArrayOfFile)
  {
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    if ((paramArrayOfFile == null) || (paramArrayOfFile.length == 0)) {
      return localArrayList2;
    }
    long l1 = System.currentTimeMillis();
    int j = paramArrayOfFile.length;
    int i = 0;
    if (i < j)
    {
      String[] arrayOfString = paramArrayOfFile[i].getName().split("\\.");
      long l2;
      if (arrayOfString.length > 1)
      {
        l2 = Long.parseLong(arrayOfString[0]);
        if (l1 - l2 <= 259200000L) {
          break label115;
        }
        localArrayList3.add(Long.valueOf(l2));
      }
      for (;;)
      {
        i += 1;
        break;
        label115:
        localArrayList2.add(Long.valueOf(l2));
      }
    }
    deleteFiles(c.a().getFilesDir().getAbsolutePath() + File.separator + "data_statistic", localArrayList3);
    Collections.sort(localArrayList2);
    paramArrayOfFile = localArrayList2.iterator();
    do
    {
      if (!paramArrayOfFile.hasNext()) {
        break;
      }
      localArrayList1.add((Long)paramArrayOfFile.next());
    } while (localArrayList1.size() < 10);
    return localArrayList1;
  }
  
  static DataSender getInstance()
  {
    return a.a();
  }
  
  private String getPostData(List<BBean> paramList)
  {
    this.dataBean = new DataBean(this.hInfo, paramList);
    paramList = "";
    try
    {
      localObject = URLEncoder.encode(a.a(this.dataBean.toString().getBytes("utf-8")));
      paramList = (List<BBean>)localObject;
    }
    catch (Exception localException2)
    {
      try
      {
        int j = g.a(c.a());
        i = j;
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("ac=gamesdkstat&oaid=").append(this.hInfo.getOaid()).append("&imeiSha1=").append(this.hInfo.getImeiSha1()).append("&fromApp=gamesdk&ts=").append(System.currentTimeMillis()).append("&data=").append(paramList).append("&dIndex=").append(i);
      }
      catch (Exception localException2)
      {
        try
        {
          for (;;)
          {
            Object localObject;
            int i;
            paramList = h.a((((StringBuilder)localObject).toString() + "p8WLXyWl09H3wrl").getBytes("utf-8"));
            ((StringBuilder)localObject).append("&sign=").append(paramList);
            this.cb = new CountBean(i + 1, d.a());
            return ((StringBuilder)localObject).toString();
            localException1 = localException1;
            localException1.printStackTrace();
          }
          localException2 = localException2;
          localException2.printStackTrace();
        }
        catch (Exception paramList)
        {
          for (;;)
          {
            paramList.printStackTrace();
            paramList = "";
          }
        }
      }
    }
    i = 0;
  }
  
  /* Error */
  void prepareAndSendEventInfos(String paramString)
  {
    // Byte code:
    //   0: new 55	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 56	java/lang/StringBuilder:<init>	()V
    //   7: invokestatic 116	com/xiaomi/gamecenter/gamesdk/datasdk/b/c:a	()Landroid/app/Application;
    //   10: invokevirtual 122	android/app/Application:getFilesDir	()Ljava/io/File;
    //   13: invokevirtual 95	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   16: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: getstatic 63	java/io/File:separator	Ljava/lang/String;
    //   22: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: ldc 124
    //   27: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: astore 5
    //   35: aload_0
    //   36: new 53	java/io/File
    //   39: dup
    //   40: aload 5
    //   42: invokespecial 79	java/io/File:<init>	(Ljava/lang/String;)V
    //   45: invokevirtual 317	java/io/File:listFiles	()[Ljava/io/File;
    //   48: invokespecial 319	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender:getActionTimeByOrder	([Ljava/io/File;)Ljava/util/List;
    //   51: astore 6
    //   53: aload 6
    //   55: invokeinterface 322 1 0
    //   60: ifeq +25 -> 85
    //   63: ldc_w 324
    //   66: ldc_w 326
    //   69: iconst_1
    //   70: anewarray 4	java/lang/Object
    //   73: dup
    //   74: iconst_0
    //   75: aload_1
    //   76: aastore
    //   77: invokestatic 330	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   80: invokestatic 333	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   83: pop
    //   84: return
    //   85: aload_0
    //   86: aload_0
    //   87: aload 6
    //   89: invokespecial 335	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender:getActionInfo	(Ljava/util/List;)Ljava/util/List;
    //   92: invokespecial 337	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender:getPostData	(Ljava/util/List;)Ljava/lang/String;
    //   95: astore_3
    //   96: ldc_w 339
    //   99: ldc_w 341
    //   102: iconst_1
    //   103: anewarray 4	java/lang/Object
    //   106: dup
    //   107: iconst_0
    //   108: aload_3
    //   109: aastore
    //   110: invokestatic 330	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   113: invokestatic 346	com/xiaomi/gamecenter/gamesdk/datasdk/b/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   116: ldc_w 348
    //   119: aload_3
    //   120: invokestatic 352	com/xiaomi/gamecenter/gamesdk/datasdk/b/a/a:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   123: istore_2
    //   124: iload_2
    //   125: tableswitch	default:+197->322, 200:+54->179
    //   144: ldc_w 324
    //   147: ldc_w 354
    //   150: iconst_2
    //   151: anewarray 4	java/lang/Object
    //   154: dup
    //   155: iconst_0
    //   156: aload_1
    //   157: aastore
    //   158: dup
    //   159: iconst_1
    //   160: iload_2
    //   161: invokestatic 359	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   164: aastore
    //   165: invokestatic 330	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   168: invokestatic 333	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   171: pop
    //   172: return
    //   173: astore_1
    //   174: aload_1
    //   175: invokevirtual 311	java/lang/Exception:printStackTrace	()V
    //   178: return
    //   179: invokestatic 116	com/xiaomi/gamecenter/gamesdk/datasdk/b/c:a	()Landroid/app/Application;
    //   182: astore_3
    //   183: aload_0
    //   184: getfield 308	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender:cb	Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean;
    //   187: astore 4
    //   189: aload 4
    //   191: invokevirtual 360	com/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean:toString	()Ljava/lang/String;
    //   194: astore 4
    //   196: new 362	java/io/BufferedWriter
    //   199: dup
    //   200: new 364	java/io/OutputStreamWriter
    //   203: dup
    //   204: aload_3
    //   205: ldc_w 366
    //   208: iconst_0
    //   209: invokevirtual 372	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   212: invokespecial 375	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   215: invokespecial 378	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   218: astore_3
    //   219: aload 4
    //   221: invokestatic 383	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   224: ifeq +47 -> 271
    //   227: ldc -11
    //   229: astore 4
    //   231: aload_3
    //   232: aload 4
    //   234: invokevirtual 386	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   237: aload_3
    //   238: invokevirtual 387	java/io/BufferedWriter:close	()V
    //   241: aload_0
    //   242: aload 5
    //   244: aload 6
    //   246: invokespecial 210	com/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender:deleteFiles	(Ljava/lang/String;Ljava/util/List;)V
    //   249: ldc_w 324
    //   252: ldc_w 326
    //   255: iconst_1
    //   256: anewarray 4	java/lang/Object
    //   259: dup
    //   260: iconst_0
    //   261: aload_1
    //   262: aastore
    //   263: invokestatic 330	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   266: invokestatic 333	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   269: pop
    //   270: return
    //   271: goto -40 -> 231
    //   274: astore_3
    //   275: aconst_null
    //   276: astore_3
    //   277: aload_3
    //   278: ifnull -37 -> 241
    //   281: aload_3
    //   282: invokevirtual 387	java/io/BufferedWriter:close	()V
    //   285: goto -44 -> 241
    //   288: astore_3
    //   289: goto -48 -> 241
    //   292: astore_1
    //   293: aconst_null
    //   294: astore_3
    //   295: aload_3
    //   296: ifnull +7 -> 303
    //   299: aload_3
    //   300: invokevirtual 387	java/io/BufferedWriter:close	()V
    //   303: aload_1
    //   304: athrow
    //   305: astore_3
    //   306: goto -65 -> 241
    //   309: astore_3
    //   310: goto -7 -> 303
    //   313: astore_1
    //   314: goto -19 -> 295
    //   317: astore 4
    //   319: goto -42 -> 277
    //   322: goto -178 -> 144
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	325	0	this	DataSender
    //   0	325	1	paramString	String
    //   123	38	2	i	int
    //   95	143	3	localObject1	Object
    //   274	1	3	localIOException1	java.io.IOException
    //   276	6	3	localObject2	Object
    //   288	1	3	localIOException2	java.io.IOException
    //   294	6	3	localObject3	Object
    //   305	1	3	localIOException3	java.io.IOException
    //   309	1	3	localIOException4	java.io.IOException
    //   187	46	4	localObject4	Object
    //   317	1	4	localIOException5	java.io.IOException
    //   33	210	5	str	String
    //   51	194	6	localList	List
    // Exception table:
    //   from	to	target	type
    //   0	84	173	java/lang/Exception
    //   85	124	173	java/lang/Exception
    //   144	172	173	java/lang/Exception
    //   179	189	173	java/lang/Exception
    //   237	241	173	java/lang/Exception
    //   241	270	173	java/lang/Exception
    //   281	285	173	java/lang/Exception
    //   299	303	173	java/lang/Exception
    //   303	305	173	java/lang/Exception
    //   189	219	274	java/io/IOException
    //   281	285	288	java/io/IOException
    //   189	219	292	finally
    //   237	241	305	java/io/IOException
    //   299	303	309	java/io/IOException
    //   219	227	313	finally
    //   231	237	313	finally
    //   219	227	317	java/io/IOException
    //   231	237	317	java/io/IOException
  }
  
  void setSandbox(boolean paramBoolean)
  {
    this.isSandbox = paramBoolean;
  }
  
  private static final class a
  {
    private static DataSender a = new DataSender(null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\datasdk\DataSender.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */