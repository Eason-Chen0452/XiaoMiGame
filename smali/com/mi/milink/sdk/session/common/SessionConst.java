package com.mi.milink.sdk.session.common;

import android.util.SparseArray;
import java.util.concurrent.atomic.AtomicInteger;

public class SessionConst
{
  public static final int ACC_NEED_CLIENT_RETRY_TIMES = 1;
  public static final int BACKUP_IP = 5;
  public static final int CDN_IP = 6;
  public static final String CDN_PICTURE_URL = "http://d.g.mi.com/t.html";
  public static final int CONN_FAILED = 1;
  public static final int CONTINUOUS_RECV_TIMEOUT_PACKAGE_MAX_COUNT = 3;
  public static final int DOMAIN_IP = 4;
  public static final String ERROR_MSG = "ERROR_MSG";
  public static final int HANDSHAKE_OTHERERROR_FAILED = 2;
  public static final int HANDSHAKE_PACKERROR_FAILED = 3;
  public static final byte HEART_BEAT_SCENE_AFTER_HANDSHAKE_NORMAL = 2;
  public static final byte HEART_BEAT_SCENE_AFTER_HANDSHAKE_START = 1;
  public static final byte HEART_BEAT_SCENE_EXIT_POWERSAVING = 5;
  public static final byte HEART_BEAT_SCENE_LONG_TIMEOUT = 4;
  public static final byte HEART_BEAT_SCENE_SHORT_TIMEOUT = 3;
  public static final int NONE_CONNECTION_TYPE = 0;
  public static final int OPTI_IP = 1;
  public static final int PACKET_TYPE_DOWNSTREAM = 0;
  public static final int PACKET_TYPE_TLV = 1;
  public static final int RECENTLY_IP = 3;
  public static final int REDIRECT_IP = 2;
  public static final int SCORE_IP = 8;
  private static final String TAG = "SessionConst";
  public static final int TCP_CONNECTION_TYPE = 1;
  public static final int TEST_IP = 7;
  private static final int TEST_PIC_CONNECT_TIMEOUT = 5000;
  public static final int TEST_PIC_FAIL = 1;
  public static final int TEST_PIC_NEED_REDIRECT = 2;
  public static final int TEST_PIC_OK = 0;
  private static final int TEST_PIC_READ_TIMEOUT = 15000;
  public static final int TIME_OUT_MAX_RETRY_TIMES = 2;
  private static SparseArray<String> conTypeMap;
  private static volatile boolean sIsNewApn;
  private static SparseArray<String> serverTypeMap;
  private static AtomicInteger uniqueSessionNO = new AtomicInteger(1);
  
  static
  {
    sIsNewApn = true;
    conTypeMap = new SparseArray();
    serverTypeMap = new SparseArray();
    conTypeMap.put(0, "none");
    conTypeMap.put(1, "tcp");
    serverTypeMap.put(1, "opt");
    serverTypeMap.put(2, "redirect");
    serverTypeMap.put(3, "recently");
    serverTypeMap.put(4, "dns");
    serverTypeMap.put(5, "bak");
    serverTypeMap.put(6, "cdn");
    serverTypeMap.put(7, "test");
  }
  
  public static int generateSessionNO()
  {
    return uniqueSessionNO.getAndIncrement();
  }
  
  public static String getProtocol(int paramInt)
  {
    return (String)conTypeMap.get(paramInt);
  }
  
  public static String getSeverType(int paramInt)
  {
    return (String)serverTypeMap.get(paramInt);
  }
  
  /* Error */
  public static boolean isInternetAvailable()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 126	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   9: astore_1
    //   10: aload_1
    //   11: ldc 15
    //   13: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: pop
    //   17: aload_1
    //   18: ldc -123
    //   20: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: pop
    //   24: aload_1
    //   25: invokestatic 139	java/lang/System:currentTimeMillis	()J
    //   28: invokevirtual 142	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   31: pop
    //   32: new 144	java/net/URL
    //   35: dup
    //   36: aload_1
    //   37: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokespecial 151	java/net/URL:<init>	(Ljava/lang/String;)V
    //   43: invokevirtual 155	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   46: checkcast 157	java/net/HttpURLConnection
    //   49: astore_2
    //   50: aload_2
    //   51: astore_1
    //   52: aload_2
    //   53: sipush 5000
    //   56: invokevirtual 160	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   59: aload_2
    //   60: astore_1
    //   61: aload_2
    //   62: sipush 15000
    //   65: invokevirtual 163	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   68: aload_2
    //   69: astore_1
    //   70: aload_2
    //   71: ldc -91
    //   73: invokevirtual 168	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   76: aload_2
    //   77: astore_1
    //   78: aload_2
    //   79: ldc -86
    //   81: ldc -84
    //   83: invokevirtual 176	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: aload_2
    //   87: astore_1
    //   88: aload_2
    //   89: iconst_0
    //   90: invokevirtual 180	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   93: aload_2
    //   94: astore_1
    //   95: aload_2
    //   96: iconst_0
    //   97: invokevirtual 183	java/net/HttpURLConnection:setDefaultUseCaches	(Z)V
    //   100: aload_2
    //   101: astore_1
    //   102: aload_2
    //   103: iconst_1
    //   104: invokevirtual 186	java/net/HttpURLConnection:setDoInput	(Z)V
    //   107: aload_2
    //   108: astore_1
    //   109: aload_2
    //   110: invokevirtual 189	java/net/HttpURLConnection:connect	()V
    //   113: aload_2
    //   114: astore_1
    //   115: new 191	java/io/BufferedReader
    //   118: dup
    //   119: new 193	java/io/InputStreamReader
    //   122: dup
    //   123: aload_2
    //   124: invokevirtual 197	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   127: invokespecial 200	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   130: invokespecial 203	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   133: astore_3
    //   134: aload_2
    //   135: astore_1
    //   136: new 126	java/lang/StringBuilder
    //   139: dup
    //   140: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   143: astore 4
    //   145: aload_2
    //   146: astore_1
    //   147: aload_3
    //   148: invokevirtual 206	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   151: astore 5
    //   153: aload 5
    //   155: ifnull +36 -> 191
    //   158: aload_2
    //   159: astore_1
    //   160: aload 4
    //   162: aload 5
    //   164: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: goto -23 -> 145
    //   171: astore_1
    //   172: aload_2
    //   173: astore_1
    //   174: ldc 43
    //   176: ldc -48
    //   178: invokestatic 213	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   181: aload_2
    //   182: ifnull +7 -> 189
    //   185: aload_2
    //   186: invokevirtual 216	java/net/HttpURLConnection:disconnect	()V
    //   189: iconst_0
    //   190: ireturn
    //   191: aload_2
    //   192: astore_1
    //   193: ldc 43
    //   195: new 126	java/lang/StringBuilder
    //   198: dup
    //   199: ldc -38
    //   201: invokespecial 219	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   204: aload 4
    //   206: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   209: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokestatic 213	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   218: aload_2
    //   219: astore_1
    //   220: aload 4
    //   222: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   225: ldc -35
    //   227: invokevirtual 225	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   230: istore_0
    //   231: iload_0
    //   232: ifeq +13 -> 245
    //   235: aload_2
    //   236: ifnull +7 -> 243
    //   239: aload_2
    //   240: invokevirtual 216	java/net/HttpURLConnection:disconnect	()V
    //   243: iconst_1
    //   244: ireturn
    //   245: aload_2
    //   246: ifnull +7 -> 253
    //   249: aload_2
    //   250: invokevirtual 216	java/net/HttpURLConnection:disconnect	()V
    //   253: iconst_0
    //   254: ireturn
    //   255: astore_1
    //   256: aload_3
    //   257: astore_2
    //   258: aload_2
    //   259: ifnull +7 -> 266
    //   262: aload_2
    //   263: invokevirtual 216	java/net/HttpURLConnection:disconnect	()V
    //   266: aload_1
    //   267: athrow
    //   268: astore_3
    //   269: aload_1
    //   270: astore_2
    //   271: aload_3
    //   272: astore_1
    //   273: goto -15 -> 258
    //   276: astore_1
    //   277: aconst_null
    //   278: astore_2
    //   279: goto -107 -> 172
    // Local variable table:
    //   start	length	slot	name	signature
    //   230	2	0	bool	boolean
    //   9	151	1	localObject1	Object
    //   171	1	1	localThrowable1	Throwable
    //   173	47	1	localObject2	Object
    //   255	15	1	localObject3	Object
    //   272	1	1	localObject4	Object
    //   276	1	1	localThrowable2	Throwable
    //   49	230	2	localObject5	Object
    //   1	256	3	localBufferedReader	java.io.BufferedReader
    //   268	4	3	localObject6	Object
    //   143	78	4	localStringBuilder	StringBuilder
    //   151	12	5	str	String
    // Exception table:
    //   from	to	target	type
    //   52	59	171	java/lang/Throwable
    //   61	68	171	java/lang/Throwable
    //   70	76	171	java/lang/Throwable
    //   78	86	171	java/lang/Throwable
    //   88	93	171	java/lang/Throwable
    //   95	100	171	java/lang/Throwable
    //   102	107	171	java/lang/Throwable
    //   109	113	171	java/lang/Throwable
    //   115	134	171	java/lang/Throwable
    //   136	145	171	java/lang/Throwable
    //   147	153	171	java/lang/Throwable
    //   160	168	171	java/lang/Throwable
    //   193	218	171	java/lang/Throwable
    //   220	231	171	java/lang/Throwable
    //   2	50	255	finally
    //   52	59	268	finally
    //   61	68	268	finally
    //   70	76	268	finally
    //   78	86	268	finally
    //   88	93	268	finally
    //   95	100	268	finally
    //   102	107	268	finally
    //   109	113	268	finally
    //   115	134	268	finally
    //   136	145	268	finally
    //   147	153	268	finally
    //   160	168	268	finally
    //   174	181	268	finally
    //   193	218	268	finally
    //   220	231	268	finally
    //   2	50	276	java/lang/Throwable
  }
  
  public static boolean isNewApn()
  {
    boolean bool = sIsNewApn;
    if (bool) {
      sIsNewApn = false;
    }
    return bool;
  }
  
  public static void setNewApn(boolean paramBoolean)
  {
    sIsNewApn = paramBoolean;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\SessionConst.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */