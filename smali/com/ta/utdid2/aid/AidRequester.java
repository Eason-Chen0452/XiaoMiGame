package com.ta.utdid2.aid;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.ta.utdid2.android.utils.DebugUtils;
import com.ut.device.AidCallback;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.apache.http.client.methods.HttpPost;
import org.json.JSONException;
import org.json.JSONObject;

public class AidRequester
{
  private static final String AIDFUNCNAME = "/get_aid/";
  private static final String AIDSERVER = "http://hydra.alibaba.com/";
  private static final String NAME_AID = "&aid=";
  private static final String NAME_ID = "&id=";
  private static final String NAME_RESULT_ACTION = "action";
  private static final String NAME_RESULT_AID = "aid";
  private static final String NAME_RESULT_ISERROR = "isError";
  private static final String NAME_RESULT_STATUS = "status";
  private static final String NAME_RESUTL_DATA = "data";
  private static final String NAME_TOKEN = "auth[token]=";
  private static final String NAME_TYPE = "&type=";
  private static final String RSP_ACTION_CHANGED = "changed";
  private static final String RSP_ACTION_NEW = "new";
  private static final String RSP_ACTION_UNCHANGED = "unchanged";
  private static final String RSP_ISERROR_FALSE = "false";
  private static final String RSP_ISERROR_TRUE = "true";
  private static final String RSP_STATUS_INVALID_APP = "404";
  private static final String RSP_STATUS_INVALID_TOKEN = "401";
  private static final String RSP_STATUS_OK = "200";
  private static final int SESSION_TIME_OUT = 1000;
  private static final String TAG = AidRequester.class.getName();
  private static final String TYPE_UTDID = "utdid";
  private static final int WEAK_SESSION_TIME_OUT = 3000;
  private static AidRequester sAidRequester = null;
  private Context mContext;
  private Object mLock = new Object();
  
  public AidRequester(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  private static String getAidFromJsonRsp(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString1)) {
      try
      {
        Object localObject = new JSONObject(paramString1);
        if (((JSONObject)localObject).has("data"))
        {
          paramString1 = ((JSONObject)localObject).getJSONObject("data");
          if ((paramString1.has("action")) && (paramString1.has("aid")))
          {
            localObject = paramString1.getString("action");
            if ((((String)localObject).equalsIgnoreCase("new")) || (((String)localObject).equalsIgnoreCase("changed"))) {
              return paramString1.getString("aid");
            }
          }
        }
        else if ((((JSONObject)localObject).has("isError")) && (((JSONObject)localObject).has("status")))
        {
          paramString1 = ((JSONObject)localObject).getString("isError");
          localObject = ((JSONObject)localObject).getString("status");
          if ((paramString1.equalsIgnoreCase("true")) && ((((String)localObject).equalsIgnoreCase("404")) || (((String)localObject).equalsIgnoreCase("401"))))
          {
            if (DebugUtils.DBG) {
              Log.d(TAG, "remove the AID, status:" + (String)localObject);
            }
            return "";
          }
        }
      }
      catch (JSONException paramString1)
      {
        Log.e(TAG, paramString1.toString());
        return paramString2;
      }
      catch (Exception paramString1)
      {
        Log.e(TAG, paramString1.toString());
      }
    }
    return paramString2;
  }
  
  public static AidRequester getInstance(Context paramContext)
  {
    try
    {
      if (sAidRequester == null) {
        sAidRequester = new AidRequester(paramContext);
      }
      paramContext = sAidRequester;
      return paramContext;
    }
    finally {}
  }
  
  private static String getPostUrl(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      String str = URLEncoder.encode(paramString3, "UTF-8");
      paramString3 = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    return "http://hydra.alibaba.com/" + paramString1 + "/get_aid/" + "?" + "auth[token]=" + paramString2 + "&type=" + "utdid" + "&id=" + paramString3 + "&aid=" + paramString4;
  }
  
  /* Error */
  public String postRest(String paramString1, String arg2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_2
    //   2: aload_3
    //   3: aload 4
    //   5: invokestatic 198	com/ta/utdid2/aid/AidRequester:getPostUrl	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   8: astore_1
    //   9: aload_0
    //   10: getfield 101	com/ta/utdid2/aid/AidRequester:mContext	Landroid/content/Context;
    //   13: invokestatic 204	com/ta/utdid2/android/utils/NetworkUtils:isConnectedToWeakNetwork	(Landroid/content/Context;)Z
    //   16: ifeq +128 -> 144
    //   19: sipush 3000
    //   22: istore 5
    //   24: getstatic 149	com/ta/utdid2/android/utils/DebugUtils:DBG	Z
    //   27: ifeq +36 -> 63
    //   30: getstatic 90	com/ta/utdid2/aid/AidRequester:TAG	Ljava/lang/String;
    //   33: new 151	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -50
    //   39: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_1
    //   43: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: ldc -48
    //   48: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: iload 5
    //   53: invokevirtual 211	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   56: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokestatic 167	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   62: pop
    //   63: new 6	com/ta/utdid2/aid/AidRequester$PostRestThread
    //   66: dup
    //   67: aload_0
    //   68: new 213	org/apache/http/client/methods/HttpPost
    //   71: dup
    //   72: aload_1
    //   73: invokespecial 214	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   76: invokespecial 217	com/ta/utdid2/aid/AidRequester$PostRestThread:<init>	(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;)V
    //   79: astore_1
    //   80: aload_1
    //   81: invokevirtual 220	com/ta/utdid2/aid/AidRequester$PostRestThread:start	()V
    //   84: aload_0
    //   85: getfield 99	com/ta/utdid2/aid/AidRequester:mLock	Ljava/lang/Object;
    //   88: astore_2
    //   89: aload_2
    //   90: monitorenter
    //   91: aload_0
    //   92: getfield 99	com/ta/utdid2/aid/AidRequester:mLock	Ljava/lang/Object;
    //   95: iload 5
    //   97: i2l
    //   98: invokevirtual 224	java/lang/Object:wait	(J)V
    //   101: aload_2
    //   102: monitorexit
    //   103: aload_1
    //   104: invokevirtual 227	com/ta/utdid2/aid/AidRequester$PostRestThread:getResponseLine	()Ljava/lang/String;
    //   107: astore_1
    //   108: getstatic 149	com/ta/utdid2/android/utils/DebugUtils:DBG	Z
    //   111: ifeq +26 -> 137
    //   114: getstatic 90	com/ta/utdid2/aid/AidRequester:TAG	Ljava/lang/String;
    //   117: new 151	java/lang/StringBuilder
    //   120: dup
    //   121: ldc -27
    //   123: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   126: aload_1
    //   127: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokestatic 167	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   136: pop
    //   137: aload_1
    //   138: aload 4
    //   140: invokestatic 109	com/ta/utdid2/aid/AidRequester:getAidFromJsonRsp	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   143: areturn
    //   144: sipush 1000
    //   147: istore 5
    //   149: goto -125 -> 24
    //   152: astore_3
    //   153: aload_2
    //   154: monitorexit
    //   155: aload_3
    //   156: athrow
    //   157: astore_2
    //   158: getstatic 90	com/ta/utdid2/aid/AidRequester:TAG	Ljava/lang/String;
    //   161: aload_2
    //   162: invokevirtual 174	java/lang/Exception:toString	()Ljava/lang/String;
    //   165: invokestatic 173	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   168: pop
    //   169: goto -66 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	this	AidRequester
    //   0	172	1	paramString1	String
    //   0	172	3	paramString3	String
    //   0	172	4	paramString4	String
    //   22	126	5	i	int
    // Exception table:
    //   from	to	target	type
    //   91	103	152	finally
    //   153	155	152	finally
    //   84	91	157	java/lang/Exception
    //   155	157	157	java/lang/Exception
  }
  
  public void postRestAsync(String paramString1, String paramString2, String paramString3, String paramString4, AidCallback paramAidCallback)
  {
    paramString3 = getPostUrl(paramString1, paramString2, paramString3, paramString4);
    if (DebugUtils.DBG) {
      Log.d(TAG, "url:" + paramString3 + "; len:" + paramString3.length());
    }
    new PostRestThread(new HttpPost(paramString3), paramAidCallback, paramString4, paramString1, paramString2).start();
  }
  
  class PostRestThread
    extends Thread
  {
    String mAppName;
    AidCallback mCallback;
    String mOldAid;
    HttpPost mPost;
    String mRspLine = "";
    String mToken = "";
    
    public PostRestThread(HttpPost paramHttpPost)
    {
      this.mPost = paramHttpPost;
    }
    
    public PostRestThread(HttpPost paramHttpPost, AidCallback paramAidCallback, String paramString1, String paramString2, String paramString3)
    {
      this.mPost = paramHttpPost;
      this.mCallback = paramAidCallback;
      this.mOldAid = paramString1;
      this.mAppName = paramString2;
      this.mToken = paramString3;
    }
    
    public String getResponseLine()
    {
      return this.mRspLine;
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   4: ifnull +19 -> 23
      //   7: aload_0
      //   8: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   11: sipush 1000
      //   14: aload_0
      //   15: getfield 39	com/ta/utdid2/aid/AidRequester$PostRestThread:mOldAid	Ljava/lang/String;
      //   18: invokeinterface 54 3 0
      //   23: new 56	org/apache/http/impl/client/DefaultHttpClient
      //   26: dup
      //   27: invokespecial 57	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
      //   30: astore_2
      //   31: aconst_null
      //   32: astore_1
      //   33: aload_2
      //   34: aload_0
      //   35: getfield 33	com/ta/utdid2/aid/AidRequester$PostRestThread:mPost	Lorg/apache/http/client/methods/HttpPost;
      //   38: invokeinterface 63 2 0
      //   43: astore_2
      //   44: aload_2
      //   45: astore_1
      //   46: aconst_null
      //   47: astore_2
      //   48: aload_1
      //   49: ifnull +138 -> 187
      //   52: new 65	java/io/BufferedReader
      //   55: dup
      //   56: new 67	java/io/InputStreamReader
      //   59: dup
      //   60: aload_1
      //   61: invokeinterface 73 1 0
      //   66: invokeinterface 79 1 0
      //   71: ldc 81
      //   73: invokestatic 87	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
      //   76: invokespecial 90	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
      //   79: invokespecial 93	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
      //   82: astore_1
      //   83: aload_1
      //   84: ifnull +217 -> 301
      //   87: aload_1
      //   88: invokevirtual 96	java/io/BufferedReader:readLine	()Ljava/lang/String;
      //   91: astore_2
      //   92: aload_2
      //   93: ifnonnull +148 -> 241
      //   96: aload_1
      //   97: ifnull +22 -> 119
      //   100: aload_1
      //   101: invokevirtual 99	java/io/BufferedReader:close	()V
      //   104: getstatic 105	com/ta/utdid2/android/utils/DebugUtils:DBG	Z
      //   107: ifeq +12 -> 119
      //   110: invokestatic 108	com/ta/utdid2/aid/AidRequester:access$0	()Ljava/lang/String;
      //   113: ldc 110
      //   115: invokestatic 116	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   118: pop
      //   119: aload_0
      //   120: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   123: ifnonnull +210 -> 333
      //   126: aload_0
      //   127: getfield 22	com/ta/utdid2/aid/AidRequester$PostRestThread:this$0	Lcom/ta/utdid2/aid/AidRequester;
      //   130: invokestatic 120	com/ta/utdid2/aid/AidRequester:access$1	(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;
      //   133: astore_1
      //   134: aload_1
      //   135: monitorenter
      //   136: aload_0
      //   137: getfield 22	com/ta/utdid2/aid/AidRequester$PostRestThread:this$0	Lcom/ta/utdid2/aid/AidRequester;
      //   140: invokestatic 120	com/ta/utdid2/aid/AidRequester:access$1	(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;
      //   143: invokevirtual 125	java/lang/Object:notifyAll	()V
      //   146: aload_1
      //   147: monitorexit
      //   148: return
      //   149: astore_2
      //   150: aload_0
      //   151: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   154: ifnull +19 -> 173
      //   157: aload_0
      //   158: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   161: sipush 1002
      //   164: aload_0
      //   165: getfield 39	com/ta/utdid2/aid/AidRequester$PostRestThread:mOldAid	Ljava/lang/String;
      //   168: invokeinterface 54 3 0
      //   173: invokestatic 108	com/ta/utdid2/aid/AidRequester:access$0	()Ljava/lang/String;
      //   176: aload_2
      //   177: invokevirtual 128	java/lang/Exception:toString	()Ljava/lang/String;
      //   180: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   183: pop
      //   184: goto -138 -> 46
      //   187: invokestatic 108	com/ta/utdid2/aid/AidRequester:access$0	()Ljava/lang/String;
      //   190: ldc -123
      //   192: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   195: pop
      //   196: aload_2
      //   197: astore_1
      //   198: goto -115 -> 83
      //   201: astore_1
      //   202: aload_0
      //   203: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   206: ifnull +19 -> 225
      //   209: aload_0
      //   210: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   213: sipush 1002
      //   216: aload_0
      //   217: getfield 39	com/ta/utdid2/aid/AidRequester$PostRestThread:mOldAid	Ljava/lang/String;
      //   220: invokeinterface 54 3 0
      //   225: invokestatic 108	com/ta/utdid2/aid/AidRequester:access$0	()Ljava/lang/String;
      //   228: aload_1
      //   229: invokevirtual 128	java/lang/Exception:toString	()Ljava/lang/String;
      //   232: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   235: pop
      //   236: aload_2
      //   237: astore_1
      //   238: goto -155 -> 83
      //   241: getstatic 105	com/ta/utdid2/android/utils/DebugUtils:DBG	Z
      //   244: ifeq +11 -> 255
      //   247: invokestatic 108	com/ta/utdid2/aid/AidRequester:access$0	()Ljava/lang/String;
      //   250: aload_2
      //   251: invokestatic 116	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   254: pop
      //   255: aload_0
      //   256: aload_2
      //   257: putfield 29	com/ta/utdid2/aid/AidRequester$PostRestThread:mRspLine	Ljava/lang/String;
      //   260: goto -173 -> 87
      //   263: astore_2
      //   264: aload_0
      //   265: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   268: ifnull +19 -> 287
      //   271: aload_0
      //   272: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   275: sipush 1002
      //   278: aload_0
      //   279: getfield 39	com/ta/utdid2/aid/AidRequester$PostRestThread:mOldAid	Ljava/lang/String;
      //   282: invokeinterface 54 3 0
      //   287: invokestatic 108	com/ta/utdid2/aid/AidRequester:access$0	()Ljava/lang/String;
      //   290: aload_2
      //   291: invokevirtual 128	java/lang/Exception:toString	()Ljava/lang/String;
      //   294: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   297: pop
      //   298: goto -202 -> 96
      //   301: invokestatic 108	com/ta/utdid2/aid/AidRequester:access$0	()Ljava/lang/String;
      //   304: ldc -121
      //   306: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   309: pop
      //   310: goto -214 -> 96
      //   313: astore_1
      //   314: invokestatic 108	com/ta/utdid2/aid/AidRequester:access$0	()Ljava/lang/String;
      //   317: aload_1
      //   318: invokevirtual 136	java/io/IOException:toString	()Ljava/lang/String;
      //   321: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   324: pop
      //   325: goto -206 -> 119
      //   328: astore_2
      //   329: aload_1
      //   330: monitorexit
      //   331: aload_2
      //   332: athrow
      //   333: aload_0
      //   334: getfield 29	com/ta/utdid2/aid/AidRequester$PostRestThread:mRspLine	Ljava/lang/String;
      //   337: aload_0
      //   338: getfield 39	com/ta/utdid2/aid/AidRequester$PostRestThread:mOldAid	Ljava/lang/String;
      //   341: invokestatic 140	com/ta/utdid2/aid/AidRequester:access$2	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
      //   344: astore_1
      //   345: aload_0
      //   346: getfield 37	com/ta/utdid2/aid/AidRequester$PostRestThread:mCallback	Lcom/ut/device/AidCallback;
      //   349: sipush 1001
      //   352: aload_1
      //   353: invokeinterface 54 3 0
      //   358: aload_0
      //   359: getfield 22	com/ta/utdid2/aid/AidRequester$PostRestThread:this$0	Lcom/ta/utdid2/aid/AidRequester;
      //   362: invokestatic 144	com/ta/utdid2/aid/AidRequester:access$3	(Lcom/ta/utdid2/aid/AidRequester;)Landroid/content/Context;
      //   365: aload_0
      //   366: getfield 41	com/ta/utdid2/aid/AidRequester$PostRestThread:mAppName	Ljava/lang/String;
      //   369: aload_1
      //   370: aload_0
      //   371: getfield 31	com/ta/utdid2/aid/AidRequester$PostRestThread:mToken	Ljava/lang/String;
      //   374: invokestatic 150	com/ta/utdid2/aid/AidStorageController:setAidValueToSP	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
      //   377: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	378	0	this	PostRestThread
      //   201	28	1	localException1	Exception
      //   237	1	1	localException2	Exception
      //   313	17	1	localIOException	java.io.IOException
      //   344	26	1	str	String
      //   30	63	2	localObject2	Object
      //   149	108	2	localException3	Exception
      //   263	28	2	localException4	Exception
      //   328	4	2	localObject3	Object
      // Exception table:
      //   from	to	target	type
      //   33	44	149	java/lang/Exception
      //   52	83	201	java/lang/Exception
      //   187	196	201	java/lang/Exception
      //   87	92	263	java/lang/Exception
      //   241	255	263	java/lang/Exception
      //   255	260	263	java/lang/Exception
      //   301	310	263	java/lang/Exception
      //   100	119	313	java/io/IOException
      //   136	148	328	finally
      //   329	331	328	finally
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\ta\utdid2\aid\AidRequester.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */