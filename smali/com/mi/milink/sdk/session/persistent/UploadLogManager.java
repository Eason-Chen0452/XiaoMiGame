package com.mi.milink.sdk.session.persistent;

public class UploadLogManager
{
  public static final String TAG = "UploadLogManager";
  static Object lock = new Object();
  static long mLastUploadTime;
  static SessionForUploadLog mSessionForUploadLog = null;
  static boolean uploadStatus;
  static boolean uploading = false;
  
  static
  {
    mLastUploadTime = 0L;
    uploadStatus = false;
  }
  
  /* Error */
  public static boolean uploadMilinkLog(com.mi.milink.sdk.proto.PushPacketProto.MilinkLogReq arg0, com.mi.milink.sdk.account.IAccount paramIAccount, boolean paramBoolean)
  {
    // Byte code:
    //   0: getstatic 32	com/mi/milink/sdk/session/persistent/UploadLogManager:uploading	Z
    //   3: ifeq +12 -> 15
    //   6: ldc 8
    //   8: ldc 39
    //   10: invokestatic 45	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   13: iconst_0
    //   14: ireturn
    //   15: iconst_1
    //   16: putstatic 32	com/mi/milink/sdk/session/persistent/UploadLogManager:uploading	Z
    //   19: iconst_0
    //   20: putstatic 25	com/mi/milink/sdk/session/persistent/UploadLogManager:uploadStatus	Z
    //   23: ldc 8
    //   25: ldc 47
    //   27: invokestatic 45	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   30: invokestatic 53	java/lang/System:currentTimeMillis	()J
    //   33: lstore_3
    //   34: invokestatic 59	com/mi/milink/sdk/base/os/info/NetworkDash:isWifi	()Z
    //   37: ifne +28 -> 65
    //   40: lload_3
    //   41: getstatic 23	com/mi/milink/sdk/session/persistent/UploadLogManager:mLastUploadTime	J
    //   44: lsub
    //   45: ldc2_w 60
    //   48: lcmp
    //   49: ifge +41 -> 90
    //   52: iload_2
    //   53: ifne +37 -> 90
    //   56: ldc 8
    //   58: ldc 63
    //   60: invokestatic 45	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   63: iconst_0
    //   64: ireturn
    //   65: lload_3
    //   66: getstatic 23	com/mi/milink/sdk/session/persistent/UploadLogManager:mLastUploadTime	J
    //   69: lsub
    //   70: ldc2_w 64
    //   73: lcmp
    //   74: ifge +16 -> 90
    //   77: iload_2
    //   78: ifne +12 -> 90
    //   81: ldc 8
    //   83: ldc 67
    //   85: invokestatic 45	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   88: iconst_0
    //   89: ireturn
    //   90: getstatic 21	com/mi/milink/sdk/session/persistent/UploadLogManager:mSessionForUploadLog	Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;
    //   93: ifnull +10 -> 103
    //   96: getstatic 21	com/mi/milink/sdk/session/persistent/UploadLogManager:mSessionForUploadLog	Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;
    //   99: invokevirtual 72	com/mi/milink/sdk/session/persistent/SessionForUploadLog:close	()Z
    //   102: pop
    //   103: new 69	com/mi/milink/sdk/session/persistent/SessionForUploadLog
    //   106: dup
    //   107: aload_0
    //   108: aload_1
    //   109: new 74	com/mi/milink/sdk/session/persistent/UploadLogManager$1
    //   112: dup
    //   113: invokespecial 75	com/mi/milink/sdk/session/persistent/UploadLogManager$1:<init>	()V
    //   116: invokespecial 78	com/mi/milink/sdk/session/persistent/SessionForUploadLog:<init>	(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Lcom/mi/milink/sdk/account/IAccount;Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;)V
    //   119: astore_0
    //   120: aload_0
    //   121: putstatic 21	com/mi/milink/sdk/session/persistent/UploadLogManager:mSessionForUploadLog	Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;
    //   124: aload_0
    //   125: invokevirtual 81	com/mi/milink/sdk/session/persistent/SessionForUploadLog:openSession	()Z
    //   128: pop
    //   129: getstatic 30	com/mi/milink/sdk/session/persistent/UploadLogManager:lock	Ljava/lang/Object;
    //   132: astore_0
    //   133: aload_0
    //   134: monitorenter
    //   135: ldc 8
    //   137: ldc 83
    //   139: invokestatic 86	com/mi/milink/sdk/debug/MiLinkLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   142: getstatic 30	com/mi/milink/sdk/session/persistent/UploadLogManager:lock	Ljava/lang/Object;
    //   145: ldc2_w 87
    //   148: invokevirtual 92	java/lang/Object:wait	(J)V
    //   151: aload_0
    //   152: monitorexit
    //   153: getstatic 21	com/mi/milink/sdk/session/persistent/UploadLogManager:mSessionForUploadLog	Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;
    //   156: ifnull +10 -> 166
    //   159: getstatic 21	com/mi/milink/sdk/session/persistent/UploadLogManager:mSessionForUploadLog	Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;
    //   162: invokevirtual 72	com/mi/milink/sdk/session/persistent/SessionForUploadLog:close	()Z
    //   165: pop
    //   166: aconst_null
    //   167: putstatic 21	com/mi/milink/sdk/session/persistent/UploadLogManager:mSessionForUploadLog	Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;
    //   170: iconst_0
    //   171: putstatic 32	com/mi/milink/sdk/session/persistent/UploadLogManager:uploading	Z
    //   174: ldc 8
    //   176: new 94	java/lang/StringBuilder
    //   179: dup
    //   180: ldc 96
    //   182: invokespecial 99	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: getstatic 25	com/mi/milink/sdk/session/persistent/UploadLogManager:uploadStatus	Z
    //   188: invokevirtual 103	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   191: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 86	com/mi/milink/sdk/debug/MiLinkLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   197: getstatic 25	com/mi/milink/sdk/session/persistent/UploadLogManager:uploadStatus	Z
    //   200: ireturn
    //   201: astore_1
    //   202: aload_0
    //   203: monitorexit
    //   204: aload_1
    //   205: athrow
    //   206: astore_0
    //   207: ldc 8
    //   209: aload_0
    //   210: invokestatic 110	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   213: goto -60 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	216	1	paramIAccount	com.mi.milink.sdk.account.IAccount
    //   0	216	2	paramBoolean	boolean
    //   33	33	3	l	long
    // Exception table:
    //   from	to	target	type
    //   135	153	201	finally
    //   202	204	201	finally
    //   129	135	206	java/lang/InterruptedException
    //   204	206	206	java/lang/InterruptedException
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\UploadLogManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */