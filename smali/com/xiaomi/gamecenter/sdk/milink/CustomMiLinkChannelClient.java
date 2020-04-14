package com.xiaomi.gamecenter.sdk.milink;

import com.mi.milink.sdk.client.MiLinkChannelClient;

public class CustomMiLinkChannelClient
  extends MiLinkChannelClient
{
  /* Error */
  public com.mi.milink.sdk.aidl.PacketData sendDataBySimpleChannel(com.mi.milink.sdk.aidl.PacketData paramPacketData, int paramInt)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +13 -> 14
    //   4: new 23	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 25
    //   10: invokespecial 28	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_1
    //   15: invokevirtual 34	com/mi/milink/sdk/aidl/PacketData:getCommand	()Ljava/lang/String;
    //   18: invokestatic 40	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   21: ifeq +13 -> 34
    //   24: new 23	java/lang/IllegalArgumentException
    //   27: dup
    //   28: ldc 42
    //   30: invokespecial 28	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   33: athrow
    //   34: new 44	com/xiaomi/gamecenter/sdk/milink/a
    //   37: dup
    //   38: aload_0
    //   39: aload_1
    //   40: iload_2
    //   41: invokespecial 47	com/xiaomi/gamecenter/sdk/milink/a:<init>	(Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;Lcom/mi/milink/sdk/aidl/PacketData;I)V
    //   44: invokevirtual 51	com/xiaomi/gamecenter/sdk/milink/a:start	()Lcom/mi/milink/sdk/base/MessageTask;
    //   47: astore_1
    //   48: iload_2
    //   49: sipush 5000
    //   52: iadd
    //   53: i2l
    //   54: lstore_3
    //   55: aload_1
    //   56: lload_3
    //   57: getstatic 57	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   60: invokevirtual 63	com/mi/milink/sdk/base/MessageTask:getChannelResult	(JLjava/util/concurrent/TimeUnit;)Lcom/mi/milink/sdk/aidl/PacketData;
    //   63: astore_1
    //   64: aload_1
    //   65: areturn
    //   66: astore 5
    //   68: aload 5
    //   70: invokevirtual 69	java/lang/Object:getClass	()Ljava/lang/Class;
    //   73: invokevirtual 74	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   76: astore_1
    //   77: ldc 76
    //   79: ldc 78
    //   81: aload 5
    //   83: invokestatic 84	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   86: aload_1
    //   87: invokestatic 40	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   90: ifne +10 -> 100
    //   93: aload_1
    //   94: ldc 86
    //   96: invokestatic 92	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   99: pop
    //   100: invokestatic 98	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   103: sipush 7527
    //   106: invokevirtual 102	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:xmsdkReport	(I)V
    //   109: aconst_null
    //   110: areturn
    //   111: astore 5
    //   113: aload 5
    //   115: invokevirtual 69	java/lang/Object:getClass	()Ljava/lang/Class;
    //   118: invokevirtual 74	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   121: astore_1
    //   122: aload 5
    //   124: invokevirtual 106	java/util/concurrent/ExecutionException:getCause	()Ljava/lang/Throwable;
    //   127: astore 6
    //   129: aload 6
    //   131: ifnull +23 -> 154
    //   134: aload 6
    //   136: instanceof 108
    //   139: ifeq +15 -> 154
    //   142: ldc 76
    //   144: ldc 110
    //   146: aload 6
    //   148: invokestatic 84	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   151: goto -65 -> 86
    //   154: ldc 76
    //   156: ldc 112
    //   158: aload 5
    //   160: invokestatic 84	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   163: goto -77 -> 86
    //   166: astore 5
    //   168: aload 5
    //   170: invokevirtual 69	java/lang/Object:getClass	()Ljava/lang/Class;
    //   173: invokevirtual 74	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   176: astore_1
    //   177: ldc 76
    //   179: ldc 114
    //   181: aload 5
    //   183: invokestatic 84	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   186: goto -100 -> 86
    //   189: astore 5
    //   191: aload 5
    //   193: invokevirtual 69	java/lang/Object:getClass	()Ljava/lang/Class;
    //   196: invokevirtual 74	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   199: astore_1
    //   200: ldc 76
    //   202: new 116	java/lang/StringBuilder
    //   205: dup
    //   206: ldc 118
    //   208: invokespecial 119	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   211: aload 5
    //   213: invokevirtual 69	java/lang/Object:getClass	()Ljava/lang/Class;
    //   216: invokevirtual 122	java/lang/Class:getName	()Ljava/lang/String;
    //   219: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   225: invokestatic 132	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   228: goto -142 -> 86
    //   231: astore_1
    //   232: aload_1
    //   233: invokevirtual 135	java/lang/Throwable:printStackTrace	()V
    //   236: goto -136 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	239	0	this	CustomMiLinkChannelClient
    //   0	239	1	paramPacketData	com.mi.milink.sdk.aidl.PacketData
    //   0	239	2	paramInt	int
    //   54	3	3	l	long
    //   66	16	5	localInterruptedException	InterruptedException
    //   111	48	5	localExecutionException	java.util.concurrent.ExecutionException
    //   166	16	5	localCancellationException	java.util.concurrent.CancellationException
    //   189	23	5	localTimeoutException	java.util.concurrent.TimeoutException
    //   127	20	6	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   55	64	66	java/lang/InterruptedException
    //   55	64	111	java/util/concurrent/ExecutionException
    //   55	64	166	java/util/concurrent/CancellationException
    //   55	64	189	java/util/concurrent/TimeoutException
    //   93	100	231	java/lang/Throwable
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\CustomMiLinkChannelClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */