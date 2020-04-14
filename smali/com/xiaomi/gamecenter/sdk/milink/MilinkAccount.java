package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.protocol.ProDefine;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import java.io.File;

public final class MilinkAccount
{
  private static MilinkAccount p;
  private int a;
  private long b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private int h;
  private int i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private String n;
  private GeneratedMessage o;
  
  /* Error */
  public static MilinkAccount a(GeneratedMessage paramGeneratedMessage, AccountType paramAccountType)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 2	com/xiaomi/gamecenter/sdk/milink/MilinkAccount
    //   9: dup
    //   10: invokespecial 35	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:<init>	()V
    //   13: astore_3
    //   14: aload_3
    //   15: aload_0
    //   16: putfield 37	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:o	Lcom/google/protobuf/GeneratedMessage;
    //   19: aload_0
    //   20: instanceof 39
    //   23: ifeq +159 -> 182
    //   26: aload_0
    //   27: checkcast 39	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp
    //   30: astore_2
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 43	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getRetCode	()I
    //   36: putfield 45	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:a	I
    //   39: aload_3
    //   40: aload_2
    //   41: invokevirtual 49	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getUuid	()J
    //   44: putfield 51	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:b	J
    //   47: aload_3
    //   48: aload_2
    //   49: invokevirtual 55	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getServiceToken	()Ljava/lang/String;
    //   52: putfield 57	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:c	Ljava/lang/String;
    //   55: aload_3
    //   56: aload_2
    //   57: invokevirtual 60	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getSecurityKey	()Ljava/lang/String;
    //   60: putfield 62	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:d	Ljava/lang/String;
    //   63: aload_3
    //   64: aload_2
    //   65: invokevirtual 65	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getPassToken	()Ljava/lang/String;
    //   68: putfield 67	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:e	Ljava/lang/String;
    //   71: aload_3
    //   72: aload_2
    //   73: invokevirtual 70	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getNickname	()Ljava/lang/String;
    //   76: putfield 72	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:f	Ljava/lang/String;
    //   79: aload_3
    //   80: aload_2
    //   81: invokevirtual 75	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getHeadimgurl	()Ljava/lang/String;
    //   84: putfield 77	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:g	Ljava/lang/String;
    //   87: aload_3
    //   88: aload_2
    //   89: invokevirtual 80	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getSex	()I
    //   92: putfield 82	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:h	I
    //   95: aload_3
    //   96: aload_2
    //   97: invokevirtual 85	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getLoginStatus	()I
    //   100: putfield 87	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:i	I
    //   103: aload_3
    //   104: aload_2
    //   105: invokevirtual 91	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getHasInnerAvatar	()Z
    //   108: putfield 93	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:j	Z
    //   111: aload_3
    //   112: aload_2
    //   113: invokevirtual 96	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getHasInnerNickname	()Z
    //   116: putfield 98	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:k	Z
    //   119: aload_3
    //   120: aload_2
    //   121: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getHasInnerSex	()Z
    //   124: putfield 103	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:l	Z
    //   127: aload_3
    //   128: aload_2
    //   129: invokevirtual 106	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:getIsSetGuide	()Z
    //   132: putfield 108	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:m	Z
    //   135: aload_3
    //   136: putstatic 110	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:p	Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
    //   139: aload_1
    //   140: invokestatic 113	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:b	(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;
    //   143: astore_1
    //   144: aload_0
    //   145: invokevirtual 119	com/google/protobuf/GeneratedMessage:toByteArray	()[B
    //   148: getstatic 123	com/xiaomi/gamecenter/sdk/protocol/ProDefine:o	Ljava/lang/String;
    //   151: invokevirtual 128	java/lang/String:getBytes	()[B
    //   154: invokestatic 133	cn/com/wali/basetool/utils/AESEncryption:a	([B[B)[B
    //   157: astore_2
    //   158: new 135	java/io/RandomAccessFile
    //   161: dup
    //   162: aload_1
    //   163: ldc -119
    //   165: invokespecial 140	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   168: astore_1
    //   169: aload_1
    //   170: astore_0
    //   171: aload_1
    //   172: aload_2
    //   173: invokevirtual 144	java/io/RandomAccessFile:write	([B)V
    //   176: aload_1
    //   177: invokevirtual 147	java/io/RandomAccessFile:close	()V
    //   180: aload_3
    //   181: areturn
    //   182: aload_0
    //   183: instanceof 149
    //   186: ifeq -51 -> 135
    //   189: aload_0
    //   190: checkcast 149	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp
    //   193: astore_2
    //   194: aload_3
    //   195: aload_2
    //   196: invokevirtual 150	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getRetCode	()I
    //   199: putfield 45	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:a	I
    //   202: aload_3
    //   203: aload_2
    //   204: invokevirtual 151	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getUuid	()J
    //   207: putfield 51	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:b	J
    //   210: aload_3
    //   211: aload_2
    //   212: invokevirtual 152	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getServiceToken	()Ljava/lang/String;
    //   215: putfield 57	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:c	Ljava/lang/String;
    //   218: aload_3
    //   219: aload_2
    //   220: invokevirtual 153	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getSecurityKey	()Ljava/lang/String;
    //   223: putfield 62	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:d	Ljava/lang/String;
    //   226: aload_3
    //   227: aload_2
    //   228: invokevirtual 154	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getPassToken	()Ljava/lang/String;
    //   231: putfield 67	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:e	Ljava/lang/String;
    //   234: aload_3
    //   235: aload_2
    //   236: invokevirtual 155	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getNickname	()Ljava/lang/String;
    //   239: putfield 72	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:f	Ljava/lang/String;
    //   242: aload_3
    //   243: aload_2
    //   244: invokevirtual 156	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getHeadimgurl	()Ljava/lang/String;
    //   247: putfield 77	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:g	Ljava/lang/String;
    //   250: aload_3
    //   251: aload_2
    //   252: invokevirtual 157	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getSex	()I
    //   255: putfield 82	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:h	I
    //   258: aload_3
    //   259: aload_2
    //   260: invokevirtual 158	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getLoginStatus	()I
    //   263: putfield 87	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:i	I
    //   266: aload_3
    //   267: aload_2
    //   268: invokevirtual 159	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getHasInnerAvatar	()Z
    //   271: putfield 93	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:j	Z
    //   274: aload_3
    //   275: aload_2
    //   276: invokevirtual 160	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getHasInnerNickname	()Z
    //   279: putfield 98	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:k	Z
    //   282: aload_3
    //   283: aload_2
    //   284: invokevirtual 161	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getHasInnerSex	()Z
    //   287: putfield 103	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:l	Z
    //   290: aload_3
    //   291: aload_2
    //   292: invokevirtual 162	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getIsSetGuide	()Z
    //   295: putfield 108	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:m	Z
    //   298: aload_3
    //   299: aload_2
    //   300: invokevirtual 165	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:getErrMsg	()Ljava/lang/String;
    //   303: putfield 167	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:n	Ljava/lang/String;
    //   306: goto -171 -> 135
    //   309: astore_0
    //   310: aload_0
    //   311: invokevirtual 170	java/lang/Exception:printStackTrace	()V
    //   314: aconst_null
    //   315: areturn
    //   316: astore_2
    //   317: aconst_null
    //   318: astore_1
    //   319: aload_1
    //   320: astore_0
    //   321: aload_2
    //   322: invokevirtual 170	java/lang/Exception:printStackTrace	()V
    //   325: aload_1
    //   326: invokevirtual 147	java/io/RandomAccessFile:close	()V
    //   329: goto -149 -> 180
    //   332: astore_0
    //   333: goto -153 -> 180
    //   336: astore_1
    //   337: aconst_null
    //   338: astore_0
    //   339: aload_0
    //   340: invokevirtual 147	java/io/RandomAccessFile:close	()V
    //   343: aload_1
    //   344: athrow
    //   345: astore_0
    //   346: goto -166 -> 180
    //   349: astore_0
    //   350: goto -7 -> 343
    //   353: astore_1
    //   354: goto -15 -> 339
    //   357: astore_2
    //   358: goto -39 -> 319
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	361	0	paramGeneratedMessage	GeneratedMessage
    //   0	361	1	paramAccountType	AccountType
    //   30	270	2	localObject	Object
    //   316	6	2	localException1	Exception
    //   357	1	2	localException2	Exception
    //   13	286	3	localMilinkAccount	MilinkAccount
    // Exception table:
    //   from	to	target	type
    //   6	135	309	java/lang/Exception
    //   135	144	309	java/lang/Exception
    //   182	306	309	java/lang/Exception
    //   343	345	309	java/lang/Exception
    //   144	169	316	java/lang/Exception
    //   325	329	332	java/lang/Exception
    //   144	169	336	finally
    //   176	180	345	java/lang/Exception
    //   339	343	349	java/lang/Exception
    //   171	176	353	finally
    //   321	325	353	finally
    //   171	176	357	java/lang/Exception
  }
  
  /* Error */
  public static MilinkAccount a(AccountType paramAccountType)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 113	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:b	(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;
    //   4: invokevirtual 176	java/io/File:exists	()Z
    //   7: ifne +11 -> 18
    //   10: aconst_null
    //   11: putstatic 110	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:p	Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
    //   14: getstatic 110	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:p	Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
    //   17: areturn
    //   18: aload_0
    //   19: invokestatic 113	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:b	(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;
    //   22: astore_1
    //   23: aload_1
    //   24: invokevirtual 176	java/io/File:exists	()Z
    //   27: ifeq -13 -> 14
    //   30: getstatic 177	com/xiaomi/gamecenter/sdk/protocol/ProDefine:n	Ljava/lang/String;
    //   33: astore_2
    //   34: new 135	java/io/RandomAccessFile
    //   37: dup
    //   38: aload_1
    //   39: ldc -77
    //   41: invokespecial 140	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   44: astore_2
    //   45: aload_2
    //   46: astore_1
    //   47: aload_2
    //   48: invokevirtual 182	java/io/RandomAccessFile:length	()J
    //   51: l2i
    //   52: newarray <illegal type>
    //   54: astore_3
    //   55: aload_2
    //   56: astore_1
    //   57: aload_2
    //   58: aload_3
    //   59: invokevirtual 186	java/io/RandomAccessFile:read	([B)I
    //   62: pop
    //   63: aload_2
    //   64: astore_1
    //   65: aload_3
    //   66: getstatic 123	com/xiaomi/gamecenter/sdk/protocol/ProDefine:o	Ljava/lang/String;
    //   69: invokevirtual 128	java/lang/String:getBytes	()[B
    //   72: invokestatic 188	cn/com/wali/basetool/utils/AESEncryption:b	([B[B)[B
    //   75: invokestatic 192	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:parseFrom	([B)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    //   78: aload_0
    //   79: invokestatic 194	com/xiaomi/gamecenter/sdk/milink/MilinkAccount:a	(Lcom/google/protobuf/GeneratedMessage;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
    //   82: pop
    //   83: aload_2
    //   84: invokevirtual 147	java/io/RandomAccessFile:close	()V
    //   87: goto -73 -> 14
    //   90: astore_0
    //   91: goto -77 -> 14
    //   94: astore_3
    //   95: aconst_null
    //   96: astore_0
    //   97: aload_0
    //   98: astore_1
    //   99: aload_3
    //   100: invokevirtual 170	java/lang/Exception:printStackTrace	()V
    //   103: aload_0
    //   104: invokevirtual 147	java/io/RandomAccessFile:close	()V
    //   107: goto -93 -> 14
    //   110: astore_0
    //   111: goto -97 -> 14
    //   114: astore_0
    //   115: aconst_null
    //   116: astore_1
    //   117: aload_1
    //   118: invokevirtual 147	java/io/RandomAccessFile:close	()V
    //   121: aload_0
    //   122: athrow
    //   123: astore_1
    //   124: goto -3 -> 121
    //   127: astore_0
    //   128: goto -11 -> 117
    //   131: astore_3
    //   132: aload_2
    //   133: astore_0
    //   134: goto -37 -> 97
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	paramAccountType	AccountType
    //   22	96	1	localObject1	Object
    //   123	1	1	localException1	Exception
    //   33	100	2	localObject2	Object
    //   54	12	3	arrayOfByte	byte[]
    //   94	6	3	localException2	Exception
    //   131	1	3	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   83	87	90	java/lang/Exception
    //   34	45	94	java/lang/Exception
    //   103	107	110	java/lang/Exception
    //   34	45	114	finally
    //   117	121	123	java/lang/Exception
    //   47	55	127	finally
    //   57	63	127	finally
    //   65	83	127	finally
    //   99	103	127	finally
    //   47	55	131	java/lang/Exception
    //   57	63	131	java/lang/Exception
    //   65	83	131	java/lang/Exception
  }
  
  public static MilinkAccount a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    PackgeInfoHelper.a();
    return a(PackgeInfoHelper.a(paramString));
  }
  
  private static File b(AccountType paramAccountType)
  {
    paramAccountType = ProDefine.m + "milink_" + paramAccountType.ordinal();
    return new File(MiCommplatform.getInstance().getApplicationContext().getFilesDir(), paramAccountType);
  }
  
  public final long a()
  {
    return this.b;
  }
  
  public final String b()
  {
    return this.c;
  }
  
  public final String c()
  {
    return this.f;
  }
  
  public final String d()
  {
    return this.g;
  }
  
  public final GeneratedMessage e()
  {
    return this.o;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */