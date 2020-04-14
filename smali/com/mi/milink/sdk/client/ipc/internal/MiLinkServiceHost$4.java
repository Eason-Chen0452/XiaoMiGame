package com.mi.milink.sdk.client.ipc.internal;

class MiLinkServiceHost$4
  implements Runnable
{
  MiLinkServiceHost$4(MiLinkServiceHost paramMiLinkServiceHost) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   4: iconst_1
    //   5: invokestatic 27	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:access$102	(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Z)Z
    //   8: pop
    //   9: invokestatic 33	java/lang/System:currentTimeMillis	()J
    //   12: lstore 4
    //   14: iconst_0
    //   15: istore_3
    //   16: aload_0
    //   17: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   20: getfield 37	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:remoteService	Lcom/mi/milink/sdk/aidl/IService;
    //   23: ifnonnull +210 -> 233
    //   26: iload_3
    //   27: iconst_2
    //   28: if_icmpge +205 -> 233
    //   31: ldc 39
    //   33: new 41	java/lang/StringBuilder
    //   36: dup
    //   37: ldc 43
    //   39: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: iload_3
    //   43: invokevirtual 50	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   46: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: invokestatic 60	com/mi/milink/sdk/client/ipc/ClientLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: iconst_0
    //   53: istore_1
    //   54: aload_0
    //   55: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   58: getfield 37	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:remoteService	Lcom/mi/milink/sdk/aidl/IService;
    //   61: ifnonnull +145 -> 206
    //   64: iload_1
    //   65: iconst_1
    //   66: iadd
    //   67: istore_2
    //   68: iload_1
    //   69: iconst_3
    //   70: if_icmpge +136 -> 206
    //   73: ldc 39
    //   75: new 41	java/lang/StringBuilder
    //   78: dup
    //   79: ldc 62
    //   81: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: iload_2
    //   85: invokevirtual 50	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   88: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokestatic 60	com/mi/milink/sdk/client/ipc/ClientLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   94: aload_0
    //   95: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   98: iconst_0
    //   99: invokestatic 65	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:access$202	(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Z)Z
    //   102: pop
    //   103: aload_0
    //   104: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   107: getstatic 71	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason:Restart	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;
    //   110: invokestatic 75	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:access$300	(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)Z
    //   113: ifeq +82 -> 195
    //   116: aload_0
    //   117: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   120: invokestatic 79	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:access$400	(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)Ljava/lang/Object;
    //   123: astore 6
    //   125: aload 6
    //   127: monitorenter
    //   128: aload_0
    //   129: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   132: invokestatic 79	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:access$400	(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)Ljava/lang/Object;
    //   135: ldc2_w 80
    //   138: invokevirtual 85	java/lang/Object:wait	(J)V
    //   141: aload 6
    //   143: monitorexit
    //   144: iload_2
    //   145: istore_1
    //   146: goto -92 -> 54
    //   149: astore 7
    //   151: aload 6
    //   153: monitorexit
    //   154: aload 7
    //   156: athrow
    //   157: astore 6
    //   159: ldc 39
    //   161: new 41	java/lang/StringBuilder
    //   164: dup
    //   165: ldc 87
    //   167: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   170: aload 6
    //   172: invokevirtual 90	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   175: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   181: invokestatic 60	com/mi/milink/sdk/client/ipc/ClientLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   184: ldc2_w 80
    //   187: invokestatic 98	android/os/SystemClock:sleep	(J)V
    //   190: iload_2
    //   191: istore_1
    //   192: goto -138 -> 54
    //   195: ldc2_w 99
    //   198: invokestatic 98	android/os/SystemClock:sleep	(J)V
    //   201: iload_2
    //   202: istore_1
    //   203: goto -149 -> 54
    //   206: aload_0
    //   207: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   210: getfield 37	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:remoteService	Lcom/mi/milink/sdk/aidl/IService;
    //   213: ifnonnull -197 -> 16
    //   216: iload_3
    //   217: iconst_1
    //   218: iadd
    //   219: istore_3
    //   220: aload_0
    //   221: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   224: getstatic 103	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason:UserCall	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;
    //   227: invokestatic 107	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:access$500	(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V
    //   230: goto -214 -> 16
    //   233: aload_0
    //   234: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   237: getfield 37	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:remoteService	Lcom/mi/milink/sdk/aidl/IService;
    //   240: ifnonnull +63 -> 303
    //   243: ldc 39
    //   245: new 41	java/lang/StringBuilder
    //   248: dup
    //   249: ldc 109
    //   251: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: iload_3
    //   255: invokevirtual 50	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   258: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   261: invokestatic 60	com/mi/milink/sdk/client/ipc/ClientLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   264: invokestatic 112	com/mi/milink/sdk/client/ipc/ClientLog:generateSystemLog	()V
    //   267: invokestatic 118	com/mi/milink/sdk/debug/MiLinkMonitor:getInstance	()Lcom/mi/milink/sdk/debug/MiLinkMonitor;
    //   270: ldc 120
    //   272: iconst_0
    //   273: ldc 122
    //   275: iconst_1
    //   276: lload 4
    //   278: invokestatic 33	java/lang/System:currentTimeMillis	()J
    //   281: iconst_0
    //   282: iconst_0
    //   283: iconst_0
    //   284: invokevirtual 126	com/mi/milink/sdk/debug/MiLinkMonitor:trace	(Ljava/lang/String;ILjava/lang/String;IJJIII)V
    //   287: invokestatic 118	com/mi/milink/sdk/debug/MiLinkMonitor:getInstance	()Lcom/mi/milink/sdk/debug/MiLinkMonitor;
    //   290: invokevirtual 129	com/mi/milink/sdk/debug/MiLinkMonitor:doPostDataAtOnce	()V
    //   293: aload_0
    //   294: getfield 12	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4:this$0	Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
    //   297: iconst_0
    //   298: invokestatic 27	com/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost:access$102	(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Z)Z
    //   301: pop
    //   302: return
    //   303: invokestatic 118	com/mi/milink/sdk/debug/MiLinkMonitor:getInstance	()Lcom/mi/milink/sdk/debug/MiLinkMonitor;
    //   306: ldc 120
    //   308: iconst_0
    //   309: ldc 122
    //   311: iconst_0
    //   312: lload 4
    //   314: invokestatic 33	java/lang/System:currentTimeMillis	()J
    //   317: iconst_0
    //   318: iconst_0
    //   319: iconst_0
    //   320: invokevirtual 126	com/mi/milink/sdk/debug/MiLinkMonitor:trace	(Ljava/lang/String;ILjava/lang/String;IJJIII)V
    //   323: goto -30 -> 293
    //   326: astore 7
    //   328: goto -187 -> 141
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	331	0	this	4
    //   53	150	1	i	int
    //   67	135	2	j	int
    //   15	240	3	k	int
    //   12	301	4	l	long
    //   157	14	6	localException	Exception
    //   149	6	7	localObject2	Object
    //   326	1	7	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   128	141	149	finally
    //   141	144	149	finally
    //   151	154	149	finally
    //   94	128	157	java/lang/Exception
    //   154	157	157	java/lang/Exception
    //   195	201	157	java/lang/Exception
    //   128	141	326	java/lang/InterruptedException
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\internal\MiLinkServiceHost$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */