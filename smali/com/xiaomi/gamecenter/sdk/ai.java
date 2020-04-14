package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow.MiFloatManager;
import com.xiaomi.gamecenter.sdk.ui.mifloat.menu.a;
import com.xiaomi.gamecenter.sdk.ui.mifloat.message.MiMsgEntity;
import com.xiaomi.gamecenter.sdk.ui.mifloat.message.MiMsgManager;
import com.xiaomi.gamecenter.sdk.ui.mifloat.message.c;

final class ai
  implements c
{
  private boolean c = false;
  
  ai(MiCommplatform paramMiCommplatform, Activity paramActivity) {}
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: ldc 28
    //   2: ldc 30
    //   4: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: iconst_0
    //   9: putfield 23	com/xiaomi/gamecenter/sdk/ai:c	Z
    //   12: invokestatic 40	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;
    //   15: invokevirtual 43	com/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager:d	()V
    //   18: invokestatic 49	com/xiaomi/gamecenter/sdk/MiCommplatform:access$700	()Landroid/content/Context;
    //   21: astore_3
    //   22: ldc 51
    //   24: ldc 53
    //   26: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   29: aload_3
    //   30: ifnull +402 -> 432
    //   33: invokestatic 57	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   36: invokevirtual 61	com/xiaomi/gamecenter/sdk/MiCommplatform:getMiAppInfo	()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    //   39: astore 4
    //   41: invokestatic 66	com/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper:a	()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;
    //   44: pop
    //   45: aload 4
    //   47: invokevirtual 72	com/xiaomi/gamecenter/sdk/entry/MiAppInfo:getAppId	()Ljava/lang/String;
    //   50: invokestatic 75	com/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper:a	(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    //   53: astore 5
    //   55: aconst_null
    //   56: astore_2
    //   57: aload 4
    //   59: invokevirtual 72	com/xiaomi/gamecenter/sdk/entry/MiAppInfo:getAppId	()Ljava/lang/String;
    //   62: invokestatic 80	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:a	(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
    //   65: astore 6
    //   67: aload_2
    //   68: astore_1
    //   69: aload 6
    //   71: ifnull +25 -> 96
    //   74: aload_2
    //   75: astore_1
    //   76: aload 6
    //   78: invokevirtual 84	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:e	()Lcom/google/protobuf/GeneratedMessage;
    //   81: ifnull +15 -> 96
    //   84: aload 6
    //   86: invokevirtual 84	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:e	()Lcom/google/protobuf/GeneratedMessage;
    //   89: invokevirtual 90	com/google/protobuf/GeneratedMessage:toByteArray	()[B
    //   92: invokestatic 95	cn/com/wali/basetool/utils/a:a	([B)Ljava/lang/String;
    //   95: astore_1
    //   96: new 97	android/content/Intent
    //   99: dup
    //   100: invokespecial 98	android/content/Intent:<init>	()V
    //   103: astore_2
    //   104: aload_2
    //   105: ldc 100
    //   107: invokevirtual 104	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   110: pop
    //   111: aload_2
    //   112: ldc 106
    //   114: ldc 108
    //   116: invokevirtual 112	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   119: pop
    //   120: aload_2
    //   121: ldc 114
    //   123: aload 4
    //   125: invokevirtual 118	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   128: pop
    //   129: aload_2
    //   130: ldc 120
    //   132: aload_3
    //   133: invokevirtual 125	android/content/Context:getPackageName	()Ljava/lang/String;
    //   136: invokevirtual 127	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   139: pop
    //   140: aload_2
    //   141: ldc -127
    //   143: invokestatic 134	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;
    //   146: invokevirtual 136	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:a	()Ljava/lang/String;
    //   149: invokevirtual 127	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   152: pop
    //   153: aload_2
    //   154: ldc -118
    //   156: aload_1
    //   157: invokevirtual 127	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   160: pop
    //   161: aload_2
    //   162: ldc -116
    //   164: invokestatic 134	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;
    //   167: invokevirtual 144	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:h	()J
    //   170: invokevirtual 147	android/content/Intent:putExtra	(Ljava/lang/String;J)Landroid/content/Intent;
    //   173: pop
    //   174: aload 5
    //   176: getstatic 153	com/xiaomi/gamecenter/sdk/utils/AccountType:AccountType_MI	Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    //   179: if_acmpne +219 -> 398
    //   182: aload_2
    //   183: ldc -101
    //   185: bipush 10
    //   187: invokevirtual 158	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   190: pop
    //   191: aload_2
    //   192: ldc -96
    //   194: invokestatic 134	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;
    //   197: invokevirtual 163	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:g	()Ljava/lang/String;
    //   200: invokevirtual 127	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   203: pop
    //   204: ldc 51
    //   206: new 165	java/lang/StringBuilder
    //   209: dup
    //   210: ldc -89
    //   212: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   215: aload 4
    //   217: invokevirtual 174	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   220: invokevirtual 177	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   226: ldc 51
    //   228: new 165	java/lang/StringBuilder
    //   231: dup
    //   232: ldc -77
    //   234: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   237: aload_3
    //   238: invokevirtual 125	android/content/Context:getPackageName	()Ljava/lang/String;
    //   241: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: invokevirtual 177	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   250: ldc 51
    //   252: new 165	java/lang/StringBuilder
    //   255: dup
    //   256: ldc -72
    //   258: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   261: invokestatic 134	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;
    //   264: invokevirtual 136	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:a	()Ljava/lang/String;
    //   267: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 177	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   276: ldc 51
    //   278: new 165	java/lang/StringBuilder
    //   281: dup
    //   282: ldc -70
    //   284: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   287: aload_1
    //   288: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: invokevirtual 177	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   297: ldc 51
    //   299: new 165	java/lang/StringBuilder
    //   302: dup
    //   303: ldc -68
    //   305: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   308: invokestatic 134	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;
    //   311: invokevirtual 144	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:h	()J
    //   314: invokevirtual 191	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   317: invokevirtual 177	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   320: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   323: ldc 51
    //   325: new 165	java/lang/StringBuilder
    //   328: dup
    //   329: ldc -63
    //   331: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   334: aload 5
    //   336: invokevirtual 174	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   339: invokevirtual 177	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   342: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   345: ldc 51
    //   347: new 165	java/lang/StringBuilder
    //   350: dup
    //   351: ldc -61
    //   353: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   356: invokestatic 134	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:b	()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;
    //   359: invokevirtual 163	com/xiaomi/gamecenter/sdk/ui/mifloat/utils/k:g	()Ljava/lang/String;
    //   362: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: invokevirtual 177	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   368: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   371: ldc 51
    //   373: new 165	java/lang/StringBuilder
    //   376: dup
    //   377: ldc -59
    //   379: invokespecial 170	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   382: aload_2
    //   383: invokevirtual 174	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   386: invokevirtual 177	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   389: invokestatic 35	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   392: aload_3
    //   393: aload_2
    //   394: invokevirtual 201	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   397: return
    //   398: aload_2
    //   399: ldc -101
    //   401: aload 5
    //   403: invokevirtual 205	com/xiaomi/gamecenter/sdk/utils/AccountType:ordinal	()I
    //   406: invokevirtual 158	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   409: pop
    //   410: goto -219 -> 191
    //   413: astore_1
    //   414: ldc 51
    //   416: ldc -49
    //   418: aload_1
    //   419: invokestatic 210	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   422: return
    //   423: astore_1
    //   424: ldc 28
    //   426: ldc -44
    //   428: aload_1
    //   429: invokestatic 210	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   432: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	433	0	this	ai
    //   68	220	1	localObject	Object
    //   413	6	1	localException1	Exception
    //   423	6	1	localException2	Exception
    //   56	343	2	localIntent	android.content.Intent
    //   21	372	3	localContext	android.content.Context
    //   39	177	4	localMiAppInfo	com.xiaomi.gamecenter.sdk.entry.MiAppInfo
    //   53	349	5	localAccountType	com.xiaomi.gamecenter.sdk.utils.AccountType
    //   65	20	6	localMilinkAccount	com.xiaomi.gamecenter.sdk.milink.MilinkAccount
    // Exception table:
    //   from	to	target	type
    //   33	55	413	java/lang/Exception
    //   57	67	413	java/lang/Exception
    //   76	96	413	java/lang/Exception
    //   96	191	413	java/lang/Exception
    //   191	397	413	java/lang/Exception
    //   398	410	413	java/lang/Exception
    //   7	29	423	java/lang/Exception
    //   414	422	423	java/lang/Exception
  }
  
  public final void a(MiMsgEntity paramMiMsgEntity)
  {
    Logger.a("MiGameSDK.MiCommplatform", "onReceive " + paramMiMsgEntity);
    if (paramMiMsgEntity == null) {
      return;
    }
    for (;;)
    {
      try
      {
        if ((paramMiMsgEntity.getMarqueeMsg() != null) && (!this.c))
        {
          MiMsgManager.a().b();
          MiMsgManager.a().a(paramMiMsgEntity.getMarqueeMsg());
        }
        if (paramMiMsgEntity.isMifloatPoint())
        {
          MiFloatManager.b().g();
          a.a().a(paramMiMsgEntity);
          return;
        }
      }
      catch (Exception paramMiMsgEntity)
      {
        Logger.a("MiGameSDK.MiCommplatform", "onReceive error", paramMiMsgEntity);
        return;
      }
      MiFloatManager.b().h();
    }
  }
  
  public final void b()
  {
    Logger.a("MiGameSDK.MiCommplatform", "onPageOpen");
    try
    {
      this.c = true;
      MiFloatManager.b().i();
      MiFloatManager.b().e();
      return;
    }
    catch (Exception localException)
    {
      Logger.a("MiGameSDK.MiCommplatform", "", localException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */