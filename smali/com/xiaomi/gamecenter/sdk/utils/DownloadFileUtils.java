package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v4.content.FileProvider;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.bean.DownloadDialogInfo;
import java.io.File;

public class DownloadFileUtils
{
  private Handler a;
  private int b = 0;
  private DownloadDialogInfo c;
  
  public DownloadFileUtils(Handler paramHandler, DownloadDialogInfo paramDownloadDialogInfo)
  {
    this.a = paramHandler;
    this.c = paramDownloadDialogInfo;
  }
  
  public static void a(boolean paramBoolean)
  {
    Context localContext = MiCommplatform.getInstance().getApplicationContext();
    Object localObject2 = new File(localContext.getFilesDir(), ".");
    ((File)localObject2).mkdirs();
    Object localObject1 = new File((File)localObject2, "service.apk");
    localObject2 = new File((File)localObject2, "service.tmp");
    HyUtils.a("777", ((File)localObject1).getAbsolutePath());
    HyUtils.a("777", ((File)localObject2).getAbsolutePath());
    if (paramBoolean)
    {
      if (((File)localObject1).exists())
      {
        ReporterUtils.getInstance().xmsdkReport(2212);
        localObject2 = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT > 23)
        {
          ((Intent)localObject2).setFlags(1);
          ((Intent)localObject2).setDataAndType(FileProvider.getUriForFile(localContext, localContext.getPackageName() + ".fileprovider", (File)localObject1), "application/vnd.android.package-archive");
        }
        for (;;)
        {
          localContext.startActivity((Intent)localObject2);
          return;
          ((Intent)localObject2).setDataAndType(Uri.fromFile((File)localObject1), "application/vnd.android.package-archive");
          ((Intent)localObject2).setFlags(268435456);
        }
      }
      localObject1 = new Intent("android.intent.action.VIEW", Uri.parse("http://app.xiaomi.com/details?id=com.xiaomi.gamecenter.sdk.service&back=true&ref=gamesdkjar&startDownload=true"));
      ((Intent)localObject1).addFlags(268435456);
      localContext.startActivity((Intent)localObject1);
      return;
    }
    ((File)localObject1).delete();
    if (((File)localObject2).renameTo((File)localObject1))
    {
      HyUtils.a("777", ((File)localObject1).getAbsolutePath());
      ReporterUtils.getInstance().xmsdkReport(2212);
      localObject2 = new Intent("android.intent.action.VIEW");
      if (Build.VERSION.SDK_INT > 23)
      {
        ((Intent)localObject2).setFlags(1);
        ((Intent)localObject2).setDataAndType(FileProvider.getUriForFile(localContext, localContext.getPackageName() + ".fileprovider", (File)localObject1), "application/vnd.android.package-archive");
      }
      for (;;)
      {
        localContext.startActivity((Intent)localObject2);
        return;
        ((Intent)localObject2).setDataAndType(Uri.fromFile((File)localObject1), "application/vnd.android.package-archive");
        ((Intent)localObject2).setFlags(268435456);
      }
    }
    localObject1 = new Intent("android.intent.action.VIEW", Uri.parse("http://app.xiaomi.com/details?id=com.xiaomi.gamecenter.sdk.service&back=true&ref=gamesdkjar&startDownload=true"));
    ((Intent)localObject1).addFlags(268435456);
    localContext.startActivity((Intent)localObject1);
  }
  
  private void b()
  {
    try
    {
      MiCommplatform.getInstance().sendToastMsg();
      Thread.sleep(3000L);
      this.b -= 1;
      a();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 17	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:b	I
    //   6: istore_2
    //   7: aload_0
    //   8: iload_2
    //   9: iconst_1
    //   10: iadd
    //   11: putfield 17	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:b	I
    //   14: iload_2
    //   15: iconst_3
    //   16: if_icmple +26 -> 42
    //   19: new 176	android/os/Message
    //   22: dup
    //   23: invokespecial 177	android/os/Message:<init>	()V
    //   26: astore_3
    //   27: aload_3
    //   28: bipush -2
    //   30: putfield 180	android/os/Message:what	I
    //   33: aload_0
    //   34: getfield 19	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	Landroid/os/Handler;
    //   37: aload_3
    //   38: invokevirtual 186	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   41: pop
    //   42: new 35	java/io/File
    //   45: dup
    //   46: invokestatic 29	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   49: invokevirtual 33	com/xiaomi/gamecenter/sdk/MiCommplatform:getApplicationContext	()Landroid/content/Context;
    //   52: invokevirtual 41	android/content/Context:getFilesDir	()Ljava/io/File;
    //   55: ldc 43
    //   57: invokespecial 46	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   60: astore 4
    //   62: aload 4
    //   64: invokevirtual 50	java/io/File:mkdirs	()Z
    //   67: pop
    //   68: new 35	java/io/File
    //   71: dup
    //   72: aload 4
    //   74: ldc 54
    //   76: invokespecial 46	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   79: astore_3
    //   80: new 35	java/io/File
    //   83: dup
    //   84: aload 4
    //   86: ldc 52
    //   88: invokespecial 46	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   91: astore 4
    //   93: aload 4
    //   95: invokevirtual 68	java/io/File:exists	()Z
    //   98: ifeq +51 -> 149
    //   101: aload 4
    //   103: invokevirtual 60	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   106: invokestatic 191	cn/com/wali/basetool/utils/MD5:b	(Ljava/lang/String;)Ljava/lang/String;
    //   109: aload_0
    //   110: getfield 21	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:c	Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;
    //   113: invokevirtual 195	com/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo:b	()Ljava/lang/String;
    //   116: invokestatic 201	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   119: ifeq +30 -> 149
    //   122: new 176	android/os/Message
    //   125: dup
    //   126: invokespecial 177	android/os/Message:<init>	()V
    //   129: astore_3
    //   130: aload_3
    //   131: iconst_4
    //   132: putfield 180	android/os/Message:what	I
    //   135: aload_0
    //   136: getfield 19	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	Landroid/os/Handler;
    //   139: aload_3
    //   140: invokevirtual 186	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   143: pop
    //   144: iconst_1
    //   145: invokestatic 203	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	(Z)V
    //   148: return
    //   149: aload_3
    //   150: invokevirtual 68	java/io/File:exists	()Z
    //   153: ifeq +56 -> 209
    //   156: aload_3
    //   157: invokevirtual 60	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   160: invokestatic 191	cn/com/wali/basetool/utils/MD5:b	(Ljava/lang/String;)Ljava/lang/String;
    //   163: aload_0
    //   164: getfield 21	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:c	Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;
    //   167: invokevirtual 195	com/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo:b	()Ljava/lang/String;
    //   170: invokestatic 201	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   173: ifeq +36 -> 209
    //   176: new 176	android/os/Message
    //   179: dup
    //   180: invokespecial 177	android/os/Message:<init>	()V
    //   183: astore_3
    //   184: aload_3
    //   185: iconst_4
    //   186: putfield 180	android/os/Message:what	I
    //   189: aload_0
    //   190: getfield 19	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	Landroid/os/Handler;
    //   193: aload_3
    //   194: invokevirtual 186	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   197: pop
    //   198: iconst_0
    //   199: invokestatic 203	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	(Z)V
    //   202: return
    //   203: astore_3
    //   204: aload_0
    //   205: invokespecial 205	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:b	()V
    //   208: return
    //   209: aload_3
    //   210: invokevirtual 146	java/io/File:delete	()Z
    //   213: pop
    //   214: aload 4
    //   216: invokevirtual 146	java/io/File:delete	()Z
    //   219: pop
    //   220: aload_3
    //   221: invokevirtual 208	java/io/File:createNewFile	()Z
    //   224: pop
    //   225: new 210	java/net/URL
    //   228: dup
    //   229: aload_0
    //   230: getfield 21	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:c	Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;
    //   233: invokevirtual 212	com/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo:a	()Ljava/lang/String;
    //   236: invokespecial 213	java/net/URL:<init>	(Ljava/lang/String;)V
    //   239: invokevirtual 217	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   242: checkcast 219	java/net/HttpURLConnection
    //   245: astore 4
    //   247: aload 4
    //   249: sipush 3000
    //   252: invokevirtual 222	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   255: aload 4
    //   257: invokevirtual 225	java/net/HttpURLConnection:connect	()V
    //   260: aload 4
    //   262: invokevirtual 229	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   265: astore 5
    //   267: aload 5
    //   269: ifnonnull +45 -> 314
    //   272: new 176	android/os/Message
    //   275: dup
    //   276: invokespecial 177	android/os/Message:<init>	()V
    //   279: astore 6
    //   281: aload 6
    //   283: iconst_m1
    //   284: putfield 180	android/os/Message:what	I
    //   287: aload 6
    //   289: ldc -25
    //   291: putfield 235	android/os/Message:obj	Ljava/lang/Object;
    //   294: aload_0
    //   295: getfield 19	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	Landroid/os/Handler;
    //   298: aload 6
    //   300: invokevirtual 186	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   303: pop
    //   304: ldc2_w 156
    //   307: invokestatic 163	java/lang/Thread:sleep	(J)V
    //   310: aload_0
    //   311: invokevirtual 165	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	()V
    //   314: new 237	java/io/FileOutputStream
    //   317: dup
    //   318: aload_3
    //   319: invokespecial 240	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   322: astore 6
    //   324: sipush 1024
    //   327: newarray <illegal type>
    //   329: astore 7
    //   331: aload 5
    //   333: aload 7
    //   335: invokevirtual 246	java/io/InputStream:read	([B)I
    //   338: istore_2
    //   339: iload_2
    //   340: iconst_m1
    //   341: if_icmpeq +106 -> 447
    //   344: aload 6
    //   346: aload 7
    //   348: iconst_0
    //   349: iload_2
    //   350: invokevirtual 250	java/io/FileOutputStream:write	([BII)V
    //   353: iload_1
    //   354: iload_2
    //   355: iadd
    //   356: istore_1
    //   357: new 176	android/os/Message
    //   360: dup
    //   361: invokespecial 177	android/os/Message:<init>	()V
    //   364: astore 8
    //   366: aload 8
    //   368: iconst_2
    //   369: putfield 180	android/os/Message:what	I
    //   372: aload 8
    //   374: iload_1
    //   375: putfield 253	android/os/Message:arg1	I
    //   378: aload_0
    //   379: getfield 19	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	Landroid/os/Handler;
    //   382: aload 8
    //   384: invokevirtual 186	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   387: pop
    //   388: goto -57 -> 331
    //   391: astore_3
    //   392: aload_0
    //   393: invokespecial 205	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:b	()V
    //   396: return
    //   397: astore 6
    //   399: aload 6
    //   401: invokevirtual 254	java/lang/InterruptedException:printStackTrace	()V
    //   404: goto -94 -> 310
    //   407: astore_3
    //   408: aload_3
    //   409: invokevirtual 168	java/lang/Exception:printStackTrace	()V
    //   412: new 176	android/os/Message
    //   415: dup
    //   416: invokespecial 177	android/os/Message:<init>	()V
    //   419: astore 4
    //   421: aload 4
    //   423: iconst_m1
    //   424: putfield 180	android/os/Message:what	I
    //   427: aload 4
    //   429: aload_3
    //   430: invokevirtual 257	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   433: putfield 235	android/os/Message:obj	Ljava/lang/Object;
    //   436: aload_0
    //   437: getfield 19	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	Landroid/os/Handler;
    //   440: aload 4
    //   442: invokevirtual 186	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   445: pop
    //   446: return
    //   447: aload 4
    //   449: invokevirtual 260	java/net/HttpURLConnection:disconnect	()V
    //   452: aload 5
    //   454: invokevirtual 263	java/io/InputStream:close	()V
    //   457: new 176	android/os/Message
    //   460: dup
    //   461: invokespecial 177	android/os/Message:<init>	()V
    //   464: astore 4
    //   466: aload 4
    //   468: iconst_3
    //   469: putfield 180	android/os/Message:what	I
    //   472: aload_0
    //   473: getfield 19	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	Landroid/os/Handler;
    //   476: aload 4
    //   478: invokevirtual 186	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   481: pop
    //   482: aload_3
    //   483: invokevirtual 60	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   486: invokestatic 191	cn/com/wali/basetool/utils/MD5:b	(Ljava/lang/String;)Ljava/lang/String;
    //   489: aload_0
    //   490: getfield 21	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:c	Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;
    //   493: invokevirtual 195	com/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo:b	()Ljava/lang/String;
    //   496: invokestatic 201	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   499: ifeq +30 -> 529
    //   502: new 176	android/os/Message
    //   505: dup
    //   506: invokespecial 177	android/os/Message:<init>	()V
    //   509: astore_3
    //   510: aload_3
    //   511: iconst_4
    //   512: putfield 180	android/os/Message:what	I
    //   515: aload_0
    //   516: getfield 19	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	Landroid/os/Handler;
    //   519: aload_3
    //   520: invokevirtual 186	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   523: pop
    //   524: iconst_0
    //   525: invokestatic 203	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	(Z)V
    //   528: return
    //   529: invokestatic 73	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   532: sipush 2211
    //   535: invokevirtual 77	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:xmsdkReport	(I)V
    //   538: aload 4
    //   540: iconst_m1
    //   541: putfield 180	android/os/Message:what	I
    //   544: aload 4
    //   546: ldc_w 265
    //   549: putfield 235	android/os/Message:obj	Ljava/lang/Object;
    //   552: aload_0
    //   553: getfield 19	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	Landroid/os/Handler;
    //   556: aload 4
    //   558: invokevirtual 186	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   561: pop
    //   562: ldc2_w 156
    //   565: invokestatic 163	java/lang/Thread:sleep	(J)V
    //   568: aload_0
    //   569: invokevirtual 165	com/xiaomi/gamecenter/sdk/utils/DownloadFileUtils:a	()V
    //   572: return
    //   573: astore_3
    //   574: aload_3
    //   575: invokevirtual 254	java/lang/InterruptedException:printStackTrace	()V
    //   578: goto -10 -> 568
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	581	0	this	DownloadFileUtils
    //   1	374	1	i	int
    //   6	350	2	j	int
    //   26	168	3	localObject1	Object
    //   203	116	3	localSocketException	java.net.SocketException
    //   391	1	3	localUnknownHostException	java.net.UnknownHostException
    //   407	76	3	localException	Exception
    //   509	11	3	localMessage1	android.os.Message
    //   573	2	3	localInterruptedException1	InterruptedException
    //   60	497	4	localObject2	Object
    //   265	188	5	localInputStream	java.io.InputStream
    //   279	66	6	localObject3	Object
    //   397	3	6	localInterruptedException2	InterruptedException
    //   329	18	7	arrayOfByte	byte[]
    //   364	19	8	localMessage2	android.os.Message
    // Exception table:
    //   from	to	target	type
    //   42	148	203	java/net/SocketException
    //   149	202	203	java/net/SocketException
    //   209	267	203	java/net/SocketException
    //   272	304	203	java/net/SocketException
    //   304	310	203	java/net/SocketException
    //   310	314	203	java/net/SocketException
    //   314	331	203	java/net/SocketException
    //   331	339	203	java/net/SocketException
    //   344	353	203	java/net/SocketException
    //   357	388	203	java/net/SocketException
    //   399	404	203	java/net/SocketException
    //   447	528	203	java/net/SocketException
    //   529	562	203	java/net/SocketException
    //   562	568	203	java/net/SocketException
    //   568	572	203	java/net/SocketException
    //   574	578	203	java/net/SocketException
    //   42	148	391	java/net/UnknownHostException
    //   149	202	391	java/net/UnknownHostException
    //   209	267	391	java/net/UnknownHostException
    //   272	304	391	java/net/UnknownHostException
    //   304	310	391	java/net/UnknownHostException
    //   310	314	391	java/net/UnknownHostException
    //   314	331	391	java/net/UnknownHostException
    //   331	339	391	java/net/UnknownHostException
    //   344	353	391	java/net/UnknownHostException
    //   357	388	391	java/net/UnknownHostException
    //   399	404	391	java/net/UnknownHostException
    //   447	528	391	java/net/UnknownHostException
    //   529	562	391	java/net/UnknownHostException
    //   562	568	391	java/net/UnknownHostException
    //   568	572	391	java/net/UnknownHostException
    //   574	578	391	java/net/UnknownHostException
    //   304	310	397	java/lang/InterruptedException
    //   42	148	407	java/lang/Exception
    //   149	202	407	java/lang/Exception
    //   209	267	407	java/lang/Exception
    //   272	304	407	java/lang/Exception
    //   304	310	407	java/lang/Exception
    //   310	314	407	java/lang/Exception
    //   314	331	407	java/lang/Exception
    //   331	339	407	java/lang/Exception
    //   344	353	407	java/lang/Exception
    //   357	388	407	java/lang/Exception
    //   399	404	407	java/lang/Exception
    //   447	528	407	java/lang/Exception
    //   529	562	407	java/lang/Exception
    //   562	568	407	java/lang/Exception
    //   568	572	407	java/lang/Exception
    //   574	578	407	java/lang/Exception
    //   562	568	573	java/lang/InterruptedException
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\DownloadFileUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */