package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import com.wali.gamecenter.report.utils.MD5;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import java.io.File;

public class bh
{
  private static bh a;
  private bd.a b = new bi(this);
  private a c;
  private MiAppInfo d;
  private Activity e;
  private Dialog f;
  
  public static bh a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new bh();
      }
      return a;
    }
    finally {}
  }
  
  private static File a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      paramContext = null;
    }
    do
    {
      return paramContext;
      paramString = a(paramString);
      paramString = new File(b(paramContext), paramString);
      if (!paramString.exists()) {
        break;
      }
      paramContext = paramString;
    } while (paramString.isFile());
    return null;
  }
  
  private static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return MD5.getMD5(paramString.getBytes());
  }
  
  private static File b(Context paramContext)
  {
    paramContext = new File(paramContext.getExternalCacheDir(), "splash");
    if ((!paramContext.exists()) || (!paramContext.isDirectory())) {
      paramContext.mkdirs();
    }
    return paramContext;
  }
  
  /* Error */
  private static void b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 44	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: invokestatic 52	com/xiaomi/gamecenter/sdk/bh:b	(Landroid/content/Context;)Ljava/io/File;
    //   12: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   15: astore 5
    //   17: invokestatic 191	java/lang/System:currentTimeMillis	()J
    //   20: pop2
    //   21: aload_0
    //   22: aload_1
    //   23: invokestatic 193	com/xiaomi/gamecenter/sdk/bh:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    //   26: astore_0
    //   27: aload_0
    //   28: ifnull +103 -> 131
    //   31: aload_0
    //   32: invokevirtual 59	java/io/File:exists	()Z
    //   35: ifeq +96 -> 131
    //   38: aload_0
    //   39: invokevirtual 62	java/io/File:isFile	()Z
    //   42: ifeq +89 -> 131
    //   45: ldc -108
    //   47: new 150	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 194	java/lang/StringBuilder:<init>	()V
    //   54: aload_0
    //   55: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   58: ldc -60
    //   60: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokestatic 201	cn/com/wali/basetool/log/Logger:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   69: return
    //   70: astore 5
    //   72: aconst_null
    //   73: astore_1
    //   74: aconst_null
    //   75: astore_0
    //   76: aload_1
    //   77: astore 4
    //   79: aload_0
    //   80: astore_3
    //   81: ldc -108
    //   83: new 150	java/lang/StringBuilder
    //   86: dup
    //   87: ldc -53
    //   89: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   92: aload 5
    //   94: invokevirtual 206	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   97: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: aload 5
    //   105: invokestatic 209	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   108: aload_0
    //   109: ifnull +7 -> 116
    //   112: aload_0
    //   113: invokevirtual 214	java/io/InputStream:close	()V
    //   116: aload_1
    //   117: ifnull -110 -> 7
    //   120: aload_1
    //   121: invokevirtual 217	java/io/FileOutputStream:close	()V
    //   124: return
    //   125: astore_0
    //   126: aload_0
    //   127: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   130: return
    //   131: aload_1
    //   132: invokestatic 47	com/xiaomi/gamecenter/sdk/bh:a	(Ljava/lang/String;)Ljava/lang/String;
    //   135: astore 6
    //   137: new 150	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 194	java/lang/StringBuilder:<init>	()V
    //   144: aload 6
    //   146: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: ldc -34
    //   151: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: astore_3
    //   158: new 224	java/net/URL
    //   161: dup
    //   162: aload_1
    //   163: invokespecial 225	java/net/URL:<init>	(Ljava/lang/String;)V
    //   166: invokevirtual 229	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   169: astore_1
    //   170: aload_1
    //   171: invokevirtual 234	java/net/URLConnection:connect	()V
    //   174: aload_1
    //   175: invokevirtual 238	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   178: astore_0
    //   179: aload_1
    //   180: invokevirtual 241	java/net/URLConnection:getContentLength	()I
    //   183: pop
    //   184: aload_0
    //   185: ifnonnull +13 -> 198
    //   188: new 243	java/lang/RuntimeException
    //   191: dup
    //   192: ldc -11
    //   194: invokespecial 246	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   197: athrow
    //   198: new 49	java/io/File
    //   201: dup
    //   202: aload 5
    //   204: invokespecial 247	java/io/File:<init>	(Ljava/lang/String;)V
    //   207: astore_1
    //   208: aload_1
    //   209: invokevirtual 59	java/io/File:exists	()Z
    //   212: ifne +8 -> 220
    //   215: aload_1
    //   216: invokevirtual 181	java/io/File:mkdirs	()Z
    //   219: pop
    //   220: new 49	java/io/File
    //   223: dup
    //   224: aload_1
    //   225: aload_3
    //   226: invokespecial 55	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   229: astore 7
    //   231: new 216	java/io/FileOutputStream
    //   234: dup
    //   235: aload 7
    //   237: invokespecial 250	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   240: astore_1
    //   241: aload_1
    //   242: astore 4
    //   244: aload_0
    //   245: astore_3
    //   246: sipush 1024
    //   249: newarray <illegal type>
    //   251: astore 8
    //   253: aload_1
    //   254: astore 4
    //   256: aload_0
    //   257: astore_3
    //   258: aload_0
    //   259: aload 8
    //   261: invokevirtual 254	java/io/InputStream:read	([B)I
    //   264: istore_2
    //   265: iload_2
    //   266: iconst_m1
    //   267: if_icmpeq +19 -> 286
    //   270: aload_1
    //   271: astore 4
    //   273: aload_0
    //   274: astore_3
    //   275: aload_1
    //   276: aload 8
    //   278: iconst_0
    //   279: iload_2
    //   280: invokevirtual 258	java/io/FileOutputStream:write	([BII)V
    //   283: goto -30 -> 253
    //   286: aload_1
    //   287: astore 4
    //   289: aload_0
    //   290: astore_3
    //   291: aload 7
    //   293: invokevirtual 59	java/io/File:exists	()Z
    //   296: ifeq +25 -> 321
    //   299: aload_1
    //   300: astore 4
    //   302: aload_0
    //   303: astore_3
    //   304: aload 7
    //   306: new 49	java/io/File
    //   309: dup
    //   310: aload 5
    //   312: aload 6
    //   314: invokespecial 260	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   317: invokevirtual 264	java/io/File:renameTo	(Ljava/io/File;)Z
    //   320: pop
    //   321: aload_0
    //   322: ifnull +7 -> 329
    //   325: aload_0
    //   326: invokevirtual 214	java/io/InputStream:close	()V
    //   329: aload_1
    //   330: invokevirtual 217	java/io/FileOutputStream:close	()V
    //   333: return
    //   334: astore_0
    //   335: aload_0
    //   336: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   339: return
    //   340: astore_0
    //   341: aload_0
    //   342: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   345: goto -16 -> 329
    //   348: astore_0
    //   349: aload_0
    //   350: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   353: goto -237 -> 116
    //   356: astore_1
    //   357: aconst_null
    //   358: astore 4
    //   360: aconst_null
    //   361: astore_0
    //   362: aload_0
    //   363: ifnull +7 -> 370
    //   366: aload_0
    //   367: invokevirtual 214	java/io/InputStream:close	()V
    //   370: aload 4
    //   372: ifnull +8 -> 380
    //   375: aload 4
    //   377: invokevirtual 217	java/io/FileOutputStream:close	()V
    //   380: aload_1
    //   381: athrow
    //   382: astore_0
    //   383: aload_0
    //   384: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   387: goto -17 -> 370
    //   390: astore_0
    //   391: aload_0
    //   392: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   395: goto -15 -> 380
    //   398: astore_1
    //   399: aconst_null
    //   400: astore 4
    //   402: goto -40 -> 362
    //   405: astore_1
    //   406: aload_3
    //   407: astore_0
    //   408: goto -46 -> 362
    //   411: astore 5
    //   413: aconst_null
    //   414: astore_1
    //   415: goto -339 -> 76
    //   418: astore 5
    //   420: goto -344 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	423	0	paramContext	Context
    //   0	423	1	paramString	String
    //   264	16	2	i	int
    //   80	327	3	localObject	Object
    //   77	324	4	str1	String
    //   15	1	5	str2	String
    //   70	241	5	localException1	Exception
    //   411	1	5	localException2	Exception
    //   418	1	5	localException3	Exception
    //   135	178	6	str3	String
    //   229	76	7	localFile	File
    //   251	26	8	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   8	27	70	java/lang/Exception
    //   31	69	70	java/lang/Exception
    //   131	179	70	java/lang/Exception
    //   120	124	125	java/io/IOException
    //   329	333	334	java/io/IOException
    //   325	329	340	java/io/IOException
    //   112	116	348	java/io/IOException
    //   8	27	356	finally
    //   31	69	356	finally
    //   131	179	356	finally
    //   366	370	382	java/io/IOException
    //   375	380	390	java/io/IOException
    //   179	184	398	finally
    //   188	198	398	finally
    //   198	220	398	finally
    //   220	241	398	finally
    //   81	108	405	finally
    //   246	253	405	finally
    //   258	265	405	finally
    //   275	283	405	finally
    //   291	299	405	finally
    //   304	321	405	finally
    //   179	184	411	java/lang/Exception
    //   188	198	411	java/lang/Exception
    //   198	220	411	java/lang/Exception
    //   220	241	411	java/lang/Exception
    //   246	253	418	java/lang/Exception
    //   258	265	418	java/lang/Exception
    //   275	283	418	java/lang/Exception
    //   291	299	418	java/lang/Exception
    //   304	321	418	java/lang/Exception
  }
  
  /* Error */
  public final void a(Activity paramActivity)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: iconst_0
    //   4: istore_3
    //   5: aload_0
    //   6: aload_1
    //   7: putfield 33	com/xiaomi/gamecenter/sdk/bh:e	Landroid/app/Activity;
    //   10: invokestatic 191	java/lang/System:currentTimeMillis	()J
    //   13: lstore 5
    //   15: iload 4
    //   17: istore_2
    //   18: aload_1
    //   19: aload_1
    //   20: ldc_w 275
    //   23: invokestatic 280	com/xiaomi/gamecenter/sdk/utils/ResourceUtils:f	(Landroid/content/Context;Ljava/lang/String;)I
    //   26: aconst_null
    //   27: invokestatic 286	android/view/View:inflate	(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    //   30: checkcast 288	android/widget/ImageView
    //   33: astore 8
    //   35: iload 4
    //   37: istore_2
    //   38: aload_1
    //   39: ldc 77
    //   41: iconst_0
    //   42: invokevirtual 83	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   45: ldc -127
    //   47: iconst_0
    //   48: invokeinterface 292 3 0
    //   53: istore 4
    //   55: iload 4
    //   57: istore_2
    //   58: aload_0
    //   59: new 294	android/app/Dialog
    //   62: dup
    //   63: aload_1
    //   64: aload_1
    //   65: ldc_w 296
    //   68: invokestatic 298	com/xiaomi/gamecenter/sdk/utils/ResourceUtils:e	(Landroid/content/Context;Ljava/lang/String;)I
    //   71: invokespecial 301	android/app/Dialog:<init>	(Landroid/content/Context;I)V
    //   74: putfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   77: aload_1
    //   78: invokevirtual 307	android/app/Activity:getResources	()Landroid/content/res/Resources;
    //   81: invokevirtual 313	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   84: getfield 319	android/content/res/Configuration:orientation	I
    //   87: iconst_2
    //   88: if_icmpne +87 -> 175
    //   91: aload_1
    //   92: ldc 77
    //   94: iconst_0
    //   95: invokevirtual 83	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   98: ldc -117
    //   100: aconst_null
    //   101: invokeinterface 323 3 0
    //   106: astore 7
    //   108: aload_1
    //   109: aload 7
    //   111: invokestatic 193	com/xiaomi/gamecenter/sdk/bh:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    //   114: astore 7
    //   116: aload 7
    //   118: ifnull +11 -> 129
    //   121: aload 7
    //   123: invokevirtual 59	java/io/File:exists	()Z
    //   126: ifne +69 -> 195
    //   129: aload_0
    //   130: getfield 267	com/xiaomi/gamecenter/sdk/bh:c	Lcom/xiaomi/gamecenter/sdk/bh$a;
    //   133: ifnull +12 -> 145
    //   136: aload_0
    //   137: getfield 267	com/xiaomi/gamecenter/sdk/bh:c	Lcom/xiaomi/gamecenter/sdk/bh$a;
    //   140: invokeinterface 325 1 0
    //   145: aload_0
    //   146: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   149: astore_1
    //   150: new 327	android/os/Handler
    //   153: dup
    //   154: invokespecial 328	android/os/Handler:<init>	()V
    //   157: new 330	com/xiaomi/gamecenter/sdk/bk
    //   160: dup
    //   161: aload_0
    //   162: aload_1
    //   163: lload 5
    //   165: invokespecial 333	com/xiaomi/gamecenter/sdk/bk:<init>	(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V
    //   168: iload_2
    //   169: i2l
    //   170: invokevirtual 337	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   173: pop
    //   174: return
    //   175: aload_1
    //   176: ldc 77
    //   178: iconst_0
    //   179: invokevirtual 83	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   182: ldc -115
    //   184: aconst_null
    //   185: invokeinterface 323 3 0
    //   190: astore 7
    //   192: goto -84 -> 108
    //   195: aload 7
    //   197: invokevirtual 101	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   200: invokestatic 343	android/graphics/BitmapFactory:decodeFile	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   203: astore 7
    //   205: aload 7
    //   207: ifnonnull +49 -> 256
    //   210: aload_0
    //   211: getfield 267	com/xiaomi/gamecenter/sdk/bh:c	Lcom/xiaomi/gamecenter/sdk/bh$a;
    //   214: ifnull +12 -> 226
    //   217: aload_0
    //   218: getfield 267	com/xiaomi/gamecenter/sdk/bh:c	Lcom/xiaomi/gamecenter/sdk/bh$a;
    //   221: invokeinterface 325 1 0
    //   226: aload_0
    //   227: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   230: astore_1
    //   231: new 327	android/os/Handler
    //   234: dup
    //   235: invokespecial 328	android/os/Handler:<init>	()V
    //   238: new 330	com/xiaomi/gamecenter/sdk/bk
    //   241: dup
    //   242: aload_0
    //   243: aload_1
    //   244: lload 5
    //   246: invokespecial 333	com/xiaomi/gamecenter/sdk/bk:<init>	(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V
    //   249: iload_2
    //   250: i2l
    //   251: invokevirtual 337	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   254: pop
    //   255: return
    //   256: aload 8
    //   258: aload 7
    //   260: invokevirtual 347	android/widget/ImageView:setImageBitmap	(Landroid/graphics/Bitmap;)V
    //   263: aload_0
    //   264: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   267: iconst_1
    //   268: invokevirtual 351	android/app/Dialog:requestWindowFeature	(I)Z
    //   271: pop
    //   272: aload_0
    //   273: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   276: aload 8
    //   278: invokevirtual 355	android/app/Dialog:setContentView	(Landroid/view/View;)V
    //   281: aload_0
    //   282: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   285: invokevirtual 358	android/app/Dialog:show	()V
    //   288: invokestatic 361	com/xiaomi/gamecenter/sdk/report/ReportData:a	()V
    //   291: aload_1
    //   292: ldc 77
    //   294: iconst_0
    //   295: invokevirtual 83	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   298: ldc 120
    //   300: aconst_null
    //   301: invokeinterface 323 3 0
    //   306: astore 7
    //   308: new 363	com/xiaomi/gamecenter/sdk/entry/MiAppEntry
    //   311: dup
    //   312: aload_0
    //   313: getfield 270	com/xiaomi/gamecenter/sdk/bh:d	Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    //   316: invokespecial 366	com/xiaomi/gamecenter/sdk/entry/MiAppEntry:<init>	(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    //   319: astore 9
    //   321: ldc -81
    //   323: aload 7
    //   325: aload 9
    //   327: invokestatic 369	com/xiaomi/gamecenter/sdk/report/ReportData:b	(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    //   330: aload_1
    //   331: ldc 77
    //   333: iconst_0
    //   334: invokevirtual 83	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   337: ldc -113
    //   339: aconst_null
    //   340: invokeinterface 323 3 0
    //   345: astore 10
    //   347: aload 10
    //   349: invokestatic 44	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   352: ifne +23 -> 375
    //   355: aload 8
    //   357: new 371	com/xiaomi/gamecenter/sdk/bj
    //   360: dup
    //   361: aload_0
    //   362: aload 10
    //   364: aload_1
    //   365: aload 7
    //   367: aload 9
    //   369: invokespecial 374	com/xiaomi/gamecenter/sdk/bj:<init>	(Lcom/xiaomi/gamecenter/sdk/bh;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    //   372: invokevirtual 378	android/widget/ImageView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   375: aload_0
    //   376: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   379: iconst_0
    //   380: invokevirtual 382	android/app/Dialog:setCanceledOnTouchOutside	(Z)V
    //   383: aload_0
    //   384: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   387: iconst_0
    //   388: invokevirtual 385	android/app/Dialog:setCancelable	(Z)V
    //   391: aload_0
    //   392: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   395: invokevirtual 389	android/app/Dialog:getWindow	()Landroid/view/Window;
    //   398: new 391	android/graphics/drawable/ColorDrawable
    //   401: dup
    //   402: iconst_0
    //   403: invokespecial 394	android/graphics/drawable/ColorDrawable:<init>	(I)V
    //   406: invokevirtual 400	android/view/Window:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   409: aload_0
    //   410: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   413: invokevirtual 389	android/app/Dialog:getWindow	()Landroid/view/Window;
    //   416: iconst_m1
    //   417: iconst_m1
    //   418: invokevirtual 404	android/view/Window:setLayout	(II)V
    //   421: aload_0
    //   422: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   425: astore_1
    //   426: new 327	android/os/Handler
    //   429: dup
    //   430: invokespecial 328	android/os/Handler:<init>	()V
    //   433: new 330	com/xiaomi/gamecenter/sdk/bk
    //   436: dup
    //   437: aload_0
    //   438: aload_1
    //   439: lload 5
    //   441: invokespecial 333	com/xiaomi/gamecenter/sdk/bk:<init>	(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V
    //   444: iload_2
    //   445: i2l
    //   446: invokevirtual 337	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   449: pop
    //   450: return
    //   451: astore_1
    //   452: iload_3
    //   453: istore_2
    //   454: aload_0
    //   455: getfield 267	com/xiaomi/gamecenter/sdk/bh:c	Lcom/xiaomi/gamecenter/sdk/bh$a;
    //   458: ifnull +14 -> 472
    //   461: iload_3
    //   462: istore_2
    //   463: aload_0
    //   464: getfield 267	com/xiaomi/gamecenter/sdk/bh:c	Lcom/xiaomi/gamecenter/sdk/bh$a;
    //   467: invokeinterface 325 1 0
    //   472: iload_3
    //   473: istore_2
    //   474: ldc -108
    //   476: aload_1
    //   477: invokevirtual 405	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   480: invokestatic 407	cn/com/wali/basetool/log/Logger:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   483: aload_0
    //   484: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   487: astore_1
    //   488: new 327	android/os/Handler
    //   491: dup
    //   492: invokespecial 328	android/os/Handler:<init>	()V
    //   495: new 330	com/xiaomi/gamecenter/sdk/bk
    //   498: dup
    //   499: aload_0
    //   500: aload_1
    //   501: lload 5
    //   503: invokespecial 333	com/xiaomi/gamecenter/sdk/bk:<init>	(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V
    //   506: iload_3
    //   507: i2l
    //   508: invokevirtual 337	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   511: pop
    //   512: return
    //   513: astore_1
    //   514: aload_0
    //   515: getfield 169	com/xiaomi/gamecenter/sdk/bh:f	Landroid/app/Dialog;
    //   518: astore 7
    //   520: new 327	android/os/Handler
    //   523: dup
    //   524: invokespecial 328	android/os/Handler:<init>	()V
    //   527: new 330	com/xiaomi/gamecenter/sdk/bk
    //   530: dup
    //   531: aload_0
    //   532: aload 7
    //   534: lload 5
    //   536: invokespecial 333	com/xiaomi/gamecenter/sdk/bk:<init>	(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V
    //   539: iload_2
    //   540: i2l
    //   541: invokevirtual 337	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   544: pop
    //   545: aload_1
    //   546: athrow
    //   547: astore_1
    //   548: goto -34 -> 514
    //   551: astore_1
    //   552: iload_2
    //   553: istore_3
    //   554: goto -102 -> 452
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	557	0	this	bh
    //   0	557	1	paramActivity	Activity
    //   17	536	2	i	int
    //   4	550	3	j	int
    //   1	55	4	k	int
    //   13	522	5	l	long
    //   106	427	7	localObject	Object
    //   33	323	8	localImageView	android.widget.ImageView
    //   319	49	9	localMiAppEntry	com.xiaomi.gamecenter.sdk.entry.MiAppEntry
    //   345	18	10	str	String
    // Exception table:
    //   from	to	target	type
    //   18	35	451	java/lang/Throwable
    //   38	55	451	java/lang/Throwable
    //   18	35	513	finally
    //   38	55	513	finally
    //   454	461	513	finally
    //   463	472	513	finally
    //   474	483	513	finally
    //   58	108	547	finally
    //   108	116	547	finally
    //   121	129	547	finally
    //   129	145	547	finally
    //   175	192	547	finally
    //   195	205	547	finally
    //   210	226	547	finally
    //   256	375	547	finally
    //   375	421	547	finally
    //   58	108	551	java/lang/Throwable
    //   108	116	551	java/lang/Throwable
    //   121	129	551	java/lang/Throwable
    //   129	145	551	java/lang/Throwable
    //   175	192	551	java/lang/Throwable
    //   195	205	551	java/lang/Throwable
    //   210	226	551	java/lang/Throwable
    //   256	375	551	java/lang/Throwable
    //   375	421	551	java/lang/Throwable
  }
  
  public final void a(MiAppInfo paramMiAppInfo, a parama)
  {
    this.c = parama;
    this.d = paramMiAppInfo;
    bd.a().a(this.b);
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */