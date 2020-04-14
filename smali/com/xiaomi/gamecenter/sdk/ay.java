package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;

final class ay
  implements Runnable
{
  ay(Activity paramActivity, MiBuyInfo paramMiBuyInfo, OnPayProcessListener paramOnPayProcessListener) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: invokestatic 32	com/xiaomi/gamecenter/sdk/utils/OSUtils:a	()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;
    //   3: astore_2
    //   4: ldc 34
    //   6: aload_2
    //   7: invokevirtual 40	com/xiaomi/gamecenter/sdk/utils/OSUtils$ROM:name	()Ljava/lang/String;
    //   10: invokevirtual 46	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   13: ifne +62 -> 75
    //   16: ldc 48
    //   18: aload_2
    //   19: invokevirtual 40	com/xiaomi/gamecenter/sdk/utils/OSUtils$ROM:name	()Ljava/lang/String;
    //   22: invokevirtual 46	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   25: ifne +50 -> 75
    //   28: new 50	android/content/Intent
    //   31: dup
    //   32: invokespecial 51	android/content/Intent:<init>	()V
    //   35: astore_2
    //   36: new 53	android/content/ComponentName
    //   39: dup
    //   40: ldc 55
    //   42: ldc 57
    //   44: invokespecial 60	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   47: astore_3
    //   48: aload_2
    //   49: aload_3
    //   50: invokevirtual 64	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   53: pop
    //   54: aload_2
    //   55: ldc 66
    //   57: invokevirtual 70	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   60: pop
    //   61: aload_0
    //   62: getfield 16	com/xiaomi/gamecenter/sdk/ay:a	Landroid/app/Activity;
    //   65: aload_2
    //   66: invokevirtual 76	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   69: ldc2_w 77
    //   72: invokestatic 84	java/lang/Thread:sleep	(J)V
    //   75: invokestatic 90	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   78: astore_2
    //   79: aload_0
    //   80: getfield 18	com/xiaomi/gamecenter/sdk/ay:b	Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
    //   83: invokevirtual 96	com/xiaomi/gamecenter/sdk/entry/MiBuyInfo:isValid	()Z
    //   86: ifne +47 -> 133
    //   89: aload_2
    //   90: iconst_0
    //   91: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   94: invokestatic 105	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   97: sipush 154
    //   100: invokevirtual 109	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:report	(I)V
    //   103: aload_0
    //   104: getfield 20	com/xiaomi/gamecenter/sdk/ay:c	Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;
    //   107: sipush 47533
    //   110: invokeinterface 114 2 0
    //   115: aload_2
    //   116: iconst_0
    //   117: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   120: aload_2
    //   121: invokevirtual 117	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   124: return
    //   125: astore_2
    //   126: aload_2
    //   127: invokevirtual 120	java/lang/Exception:printStackTrace	()V
    //   130: goto -55 -> 75
    //   133: aload_2
    //   134: aload_0
    //   135: getfield 16	com/xiaomi/gamecenter/sdk/ay:a	Landroid/app/Activity;
    //   138: iconst_0
    //   139: invokevirtual 124	com/xiaomi/gamecenter/sdk/MiCommplatform:checkAndConnect	(Landroid/content/Context;Z)I
    //   142: ifeq +39 -> 181
    //   145: aload_2
    //   146: iconst_0
    //   147: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   150: invokestatic 105	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   153: sipush 154
    //   156: invokevirtual 109	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:report	(I)V
    //   159: aload_0
    //   160: getfield 20	com/xiaomi/gamecenter/sdk/ay:c	Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;
    //   163: sipush 47533
    //   166: invokeinterface 114 2 0
    //   171: aload_2
    //   172: iconst_0
    //   173: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   176: aload_2
    //   177: invokevirtual 117	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   180: return
    //   181: aload_2
    //   182: invokevirtual 128	com/xiaomi/gamecenter/sdk/MiCommplatform:getSDKService	()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    //   185: aload_0
    //   186: getfield 18	com/xiaomi/gamecenter/sdk/ay:b	Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
    //   189: aload_2
    //   190: invokevirtual 131	com/xiaomi/gamecenter/sdk/MiCommplatform:getVersion	()Ljava/lang/String;
    //   193: aconst_null
    //   194: invokeinterface 137 4 0
    //   199: istore_1
    //   200: aload_2
    //   201: iconst_0
    //   202: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   205: aload_2
    //   206: invokevirtual 117	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   209: iload_1
    //   210: sipush 47528
    //   213: if_icmpne +38 -> 251
    //   216: aload_2
    //   217: invokevirtual 140	com/xiaomi/gamecenter/sdk/MiCommplatform:sendToastMsg	()V
    //   220: invokestatic 105	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   223: sipush 154
    //   226: invokevirtual 109	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:report	(I)V
    //   229: aload_0
    //   230: getfield 20	com/xiaomi/gamecenter/sdk/ay:c	Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;
    //   233: sipush 47533
    //   236: invokeinterface 114 2 0
    //   241: aload_2
    //   242: iconst_0
    //   243: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   246: aload_2
    //   247: invokevirtual 117	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   250: return
    //   251: aload_2
    //   252: aload_0
    //   253: getfield 16	com/xiaomi/gamecenter/sdk/ay:a	Landroid/app/Activity;
    //   256: iload_1
    //   257: invokevirtual 144	com/xiaomi/gamecenter/sdk/MiCommplatform:checkUserChanged	(Landroid/app/Activity;I)Z
    //   260: ifne +62 -> 322
    //   263: iload_1
    //   264: ifne +68 -> 332
    //   267: invokestatic 105	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   270: sipush 153
    //   273: invokevirtual 109	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:report	(I)V
    //   276: invokestatic 105	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   279: sipush 3091
    //   282: invokevirtual 109	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:report	(I)V
    //   285: aload_0
    //   286: getfield 16	com/xiaomi/gamecenter/sdk/ay:a	Landroid/app/Activity;
    //   289: invokestatic 149	com/xiaomi/gamecenter/sdk/SDKAccountUtil:b	(Landroid/content/Context;)V
    //   292: aload_0
    //   293: getfield 20	com/xiaomi/gamecenter/sdk/ay:c	Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;
    //   296: iload_1
    //   297: invokeinterface 114 2 0
    //   302: aload_2
    //   303: new 151	java/lang/StringBuilder
    //   306: dup
    //   307: ldc -103
    //   309: invokespecial 156	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   312: iload_1
    //   313: invokevirtual 160	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   316: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   319: invokevirtual 166	com/xiaomi/gamecenter/sdk/MiCommplatform:sendLogToSDKSerivce	(Ljava/lang/String;)V
    //   322: aload_2
    //   323: iconst_0
    //   324: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   327: aload_2
    //   328: invokevirtual 117	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   331: return
    //   332: invokestatic 105	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   335: sipush 154
    //   338: invokevirtual 109	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:report	(I)V
    //   341: goto -49 -> 292
    //   344: astore_3
    //   345: aload_2
    //   346: new 151	java/lang/StringBuilder
    //   349: dup
    //   350: ldc -88
    //   352: invokespecial 156	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   355: aload_3
    //   356: invokevirtual 169	java/lang/Exception:toString	()Ljava/lang/String;
    //   359: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   365: invokevirtual 166	com/xiaomi/gamecenter/sdk/MiCommplatform:sendLogToSDKSerivce	(Ljava/lang/String;)V
    //   368: aload_3
    //   369: invokevirtual 120	java/lang/Exception:printStackTrace	()V
    //   372: aload_2
    //   373: iconst_0
    //   374: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   377: invokestatic 105	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   380: sipush 154
    //   383: invokevirtual 109	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:report	(I)V
    //   386: aload_0
    //   387: getfield 20	com/xiaomi/gamecenter/sdk/ay:c	Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;
    //   390: sipush 47533
    //   393: invokeinterface 114 2 0
    //   398: aload_2
    //   399: iconst_0
    //   400: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   403: aload_2
    //   404: invokevirtual 117	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   407: return
    //   408: astore_3
    //   409: aload_3
    //   410: invokevirtual 120	java/lang/Exception:printStackTrace	()V
    //   413: goto -15 -> 398
    //   416: astore_3
    //   417: aload_2
    //   418: iconst_0
    //   419: invokevirtual 100	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   422: aload_2
    //   423: invokevirtual 117	com/xiaomi/gamecenter/sdk/MiCommplatform:disconnect	()V
    //   426: aload_3
    //   427: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	428	0	this	ay
    //   199	114	1	i	int
    //   3	118	2	localObject1	Object
    //   125	298	2	localException1	Exception
    //   47	3	3	localComponentName	android.content.ComponentName
    //   344	25	3	localException2	Exception
    //   408	2	3	localException3	Exception
    //   416	11	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   48	75	125	java/lang/Exception
    //   79	115	344	java/lang/Exception
    //   133	171	344	java/lang/Exception
    //   181	209	344	java/lang/Exception
    //   216	241	344	java/lang/Exception
    //   251	263	344	java/lang/Exception
    //   267	292	344	java/lang/Exception
    //   292	322	344	java/lang/Exception
    //   332	341	344	java/lang/Exception
    //   372	398	408	java/lang/Exception
    //   79	115	416	finally
    //   133	171	416	finally
    //   181	209	416	finally
    //   216	241	416	finally
    //   251	263	416	finally
    //   267	292	416	finally
    //   292	322	416	finally
    //   332	341	416	finally
    //   345	372	416	finally
    //   372	398	416	finally
    //   409	413	416	finally
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */