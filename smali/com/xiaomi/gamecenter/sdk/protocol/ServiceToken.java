package com.xiaomi.gamecenter.sdk.protocol;

import android.content.Context;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import java.io.File;

public final class ServiceToken
{
  private static ServiceToken h;
  private static AccountType i;
  String a;
  String b;
  String c;
  String d;
  String e;
  String f;
  long g;
  
  /* Error */
  public static ServiceToken a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 31	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: invokestatic 36	com/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper:a	()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;
    //   12: pop
    //   13: aload_0
    //   14: invokestatic 39	com/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper:a	(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    //   17: astore_3
    //   18: getstatic 41	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:i	Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    //   21: ifnull +22 -> 43
    //   24: getstatic 43	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:h	Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;
    //   27: ifnull +16 -> 43
    //   30: getstatic 41	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:i	Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    //   33: invokevirtual 49	com/xiaomi/gamecenter/sdk/utils/AccountType:ordinal	()I
    //   36: aload_3
    //   37: invokevirtual 49	com/xiaomi/gamecenter/sdk/utils/AccountType:ordinal	()I
    //   40: if_icmpeq +21 -> 61
    //   43: aload_3
    //   44: invokestatic 52	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:b	(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;
    //   47: invokevirtual 58	java/io/File:exists	()Z
    //   50: ifne +15 -> 65
    //   53: aconst_null
    //   54: putstatic 43	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:h	Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;
    //   57: aconst_null
    //   58: putstatic 41	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:i	Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    //   61: getstatic 43	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:h	Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;
    //   64: areturn
    //   65: aload_3
    //   66: invokestatic 52	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:b	(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;
    //   69: astore_0
    //   70: aload_0
    //   71: invokevirtual 58	java/io/File:exists	()Z
    //   74: ifeq -13 -> 61
    //   77: getstatic 63	com/xiaomi/gamecenter/sdk/protocol/ProDefine:n	Ljava/lang/String;
    //   80: astore 4
    //   82: new 65	java/io/RandomAccessFile
    //   85: dup
    //   86: aload_0
    //   87: ldc 67
    //   89: invokespecial 70	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   92: astore_2
    //   93: aload_2
    //   94: astore_0
    //   95: aload_2
    //   96: invokevirtual 74	java/io/RandomAccessFile:length	()J
    //   99: l2i
    //   100: newarray <illegal type>
    //   102: astore 5
    //   104: aload_2
    //   105: astore_0
    //   106: aload_2
    //   107: aload 5
    //   109: invokevirtual 78	java/io/RandomAccessFile:read	([B)I
    //   112: pop
    //   113: aload_2
    //   114: astore_0
    //   115: new 80	java/lang/String
    //   118: dup
    //   119: aload 5
    //   121: getstatic 83	com/xiaomi/gamecenter/sdk/protocol/ProDefine:o	Ljava/lang/String;
    //   124: invokevirtual 87	java/lang/String:getBytes	()[B
    //   127: invokestatic 92	cn/com/wali/basetool/utils/AESEncryption:b	([B[B)[B
    //   130: invokespecial 95	java/lang/String:<init>	([B)V
    //   133: aload 4
    //   135: invokevirtual 99	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   138: astore 4
    //   140: aload_2
    //   141: astore_0
    //   142: invokestatic 105	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   145: invokevirtual 109	com/xiaomi/gamecenter/sdk/MiCommplatform:getApplicationContext	()Landroid/content/Context;
    //   148: invokestatic 114	com/xiaomi/gamecenter/sdk/utils/j:b	(Landroid/content/Context;)Ljava/lang/String;
    //   151: astore 5
    //   153: aload_2
    //   154: astore_0
    //   155: aload 4
    //   157: iconst_0
    //   158: aaload
    //   159: aload 5
    //   161: invokevirtual 118	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   164: istore_1
    //   165: iload_1
    //   166: ifne +14 -> 180
    //   169: aload_2
    //   170: invokevirtual 121	java/io/RandomAccessFile:close	()V
    //   173: goto -112 -> 61
    //   176: astore_0
    //   177: goto -116 -> 61
    //   180: aload_2
    //   181: astore_0
    //   182: aload 4
    //   184: iconst_1
    //   185: aaload
    //   186: aload_3
    //   187: invokestatic 124	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:a	(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;
    //   190: pop
    //   191: aload_2
    //   192: invokevirtual 121	java/io/RandomAccessFile:close	()V
    //   195: goto -134 -> 61
    //   198: astore_0
    //   199: goto -138 -> 61
    //   202: astore_3
    //   203: aconst_null
    //   204: astore_2
    //   205: aload_2
    //   206: astore_0
    //   207: aload_3
    //   208: invokevirtual 127	java/lang/Exception:printStackTrace	()V
    //   211: aload_2
    //   212: invokevirtual 121	java/io/RandomAccessFile:close	()V
    //   215: goto -154 -> 61
    //   218: astore_0
    //   219: goto -158 -> 61
    //   222: astore_2
    //   223: aconst_null
    //   224: astore_0
    //   225: aload_0
    //   226: invokevirtual 121	java/io/RandomAccessFile:close	()V
    //   229: aload_2
    //   230: athrow
    //   231: astore_0
    //   232: goto -3 -> 229
    //   235: astore_2
    //   236: goto -11 -> 225
    //   239: astore_3
    //   240: goto -35 -> 205
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	243	0	paramString	String
    //   164	2	1	bool	boolean
    //   92	120	2	localRandomAccessFile	java.io.RandomAccessFile
    //   222	8	2	localObject1	Object
    //   235	1	2	localObject2	Object
    //   17	170	3	localAccountType	AccountType
    //   202	6	3	localException1	Exception
    //   239	1	3	localException2	Exception
    //   80	103	4	localObject3	Object
    //   102	58	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   169	173	176	java/lang/Exception
    //   191	195	198	java/lang/Exception
    //   82	93	202	java/lang/Exception
    //   211	215	218	java/lang/Exception
    //   82	93	222	finally
    //   225	229	231	java/lang/Exception
    //   95	104	235	finally
    //   106	113	235	finally
    //   115	140	235	finally
    //   142	153	235	finally
    //   155	165	235	finally
    //   182	191	235	finally
    //   207	211	235	finally
    //   95	104	239	java/lang/Exception
    //   106	113	239	java/lang/Exception
    //   115	140	239	java/lang/Exception
    //   142	153	239	java/lang/Exception
    //   155	165	239	java/lang/Exception
    //   182	191	239	java/lang/Exception
  }
  
  /* Error */
  public static ServiceToken a(String paramString, AccountType paramAccountType)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 31	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: new 2	com/xiaomi/gamecenter/sdk/protocol/ServiceToken
    //   12: dup
    //   13: invokespecial 128	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:<init>	()V
    //   16: astore_3
    //   17: new 130	org/json/JSONObject
    //   20: dup
    //   21: aload_0
    //   22: invokespecial 133	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   25: astore_2
    //   26: aload_3
    //   27: aload_2
    //   28: getstatic 135	com/xiaomi/gamecenter/sdk/protocol/ProDefine:b	Ljava/lang/String;
    //   31: invokevirtual 139	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   34: putfield 141	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:a	Ljava/lang/String;
    //   37: aload_3
    //   38: aload_2
    //   39: getstatic 143	com/xiaomi/gamecenter/sdk/protocol/ProDefine:c	Ljava/lang/String;
    //   42: invokevirtual 139	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   45: putfield 144	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:b	Ljava/lang/String;
    //   48: aload_3
    //   49: aload_2
    //   50: getstatic 146	com/xiaomi/gamecenter/sdk/protocol/ProDefine:d	Ljava/lang/String;
    //   53: invokevirtual 139	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   56: putfield 147	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:c	Ljava/lang/String;
    //   59: aload_3
    //   60: aload_2
    //   61: getstatic 150	com/xiaomi/gamecenter/sdk/protocol/ProDefine:j	Ljava/lang/String;
    //   64: invokevirtual 139	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   67: putfield 152	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:f	Ljava/lang/String;
    //   70: aload_3
    //   71: aload_2
    //   72: getstatic 154	com/xiaomi/gamecenter/sdk/protocol/ProDefine:e	Ljava/lang/String;
    //   75: invokevirtual 139	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   78: putfield 155	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:e	Ljava/lang/String;
    //   81: aload_2
    //   82: getstatic 157	com/xiaomi/gamecenter/sdk/protocol/ProDefine:i	Ljava/lang/String;
    //   85: invokevirtual 161	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   88: ifeq +114 -> 202
    //   91: aload_3
    //   92: aload_2
    //   93: getstatic 157	com/xiaomi/gamecenter/sdk/protocol/ProDefine:i	Ljava/lang/String;
    //   96: invokevirtual 139	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   99: putfield 162	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:d	Ljava/lang/String;
    //   102: aload_3
    //   103: aload_2
    //   104: getstatic 163	com/xiaomi/gamecenter/sdk/protocol/ProDefine:f	Ljava/lang/String;
    //   107: invokevirtual 167	org/json/JSONObject:optLong	(Ljava/lang/String;)J
    //   110: putfield 169	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:g	J
    //   113: aload_3
    //   114: putstatic 43	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:h	Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;
    //   117: aload_1
    //   118: putstatic 41	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:i	Lcom/xiaomi/gamecenter/sdk/utils/AccountType;
    //   121: aload_1
    //   122: invokestatic 52	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:b	(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;
    //   125: astore_1
    //   126: invokestatic 105	com/xiaomi/gamecenter/sdk/MiCommplatform:getInstance	()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    //   129: invokevirtual 109	com/xiaomi/gamecenter/sdk/MiCommplatform:getApplicationContext	()Landroid/content/Context;
    //   132: invokestatic 114	com/xiaomi/gamecenter/sdk/utils/j:b	(Landroid/content/Context;)Ljava/lang/String;
    //   135: astore_2
    //   136: new 171	java/lang/StringBuilder
    //   139: dup
    //   140: invokespecial 172	java/lang/StringBuilder:<init>	()V
    //   143: aload_2
    //   144: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: getstatic 63	com/xiaomi/gamecenter/sdk/protocol/ProDefine:n	Ljava/lang/String;
    //   150: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: aload_0
    //   154: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: astore_0
    //   161: aload_0
    //   162: invokevirtual 87	java/lang/String:getBytes	()[B
    //   165: getstatic 83	com/xiaomi/gamecenter/sdk/protocol/ProDefine:o	Ljava/lang/String;
    //   168: invokevirtual 87	java/lang/String:getBytes	()[B
    //   171: invokestatic 182	cn/com/wali/basetool/utils/AESEncryption:a	([B[B)[B
    //   174: astore_2
    //   175: new 65	java/io/RandomAccessFile
    //   178: dup
    //   179: aload_1
    //   180: ldc -72
    //   182: invokespecial 70	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   185: astore_1
    //   186: aload_1
    //   187: astore_0
    //   188: aload_1
    //   189: aload_2
    //   190: invokevirtual 187	java/io/RandomAccessFile:write	([B)V
    //   193: aload_1
    //   194: invokevirtual 121	java/io/RandomAccessFile:close	()V
    //   197: aload_3
    //   198: areturn
    //   199: astore_0
    //   200: aload_3
    //   201: areturn
    //   202: aload_3
    //   203: ldc -67
    //   205: putfield 162	com/xiaomi/gamecenter/sdk/protocol/ServiceToken:d	Ljava/lang/String;
    //   208: goto -106 -> 102
    //   211: astore_1
    //   212: aload_3
    //   213: astore_0
    //   214: aload_1
    //   215: invokevirtual 127	java/lang/Exception:printStackTrace	()V
    //   218: aload_0
    //   219: areturn
    //   220: astore_2
    //   221: aconst_null
    //   222: astore_1
    //   223: aload_1
    //   224: astore_0
    //   225: aload_2
    //   226: invokevirtual 127	java/lang/Exception:printStackTrace	()V
    //   229: aload_1
    //   230: invokevirtual 121	java/io/RandomAccessFile:close	()V
    //   233: aload_3
    //   234: areturn
    //   235: astore_0
    //   236: aload_3
    //   237: areturn
    //   238: astore_1
    //   239: aconst_null
    //   240: astore_0
    //   241: aload_0
    //   242: invokevirtual 121	java/io/RandomAccessFile:close	()V
    //   245: aload_1
    //   246: athrow
    //   247: astore_0
    //   248: goto -3 -> 245
    //   251: astore_1
    //   252: aconst_null
    //   253: astore_0
    //   254: goto -40 -> 214
    //   257: astore_1
    //   258: goto -17 -> 241
    //   261: astore_2
    //   262: goto -39 -> 223
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	265	0	paramString	String
    //   0	265	1	paramAccountType	AccountType
    //   25	165	2	localObject	Object
    //   220	6	2	localException1	Exception
    //   261	1	2	localException2	Exception
    //   16	221	3	localServiceToken	ServiceToken
    // Exception table:
    //   from	to	target	type
    //   193	197	199	java/lang/Exception
    //   17	102	211	java/lang/Exception
    //   102	161	211	java/lang/Exception
    //   202	208	211	java/lang/Exception
    //   245	247	211	java/lang/Exception
    //   161	186	220	java/lang/Exception
    //   229	233	235	java/lang/Exception
    //   161	186	238	finally
    //   241	245	247	java/lang/Exception
    //   9	17	251	java/lang/Exception
    //   188	193	257	finally
    //   225	229	257	finally
    //   188	193	261	java/lang/Exception
  }
  
  public static void a(AccountType paramAccountType)
  {
    paramAccountType = b(paramAccountType);
    if (paramAccountType.exists()) {
      paramAccountType.delete();
    }
    h = null;
    i = null;
  }
  
  private static File b(AccountType paramAccountType)
  {
    paramAccountType = ProDefine.m + "type_" + paramAccountType.ordinal();
    return new File(MiCommplatform.getInstance().getApplicationContext().getFilesDir(), paramAccountType);
  }
  
  public static void b(String paramString)
  {
    PackgeInfoHelper.a();
    a(PackgeInfoHelper.a(paramString));
  }
  
  public final String a()
  {
    return this.a;
  }
  
  public final String b()
  {
    return this.c;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\ServiceToken.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */