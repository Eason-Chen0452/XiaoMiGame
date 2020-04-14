package org.xiaomi.gamecenter.milink.msg;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import com.google.protobuf.GeneratedMessage.BuilderParent;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.List;

public final class AccountProto
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_descriptor, new String[] { "AccountType", "Code", "Openid", "AccessToken", "ExpiresIn", "RefreshToken", "IsSaveSt", "Appid" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_descriptor, new String[] { "RetCode", "Uuid", "ServiceToken", "SecurityKey", "PassToken", "Nickname", "Headimgurl", "Sex", "LoginStatus", "HasInnerAvatar", "HasInnerNickname", "HasInnerSex", "IsSetGuide" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_descriptor, new String[] { "AccountType", "Mid", "Miservicetoken" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_descriptor, new String[] { "RetCode", "Uuid", "ServiceToken", "SecurityKey", "PassToken", "Nickname", "Headimgurl", "Sex", "LoginStatus", "HasInnerAvatar", "HasInnerNickname", "HasInnerSex", "IsSetGuide", "ErrMsg" });
  
  static
  {
    a locala = new a();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\rAccount.proto\022 org.xiaomi.gamecenter.milink.msg\"¤\001\n\bLoginReq\022\023\n\013accountType\030\001 \002(\r\022\f\n\004code\030\002 \001(\t\022\016\n\006openid\030\003 \001(\t\022\023\n\013accessToken\030\004 \001(\t\022\022\n\nexpires_in\030\005 \001(\r\022\024\n\frefreshToken\030\006 \001(\t\022\020\n\bisSaveSt\030\007 \001(\b\022\024\n\005appid\030\b \001(\005:\00520002\"\002\n\bLoginRsp\022\017\n\007retCode\030\001 \002(\r\022\f\n\004uuid\030\002 \001(\004\022\024\n\fserviceToken\030\003 \001(\t\022\023\n\013securityKey\030\004 \001(\t\022\021\n\tpassToken\030\005 \001(\t\022\020\n\bnickname\030\006 \001(\t\022\022\n\nheadimgurl\030\007 \001(\t\022\013\n\003sex\030\b \001(\r\022\023\n\013loginStatus\030\t \001(\r\022\026\n\016ha", "sInnerAvatar\030\n \001(\b\022\030\n\020hasInnerNickname\030\013 \001(\b\022\023\n\013hasInnerSex\030\f \001(\b\022\031\n\nisSetGuide\030\r \001(\b:\005false\"L\n\rMiSsoLoginReq\022\026\n\013accountType\030\001 \002(\r:\0014\022\013\n\003mid\030\002 \002(\004\022\026\n\016miservicetoken\030\003 \002(\t\"¦\002\n\rMiSsoLoginRsp\022\017\n\007retCode\030\001 \002(\r\022\f\n\004uuid\030\002 \001(\004\022\024\n\fserviceToken\030\003 \001(\t\022\023\n\013securityKey\030\004 \001(\t\022\021\n\tpassToken\030\005 \001(\t\022\020\n\bnickname\030\006 \001(\t\022\022\n\nheadimgurl\030\007 \001(\t\022\013\n\003sex\030\b \001(\r\022\023\n\013loginStatus\030\t \001(\r\022\026\n\016hasInnerAvatar\030\n \001(\b\022\030\n\020hasInnerNickname\030\013 ", "\001(\b\022\023\n\013hasInnerSex\030\f \001(\b\022\031\n\nisSetGuide\030\r \001(\b:\005false\022\016\n\006errMsg\030\016 \001(\tB0\n org.xiaomi.gamecenter.milink.msgB\fAccountProto" }, new Descriptors.FileDescriptor[0], locala);
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class LoginReq
    extends GeneratedMessage
    implements AccountProto.LoginReqOrBuilder
  {
    public static final int ACCESSTOKEN_FIELD_NUMBER = 4;
    public static final int ACCOUNTTYPE_FIELD_NUMBER = 1;
    public static final int APPID_FIELD_NUMBER = 8;
    public static final int CODE_FIELD_NUMBER = 2;
    public static final int EXPIRES_IN_FIELD_NUMBER = 5;
    public static final int ISSAVEST_FIELD_NUMBER = 7;
    public static final int OPENID_FIELD_NUMBER = 3;
    public static Parser<LoginReq> PARSER = new b();
    public static final int REFRESHTOKEN_FIELD_NUMBER = 6;
    private static final LoginReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object accessToken_;
    private int accountType_;
    private int appid_;
    private int bitField0_;
    private Object code_;
    private int expiresIn_;
    private boolean isSaveSt_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object openid_;
    private Object refreshToken_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      LoginReq localLoginReq = new LoginReq(true);
      defaultInstance = localLoginReq;
      localLoginReq.initFields();
    }
    
    /* Error */
    private LoginReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 78	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 80	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 82	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 71	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:initFields	()V
      //   18: invokestatic 88	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +342 -> 368
      //   29: aload_1
      //   30: invokevirtual 94	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+345->382, 0:+348->385, 8:+101->138, 18:+145->182, 26:+187->224, 34:+212->249, 40:+238->275, 50:+260->297, 56:+286->323, 64:+308->345
      //   120: aload_0
      //   121: aload_1
      //   122: aload 5
      //   124: aload_2
      //   125: iload 4
      //   127: invokevirtual 98	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   130: ifne -105 -> 25
      //   133: iconst_1
      //   134: istore_3
      //   135: goto -110 -> 25
      //   138: aload_0
      //   139: aload_0
      //   140: getfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   143: iconst_1
      //   144: ior
      //   145: putfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   148: aload_0
      //   149: aload_1
      //   150: invokevirtual 103	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   153: putfield 105	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:accountType_	I
      //   156: goto -131 -> 25
      //   159: astore_1
      //   160: aload_1
      //   161: aload_0
      //   162: invokevirtual 109	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   165: athrow
      //   166: astore_1
      //   167: aload_0
      //   168: aload 5
      //   170: invokevirtual 115	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   173: putfield 117	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   176: aload_0
      //   177: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:makeExtensionsImmutable	()V
      //   180: aload_1
      //   181: athrow
      //   182: aload_1
      //   183: invokevirtual 124	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   186: astore 6
      //   188: aload_0
      //   189: aload_0
      //   190: getfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   193: iconst_2
      //   194: ior
      //   195: putfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   198: aload_0
      //   199: aload 6
      //   201: putfield 126	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:code_	Ljava/lang/Object;
      //   204: goto -179 -> 25
      //   207: astore_1
      //   208: new 75	com/google/protobuf/InvalidProtocolBufferException
      //   211: dup
      //   212: aload_1
      //   213: invokevirtual 130	java/io/IOException:getMessage	()Ljava/lang/String;
      //   216: invokespecial 133	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   219: aload_0
      //   220: invokevirtual 109	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   223: athrow
      //   224: aload_1
      //   225: invokevirtual 124	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   228: astore 6
      //   230: aload_0
      //   231: aload_0
      //   232: getfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   235: iconst_4
      //   236: ior
      //   237: putfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   240: aload_0
      //   241: aload 6
      //   243: putfield 135	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:openid_	Ljava/lang/Object;
      //   246: goto -221 -> 25
      //   249: aload_1
      //   250: invokevirtual 124	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   253: astore 6
      //   255: aload_0
      //   256: aload_0
      //   257: getfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   260: bipush 8
      //   262: ior
      //   263: putfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   266: aload_0
      //   267: aload 6
      //   269: putfield 137	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:accessToken_	Ljava/lang/Object;
      //   272: goto -247 -> 25
      //   275: aload_0
      //   276: aload_0
      //   277: getfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   280: bipush 16
      //   282: ior
      //   283: putfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   286: aload_0
      //   287: aload_1
      //   288: invokevirtual 103	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   291: putfield 139	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:expiresIn_	I
      //   294: goto -269 -> 25
      //   297: aload_1
      //   298: invokevirtual 124	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   301: astore 6
      //   303: aload_0
      //   304: aload_0
      //   305: getfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   308: bipush 32
      //   310: ior
      //   311: putfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   314: aload_0
      //   315: aload 6
      //   317: putfield 141	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:refreshToken_	Ljava/lang/Object;
      //   320: goto -295 -> 25
      //   323: aload_0
      //   324: aload_0
      //   325: getfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   328: bipush 64
      //   330: ior
      //   331: putfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   334: aload_0
      //   335: aload_1
      //   336: invokevirtual 145	com/google/protobuf/CodedInputStream:readBool	()Z
      //   339: putfield 147	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:isSaveSt_	Z
      //   342: goto -317 -> 25
      //   345: aload_0
      //   346: aload_0
      //   347: getfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   350: sipush 128
      //   353: ior
      //   354: putfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:bitField0_	I
      //   357: aload_0
      //   358: aload_1
      //   359: invokevirtual 150	com/google/protobuf/CodedInputStream:readInt32	()I
      //   362: putfield 152	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:appid_	I
      //   365: goto -340 -> 25
      //   368: aload_0
      //   369: aload 5
      //   371: invokevirtual 115	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   374: putfield 117	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   377: aload_0
      //   378: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:makeExtensionsImmutable	()V
      //   381: return
      //   382: goto -262 -> 120
      //   385: iconst_1
      //   386: istore_3
      //   387: goto -362 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	390	0	this	LoginReq
      //   0	390	1	paramCodedInputStream	CodedInputStream
      //   0	390	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	363	3	i	int
      //   33	93	4	j	int
      //   21	349	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   186	130	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	159	com/google/protobuf/InvalidProtocolBufferException
      //   120	133	159	com/google/protobuf/InvalidProtocolBufferException
      //   138	156	159	com/google/protobuf/InvalidProtocolBufferException
      //   182	204	159	com/google/protobuf/InvalidProtocolBufferException
      //   224	246	159	com/google/protobuf/InvalidProtocolBufferException
      //   249	272	159	com/google/protobuf/InvalidProtocolBufferException
      //   275	294	159	com/google/protobuf/InvalidProtocolBufferException
      //   297	320	159	com/google/protobuf/InvalidProtocolBufferException
      //   323	342	159	com/google/protobuf/InvalidProtocolBufferException
      //   345	365	159	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	166	finally
      //   120	133	166	finally
      //   138	156	166	finally
      //   160	166	166	finally
      //   182	204	166	finally
      //   208	224	166	finally
      //   224	246	166	finally
      //   249	272	166	finally
      //   275	294	166	finally
      //   297	320	166	finally
      //   323	342	166	finally
      //   345	365	166	finally
      //   29	35	207	java/io/IOException
      //   120	133	207	java/io/IOException
      //   138	156	207	java/io/IOException
      //   182	204	207	java/io/IOException
      //   224	246	207	java/io/IOException
      //   249	272	207	java/io/IOException
      //   275	294	207	java/io/IOException
      //   297	320	207	java/io/IOException
      //   323	342	207	java/io/IOException
      //   345	365	207	java/io/IOException
    }
    
    private LoginReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private LoginReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static LoginReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_descriptor;
    }
    
    private void initFields()
    {
      this.accountType_ = 0;
      this.code_ = "";
      this.openid_ = "";
      this.accessToken_ = "";
      this.expiresIn_ = 0;
      this.refreshToken_ = "";
      this.isSaveSt_ = false;
      this.appid_ = 20002;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(LoginReq paramLoginReq)
    {
      return newBuilder().mergeFrom(paramLoginReq);
    }
    
    public static LoginReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (LoginReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static LoginReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LoginReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static LoginReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (LoginReq)PARSER.parseFrom(paramByteString);
    }
    
    public static LoginReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (LoginReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static LoginReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (LoginReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static LoginReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LoginReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static LoginReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (LoginReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static LoginReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LoginReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static LoginReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (LoginReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static LoginReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (LoginReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getAccessToken()
    {
      Object localObject = this.accessToken_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.accessToken_ = str;
      }
      return str;
    }
    
    public final ByteString getAccessTokenBytes()
    {
      Object localObject = this.accessToken_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.accessToken_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getAccountType()
    {
      return this.accountType_;
    }
    
    public final int getAppid()
    {
      return this.appid_;
    }
    
    public final String getCode()
    {
      Object localObject = this.code_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.code_ = str;
      }
      return str;
    }
    
    public final ByteString getCodeBytes()
    {
      Object localObject = this.code_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.code_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final LoginReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getExpiresIn()
    {
      return this.expiresIn_;
    }
    
    public final boolean getIsSaveSt()
    {
      return this.isSaveSt_;
    }
    
    public final String getOpenid()
    {
      Object localObject = this.openid_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.openid_ = str;
      }
      return str;
    }
    
    public final ByteString getOpenidBytes()
    {
      Object localObject = this.openid_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.openid_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<LoginReq> getParserForType()
    {
      return PARSER;
    }
    
    public final String getRefreshToken()
    {
      Object localObject = this.refreshToken_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.refreshToken_ = str;
      }
      return str;
    }
    
    public final ByteString getRefreshTokenBytes()
    {
      Object localObject = this.refreshToken_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.refreshToken_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt32Size(1, this.accountType_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getCodeBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getOpenidBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getAccessTokenBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeUInt32Size(5, this.expiresIn_);
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getRefreshTokenBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBoolSize(7, this.isSaveSt_);
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeInt32Size(8, this.appid_);
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAccessToken()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasAccountType()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasAppid()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasCode()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasExpiresIn()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasIsSaveSt()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasOpenid()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasRefreshToken()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginReq.class, Builder.class);
    }
    
    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i == 1) {
        return true;
      }
      if (i == 0) {
        return false;
      }
      if (!hasAccountType())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      this.memoizedIsInitialized = 1;
      return true;
    }
    
    public final Builder newBuilderForType()
    {
      return newBuilder();
    }
    
    protected final Builder newBuilderForType(GeneratedMessage.BuilderParent paramBuilderParent)
    {
      return new Builder(paramBuilderParent, null);
    }
    
    public final Builder toBuilder()
    {
      return newBuilder(this);
    }
    
    protected final Object writeReplace()
      throws ObjectStreamException
    {
      return super.writeReplace();
    }
    
    public final void writeTo(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      getSerializedSize();
      if ((this.bitField0_ & 0x1) == 1) {
        paramCodedOutputStream.writeUInt32(1, this.accountType_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getCodeBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getOpenidBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getAccessTokenBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeUInt32(5, this.expiresIn_);
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getRefreshTokenBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBool(7, this.isSaveSt_);
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeInt32(8, this.appid_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements AccountProto.LoginReqOrBuilder
    {
      private Object accessToken_ = "";
      private int accountType_;
      private int appid_ = 20002;
      private int bitField0_;
      private Object code_ = "";
      private int expiresIn_;
      private boolean isSaveSt_;
      private Object openid_ = "";
      private Object refreshToken_ = "";
      
      private Builder()
      {
        maybeForceBuilderInitialization();
      }
      
      private Builder(GeneratedMessage.BuilderParent paramBuilderParent)
      {
        super();
        maybeForceBuilderInitialization();
      }
      
      private static Builder create()
      {
        return new Builder();
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final AccountProto.LoginReq build()
      {
        AccountProto.LoginReq localLoginReq = buildPartial();
        if (!localLoginReq.isInitialized()) {
          throw newUninitializedMessageException(localLoginReq);
        }
        return localLoginReq;
      }
      
      public final AccountProto.LoginReq buildPartial()
      {
        int j = 1;
        AccountProto.LoginReq localLoginReq = new AccountProto.LoginReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          AccountProto.LoginReq.access$702(localLoginReq, this.accountType_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          AccountProto.LoginReq.access$802(localLoginReq, this.code_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          AccountProto.LoginReq.access$902(localLoginReq, this.openid_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          AccountProto.LoginReq.access$1002(localLoginReq, this.accessToken_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          AccountProto.LoginReq.access$1102(localLoginReq, this.expiresIn_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          AccountProto.LoginReq.access$1202(localLoginReq, this.refreshToken_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          AccountProto.LoginReq.access$1302(localLoginReq, this.isSaveSt_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          AccountProto.LoginReq.access$1402(localLoginReq, this.appid_);
          AccountProto.LoginReq.access$1502(localLoginReq, i);
          onBuilt();
          return localLoginReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.accountType_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.code_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.openid_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.accessToken_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.expiresIn_ = 0;
        this.bitField0_ &= 0xFFFFFFEF;
        this.refreshToken_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.isSaveSt_ = false;
        this.bitField0_ &= 0xFFFFFFBF;
        this.appid_ = 20002;
        this.bitField0_ &= 0xFF7F;
        return this;
      }
      
      public final Builder clearAccessToken()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.accessToken_ = AccountProto.LoginReq.getDefaultInstance().getAccessToken();
        onChanged();
        return this;
      }
      
      public final Builder clearAccountType()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.accountType_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearAppid()
      {
        this.bitField0_ &= 0xFF7F;
        this.appid_ = 20002;
        onChanged();
        return this;
      }
      
      public final Builder clearCode()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.code_ = AccountProto.LoginReq.getDefaultInstance().getCode();
        onChanged();
        return this;
      }
      
      public final Builder clearExpiresIn()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.expiresIn_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearIsSaveSt()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.isSaveSt_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearOpenid()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.openid_ = AccountProto.LoginReq.getDefaultInstance().getOpenid();
        onChanged();
        return this;
      }
      
      public final Builder clearRefreshToken()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.refreshToken_ = AccountProto.LoginReq.getDefaultInstance().getRefreshToken();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getAccessToken()
      {
        Object localObject = this.accessToken_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.accessToken_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getAccessTokenBytes()
      {
        Object localObject = this.accessToken_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.accessToken_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getAccountType()
      {
        return this.accountType_;
      }
      
      public final int getAppid()
      {
        return this.appid_;
      }
      
      public final String getCode()
      {
        Object localObject = this.code_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.code_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCodeBytes()
      {
        Object localObject = this.code_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.code_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final AccountProto.LoginReq getDefaultInstanceForType()
      {
        return AccountProto.LoginReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_descriptor;
      }
      
      public final int getExpiresIn()
      {
        return this.expiresIn_;
      }
      
      public final boolean getIsSaveSt()
      {
        return this.isSaveSt_;
      }
      
      public final String getOpenid()
      {
        Object localObject = this.openid_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.openid_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getOpenidBytes()
      {
        Object localObject = this.openid_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.openid_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getRefreshToken()
      {
        Object localObject = this.refreshToken_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.refreshToken_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getRefreshTokenBytes()
      {
        Object localObject = this.refreshToken_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.refreshToken_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasAccessToken()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasAccountType()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasAppid()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasCode()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasExpiresIn()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasIsSaveSt()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasOpenid()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasRefreshToken()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(AccountProto.LoginReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return hasAccountType();
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 242	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 248 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 173	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 251	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 173	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
        //   49: pop
        //   50: aload_1
        //   51: athrow
        //   52: astore_1
        //   53: aload_3
        //   54: astore_2
        //   55: goto -15 -> 40
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	58	0	this	Builder
        //   0	58	1	paramCodedInputStream	CodedInputStream
        //   0	58	2	paramExtensionRegistryLite	ExtensionRegistryLite
        //   1	53	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   2	16	28	com/google/protobuf/InvalidProtocolBufferException
        //   37	39	39	finally
        //   2	16	52	finally
        //   29	37	52	finally
      }
      
      public final Builder mergeFrom(Message paramMessage)
      {
        if ((paramMessage instanceof AccountProto.LoginReq)) {
          return mergeFrom((AccountProto.LoginReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(AccountProto.LoginReq paramLoginReq)
      {
        if (paramLoginReq == AccountProto.LoginReq.getDefaultInstance()) {
          return this;
        }
        if (paramLoginReq.hasAccountType()) {
          setAccountType(paramLoginReq.getAccountType());
        }
        if (paramLoginReq.hasCode())
        {
          this.bitField0_ |= 0x2;
          this.code_ = paramLoginReq.code_;
          onChanged();
        }
        if (paramLoginReq.hasOpenid())
        {
          this.bitField0_ |= 0x4;
          this.openid_ = paramLoginReq.openid_;
          onChanged();
        }
        if (paramLoginReq.hasAccessToken())
        {
          this.bitField0_ |= 0x8;
          this.accessToken_ = paramLoginReq.accessToken_;
          onChanged();
        }
        if (paramLoginReq.hasExpiresIn()) {
          setExpiresIn(paramLoginReq.getExpiresIn());
        }
        if (paramLoginReq.hasRefreshToken())
        {
          this.bitField0_ |= 0x20;
          this.refreshToken_ = paramLoginReq.refreshToken_;
          onChanged();
        }
        if (paramLoginReq.hasIsSaveSt()) {
          setIsSaveSt(paramLoginReq.getIsSaveSt());
        }
        if (paramLoginReq.hasAppid()) {
          setAppid(paramLoginReq.getAppid());
        }
        mergeUnknownFields(paramLoginReq.getUnknownFields());
        return this;
      }
      
      public final Builder setAccessToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.accessToken_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setAccessTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.accessToken_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setAccountType(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.accountType_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setAppid(int paramInt)
      {
        this.bitField0_ |= 0x80;
        this.appid_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setCode(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.code_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCodeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.code_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setExpiresIn(int paramInt)
      {
        this.bitField0_ |= 0x10;
        this.expiresIn_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setIsSaveSt(boolean paramBoolean)
      {
        this.bitField0_ |= 0x40;
        this.isSaveSt_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setOpenid(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.openid_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setOpenidBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.openid_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setRefreshToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.refreshToken_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setRefreshTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.refreshToken_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface LoginReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getAccessToken();
    
    public abstract ByteString getAccessTokenBytes();
    
    public abstract int getAccountType();
    
    public abstract int getAppid();
    
    public abstract String getCode();
    
    public abstract ByteString getCodeBytes();
    
    public abstract int getExpiresIn();
    
    public abstract boolean getIsSaveSt();
    
    public abstract String getOpenid();
    
    public abstract ByteString getOpenidBytes();
    
    public abstract String getRefreshToken();
    
    public abstract ByteString getRefreshTokenBytes();
    
    public abstract boolean hasAccessToken();
    
    public abstract boolean hasAccountType();
    
    public abstract boolean hasAppid();
    
    public abstract boolean hasCode();
    
    public abstract boolean hasExpiresIn();
    
    public abstract boolean hasIsSaveSt();
    
    public abstract boolean hasOpenid();
    
    public abstract boolean hasRefreshToken();
  }
  
  public static final class LoginRsp
    extends GeneratedMessage
    implements AccountProto.LoginRspOrBuilder
  {
    public static final int HASINNERAVATAR_FIELD_NUMBER = 10;
    public static final int HASINNERNICKNAME_FIELD_NUMBER = 11;
    public static final int HASINNERSEX_FIELD_NUMBER = 12;
    public static final int HEADIMGURL_FIELD_NUMBER = 7;
    public static final int ISSETGUIDE_FIELD_NUMBER = 13;
    public static final int LOGINSTATUS_FIELD_NUMBER = 9;
    public static final int NICKNAME_FIELD_NUMBER = 6;
    public static Parser<LoginRsp> PARSER = new c();
    public static final int PASSTOKEN_FIELD_NUMBER = 5;
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int SECURITYKEY_FIELD_NUMBER = 4;
    public static final int SERVICETOKEN_FIELD_NUMBER = 3;
    public static final int SEX_FIELD_NUMBER = 8;
    public static final int UUID_FIELD_NUMBER = 2;
    private static final LoginRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private boolean hasInnerAvatar_;
    private boolean hasInnerNickname_;
    private boolean hasInnerSex_;
    private Object headimgurl_;
    private boolean isSetGuide_;
    private int loginStatus_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object nickname_;
    private Object passToken_;
    private int retCode_;
    private Object securityKey_;
    private Object serviceToken_;
    private int sex_;
    private final UnknownFieldSet unknownFields;
    private long uuid_;
    
    static
    {
      LoginRsp localLoginRsp = new LoginRsp(true);
      defaultInstance = localLoginRsp;
      localLoginRsp.initFields();
    }
    
    /* Error */
    private LoginRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 93	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 95	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 97	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 86	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:initFields	()V
      //   18: invokestatic 103	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +501 -> 527
      //   29: aload_1
      //   30: invokevirtual 109	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+504->541, 0:+507->544, 8:+141->178, 16:+185->222, 26:+223->260, 34:+248->285, 42:+274->311, 50:+300->337, 58:+326->363, 64:+352->389, 72:+375->412, 80:+398->435, 88:+421->458, 96:+444->481, 104:+467->504
      //   160: aload_0
      //   161: aload_1
      //   162: aload 5
      //   164: aload_2
      //   165: iload 4
      //   167: invokevirtual 113	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   170: ifne -145 -> 25
      //   173: iconst_1
      //   174: istore_3
      //   175: goto -150 -> 25
      //   178: aload_0
      //   179: aload_0
      //   180: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   183: iconst_1
      //   184: ior
      //   185: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   188: aload_0
      //   189: aload_1
      //   190: invokevirtual 118	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   193: putfield 120	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:retCode_	I
      //   196: goto -171 -> 25
      //   199: astore_1
      //   200: aload_1
      //   201: aload_0
      //   202: invokevirtual 124	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   205: athrow
      //   206: astore_1
      //   207: aload_0
      //   208: aload 5
      //   210: invokevirtual 130	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   213: putfield 132	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   216: aload_0
      //   217: invokevirtual 135	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:makeExtensionsImmutable	()V
      //   220: aload_1
      //   221: athrow
      //   222: aload_0
      //   223: aload_0
      //   224: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   227: iconst_2
      //   228: ior
      //   229: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   232: aload_0
      //   233: aload_1
      //   234: invokevirtual 139	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   237: putfield 141	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:uuid_	J
      //   240: goto -215 -> 25
      //   243: astore_1
      //   244: new 90	com/google/protobuf/InvalidProtocolBufferException
      //   247: dup
      //   248: aload_1
      //   249: invokevirtual 145	java/io/IOException:getMessage	()Ljava/lang/String;
      //   252: invokespecial 148	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   255: aload_0
      //   256: invokevirtual 124	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   259: athrow
      //   260: aload_1
      //   261: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   264: astore 6
      //   266: aload_0
      //   267: aload_0
      //   268: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   271: iconst_4
      //   272: ior
      //   273: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   276: aload_0
      //   277: aload 6
      //   279: putfield 154	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:serviceToken_	Ljava/lang/Object;
      //   282: goto -257 -> 25
      //   285: aload_1
      //   286: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   289: astore 6
      //   291: aload_0
      //   292: aload_0
      //   293: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   296: bipush 8
      //   298: ior
      //   299: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   302: aload_0
      //   303: aload 6
      //   305: putfield 156	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:securityKey_	Ljava/lang/Object;
      //   308: goto -283 -> 25
      //   311: aload_1
      //   312: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   315: astore 6
      //   317: aload_0
      //   318: aload_0
      //   319: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   322: bipush 16
      //   324: ior
      //   325: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   328: aload_0
      //   329: aload 6
      //   331: putfield 158	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:passToken_	Ljava/lang/Object;
      //   334: goto -309 -> 25
      //   337: aload_1
      //   338: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   341: astore 6
      //   343: aload_0
      //   344: aload_0
      //   345: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   348: bipush 32
      //   350: ior
      //   351: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   354: aload_0
      //   355: aload 6
      //   357: putfield 160	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:nickname_	Ljava/lang/Object;
      //   360: goto -335 -> 25
      //   363: aload_1
      //   364: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   367: astore 6
      //   369: aload_0
      //   370: aload_0
      //   371: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   374: bipush 64
      //   376: ior
      //   377: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   380: aload_0
      //   381: aload 6
      //   383: putfield 162	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:headimgurl_	Ljava/lang/Object;
      //   386: goto -361 -> 25
      //   389: aload_0
      //   390: aload_0
      //   391: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   394: sipush 128
      //   397: ior
      //   398: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   401: aload_0
      //   402: aload_1
      //   403: invokevirtual 118	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   406: putfield 164	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:sex_	I
      //   409: goto -384 -> 25
      //   412: aload_0
      //   413: aload_0
      //   414: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   417: sipush 256
      //   420: ior
      //   421: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   424: aload_0
      //   425: aload_1
      //   426: invokevirtual 118	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   429: putfield 166	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:loginStatus_	I
      //   432: goto -407 -> 25
      //   435: aload_0
      //   436: aload_0
      //   437: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   440: sipush 512
      //   443: ior
      //   444: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   447: aload_0
      //   448: aload_1
      //   449: invokevirtual 170	com/google/protobuf/CodedInputStream:readBool	()Z
      //   452: putfield 172	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:hasInnerAvatar_	Z
      //   455: goto -430 -> 25
      //   458: aload_0
      //   459: aload_0
      //   460: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   463: sipush 1024
      //   466: ior
      //   467: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   470: aload_0
      //   471: aload_1
      //   472: invokevirtual 170	com/google/protobuf/CodedInputStream:readBool	()Z
      //   475: putfield 174	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:hasInnerNickname_	Z
      //   478: goto -453 -> 25
      //   481: aload_0
      //   482: aload_0
      //   483: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   486: sipush 2048
      //   489: ior
      //   490: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   493: aload_0
      //   494: aload_1
      //   495: invokevirtual 170	com/google/protobuf/CodedInputStream:readBool	()Z
      //   498: putfield 176	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:hasInnerSex_	Z
      //   501: goto -476 -> 25
      //   504: aload_0
      //   505: aload_0
      //   506: getfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   509: sipush 4096
      //   512: ior
      //   513: putfield 115	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:bitField0_	I
      //   516: aload_0
      //   517: aload_1
      //   518: invokevirtual 170	com/google/protobuf/CodedInputStream:readBool	()Z
      //   521: putfield 178	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:isSetGuide_	Z
      //   524: goto -499 -> 25
      //   527: aload_0
      //   528: aload 5
      //   530: invokevirtual 130	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   533: putfield 132	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   536: aload_0
      //   537: invokevirtual 135	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:makeExtensionsImmutable	()V
      //   540: return
      //   541: goto -381 -> 160
      //   544: iconst_1
      //   545: istore_3
      //   546: goto -521 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	549	0	this	LoginRsp
      //   0	549	1	paramCodedInputStream	CodedInputStream
      //   0	549	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	522	3	i	int
      //   33	133	4	j	int
      //   21	508	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   264	118	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	199	com/google/protobuf/InvalidProtocolBufferException
      //   160	173	199	com/google/protobuf/InvalidProtocolBufferException
      //   178	196	199	com/google/protobuf/InvalidProtocolBufferException
      //   222	240	199	com/google/protobuf/InvalidProtocolBufferException
      //   260	282	199	com/google/protobuf/InvalidProtocolBufferException
      //   285	308	199	com/google/protobuf/InvalidProtocolBufferException
      //   311	334	199	com/google/protobuf/InvalidProtocolBufferException
      //   337	360	199	com/google/protobuf/InvalidProtocolBufferException
      //   363	386	199	com/google/protobuf/InvalidProtocolBufferException
      //   389	409	199	com/google/protobuf/InvalidProtocolBufferException
      //   412	432	199	com/google/protobuf/InvalidProtocolBufferException
      //   435	455	199	com/google/protobuf/InvalidProtocolBufferException
      //   458	478	199	com/google/protobuf/InvalidProtocolBufferException
      //   481	501	199	com/google/protobuf/InvalidProtocolBufferException
      //   504	524	199	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	206	finally
      //   160	173	206	finally
      //   178	196	206	finally
      //   200	206	206	finally
      //   222	240	206	finally
      //   244	260	206	finally
      //   260	282	206	finally
      //   285	308	206	finally
      //   311	334	206	finally
      //   337	360	206	finally
      //   363	386	206	finally
      //   389	409	206	finally
      //   412	432	206	finally
      //   435	455	206	finally
      //   458	478	206	finally
      //   481	501	206	finally
      //   504	524	206	finally
      //   29	35	243	java/io/IOException
      //   160	173	243	java/io/IOException
      //   178	196	243	java/io/IOException
      //   222	240	243	java/io/IOException
      //   260	282	243	java/io/IOException
      //   285	308	243	java/io/IOException
      //   311	334	243	java/io/IOException
      //   337	360	243	java/io/IOException
      //   363	386	243	java/io/IOException
      //   389	409	243	java/io/IOException
      //   412	432	243	java/io/IOException
      //   435	455	243	java/io/IOException
      //   458	478	243	java/io/IOException
      //   481	501	243	java/io/IOException
      //   504	524	243	java/io/IOException
    }
    
    private LoginRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private LoginRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static LoginRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.uuid_ = 0L;
      this.serviceToken_ = "";
      this.securityKey_ = "";
      this.passToken_ = "";
      this.nickname_ = "";
      this.headimgurl_ = "";
      this.sex_ = 0;
      this.loginStatus_ = 0;
      this.hasInnerAvatar_ = false;
      this.hasInnerNickname_ = false;
      this.hasInnerSex_ = false;
      this.isSetGuide_ = false;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1900();
    }
    
    public static Builder newBuilder(LoginRsp paramLoginRsp)
    {
      return newBuilder().mergeFrom(paramLoginRsp);
    }
    
    public static LoginRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (LoginRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static LoginRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LoginRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static LoginRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (LoginRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static LoginRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (LoginRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static LoginRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (LoginRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static LoginRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LoginRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static LoginRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (LoginRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static LoginRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LoginRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static LoginRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (LoginRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static LoginRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (LoginRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final LoginRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final boolean getHasInnerAvatar()
    {
      return this.hasInnerAvatar_;
    }
    
    public final boolean getHasInnerNickname()
    {
      return this.hasInnerNickname_;
    }
    
    public final boolean getHasInnerSex()
    {
      return this.hasInnerSex_;
    }
    
    public final String getHeadimgurl()
    {
      Object localObject = this.headimgurl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.headimgurl_ = str;
      }
      return str;
    }
    
    public final ByteString getHeadimgurlBytes()
    {
      Object localObject = this.headimgurl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.headimgurl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final boolean getIsSetGuide()
    {
      return this.isSetGuide_;
    }
    
    public final int getLoginStatus()
    {
      return this.loginStatus_;
    }
    
    public final String getNickname()
    {
      Object localObject = this.nickname_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.nickname_ = str;
      }
      return str;
    }
    
    public final ByteString getNicknameBytes()
    {
      Object localObject = this.nickname_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.nickname_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<LoginRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final String getPassToken()
    {
      Object localObject = this.passToken_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.passToken_ = str;
      }
      return str;
    }
    
    public final ByteString getPassTokenBytes()
    {
      Object localObject = this.passToken_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.passToken_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getRetCode()
    {
      return this.retCode_;
    }
    
    public final String getSecurityKey()
    {
      Object localObject = this.securityKey_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.securityKey_ = str;
      }
      return str;
    }
    
    public final ByteString getSecurityKeyBytes()
    {
      Object localObject = this.securityKey_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.securityKey_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt32Size(1, this.retCode_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt64Size(2, this.uuid_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getServiceTokenBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getSecurityKeyBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getPassTokenBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getNicknameBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getHeadimgurlBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeUInt32Size(8, this.sex_);
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeUInt32Size(9, this.loginStatus_);
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBoolSize(10, this.hasInnerAvatar_);
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBoolSize(11, this.hasInnerNickname_);
      }
      i = j;
      if ((this.bitField0_ & 0x800) == 2048) {
        i = j + CodedOutputStream.computeBoolSize(12, this.hasInnerSex_);
      }
      j = i;
      if ((this.bitField0_ & 0x1000) == 4096) {
        j = i + CodedOutputStream.computeBoolSize(13, this.isSetGuide_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getServiceToken()
    {
      Object localObject = this.serviceToken_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serviceToken_ = str;
      }
      return str;
    }
    
    public final ByteString getServiceTokenBytes()
    {
      Object localObject = this.serviceToken_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serviceToken_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getSex()
    {
      return this.sex_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final long getUuid()
    {
      return this.uuid_;
    }
    
    public final boolean hasHasInnerAvatar()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasHasInnerNickname()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasHasInnerSex()
    {
      return (this.bitField0_ & 0x800) == 2048;
    }
    
    public final boolean hasHeadimgurl()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasIsSetGuide()
    {
      return (this.bitField0_ & 0x1000) == 4096;
    }
    
    public final boolean hasLoginStatus()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasNickname()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasPassToken()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasSecurityKey()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasServiceToken()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasSex()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasUuid()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginRsp.class, Builder.class);
    }
    
    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i == 1) {
        return true;
      }
      if (i == 0) {
        return false;
      }
      if (!hasRetCode())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      this.memoizedIsInitialized = 1;
      return true;
    }
    
    public final Builder newBuilderForType()
    {
      return newBuilder();
    }
    
    protected final Builder newBuilderForType(GeneratedMessage.BuilderParent paramBuilderParent)
    {
      return new Builder(paramBuilderParent, null);
    }
    
    public final Builder toBuilder()
    {
      return newBuilder(this);
    }
    
    protected final Object writeReplace()
      throws ObjectStreamException
    {
      return super.writeReplace();
    }
    
    public final void writeTo(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      getSerializedSize();
      if ((this.bitField0_ & 0x1) == 1) {
        paramCodedOutputStream.writeUInt32(1, this.retCode_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt64(2, this.uuid_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getServiceTokenBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getSecurityKeyBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getPassTokenBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getNicknameBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getHeadimgurlBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeUInt32(8, this.sex_);
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeUInt32(9, this.loginStatus_);
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBool(10, this.hasInnerAvatar_);
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBool(11, this.hasInnerNickname_);
      }
      if ((this.bitField0_ & 0x800) == 2048) {
        paramCodedOutputStream.writeBool(12, this.hasInnerSex_);
      }
      if ((this.bitField0_ & 0x1000) == 4096) {
        paramCodedOutputStream.writeBool(13, this.isSetGuide_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements AccountProto.LoginRspOrBuilder
    {
      private int bitField0_;
      private boolean hasInnerAvatar_;
      private boolean hasInnerNickname_;
      private boolean hasInnerSex_;
      private Object headimgurl_ = "";
      private boolean isSetGuide_;
      private int loginStatus_;
      private Object nickname_ = "";
      private Object passToken_ = "";
      private int retCode_;
      private Object securityKey_ = "";
      private Object serviceToken_ = "";
      private int sex_;
      private long uuid_;
      
      private Builder()
      {
        maybeForceBuilderInitialization();
      }
      
      private Builder(GeneratedMessage.BuilderParent paramBuilderParent)
      {
        super();
        maybeForceBuilderInitialization();
      }
      
      private static Builder create()
      {
        return new Builder();
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final AccountProto.LoginRsp build()
      {
        AccountProto.LoginRsp localLoginRsp = buildPartial();
        if (!localLoginRsp.isInitialized()) {
          throw newUninitializedMessageException(localLoginRsp);
        }
        return localLoginRsp;
      }
      
      public final AccountProto.LoginRsp buildPartial()
      {
        int j = 1;
        AccountProto.LoginRsp localLoginRsp = new AccountProto.LoginRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          AccountProto.LoginRsp.access$2302(localLoginRsp, this.retCode_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          AccountProto.LoginRsp.access$2402(localLoginRsp, this.uuid_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          AccountProto.LoginRsp.access$2502(localLoginRsp, this.serviceToken_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          AccountProto.LoginRsp.access$2602(localLoginRsp, this.securityKey_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          AccountProto.LoginRsp.access$2702(localLoginRsp, this.passToken_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          AccountProto.LoginRsp.access$2802(localLoginRsp, this.nickname_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          AccountProto.LoginRsp.access$2902(localLoginRsp, this.headimgurl_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          AccountProto.LoginRsp.access$3002(localLoginRsp, this.sex_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          AccountProto.LoginRsp.access$3102(localLoginRsp, this.loginStatus_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          AccountProto.LoginRsp.access$3202(localLoginRsp, this.hasInnerAvatar_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          AccountProto.LoginRsp.access$3302(localLoginRsp, this.hasInnerNickname_);
          i = j;
          if ((k & 0x800) == 2048) {
            i = j | 0x800;
          }
          AccountProto.LoginRsp.access$3402(localLoginRsp, this.hasInnerSex_);
          j = i;
          if ((k & 0x1000) == 4096) {
            j = i | 0x1000;
          }
          AccountProto.LoginRsp.access$3502(localLoginRsp, this.isSetGuide_);
          AccountProto.LoginRsp.access$3602(localLoginRsp, j);
          onBuilt();
          return localLoginRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.uuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFD;
        this.serviceToken_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.securityKey_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.passToken_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.nickname_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.headimgurl_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.sex_ = 0;
        this.bitField0_ &= 0xFF7F;
        this.loginStatus_ = 0;
        this.bitField0_ &= 0xFEFF;
        this.hasInnerAvatar_ = false;
        this.bitField0_ &= 0xFDFF;
        this.hasInnerNickname_ = false;
        this.bitField0_ &= 0xFBFF;
        this.hasInnerSex_ = false;
        this.bitField0_ &= 0xF7FF;
        this.isSetGuide_ = false;
        this.bitField0_ &= 0xEFFF;
        return this;
      }
      
      public final Builder clearHasInnerAvatar()
      {
        this.bitField0_ &= 0xFDFF;
        this.hasInnerAvatar_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearHasInnerNickname()
      {
        this.bitField0_ &= 0xFBFF;
        this.hasInnerNickname_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearHasInnerSex()
      {
        this.bitField0_ &= 0xF7FF;
        this.hasInnerSex_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearHeadimgurl()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.headimgurl_ = AccountProto.LoginRsp.getDefaultInstance().getHeadimgurl();
        onChanged();
        return this;
      }
      
      public final Builder clearIsSetGuide()
      {
        this.bitField0_ &= 0xEFFF;
        this.isSetGuide_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearLoginStatus()
      {
        this.bitField0_ &= 0xFEFF;
        this.loginStatus_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearNickname()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.nickname_ = AccountProto.LoginRsp.getDefaultInstance().getNickname();
        onChanged();
        return this;
      }
      
      public final Builder clearPassToken()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.passToken_ = AccountProto.LoginRsp.getDefaultInstance().getPassToken();
        onChanged();
        return this;
      }
      
      public final Builder clearRetCode()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.retCode_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearSecurityKey()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.securityKey_ = AccountProto.LoginRsp.getDefaultInstance().getSecurityKey();
        onChanged();
        return this;
      }
      
      public final Builder clearServiceToken()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.serviceToken_ = AccountProto.LoginRsp.getDefaultInstance().getServiceToken();
        onChanged();
        return this;
      }
      
      public final Builder clearSex()
      {
        this.bitField0_ &= 0xFF7F;
        this.sex_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearUuid()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.uuid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final AccountProto.LoginRsp getDefaultInstanceForType()
      {
        return AccountProto.LoginRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_descriptor;
      }
      
      public final boolean getHasInnerAvatar()
      {
        return this.hasInnerAvatar_;
      }
      
      public final boolean getHasInnerNickname()
      {
        return this.hasInnerNickname_;
      }
      
      public final boolean getHasInnerSex()
      {
        return this.hasInnerSex_;
      }
      
      public final String getHeadimgurl()
      {
        Object localObject = this.headimgurl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.headimgurl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getHeadimgurlBytes()
      {
        Object localObject = this.headimgurl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.headimgurl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean getIsSetGuide()
      {
        return this.isSetGuide_;
      }
      
      public final int getLoginStatus()
      {
        return this.loginStatus_;
      }
      
      public final String getNickname()
      {
        Object localObject = this.nickname_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.nickname_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNicknameBytes()
      {
        Object localObject = this.nickname_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.nickname_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getPassToken()
      {
        Object localObject = this.passToken_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.passToken_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getPassTokenBytes()
      {
        Object localObject = this.passToken_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.passToken_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final String getSecurityKey()
      {
        Object localObject = this.securityKey_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.securityKey_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSecurityKeyBytes()
      {
        Object localObject = this.securityKey_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.securityKey_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getServiceToken()
      {
        Object localObject = this.serviceToken_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serviceToken_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServiceTokenBytes()
      {
        Object localObject = this.serviceToken_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serviceToken_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getSex()
      {
        return this.sex_;
      }
      
      public final long getUuid()
      {
        return this.uuid_;
      }
      
      public final boolean hasHasInnerAvatar()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasHasInnerNickname()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasHasInnerSex()
      {
        return (this.bitField0_ & 0x800) == 2048;
      }
      
      public final boolean hasHeadimgurl()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasIsSetGuide()
      {
        return (this.bitField0_ & 0x1000) == 4096;
      }
      
      public final boolean hasLoginStatus()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasNickname()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasPassToken()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSecurityKey()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasServiceToken()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasSex()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasUuid()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(AccountProto.LoginRsp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return hasRetCode();
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 293	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 299 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 213	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 302	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 213	org/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;
        //   49: pop
        //   50: aload_1
        //   51: athrow
        //   52: astore_1
        //   53: aload_3
        //   54: astore_2
        //   55: goto -15 -> 40
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	58	0	this	Builder
        //   0	58	1	paramCodedInputStream	CodedInputStream
        //   0	58	2	paramExtensionRegistryLite	ExtensionRegistryLite
        //   1	53	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   2	16	28	com/google/protobuf/InvalidProtocolBufferException
        //   37	39	39	finally
        //   2	16	52	finally
        //   29	37	52	finally
      }
      
      public final Builder mergeFrom(Message paramMessage)
      {
        if ((paramMessage instanceof AccountProto.LoginRsp)) {
          return mergeFrom((AccountProto.LoginRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(AccountProto.LoginRsp paramLoginRsp)
      {
        if (paramLoginRsp == AccountProto.LoginRsp.getDefaultInstance()) {
          return this;
        }
        if (paramLoginRsp.hasRetCode()) {
          setRetCode(paramLoginRsp.getRetCode());
        }
        if (paramLoginRsp.hasUuid()) {
          setUuid(paramLoginRsp.getUuid());
        }
        if (paramLoginRsp.hasServiceToken())
        {
          this.bitField0_ |= 0x4;
          this.serviceToken_ = paramLoginRsp.serviceToken_;
          onChanged();
        }
        if (paramLoginRsp.hasSecurityKey())
        {
          this.bitField0_ |= 0x8;
          this.securityKey_ = paramLoginRsp.securityKey_;
          onChanged();
        }
        if (paramLoginRsp.hasPassToken())
        {
          this.bitField0_ |= 0x10;
          this.passToken_ = paramLoginRsp.passToken_;
          onChanged();
        }
        if (paramLoginRsp.hasNickname())
        {
          this.bitField0_ |= 0x20;
          this.nickname_ = paramLoginRsp.nickname_;
          onChanged();
        }
        if (paramLoginRsp.hasHeadimgurl())
        {
          this.bitField0_ |= 0x40;
          this.headimgurl_ = paramLoginRsp.headimgurl_;
          onChanged();
        }
        if (paramLoginRsp.hasSex()) {
          setSex(paramLoginRsp.getSex());
        }
        if (paramLoginRsp.hasLoginStatus()) {
          setLoginStatus(paramLoginRsp.getLoginStatus());
        }
        if (paramLoginRsp.hasHasInnerAvatar()) {
          setHasInnerAvatar(paramLoginRsp.getHasInnerAvatar());
        }
        if (paramLoginRsp.hasHasInnerNickname()) {
          setHasInnerNickname(paramLoginRsp.getHasInnerNickname());
        }
        if (paramLoginRsp.hasHasInnerSex()) {
          setHasInnerSex(paramLoginRsp.getHasInnerSex());
        }
        if (paramLoginRsp.hasIsSetGuide()) {
          setIsSetGuide(paramLoginRsp.getIsSetGuide());
        }
        mergeUnknownFields(paramLoginRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setHasInnerAvatar(boolean paramBoolean)
      {
        this.bitField0_ |= 0x200;
        this.hasInnerAvatar_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setHasInnerNickname(boolean paramBoolean)
      {
        this.bitField0_ |= 0x400;
        this.hasInnerNickname_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setHasInnerSex(boolean paramBoolean)
      {
        this.bitField0_ |= 0x800;
        this.hasInnerSex_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setHeadimgurl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.headimgurl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setHeadimgurlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.headimgurl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setIsSetGuide(boolean paramBoolean)
      {
        this.bitField0_ |= 0x1000;
        this.isSetGuide_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setLoginStatus(int paramInt)
      {
        this.bitField0_ |= 0x100;
        this.loginStatus_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setNickname(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.nickname_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNicknameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.nickname_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setPassToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.passToken_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setPassTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.passToken_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setRetCode(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.retCode_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setSecurityKey(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.securityKey_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSecurityKeyBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.securityKey_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.serviceToken_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.serviceToken_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSex(int paramInt)
      {
        this.bitField0_ |= 0x80;
        this.sex_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setUuid(long paramLong)
      {
        this.bitField0_ |= 0x2;
        this.uuid_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface LoginRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract boolean getHasInnerAvatar();
    
    public abstract boolean getHasInnerNickname();
    
    public abstract boolean getHasInnerSex();
    
    public abstract String getHeadimgurl();
    
    public abstract ByteString getHeadimgurlBytes();
    
    public abstract boolean getIsSetGuide();
    
    public abstract int getLoginStatus();
    
    public abstract String getNickname();
    
    public abstract ByteString getNicknameBytes();
    
    public abstract String getPassToken();
    
    public abstract ByteString getPassTokenBytes();
    
    public abstract int getRetCode();
    
    public abstract String getSecurityKey();
    
    public abstract ByteString getSecurityKeyBytes();
    
    public abstract String getServiceToken();
    
    public abstract ByteString getServiceTokenBytes();
    
    public abstract int getSex();
    
    public abstract long getUuid();
    
    public abstract boolean hasHasInnerAvatar();
    
    public abstract boolean hasHasInnerNickname();
    
    public abstract boolean hasHasInnerSex();
    
    public abstract boolean hasHeadimgurl();
    
    public abstract boolean hasIsSetGuide();
    
    public abstract boolean hasLoginStatus();
    
    public abstract boolean hasNickname();
    
    public abstract boolean hasPassToken();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasSecurityKey();
    
    public abstract boolean hasServiceToken();
    
    public abstract boolean hasSex();
    
    public abstract boolean hasUuid();
  }
  
  public static final class MiSsoLoginReq
    extends GeneratedMessage
    implements AccountProto.MiSsoLoginReqOrBuilder
  {
    public static final int ACCOUNTTYPE_FIELD_NUMBER = 1;
    public static final int MID_FIELD_NUMBER = 2;
    public static final int MISERVICETOKEN_FIELD_NUMBER = 3;
    public static Parser<MiSsoLoginReq> PARSER = new d();
    private static final MiSsoLoginReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int accountType_;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private long mid_;
    private Object miservicetoken_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MiSsoLoginReq localMiSsoLoginReq = new MiSsoLoginReq(true);
      defaultInstance = localMiSsoLoginReq;
      localMiSsoLoginReq.initFields();
    }
    
    /* Error */
    private MiSsoLoginReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 62	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 64	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 66	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 55	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:initFields	()V
      //   18: invokestatic 72	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +179 -> 205
      //   29: aload_1
      //   30: invokevirtual 78	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+182->219, 0:+185->222, 8:+61->98, 16:+105->142, 26:+143->180
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 82	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 84	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 84	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 87	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   113: putfield 89	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:accountType_	I
      //   116: goto -91 -> 25
      //   119: astore_1
      //   120: aload_1
      //   121: aload_0
      //   122: invokevirtual 93	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   125: athrow
      //   126: astore_1
      //   127: aload_0
      //   128: aload 5
      //   130: invokevirtual 99	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   133: putfield 101	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 104	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: aload_0
      //   144: getfield 84	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:bitField0_	I
      //   147: iconst_2
      //   148: ior
      //   149: putfield 84	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:bitField0_	I
      //   152: aload_0
      //   153: aload_1
      //   154: invokevirtual 108	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   157: putfield 110	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:mid_	J
      //   160: goto -135 -> 25
      //   163: astore_1
      //   164: new 59	com/google/protobuf/InvalidProtocolBufferException
      //   167: dup
      //   168: aload_1
      //   169: invokevirtual 114	java/io/IOException:getMessage	()Ljava/lang/String;
      //   172: invokespecial 117	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   175: aload_0
      //   176: invokevirtual 93	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   179: athrow
      //   180: aload_1
      //   181: invokevirtual 121	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   184: astore 6
      //   186: aload_0
      //   187: aload_0
      //   188: getfield 84	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:bitField0_	I
      //   191: iconst_4
      //   192: ior
      //   193: putfield 84	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:bitField0_	I
      //   196: aload_0
      //   197: aload 6
      //   199: putfield 123	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:miservicetoken_	Ljava/lang/Object;
      //   202: goto -177 -> 25
      //   205: aload_0
      //   206: aload 5
      //   208: invokevirtual 99	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   211: putfield 101	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   214: aload_0
      //   215: invokevirtual 104	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:makeExtensionsImmutable	()V
      //   218: return
      //   219: goto -139 -> 80
      //   222: iconst_1
      //   223: istore_3
      //   224: goto -199 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	227	0	this	MiSsoLoginReq
      //   0	227	1	paramCodedInputStream	CodedInputStream
      //   0	227	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	200	3	i	int
      //   33	53	4	j	int
      //   21	186	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   184	14	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	119	com/google/protobuf/InvalidProtocolBufferException
      //   80	93	119	com/google/protobuf/InvalidProtocolBufferException
      //   98	116	119	com/google/protobuf/InvalidProtocolBufferException
      //   142	160	119	com/google/protobuf/InvalidProtocolBufferException
      //   180	202	119	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	126	finally
      //   80	93	126	finally
      //   98	116	126	finally
      //   120	126	126	finally
      //   142	160	126	finally
      //   164	180	126	finally
      //   180	202	126	finally
      //   29	35	163	java/io/IOException
      //   80	93	163	java/io/IOException
      //   98	116	163	java/io/IOException
      //   142	160	163	java/io/IOException
      //   180	202	163	java/io/IOException
    }
    
    private MiSsoLoginReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MiSsoLoginReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MiSsoLoginReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_descriptor;
    }
    
    private void initFields()
    {
      this.accountType_ = 4;
      this.mid_ = 0L;
      this.miservicetoken_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$4000();
    }
    
    public static Builder newBuilder(MiSsoLoginReq paramMiSsoLoginReq)
    {
      return newBuilder().mergeFrom(paramMiSsoLoginReq);
    }
    
    public static MiSsoLoginReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiSsoLoginReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MiSsoLoginReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiSsoLoginReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiSsoLoginReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MiSsoLoginReq)PARSER.parseFrom(paramByteString);
    }
    
    public static MiSsoLoginReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiSsoLoginReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MiSsoLoginReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MiSsoLoginReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MiSsoLoginReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiSsoLoginReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MiSsoLoginReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiSsoLoginReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static MiSsoLoginReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiSsoLoginReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiSsoLoginReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MiSsoLoginReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MiSsoLoginReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiSsoLoginReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getAccountType()
    {
      return this.accountType_;
    }
    
    public final MiSsoLoginReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getMid()
    {
      return this.mid_;
    }
    
    public final String getMiservicetoken()
    {
      Object localObject = this.miservicetoken_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.miservicetoken_ = str;
      }
      return str;
    }
    
    public final ByteString getMiservicetokenBytes()
    {
      Object localObject = this.miservicetoken_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.miservicetoken_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<MiSsoLoginReq> getParserForType()
    {
      return PARSER;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt32Size(1, this.accountType_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt64Size(2, this.mid_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getMiservicetokenBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAccountType()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasMid()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasMiservicetoken()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MiSsoLoginReq.class, Builder.class);
    }
    
    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i == 1) {
        return true;
      }
      if (i == 0) {
        return false;
      }
      if (!hasAccountType())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasMid())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasMiservicetoken())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      this.memoizedIsInitialized = 1;
      return true;
    }
    
    public final Builder newBuilderForType()
    {
      return newBuilder();
    }
    
    protected final Builder newBuilderForType(GeneratedMessage.BuilderParent paramBuilderParent)
    {
      return new Builder(paramBuilderParent, null);
    }
    
    public final Builder toBuilder()
    {
      return newBuilder(this);
    }
    
    protected final Object writeReplace()
      throws ObjectStreamException
    {
      return super.writeReplace();
    }
    
    public final void writeTo(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      getSerializedSize();
      if ((this.bitField0_ & 0x1) == 1) {
        paramCodedOutputStream.writeUInt32(1, this.accountType_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt64(2, this.mid_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getMiservicetokenBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements AccountProto.MiSsoLoginReqOrBuilder
    {
      private int accountType_ = 4;
      private int bitField0_;
      private long mid_;
      private Object miservicetoken_ = "";
      
      private Builder()
      {
        maybeForceBuilderInitialization();
      }
      
      private Builder(GeneratedMessage.BuilderParent paramBuilderParent)
      {
        super();
        maybeForceBuilderInitialization();
      }
      
      private static Builder create()
      {
        return new Builder();
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final AccountProto.MiSsoLoginReq build()
      {
        AccountProto.MiSsoLoginReq localMiSsoLoginReq = buildPartial();
        if (!localMiSsoLoginReq.isInitialized()) {
          throw newUninitializedMessageException(localMiSsoLoginReq);
        }
        return localMiSsoLoginReq;
      }
      
      public final AccountProto.MiSsoLoginReq buildPartial()
      {
        int j = 1;
        AccountProto.MiSsoLoginReq localMiSsoLoginReq = new AccountProto.MiSsoLoginReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          AccountProto.MiSsoLoginReq.access$4402(localMiSsoLoginReq, this.accountType_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          AccountProto.MiSsoLoginReq.access$4502(localMiSsoLoginReq, this.mid_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          AccountProto.MiSsoLoginReq.access$4602(localMiSsoLoginReq, this.miservicetoken_);
          AccountProto.MiSsoLoginReq.access$4702(localMiSsoLoginReq, j);
          onBuilt();
          return localMiSsoLoginReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.accountType_ = 4;
        this.bitField0_ &= 0xFFFFFFFE;
        this.mid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFD;
        this.miservicetoken_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearAccountType()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.accountType_ = 4;
        onChanged();
        return this;
      }
      
      public final Builder clearMid()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.mid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearMiservicetoken()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.miservicetoken_ = AccountProto.MiSsoLoginReq.getDefaultInstance().getMiservicetoken();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getAccountType()
      {
        return this.accountType_;
      }
      
      public final AccountProto.MiSsoLoginReq getDefaultInstanceForType()
      {
        return AccountProto.MiSsoLoginReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_descriptor;
      }
      
      public final long getMid()
      {
        return this.mid_;
      }
      
      public final String getMiservicetoken()
      {
        Object localObject = this.miservicetoken_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.miservicetoken_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getMiservicetokenBytes()
      {
        Object localObject = this.miservicetoken_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.miservicetoken_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasAccountType()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasMid()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasMiservicetoken()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(AccountProto.MiSsoLoginReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasAccountType()) {}
        while ((!hasMid()) || (!hasMiservicetoken())) {
          return false;
        }
        return true;
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 193	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 199 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 202	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq$Builder;
        //   49: pop
        //   50: aload_1
        //   51: athrow
        //   52: astore_1
        //   53: aload_3
        //   54: astore_2
        //   55: goto -15 -> 40
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	58	0	this	Builder
        //   0	58	1	paramCodedInputStream	CodedInputStream
        //   0	58	2	paramExtensionRegistryLite	ExtensionRegistryLite
        //   1	53	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   2	16	28	com/google/protobuf/InvalidProtocolBufferException
        //   37	39	39	finally
        //   2	16	52	finally
        //   29	37	52	finally
      }
      
      public final Builder mergeFrom(Message paramMessage)
      {
        if ((paramMessage instanceof AccountProto.MiSsoLoginReq)) {
          return mergeFrom((AccountProto.MiSsoLoginReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(AccountProto.MiSsoLoginReq paramMiSsoLoginReq)
      {
        if (paramMiSsoLoginReq == AccountProto.MiSsoLoginReq.getDefaultInstance()) {
          return this;
        }
        if (paramMiSsoLoginReq.hasAccountType()) {
          setAccountType(paramMiSsoLoginReq.getAccountType());
        }
        if (paramMiSsoLoginReq.hasMid()) {
          setMid(paramMiSsoLoginReq.getMid());
        }
        if (paramMiSsoLoginReq.hasMiservicetoken())
        {
          this.bitField0_ |= 0x4;
          this.miservicetoken_ = paramMiSsoLoginReq.miservicetoken_;
          onChanged();
        }
        mergeUnknownFields(paramMiSsoLoginReq.getUnknownFields());
        return this;
      }
      
      public final Builder setAccountType(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.accountType_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setMid(long paramLong)
      {
        this.bitField0_ |= 0x2;
        this.mid_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setMiservicetoken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.miservicetoken_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setMiservicetokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.miservicetoken_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MiSsoLoginReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getAccountType();
    
    public abstract long getMid();
    
    public abstract String getMiservicetoken();
    
    public abstract ByteString getMiservicetokenBytes();
    
    public abstract boolean hasAccountType();
    
    public abstract boolean hasMid();
    
    public abstract boolean hasMiservicetoken();
  }
  
  public static final class MiSsoLoginRsp
    extends GeneratedMessage
    implements AccountProto.MiSsoLoginRspOrBuilder
  {
    public static final int ERRMSG_FIELD_NUMBER = 14;
    public static final int HASINNERAVATAR_FIELD_NUMBER = 10;
    public static final int HASINNERNICKNAME_FIELD_NUMBER = 11;
    public static final int HASINNERSEX_FIELD_NUMBER = 12;
    public static final int HEADIMGURL_FIELD_NUMBER = 7;
    public static final int ISSETGUIDE_FIELD_NUMBER = 13;
    public static final int LOGINSTATUS_FIELD_NUMBER = 9;
    public static final int NICKNAME_FIELD_NUMBER = 6;
    public static Parser<MiSsoLoginRsp> PARSER = new e();
    public static final int PASSTOKEN_FIELD_NUMBER = 5;
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int SECURITYKEY_FIELD_NUMBER = 4;
    public static final int SERVICETOKEN_FIELD_NUMBER = 3;
    public static final int SEX_FIELD_NUMBER = 8;
    public static final int UUID_FIELD_NUMBER = 2;
    private static final MiSsoLoginRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object errMsg_;
    private boolean hasInnerAvatar_;
    private boolean hasInnerNickname_;
    private boolean hasInnerSex_;
    private Object headimgurl_;
    private boolean isSetGuide_;
    private int loginStatus_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object nickname_;
    private Object passToken_;
    private int retCode_;
    private Object securityKey_;
    private Object serviceToken_;
    private int sex_;
    private final UnknownFieldSet unknownFields;
    private long uuid_;
    
    static
    {
      MiSsoLoginRsp localMiSsoLoginRsp = new MiSsoLoginRsp(true);
      defaultInstance = localMiSsoLoginRsp;
      localMiSsoLoginRsp.initFields();
    }
    
    /* Error */
    private MiSsoLoginRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 96	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 98	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 100	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 89	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:initFields	()V
      //   18: invokestatic 106	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +536 -> 562
      //   29: aload_1
      //   30: invokevirtual 112	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+539->576, 0:+542->579, 8:+149->186, 16:+193->230, 26:+231->268, 34:+256->293, 42:+282->319, 50:+308->345, 58:+334->371, 64:+360->397, 72:+383->420, 80:+406->443, 88:+429->466, 96:+452->489, 104:+475->512, 114:+498->535
      //   168: aload_0
      //   169: aload_1
      //   170: aload 5
      //   172: aload_2
      //   173: iload 4
      //   175: invokevirtual 116	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   178: ifne -153 -> 25
      //   181: iconst_1
      //   182: istore_3
      //   183: goto -158 -> 25
      //   186: aload_0
      //   187: aload_0
      //   188: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   191: iconst_1
      //   192: ior
      //   193: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   196: aload_0
      //   197: aload_1
      //   198: invokevirtual 121	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   201: putfield 123	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:retCode_	I
      //   204: goto -179 -> 25
      //   207: astore_1
      //   208: aload_1
      //   209: aload_0
      //   210: invokevirtual 127	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   213: athrow
      //   214: astore_1
      //   215: aload_0
      //   216: aload 5
      //   218: invokevirtual 133	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   221: putfield 135	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   224: aload_0
      //   225: invokevirtual 138	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:makeExtensionsImmutable	()V
      //   228: aload_1
      //   229: athrow
      //   230: aload_0
      //   231: aload_0
      //   232: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   235: iconst_2
      //   236: ior
      //   237: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   240: aload_0
      //   241: aload_1
      //   242: invokevirtual 142	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   245: putfield 144	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:uuid_	J
      //   248: goto -223 -> 25
      //   251: astore_1
      //   252: new 93	com/google/protobuf/InvalidProtocolBufferException
      //   255: dup
      //   256: aload_1
      //   257: invokevirtual 148	java/io/IOException:getMessage	()Ljava/lang/String;
      //   260: invokespecial 151	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   263: aload_0
      //   264: invokevirtual 127	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   267: athrow
      //   268: aload_1
      //   269: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   272: astore 6
      //   274: aload_0
      //   275: aload_0
      //   276: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   279: iconst_4
      //   280: ior
      //   281: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   284: aload_0
      //   285: aload 6
      //   287: putfield 157	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:serviceToken_	Ljava/lang/Object;
      //   290: goto -265 -> 25
      //   293: aload_1
      //   294: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   297: astore 6
      //   299: aload_0
      //   300: aload_0
      //   301: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   304: bipush 8
      //   306: ior
      //   307: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   310: aload_0
      //   311: aload 6
      //   313: putfield 159	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:securityKey_	Ljava/lang/Object;
      //   316: goto -291 -> 25
      //   319: aload_1
      //   320: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   323: astore 6
      //   325: aload_0
      //   326: aload_0
      //   327: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   330: bipush 16
      //   332: ior
      //   333: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   336: aload_0
      //   337: aload 6
      //   339: putfield 161	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:passToken_	Ljava/lang/Object;
      //   342: goto -317 -> 25
      //   345: aload_1
      //   346: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   349: astore 6
      //   351: aload_0
      //   352: aload_0
      //   353: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   356: bipush 32
      //   358: ior
      //   359: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   362: aload_0
      //   363: aload 6
      //   365: putfield 163	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:nickname_	Ljava/lang/Object;
      //   368: goto -343 -> 25
      //   371: aload_1
      //   372: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   375: astore 6
      //   377: aload_0
      //   378: aload_0
      //   379: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   382: bipush 64
      //   384: ior
      //   385: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   388: aload_0
      //   389: aload 6
      //   391: putfield 165	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:headimgurl_	Ljava/lang/Object;
      //   394: goto -369 -> 25
      //   397: aload_0
      //   398: aload_0
      //   399: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   402: sipush 128
      //   405: ior
      //   406: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   409: aload_0
      //   410: aload_1
      //   411: invokevirtual 121	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   414: putfield 167	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:sex_	I
      //   417: goto -392 -> 25
      //   420: aload_0
      //   421: aload_0
      //   422: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   425: sipush 256
      //   428: ior
      //   429: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   432: aload_0
      //   433: aload_1
      //   434: invokevirtual 121	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   437: putfield 169	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:loginStatus_	I
      //   440: goto -415 -> 25
      //   443: aload_0
      //   444: aload_0
      //   445: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   448: sipush 512
      //   451: ior
      //   452: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   455: aload_0
      //   456: aload_1
      //   457: invokevirtual 173	com/google/protobuf/CodedInputStream:readBool	()Z
      //   460: putfield 175	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:hasInnerAvatar_	Z
      //   463: goto -438 -> 25
      //   466: aload_0
      //   467: aload_0
      //   468: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   471: sipush 1024
      //   474: ior
      //   475: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   478: aload_0
      //   479: aload_1
      //   480: invokevirtual 173	com/google/protobuf/CodedInputStream:readBool	()Z
      //   483: putfield 177	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:hasInnerNickname_	Z
      //   486: goto -461 -> 25
      //   489: aload_0
      //   490: aload_0
      //   491: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   494: sipush 2048
      //   497: ior
      //   498: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   501: aload_0
      //   502: aload_1
      //   503: invokevirtual 173	com/google/protobuf/CodedInputStream:readBool	()Z
      //   506: putfield 179	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:hasInnerSex_	Z
      //   509: goto -484 -> 25
      //   512: aload_0
      //   513: aload_0
      //   514: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   517: sipush 4096
      //   520: ior
      //   521: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   524: aload_0
      //   525: aload_1
      //   526: invokevirtual 173	com/google/protobuf/CodedInputStream:readBool	()Z
      //   529: putfield 181	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:isSetGuide_	Z
      //   532: goto -507 -> 25
      //   535: aload_1
      //   536: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   539: astore 6
      //   541: aload_0
      //   542: aload_0
      //   543: getfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   546: sipush 8192
      //   549: ior
      //   550: putfield 118	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:bitField0_	I
      //   553: aload_0
      //   554: aload 6
      //   556: putfield 183	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:errMsg_	Ljava/lang/Object;
      //   559: goto -534 -> 25
      //   562: aload_0
      //   563: aload 5
      //   565: invokevirtual 133	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   568: putfield 135	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   571: aload_0
      //   572: invokevirtual 138	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:makeExtensionsImmutable	()V
      //   575: return
      //   576: goto -408 -> 168
      //   579: iconst_1
      //   580: istore_3
      //   581: goto -556 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	584	0	this	MiSsoLoginRsp
      //   0	584	1	paramCodedInputStream	CodedInputStream
      //   0	584	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	557	3	i	int
      //   33	141	4	j	int
      //   21	543	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   272	283	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	207	com/google/protobuf/InvalidProtocolBufferException
      //   168	181	207	com/google/protobuf/InvalidProtocolBufferException
      //   186	204	207	com/google/protobuf/InvalidProtocolBufferException
      //   230	248	207	com/google/protobuf/InvalidProtocolBufferException
      //   268	290	207	com/google/protobuf/InvalidProtocolBufferException
      //   293	316	207	com/google/protobuf/InvalidProtocolBufferException
      //   319	342	207	com/google/protobuf/InvalidProtocolBufferException
      //   345	368	207	com/google/protobuf/InvalidProtocolBufferException
      //   371	394	207	com/google/protobuf/InvalidProtocolBufferException
      //   397	417	207	com/google/protobuf/InvalidProtocolBufferException
      //   420	440	207	com/google/protobuf/InvalidProtocolBufferException
      //   443	463	207	com/google/protobuf/InvalidProtocolBufferException
      //   466	486	207	com/google/protobuf/InvalidProtocolBufferException
      //   489	509	207	com/google/protobuf/InvalidProtocolBufferException
      //   512	532	207	com/google/protobuf/InvalidProtocolBufferException
      //   535	559	207	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	214	finally
      //   168	181	214	finally
      //   186	204	214	finally
      //   208	214	214	finally
      //   230	248	214	finally
      //   252	268	214	finally
      //   268	290	214	finally
      //   293	316	214	finally
      //   319	342	214	finally
      //   345	368	214	finally
      //   371	394	214	finally
      //   397	417	214	finally
      //   420	440	214	finally
      //   443	463	214	finally
      //   466	486	214	finally
      //   489	509	214	finally
      //   512	532	214	finally
      //   535	559	214	finally
      //   29	35	251	java/io/IOException
      //   168	181	251	java/io/IOException
      //   186	204	251	java/io/IOException
      //   230	248	251	java/io/IOException
      //   268	290	251	java/io/IOException
      //   293	316	251	java/io/IOException
      //   319	342	251	java/io/IOException
      //   345	368	251	java/io/IOException
      //   371	394	251	java/io/IOException
      //   397	417	251	java/io/IOException
      //   420	440	251	java/io/IOException
      //   443	463	251	java/io/IOException
      //   466	486	251	java/io/IOException
      //   489	509	251	java/io/IOException
      //   512	532	251	java/io/IOException
      //   535	559	251	java/io/IOException
    }
    
    private MiSsoLoginRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MiSsoLoginRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MiSsoLoginRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.uuid_ = 0L;
      this.serviceToken_ = "";
      this.securityKey_ = "";
      this.passToken_ = "";
      this.nickname_ = "";
      this.headimgurl_ = "";
      this.sex_ = 0;
      this.loginStatus_ = 0;
      this.hasInnerAvatar_ = false;
      this.hasInnerNickname_ = false;
      this.hasInnerSex_ = false;
      this.isSetGuide_ = false;
      this.errMsg_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$5100();
    }
    
    public static Builder newBuilder(MiSsoLoginRsp paramMiSsoLoginRsp)
    {
      return newBuilder().mergeFrom(paramMiSsoLoginRsp);
    }
    
    public static MiSsoLoginRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiSsoLoginRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MiSsoLoginRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiSsoLoginRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiSsoLoginRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MiSsoLoginRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MiSsoLoginRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiSsoLoginRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MiSsoLoginRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MiSsoLoginRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MiSsoLoginRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiSsoLoginRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MiSsoLoginRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiSsoLoginRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MiSsoLoginRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiSsoLoginRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiSsoLoginRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MiSsoLoginRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MiSsoLoginRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiSsoLoginRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MiSsoLoginRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getErrMsg()
    {
      Object localObject = this.errMsg_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.errMsg_ = str;
      }
      return str;
    }
    
    public final ByteString getErrMsgBytes()
    {
      Object localObject = this.errMsg_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.errMsg_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final boolean getHasInnerAvatar()
    {
      return this.hasInnerAvatar_;
    }
    
    public final boolean getHasInnerNickname()
    {
      return this.hasInnerNickname_;
    }
    
    public final boolean getHasInnerSex()
    {
      return this.hasInnerSex_;
    }
    
    public final String getHeadimgurl()
    {
      Object localObject = this.headimgurl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.headimgurl_ = str;
      }
      return str;
    }
    
    public final ByteString getHeadimgurlBytes()
    {
      Object localObject = this.headimgurl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.headimgurl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final boolean getIsSetGuide()
    {
      return this.isSetGuide_;
    }
    
    public final int getLoginStatus()
    {
      return this.loginStatus_;
    }
    
    public final String getNickname()
    {
      Object localObject = this.nickname_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.nickname_ = str;
      }
      return str;
    }
    
    public final ByteString getNicknameBytes()
    {
      Object localObject = this.nickname_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.nickname_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<MiSsoLoginRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final String getPassToken()
    {
      Object localObject = this.passToken_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.passToken_ = str;
      }
      return str;
    }
    
    public final ByteString getPassTokenBytes()
    {
      Object localObject = this.passToken_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.passToken_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getRetCode()
    {
      return this.retCode_;
    }
    
    public final String getSecurityKey()
    {
      Object localObject = this.securityKey_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.securityKey_ = str;
      }
      return str;
    }
    
    public final ByteString getSecurityKeyBytes()
    {
      Object localObject = this.securityKey_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.securityKey_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt32Size(1, this.retCode_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt64Size(2, this.uuid_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getServiceTokenBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getSecurityKeyBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getPassTokenBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getNicknameBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getHeadimgurlBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeUInt32Size(8, this.sex_);
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeUInt32Size(9, this.loginStatus_);
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBoolSize(10, this.hasInnerAvatar_);
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBoolSize(11, this.hasInnerNickname_);
      }
      i = j;
      if ((this.bitField0_ & 0x800) == 2048) {
        i = j + CodedOutputStream.computeBoolSize(12, this.hasInnerSex_);
      }
      j = i;
      if ((this.bitField0_ & 0x1000) == 4096) {
        j = i + CodedOutputStream.computeBoolSize(13, this.isSetGuide_);
      }
      i = j;
      if ((this.bitField0_ & 0x2000) == 8192) {
        i = j + CodedOutputStream.computeBytesSize(14, getErrMsgBytes());
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getServiceToken()
    {
      Object localObject = this.serviceToken_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serviceToken_ = str;
      }
      return str;
    }
    
    public final ByteString getServiceTokenBytes()
    {
      Object localObject = this.serviceToken_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serviceToken_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getSex()
    {
      return this.sex_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final long getUuid()
    {
      return this.uuid_;
    }
    
    public final boolean hasErrMsg()
    {
      return (this.bitField0_ & 0x2000) == 8192;
    }
    
    public final boolean hasHasInnerAvatar()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasHasInnerNickname()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasHasInnerSex()
    {
      return (this.bitField0_ & 0x800) == 2048;
    }
    
    public final boolean hasHeadimgurl()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasIsSetGuide()
    {
      return (this.bitField0_ & 0x1000) == 4096;
    }
    
    public final boolean hasLoginStatus()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasNickname()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasPassToken()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasSecurityKey()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasServiceToken()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasSex()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasUuid()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MiSsoLoginRsp.class, Builder.class);
    }
    
    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i == 1) {
        return true;
      }
      if (i == 0) {
        return false;
      }
      if (!hasRetCode())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      this.memoizedIsInitialized = 1;
      return true;
    }
    
    public final Builder newBuilderForType()
    {
      return newBuilder();
    }
    
    protected final Builder newBuilderForType(GeneratedMessage.BuilderParent paramBuilderParent)
    {
      return new Builder(paramBuilderParent, null);
    }
    
    public final Builder toBuilder()
    {
      return newBuilder(this);
    }
    
    protected final Object writeReplace()
      throws ObjectStreamException
    {
      return super.writeReplace();
    }
    
    public final void writeTo(CodedOutputStream paramCodedOutputStream)
      throws IOException
    {
      getSerializedSize();
      if ((this.bitField0_ & 0x1) == 1) {
        paramCodedOutputStream.writeUInt32(1, this.retCode_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt64(2, this.uuid_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getServiceTokenBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getSecurityKeyBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getPassTokenBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getNicknameBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getHeadimgurlBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeUInt32(8, this.sex_);
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeUInt32(9, this.loginStatus_);
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBool(10, this.hasInnerAvatar_);
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBool(11, this.hasInnerNickname_);
      }
      if ((this.bitField0_ & 0x800) == 2048) {
        paramCodedOutputStream.writeBool(12, this.hasInnerSex_);
      }
      if ((this.bitField0_ & 0x1000) == 4096) {
        paramCodedOutputStream.writeBool(13, this.isSetGuide_);
      }
      if ((this.bitField0_ & 0x2000) == 8192) {
        paramCodedOutputStream.writeBytes(14, getErrMsgBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements AccountProto.MiSsoLoginRspOrBuilder
    {
      private int bitField0_;
      private Object errMsg_ = "";
      private boolean hasInnerAvatar_;
      private boolean hasInnerNickname_;
      private boolean hasInnerSex_;
      private Object headimgurl_ = "";
      private boolean isSetGuide_;
      private int loginStatus_;
      private Object nickname_ = "";
      private Object passToken_ = "";
      private int retCode_;
      private Object securityKey_ = "";
      private Object serviceToken_ = "";
      private int sex_;
      private long uuid_;
      
      private Builder()
      {
        maybeForceBuilderInitialization();
      }
      
      private Builder(GeneratedMessage.BuilderParent paramBuilderParent)
      {
        super();
        maybeForceBuilderInitialization();
      }
      
      private static Builder create()
      {
        return new Builder();
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final AccountProto.MiSsoLoginRsp build()
      {
        AccountProto.MiSsoLoginRsp localMiSsoLoginRsp = buildPartial();
        if (!localMiSsoLoginRsp.isInitialized()) {
          throw newUninitializedMessageException(localMiSsoLoginRsp);
        }
        return localMiSsoLoginRsp;
      }
      
      public final AccountProto.MiSsoLoginRsp buildPartial()
      {
        int j = 1;
        AccountProto.MiSsoLoginRsp localMiSsoLoginRsp = new AccountProto.MiSsoLoginRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          AccountProto.MiSsoLoginRsp.access$5502(localMiSsoLoginRsp, this.retCode_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          AccountProto.MiSsoLoginRsp.access$5602(localMiSsoLoginRsp, this.uuid_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          AccountProto.MiSsoLoginRsp.access$5702(localMiSsoLoginRsp, this.serviceToken_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          AccountProto.MiSsoLoginRsp.access$5802(localMiSsoLoginRsp, this.securityKey_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          AccountProto.MiSsoLoginRsp.access$5902(localMiSsoLoginRsp, this.passToken_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          AccountProto.MiSsoLoginRsp.access$6002(localMiSsoLoginRsp, this.nickname_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          AccountProto.MiSsoLoginRsp.access$6102(localMiSsoLoginRsp, this.headimgurl_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          AccountProto.MiSsoLoginRsp.access$6202(localMiSsoLoginRsp, this.sex_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          AccountProto.MiSsoLoginRsp.access$6302(localMiSsoLoginRsp, this.loginStatus_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          AccountProto.MiSsoLoginRsp.access$6402(localMiSsoLoginRsp, this.hasInnerAvatar_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          AccountProto.MiSsoLoginRsp.access$6502(localMiSsoLoginRsp, this.hasInnerNickname_);
          i = j;
          if ((k & 0x800) == 2048) {
            i = j | 0x800;
          }
          AccountProto.MiSsoLoginRsp.access$6602(localMiSsoLoginRsp, this.hasInnerSex_);
          j = i;
          if ((k & 0x1000) == 4096) {
            j = i | 0x1000;
          }
          AccountProto.MiSsoLoginRsp.access$6702(localMiSsoLoginRsp, this.isSetGuide_);
          i = j;
          if ((k & 0x2000) == 8192) {
            i = j | 0x2000;
          }
          AccountProto.MiSsoLoginRsp.access$6802(localMiSsoLoginRsp, this.errMsg_);
          AccountProto.MiSsoLoginRsp.access$6902(localMiSsoLoginRsp, i);
          onBuilt();
          return localMiSsoLoginRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.uuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFD;
        this.serviceToken_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.securityKey_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.passToken_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.nickname_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.headimgurl_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.sex_ = 0;
        this.bitField0_ &= 0xFF7F;
        this.loginStatus_ = 0;
        this.bitField0_ &= 0xFEFF;
        this.hasInnerAvatar_ = false;
        this.bitField0_ &= 0xFDFF;
        this.hasInnerNickname_ = false;
        this.bitField0_ &= 0xFBFF;
        this.hasInnerSex_ = false;
        this.bitField0_ &= 0xF7FF;
        this.isSetGuide_ = false;
        this.bitField0_ &= 0xEFFF;
        this.errMsg_ = "";
        this.bitField0_ &= 0xDFFF;
        return this;
      }
      
      public final Builder clearErrMsg()
      {
        this.bitField0_ &= 0xDFFF;
        this.errMsg_ = AccountProto.MiSsoLoginRsp.getDefaultInstance().getErrMsg();
        onChanged();
        return this;
      }
      
      public final Builder clearHasInnerAvatar()
      {
        this.bitField0_ &= 0xFDFF;
        this.hasInnerAvatar_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearHasInnerNickname()
      {
        this.bitField0_ &= 0xFBFF;
        this.hasInnerNickname_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearHasInnerSex()
      {
        this.bitField0_ &= 0xF7FF;
        this.hasInnerSex_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearHeadimgurl()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.headimgurl_ = AccountProto.MiSsoLoginRsp.getDefaultInstance().getHeadimgurl();
        onChanged();
        return this;
      }
      
      public final Builder clearIsSetGuide()
      {
        this.bitField0_ &= 0xEFFF;
        this.isSetGuide_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearLoginStatus()
      {
        this.bitField0_ &= 0xFEFF;
        this.loginStatus_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearNickname()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.nickname_ = AccountProto.MiSsoLoginRsp.getDefaultInstance().getNickname();
        onChanged();
        return this;
      }
      
      public final Builder clearPassToken()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.passToken_ = AccountProto.MiSsoLoginRsp.getDefaultInstance().getPassToken();
        onChanged();
        return this;
      }
      
      public final Builder clearRetCode()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.retCode_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearSecurityKey()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.securityKey_ = AccountProto.MiSsoLoginRsp.getDefaultInstance().getSecurityKey();
        onChanged();
        return this;
      }
      
      public final Builder clearServiceToken()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.serviceToken_ = AccountProto.MiSsoLoginRsp.getDefaultInstance().getServiceToken();
        onChanged();
        return this;
      }
      
      public final Builder clearSex()
      {
        this.bitField0_ &= 0xFF7F;
        this.sex_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearUuid()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.uuid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final AccountProto.MiSsoLoginRsp getDefaultInstanceForType()
      {
        return AccountProto.MiSsoLoginRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_descriptor;
      }
      
      public final String getErrMsg()
      {
        Object localObject = this.errMsg_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.errMsg_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getErrMsgBytes()
      {
        Object localObject = this.errMsg_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.errMsg_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean getHasInnerAvatar()
      {
        return this.hasInnerAvatar_;
      }
      
      public final boolean getHasInnerNickname()
      {
        return this.hasInnerNickname_;
      }
      
      public final boolean getHasInnerSex()
      {
        return this.hasInnerSex_;
      }
      
      public final String getHeadimgurl()
      {
        Object localObject = this.headimgurl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.headimgurl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getHeadimgurlBytes()
      {
        Object localObject = this.headimgurl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.headimgurl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean getIsSetGuide()
      {
        return this.isSetGuide_;
      }
      
      public final int getLoginStatus()
      {
        return this.loginStatus_;
      }
      
      public final String getNickname()
      {
        Object localObject = this.nickname_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.nickname_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNicknameBytes()
      {
        Object localObject = this.nickname_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.nickname_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getPassToken()
      {
        Object localObject = this.passToken_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.passToken_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getPassTokenBytes()
      {
        Object localObject = this.passToken_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.passToken_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final String getSecurityKey()
      {
        Object localObject = this.securityKey_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.securityKey_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSecurityKeyBytes()
      {
        Object localObject = this.securityKey_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.securityKey_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getServiceToken()
      {
        Object localObject = this.serviceToken_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serviceToken_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServiceTokenBytes()
      {
        Object localObject = this.serviceToken_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serviceToken_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getSex()
      {
        return this.sex_;
      }
      
      public final long getUuid()
      {
        return this.uuid_;
      }
      
      public final boolean hasErrMsg()
      {
        return (this.bitField0_ & 0x2000) == 8192;
      }
      
      public final boolean hasHasInnerAvatar()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasHasInnerNickname()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasHasInnerSex()
      {
        return (this.bitField0_ & 0x800) == 2048;
      }
      
      public final boolean hasHeadimgurl()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasIsSetGuide()
      {
        return (this.bitField0_ & 0x1000) == 4096;
      }
      
      public final boolean hasLoginStatus()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasNickname()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasPassToken()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSecurityKey()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasServiceToken()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasSex()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasUuid()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return AccountProto.internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(AccountProto.MiSsoLoginRsp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return hasRetCode();
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 305	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 311 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 223	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 314	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 223	org/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
        //   49: pop
        //   50: aload_1
        //   51: athrow
        //   52: astore_1
        //   53: aload_3
        //   54: astore_2
        //   55: goto -15 -> 40
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	58	0	this	Builder
        //   0	58	1	paramCodedInputStream	CodedInputStream
        //   0	58	2	paramExtensionRegistryLite	ExtensionRegistryLite
        //   1	53	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   2	16	28	com/google/protobuf/InvalidProtocolBufferException
        //   37	39	39	finally
        //   2	16	52	finally
        //   29	37	52	finally
      }
      
      public final Builder mergeFrom(Message paramMessage)
      {
        if ((paramMessage instanceof AccountProto.MiSsoLoginRsp)) {
          return mergeFrom((AccountProto.MiSsoLoginRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(AccountProto.MiSsoLoginRsp paramMiSsoLoginRsp)
      {
        if (paramMiSsoLoginRsp == AccountProto.MiSsoLoginRsp.getDefaultInstance()) {
          return this;
        }
        if (paramMiSsoLoginRsp.hasRetCode()) {
          setRetCode(paramMiSsoLoginRsp.getRetCode());
        }
        if (paramMiSsoLoginRsp.hasUuid()) {
          setUuid(paramMiSsoLoginRsp.getUuid());
        }
        if (paramMiSsoLoginRsp.hasServiceToken())
        {
          this.bitField0_ |= 0x4;
          this.serviceToken_ = paramMiSsoLoginRsp.serviceToken_;
          onChanged();
        }
        if (paramMiSsoLoginRsp.hasSecurityKey())
        {
          this.bitField0_ |= 0x8;
          this.securityKey_ = paramMiSsoLoginRsp.securityKey_;
          onChanged();
        }
        if (paramMiSsoLoginRsp.hasPassToken())
        {
          this.bitField0_ |= 0x10;
          this.passToken_ = paramMiSsoLoginRsp.passToken_;
          onChanged();
        }
        if (paramMiSsoLoginRsp.hasNickname())
        {
          this.bitField0_ |= 0x20;
          this.nickname_ = paramMiSsoLoginRsp.nickname_;
          onChanged();
        }
        if (paramMiSsoLoginRsp.hasHeadimgurl())
        {
          this.bitField0_ |= 0x40;
          this.headimgurl_ = paramMiSsoLoginRsp.headimgurl_;
          onChanged();
        }
        if (paramMiSsoLoginRsp.hasSex()) {
          setSex(paramMiSsoLoginRsp.getSex());
        }
        if (paramMiSsoLoginRsp.hasLoginStatus()) {
          setLoginStatus(paramMiSsoLoginRsp.getLoginStatus());
        }
        if (paramMiSsoLoginRsp.hasHasInnerAvatar()) {
          setHasInnerAvatar(paramMiSsoLoginRsp.getHasInnerAvatar());
        }
        if (paramMiSsoLoginRsp.hasHasInnerNickname()) {
          setHasInnerNickname(paramMiSsoLoginRsp.getHasInnerNickname());
        }
        if (paramMiSsoLoginRsp.hasHasInnerSex()) {
          setHasInnerSex(paramMiSsoLoginRsp.getHasInnerSex());
        }
        if (paramMiSsoLoginRsp.hasIsSetGuide()) {
          setIsSetGuide(paramMiSsoLoginRsp.getIsSetGuide());
        }
        if (paramMiSsoLoginRsp.hasErrMsg())
        {
          this.bitField0_ |= 0x2000;
          this.errMsg_ = paramMiSsoLoginRsp.errMsg_;
          onChanged();
        }
        mergeUnknownFields(paramMiSsoLoginRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setErrMsg(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2000;
        this.errMsg_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setErrMsgBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2000;
        this.errMsg_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setHasInnerAvatar(boolean paramBoolean)
      {
        this.bitField0_ |= 0x200;
        this.hasInnerAvatar_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setHasInnerNickname(boolean paramBoolean)
      {
        this.bitField0_ |= 0x400;
        this.hasInnerNickname_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setHasInnerSex(boolean paramBoolean)
      {
        this.bitField0_ |= 0x800;
        this.hasInnerSex_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setHeadimgurl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.headimgurl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setHeadimgurlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.headimgurl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setIsSetGuide(boolean paramBoolean)
      {
        this.bitField0_ |= 0x1000;
        this.isSetGuide_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setLoginStatus(int paramInt)
      {
        this.bitField0_ |= 0x100;
        this.loginStatus_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setNickname(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.nickname_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNicknameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.nickname_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setPassToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.passToken_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setPassTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.passToken_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setRetCode(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.retCode_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setSecurityKey(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.securityKey_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSecurityKeyBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.securityKey_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.serviceToken_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.serviceToken_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSex(int paramInt)
      {
        this.bitField0_ |= 0x80;
        this.sex_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setUuid(long paramLong)
      {
        this.bitField0_ |= 0x2;
        this.uuid_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MiSsoLoginRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getErrMsg();
    
    public abstract ByteString getErrMsgBytes();
    
    public abstract boolean getHasInnerAvatar();
    
    public abstract boolean getHasInnerNickname();
    
    public abstract boolean getHasInnerSex();
    
    public abstract String getHeadimgurl();
    
    public abstract ByteString getHeadimgurlBytes();
    
    public abstract boolean getIsSetGuide();
    
    public abstract int getLoginStatus();
    
    public abstract String getNickname();
    
    public abstract ByteString getNicknameBytes();
    
    public abstract String getPassToken();
    
    public abstract ByteString getPassTokenBytes();
    
    public abstract int getRetCode();
    
    public abstract String getSecurityKey();
    
    public abstract ByteString getSecurityKeyBytes();
    
    public abstract String getServiceToken();
    
    public abstract ByteString getServiceTokenBytes();
    
    public abstract int getSex();
    
    public abstract long getUuid();
    
    public abstract boolean hasErrMsg();
    
    public abstract boolean hasHasInnerAvatar();
    
    public abstract boolean hasHasInnerNickname();
    
    public abstract boolean hasHasInnerSex();
    
    public abstract boolean hasHeadimgurl();
    
    public abstract boolean hasIsSetGuide();
    
    public abstract boolean hasLoginStatus();
    
    public abstract boolean hasNickname();
    
    public abstract boolean hasPassToken();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasSecurityKey();
    
    public abstract boolean hasServiceToken();
    
    public abstract boolean hasSex();
    
    public abstract boolean hasUuid();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\xiaomi\gamecenter\milink\msg\AccountProto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */