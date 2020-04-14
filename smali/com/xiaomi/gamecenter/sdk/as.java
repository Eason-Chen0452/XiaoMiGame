package com.xiaomi.gamecenter.sdk;

import android.app.Activity;

final class as
  implements Runnable
{
  as(Activity paramActivity, OnLoginProcessListener paramOnLoginProcessListener) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: iconst_0
    //   1: newarray <illegal type>
    //   3: astore_3
    //   4: new 29	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction
    //   7: dup
    //   8: invokespecial 30	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:<init>	()V
    //   11: astore_2
    //   12: aload_2
    //   13: getfield 33	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:c	Landroid/os/Bundle;
    //   16: ldc 35
    //   18: aload_0
    //   19: getfield 16	com/xiaomi/gamecenter/sdk/as:a	Z
    //   22: invokevirtual 41	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   25: aload_2
    //   26: getfield 33	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:c	Landroid/os/Bundle;
    //   29: ldc 43
    //   31: getstatic 48	com/xiaomi/gamecenter/sdk/SDKAccountUtil:a	Ljava/lang/String;
    //   34: invokevirtual 52	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: aload_0
    //   38: getfield 18	com/xiaomi/gamecenter/sdk/as:b	Landroid/app/Activity;
    //   41: getstatic 57	com/xiaomi/gamecenter/sdk/ui/MiClassKey:d	Ljava/lang/String;
    //   44: aload_2
    //   45: new 59	com/xiaomi/gamecenter/sdk/at
    //   48: dup
    //   49: aload_0
    //   50: aload_2
    //   51: aload_3
    //   52: invokespecial 62	com/xiaomi/gamecenter/sdk/at:<init>	(Lcom/xiaomi/gamecenter/sdk/as;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;[B)V
    //   55: invokestatic 67	com/xiaomi/gamecenter/sdk/ui/ActionTransfor:a	(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;)V
    //   58: aload_3
    //   59: monitorenter
    //   60: aload_3
    //   61: invokevirtual 70	java/lang/Object:wait	()V
    //   64: aload_3
    //   65: monitorexit
    //   66: aload_2
    //   67: getfield 33	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:c	Landroid/os/Bundle;
    //   70: ldc 72
    //   72: invokevirtual 76	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   75: checkcast 78	com/xiaomi/gamecenter/sdk/entry/MiAccountInfo
    //   78: astore_3
    //   79: aload_2
    //   80: getfield 33	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:c	Landroid/os/Bundle;
    //   83: ldc 80
    //   85: invokevirtual 84	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   88: istore_1
    //   89: aload_3
    //   90: ifnonnull +117 -> 207
    //   93: aload_2
    //   94: getfield 87	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:d	I
    //   97: bipush -15
    //   99: if_icmpne +30 -> 129
    //   102: invokestatic 93	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   105: iconst_0
    //   106: invokevirtual 97	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   109: invokestatic 93	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   112: getstatic 100	com/xiaomi/gamecenter/sdk/MiCommplatform:sLoginActivity	Landroid/app/Activity;
    //   115: getstatic 103	com/xiaomi/gamecenter/sdk/MiCommplatform:sOnLoginProcessListener	Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;
    //   118: ldc 105
    //   120: invokevirtual 109	com/xiaomi/gamecenter/sdk/MiCommplatform:miLogin	(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V
    //   123: return
    //   124: astore_2
    //   125: aload_3
    //   126: monitorexit
    //   127: aload_2
    //   128: athrow
    //   129: aload_2
    //   130: getfield 87	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:d	I
    //   133: bipush -16
    //   135: if_icmpne +25 -> 160
    //   138: invokestatic 93	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   141: iconst_0
    //   142: invokevirtual 97	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   145: invokestatic 93	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   148: getstatic 100	com/xiaomi/gamecenter/sdk/MiCommplatform:sLoginActivity	Landroid/app/Activity;
    //   151: getstatic 103	com/xiaomi/gamecenter/sdk/MiCommplatform:sOnLoginProcessListener	Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;
    //   154: ldc 111
    //   156: invokevirtual 109	com/xiaomi/gamecenter/sdk/MiCommplatform:miLogin	(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V
    //   159: return
    //   160: invokestatic 116	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   163: sipush 2047
    //   166: invokevirtual 120	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:xmsdkReport	(I)V
    //   169: invokestatic 93	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   172: iconst_0
    //   173: invokevirtual 97	com/xiaomi/gamecenter/sdk/MiCommplatform:setTouch	(Z)V
    //   176: aload_3
    //   177: ifnonnull +191 -> 368
    //   180: iconst_0
    //   181: putstatic 123	com/xiaomi/gamecenter/sdk/MiCommplatform:IS_LOGGED_IN	Z
    //   184: ldc 125
    //   186: ldc 127
    //   188: invokestatic 133	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   191: pop
    //   192: aload_0
    //   193: getfield 20	com/xiaomi/gamecenter/sdk/as:c	Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;
    //   196: aload_2
    //   197: getfield 87	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:d	I
    //   200: aload_3
    //   201: invokeinterface 139 3 0
    //   206: return
    //   207: aload_2
    //   208: getfield 87	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:d	I
    //   211: ifne +125 -> 336
    //   214: ldc -115
    //   216: new 143	java/lang/StringBuilder
    //   219: dup
    //   220: ldc -111
    //   222: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   225: aload_0
    //   226: getfield 18	com/xiaomi/gamecenter/sdk/as:b	Landroid/app/Activity;
    //   229: invokevirtual 154	android/app/Activity:getPackageName	()Ljava/lang/String;
    //   232: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: ldc -96
    //   237: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: aload_2
    //   241: getfield 87	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:d	I
    //   244: invokevirtual 163	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   247: invokevirtual 166	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   250: invokestatic 133	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   253: pop
    //   254: aload_0
    //   255: getfield 18	com/xiaomi/gamecenter/sdk/as:b	Landroid/app/Activity;
    //   258: bipush 20
    //   260: aload_3
    //   261: invokevirtual 169	com/xiaomi/gamecenter/sdk/entry/MiAccountInfo:getUid	()Ljava/lang/String;
    //   264: iconst_1
    //   265: invokestatic 173	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:FastXmsdkReport	(Landroid/content/Context;ILjava/lang/String;Z)V
    //   268: invokestatic 116	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   271: bipush 20
    //   273: iload_1
    //   274: invokestatic 179	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   277: iconst_1
    //   278: invokevirtual 182	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:xmsdkReport	(ILjava/lang/String;Z)V
    //   281: invokestatic 116	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   284: sipush 2045
    //   287: invokevirtual 120	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:xmsdkReport	(I)V
    //   290: invokestatic 116	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   293: aload_3
    //   294: invokevirtual 169	com/xiaomi/gamecenter/sdk/entry/MiAccountInfo:getUid	()Ljava/lang/String;
    //   297: invokevirtual 185	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:xmsdkReportOpenId	(Ljava/lang/String;)V
    //   300: invokestatic 93	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   303: invokevirtual 189	com/xiaomi/gamecenter/sdk/MiCommplatform:getMiAppInfo	()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    //   306: aload_3
    //   307: invokevirtual 195	com/xiaomi/gamecenter/sdk/entry/MiAppInfo:setAccount	(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    //   310: invokestatic 200	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;
    //   313: aconst_null
    //   314: invokevirtual 203	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:a	(Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;)V
    //   317: invokestatic 208	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;
    //   320: invokevirtual 211	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager:k	()V
    //   323: goto -154 -> 169
    //   326: astore 4
    //   328: aload 4
    //   330: invokevirtual 214	java/lang/Exception:printStackTrace	()V
    //   333: goto -79 -> 254
    //   336: aload_2
    //   337: getfield 87	com/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction:d	I
    //   340: bipush -12
    //   342: if_icmpne +14 -> 356
    //   345: invokestatic 116	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   348: bipush 10
    //   350: invokevirtual 120	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:xmsdkReport	(I)V
    //   353: goto -184 -> 169
    //   356: invokestatic 116	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   359: sipush 2046
    //   362: invokevirtual 120	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:xmsdkReport	(I)V
    //   365: goto -196 -> 169
    //   368: iconst_1
    //   369: putstatic 123	com/xiaomi/gamecenter/sdk/MiCommplatform:IS_LOGGED_IN	Z
    //   372: ldc 125
    //   374: ldc -40
    //   376: invokestatic 133	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   379: pop
    //   380: goto -188 -> 192
    //   383: astore 4
    //   385: goto -321 -> 64
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	388	0	this	as
    //   88	186	1	i	int
    //   11	83	2	localDataAction	com.xiaomi.gamecenter.sdk.ui.ActionTransfor.DataAction
    //   124	213	2	localObject1	Object
    //   3	304	3	localObject2	Object
    //   326	3	4	localException1	Exception
    //   383	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   60	64	124	finally
    //   64	66	124	finally
    //   125	127	124	finally
    //   214	254	326	java/lang/Exception
    //   60	64	383	java/lang/Exception
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */