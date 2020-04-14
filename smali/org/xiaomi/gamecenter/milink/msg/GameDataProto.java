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

public final class GameDataProto
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_descriptor, new String[] { "RoleId", "RoleName", "ServerId", "ServerName", "ZoneId", "ZoneName", "Level", "DevAppId", "Fuid", "OpenId" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_descriptor, new String[] { "RetCode", "ErrMsg" });
  
  static
  {
    f localf = new f();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\016GameData.proto\022 org.xiaomi.gamecenter.milink.msg\"¶\001\n\013RoleDataReq\022\016\n\006roleId\030\001 \001(\t\022\020\n\broleName\030\002 \001(\t\022\020\n\bserverId\030\003 \001(\t\022\022\n\nserverName\030\004 \001(\t\022\016\n\006zoneId\030\005 \001(\t\022\020\n\bzoneName\030\006 \001(\t\022\r\n\005level\030\007 \001(\t\022\020\n\bdevAppId\030\b \001(\t\022\f\n\004fuid\030\t \001(\004\022\016\n\006openId\030\n \001(\004\".\n\013RoleDataRsp\022\017\n\007retCode\030\001 \002(\r\022\016\n\006errMsg\030\002 \001(\tB1\n org.xiaomi.gamecenter.milink.msgB\rGameDataProto" }, new Descriptors.FileDescriptor[0], localf);
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class RoleDataReq
    extends GeneratedMessage
    implements GameDataProto.RoleDataReqOrBuilder
  {
    public static final int DEVAPPID_FIELD_NUMBER = 8;
    public static final int FUID_FIELD_NUMBER = 9;
    public static final int LEVEL_FIELD_NUMBER = 7;
    public static final int OPENID_FIELD_NUMBER = 10;
    public static Parser<RoleDataReq> PARSER = new g();
    public static final int ROLEID_FIELD_NUMBER = 1;
    public static final int ROLENAME_FIELD_NUMBER = 2;
    public static final int SERVERID_FIELD_NUMBER = 3;
    public static final int SERVERNAME_FIELD_NUMBER = 4;
    public static final int ZONEID_FIELD_NUMBER = 5;
    public static final int ZONENAME_FIELD_NUMBER = 6;
    private static final RoleDataReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object devAppId_;
    private long fuid_;
    private Object level_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private long openId_;
    private Object roleId_;
    private Object roleName_;
    private Object serverId_;
    private Object serverName_;
    private final UnknownFieldSet unknownFields;
    private Object zoneId_;
    private Object zoneName_;
    
    static
    {
      RoleDataReq localRoleDataReq = new RoleDataReq(true);
      defaultInstance = localRoleDataReq;
      localRoleDataReq.initFields();
    }
    
    /* Error */
    private RoleDataReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 83	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 85	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 87	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 76	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:initFields	()V
      //   18: invokestatic 93	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +420 -> 446
      //   29: aload_1
      //   30: invokevirtual 99	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+423->460, 0:+426->463, 10:+117->154, 18:+165->202, 26:+207->244, 34:+232->269, 42:+258->295, 50:+284->321, 58:+310->347, 66:+336->373, 72:+363->400, 80:+386->423
      //   136: aload_0
      //   137: aload_1
      //   138: aload 5
      //   140: aload_2
      //   141: iload 4
      //   143: invokevirtual 103	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   146: ifne -121 -> 25
      //   149: iconst_1
      //   150: istore_3
      //   151: goto -126 -> 25
      //   154: aload_1
      //   155: invokevirtual 107	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   158: astore 6
      //   160: aload_0
      //   161: aload_0
      //   162: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   165: iconst_1
      //   166: ior
      //   167: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   170: aload_0
      //   171: aload 6
      //   173: putfield 111	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:roleId_	Ljava/lang/Object;
      //   176: goto -151 -> 25
      //   179: astore_1
      //   180: aload_1
      //   181: aload_0
      //   182: invokevirtual 115	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   185: athrow
      //   186: astore_1
      //   187: aload_0
      //   188: aload 5
      //   190: invokevirtual 121	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   193: putfield 123	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   196: aload_0
      //   197: invokevirtual 126	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:makeExtensionsImmutable	()V
      //   200: aload_1
      //   201: athrow
      //   202: aload_1
      //   203: invokevirtual 107	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   206: astore 6
      //   208: aload_0
      //   209: aload_0
      //   210: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   213: iconst_2
      //   214: ior
      //   215: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   218: aload_0
      //   219: aload 6
      //   221: putfield 128	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:roleName_	Ljava/lang/Object;
      //   224: goto -199 -> 25
      //   227: astore_1
      //   228: new 80	com/google/protobuf/InvalidProtocolBufferException
      //   231: dup
      //   232: aload_1
      //   233: invokevirtual 132	java/io/IOException:getMessage	()Ljava/lang/String;
      //   236: invokespecial 135	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   239: aload_0
      //   240: invokevirtual 115	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   243: athrow
      //   244: aload_1
      //   245: invokevirtual 107	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   248: astore 6
      //   250: aload_0
      //   251: aload_0
      //   252: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   255: iconst_4
      //   256: ior
      //   257: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   260: aload_0
      //   261: aload 6
      //   263: putfield 137	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:serverId_	Ljava/lang/Object;
      //   266: goto -241 -> 25
      //   269: aload_1
      //   270: invokevirtual 107	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   273: astore 6
      //   275: aload_0
      //   276: aload_0
      //   277: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   280: bipush 8
      //   282: ior
      //   283: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   286: aload_0
      //   287: aload 6
      //   289: putfield 139	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:serverName_	Ljava/lang/Object;
      //   292: goto -267 -> 25
      //   295: aload_1
      //   296: invokevirtual 107	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   299: astore 6
      //   301: aload_0
      //   302: aload_0
      //   303: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   306: bipush 16
      //   308: ior
      //   309: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   312: aload_0
      //   313: aload 6
      //   315: putfield 141	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:zoneId_	Ljava/lang/Object;
      //   318: goto -293 -> 25
      //   321: aload_1
      //   322: invokevirtual 107	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   325: astore 6
      //   327: aload_0
      //   328: aload_0
      //   329: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   332: bipush 32
      //   334: ior
      //   335: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   338: aload_0
      //   339: aload 6
      //   341: putfield 143	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:zoneName_	Ljava/lang/Object;
      //   344: goto -319 -> 25
      //   347: aload_1
      //   348: invokevirtual 107	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   351: astore 6
      //   353: aload_0
      //   354: aload_0
      //   355: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   358: bipush 64
      //   360: ior
      //   361: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   364: aload_0
      //   365: aload 6
      //   367: putfield 145	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:level_	Ljava/lang/Object;
      //   370: goto -345 -> 25
      //   373: aload_1
      //   374: invokevirtual 107	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   377: astore 6
      //   379: aload_0
      //   380: aload_0
      //   381: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   384: sipush 128
      //   387: ior
      //   388: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   391: aload_0
      //   392: aload 6
      //   394: putfield 147	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:devAppId_	Ljava/lang/Object;
      //   397: goto -372 -> 25
      //   400: aload_0
      //   401: aload_0
      //   402: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   405: sipush 256
      //   408: ior
      //   409: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   412: aload_0
      //   413: aload_1
      //   414: invokevirtual 151	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   417: putfield 153	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:fuid_	J
      //   420: goto -395 -> 25
      //   423: aload_0
      //   424: aload_0
      //   425: getfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   428: sipush 512
      //   431: ior
      //   432: putfield 109	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:bitField0_	I
      //   435: aload_0
      //   436: aload_1
      //   437: invokevirtual 151	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   440: putfield 155	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:openId_	J
      //   443: goto -418 -> 25
      //   446: aload_0
      //   447: aload 5
      //   449: invokevirtual 121	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   452: putfield 123	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   455: aload_0
      //   456: invokevirtual 126	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:makeExtensionsImmutable	()V
      //   459: return
      //   460: goto -324 -> 136
      //   463: iconst_1
      //   464: istore_3
      //   465: goto -440 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	468	0	this	RoleDataReq
      //   0	468	1	paramCodedInputStream	CodedInputStream
      //   0	468	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	441	3	i	int
      //   33	109	4	j	int
      //   21	427	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   158	235	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	179	com/google/protobuf/InvalidProtocolBufferException
      //   136	149	179	com/google/protobuf/InvalidProtocolBufferException
      //   154	176	179	com/google/protobuf/InvalidProtocolBufferException
      //   202	224	179	com/google/protobuf/InvalidProtocolBufferException
      //   244	266	179	com/google/protobuf/InvalidProtocolBufferException
      //   269	292	179	com/google/protobuf/InvalidProtocolBufferException
      //   295	318	179	com/google/protobuf/InvalidProtocolBufferException
      //   321	344	179	com/google/protobuf/InvalidProtocolBufferException
      //   347	370	179	com/google/protobuf/InvalidProtocolBufferException
      //   373	397	179	com/google/protobuf/InvalidProtocolBufferException
      //   400	420	179	com/google/protobuf/InvalidProtocolBufferException
      //   423	443	179	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	186	finally
      //   136	149	186	finally
      //   154	176	186	finally
      //   180	186	186	finally
      //   202	224	186	finally
      //   228	244	186	finally
      //   244	266	186	finally
      //   269	292	186	finally
      //   295	318	186	finally
      //   321	344	186	finally
      //   347	370	186	finally
      //   373	397	186	finally
      //   400	420	186	finally
      //   423	443	186	finally
      //   29	35	227	java/io/IOException
      //   136	149	227	java/io/IOException
      //   154	176	227	java/io/IOException
      //   202	224	227	java/io/IOException
      //   244	266	227	java/io/IOException
      //   269	292	227	java/io/IOException
      //   295	318	227	java/io/IOException
      //   321	344	227	java/io/IOException
      //   347	370	227	java/io/IOException
      //   373	397	227	java/io/IOException
      //   400	420	227	java/io/IOException
      //   423	443	227	java/io/IOException
    }
    
    private RoleDataReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private RoleDataReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static RoleDataReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_descriptor;
    }
    
    private void initFields()
    {
      this.roleId_ = "";
      this.roleName_ = "";
      this.serverId_ = "";
      this.serverName_ = "";
      this.zoneId_ = "";
      this.zoneName_ = "";
      this.level_ = "";
      this.devAppId_ = "";
      this.fuid_ = 0L;
      this.openId_ = 0L;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(RoleDataReq paramRoleDataReq)
    {
      return newBuilder().mergeFrom(paramRoleDataReq);
    }
    
    public static RoleDataReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RoleDataReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static RoleDataReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RoleDataReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RoleDataReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (RoleDataReq)PARSER.parseFrom(paramByteString);
    }
    
    public static RoleDataReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RoleDataReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static RoleDataReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (RoleDataReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static RoleDataReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RoleDataReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static RoleDataReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RoleDataReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static RoleDataReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RoleDataReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RoleDataReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (RoleDataReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static RoleDataReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RoleDataReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final RoleDataReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getDevAppId()
    {
      Object localObject = this.devAppId_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.devAppId_ = str;
      }
      return str;
    }
    
    public final ByteString getDevAppIdBytes()
    {
      Object localObject = this.devAppId_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.devAppId_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final String getLevel()
    {
      Object localObject = this.level_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.level_ = str;
      }
      return str;
    }
    
    public final ByteString getLevelBytes()
    {
      Object localObject = this.level_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.level_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getOpenId()
    {
      return this.openId_;
    }
    
    public final Parser<RoleDataReq> getParserForType()
    {
      return PARSER;
    }
    
    public final String getRoleId()
    {
      Object localObject = this.roleId_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.roleId_ = str;
      }
      return str;
    }
    
    public final ByteString getRoleIdBytes()
    {
      Object localObject = this.roleId_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.roleId_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getRoleName()
    {
      Object localObject = this.roleName_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.roleName_ = str;
      }
      return str;
    }
    
    public final ByteString getRoleNameBytes()
    {
      Object localObject = this.roleName_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.roleName_ = localObject;
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
        j = CodedOutputStream.computeBytesSize(1, getRoleIdBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getRoleNameBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getServerIdBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getServerNameBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getZoneIdBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getZoneNameBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getLevelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getDevAppIdBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeUInt64Size(9, this.fuid_);
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeUInt64Size(10, this.openId_);
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getServerId()
    {
      Object localObject = this.serverId_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serverId_ = str;
      }
      return str;
    }
    
    public final ByteString getServerIdBytes()
    {
      Object localObject = this.serverId_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serverId_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getServerName()
    {
      Object localObject = this.serverName_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serverName_ = str;
      }
      return str;
    }
    
    public final ByteString getServerNameBytes()
    {
      Object localObject = this.serverName_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serverName_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final String getZoneId()
    {
      Object localObject = this.zoneId_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.zoneId_ = str;
      }
      return str;
    }
    
    public final ByteString getZoneIdBytes()
    {
      Object localObject = this.zoneId_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.zoneId_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getZoneName()
    {
      Object localObject = this.zoneName_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.zoneName_ = str;
      }
      return str;
    }
    
    public final ByteString getZoneNameBytes()
    {
      Object localObject = this.zoneName_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.zoneName_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasLevel()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasOpenId()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasRoleId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasRoleName()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasServerId()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasServerName()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasZoneId()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasZoneName()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_fieldAccessorTable.ensureFieldAccessorsInitialized(RoleDataReq.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getRoleIdBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getRoleNameBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getServerIdBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getServerNameBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getZoneIdBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getZoneNameBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getLevelBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getDevAppIdBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeUInt64(9, this.fuid_);
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeUInt64(10, this.openId_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements GameDataProto.RoleDataReqOrBuilder
    {
      private int bitField0_;
      private Object devAppId_ = "";
      private long fuid_;
      private Object level_ = "";
      private long openId_;
      private Object roleId_ = "";
      private Object roleName_ = "";
      private Object serverId_ = "";
      private Object serverName_ = "";
      private Object zoneId_ = "";
      private Object zoneName_ = "";
      
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
        return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final GameDataProto.RoleDataReq build()
      {
        GameDataProto.RoleDataReq localRoleDataReq = buildPartial();
        if (!localRoleDataReq.isInitialized()) {
          throw newUninitializedMessageException(localRoleDataReq);
        }
        return localRoleDataReq;
      }
      
      public final GameDataProto.RoleDataReq buildPartial()
      {
        int j = 1;
        GameDataProto.RoleDataReq localRoleDataReq = new GameDataProto.RoleDataReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          GameDataProto.RoleDataReq.access$702(localRoleDataReq, this.roleId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          GameDataProto.RoleDataReq.access$802(localRoleDataReq, this.roleName_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          GameDataProto.RoleDataReq.access$902(localRoleDataReq, this.serverId_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          GameDataProto.RoleDataReq.access$1002(localRoleDataReq, this.serverName_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          GameDataProto.RoleDataReq.access$1102(localRoleDataReq, this.zoneId_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          GameDataProto.RoleDataReq.access$1202(localRoleDataReq, this.zoneName_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          GameDataProto.RoleDataReq.access$1302(localRoleDataReq, this.level_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          GameDataProto.RoleDataReq.access$1402(localRoleDataReq, this.devAppId_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          GameDataProto.RoleDataReq.access$1502(localRoleDataReq, this.fuid_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          GameDataProto.RoleDataReq.access$1602(localRoleDataReq, this.openId_);
          GameDataProto.RoleDataReq.access$1702(localRoleDataReq, i);
          onBuilt();
          return localRoleDataReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.roleId_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.roleName_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.serverId_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.serverName_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.zoneId_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.zoneName_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.level_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.devAppId_ = "";
        this.bitField0_ &= 0xFF7F;
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFEFF;
        this.openId_ = 0L;
        this.bitField0_ &= 0xFDFF;
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFF7F;
        this.devAppId_ = GameDataProto.RoleDataReq.getDefaultInstance().getDevAppId();
        onChanged();
        return this;
      }
      
      public final Builder clearFuid()
      {
        this.bitField0_ &= 0xFEFF;
        this.fuid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearLevel()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.level_ = GameDataProto.RoleDataReq.getDefaultInstance().getLevel();
        onChanged();
        return this;
      }
      
      public final Builder clearOpenId()
      {
        this.bitField0_ &= 0xFDFF;
        this.openId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearRoleId()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.roleId_ = GameDataProto.RoleDataReq.getDefaultInstance().getRoleId();
        onChanged();
        return this;
      }
      
      public final Builder clearRoleName()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.roleName_ = GameDataProto.RoleDataReq.getDefaultInstance().getRoleName();
        onChanged();
        return this;
      }
      
      public final Builder clearServerId()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.serverId_ = GameDataProto.RoleDataReq.getDefaultInstance().getServerId();
        onChanged();
        return this;
      }
      
      public final Builder clearServerName()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.serverName_ = GameDataProto.RoleDataReq.getDefaultInstance().getServerName();
        onChanged();
        return this;
      }
      
      public final Builder clearZoneId()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.zoneId_ = GameDataProto.RoleDataReq.getDefaultInstance().getZoneId();
        onChanged();
        return this;
      }
      
      public final Builder clearZoneName()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.zoneName_ = GameDataProto.RoleDataReq.getDefaultInstance().getZoneName();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final GameDataProto.RoleDataReq getDefaultInstanceForType()
      {
        return GameDataProto.RoleDataReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_descriptor;
      }
      
      public final String getDevAppId()
      {
        Object localObject = this.devAppId_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.devAppId_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getDevAppIdBytes()
      {
        Object localObject = this.devAppId_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.devAppId_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getLevel()
      {
        Object localObject = this.level_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.level_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getLevelBytes()
      {
        Object localObject = this.level_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.level_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getOpenId()
      {
        return this.openId_;
      }
      
      public final String getRoleId()
      {
        Object localObject = this.roleId_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.roleId_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getRoleIdBytes()
      {
        Object localObject = this.roleId_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.roleId_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getRoleName()
      {
        Object localObject = this.roleName_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.roleName_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getRoleNameBytes()
      {
        Object localObject = this.roleName_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.roleName_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getServerId()
      {
        Object localObject = this.serverId_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serverId_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServerIdBytes()
      {
        Object localObject = this.serverId_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serverId_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getServerName()
      {
        Object localObject = this.serverName_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serverName_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServerNameBytes()
      {
        Object localObject = this.serverName_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serverName_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getZoneId()
      {
        Object localObject = this.zoneId_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.zoneId_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getZoneIdBytes()
      {
        Object localObject = this.zoneId_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.zoneId_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getZoneName()
      {
        Object localObject = this.zoneName_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.zoneName_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getZoneNameBytes()
      {
        Object localObject = this.zoneName_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.zoneName_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasLevel()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasOpenId()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasRoleId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasRoleName()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasServerId()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasServerName()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasZoneId()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasZoneName()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_fieldAccessorTable.ensureFieldAccessorsInitialized(GameDataProto.RoleDataReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return true;
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 270	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 276 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 199	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 279	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 199	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;
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
        if ((paramMessage instanceof GameDataProto.RoleDataReq)) {
          return mergeFrom((GameDataProto.RoleDataReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(GameDataProto.RoleDataReq paramRoleDataReq)
      {
        if (paramRoleDataReq == GameDataProto.RoleDataReq.getDefaultInstance()) {
          return this;
        }
        if (paramRoleDataReq.hasRoleId())
        {
          this.bitField0_ |= 0x1;
          this.roleId_ = paramRoleDataReq.roleId_;
          onChanged();
        }
        if (paramRoleDataReq.hasRoleName())
        {
          this.bitField0_ |= 0x2;
          this.roleName_ = paramRoleDataReq.roleName_;
          onChanged();
        }
        if (paramRoleDataReq.hasServerId())
        {
          this.bitField0_ |= 0x4;
          this.serverId_ = paramRoleDataReq.serverId_;
          onChanged();
        }
        if (paramRoleDataReq.hasServerName())
        {
          this.bitField0_ |= 0x8;
          this.serverName_ = paramRoleDataReq.serverName_;
          onChanged();
        }
        if (paramRoleDataReq.hasZoneId())
        {
          this.bitField0_ |= 0x10;
          this.zoneId_ = paramRoleDataReq.zoneId_;
          onChanged();
        }
        if (paramRoleDataReq.hasZoneName())
        {
          this.bitField0_ |= 0x20;
          this.zoneName_ = paramRoleDataReq.zoneName_;
          onChanged();
        }
        if (paramRoleDataReq.hasLevel())
        {
          this.bitField0_ |= 0x40;
          this.level_ = paramRoleDataReq.level_;
          onChanged();
        }
        if (paramRoleDataReq.hasDevAppId())
        {
          this.bitField0_ |= 0x80;
          this.devAppId_ = paramRoleDataReq.devAppId_;
          onChanged();
        }
        if (paramRoleDataReq.hasFuid()) {
          setFuid(paramRoleDataReq.getFuid());
        }
        if (paramRoleDataReq.hasOpenId()) {
          setOpenId(paramRoleDataReq.getOpenId());
        }
        mergeUnknownFields(paramRoleDataReq.getUnknownFields());
        return this;
      }
      
      public final Builder setDevAppId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.devAppId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.devAppId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFuid(long paramLong)
      {
        this.bitField0_ |= 0x100;
        this.fuid_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setLevel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.level_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setLevelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.level_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setOpenId(long paramLong)
      {
        this.bitField0_ |= 0x200;
        this.openId_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setRoleId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.roleId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setRoleIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.roleId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setRoleName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.roleName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setRoleNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.roleName_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setServerId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.serverId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServerIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.serverId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setServerName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.serverName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServerNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.serverName_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setZoneId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.zoneId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setZoneIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.zoneId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setZoneName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.zoneName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setZoneNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.zoneName_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface RoleDataReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getDevAppId();
    
    public abstract ByteString getDevAppIdBytes();
    
    public abstract long getFuid();
    
    public abstract String getLevel();
    
    public abstract ByteString getLevelBytes();
    
    public abstract long getOpenId();
    
    public abstract String getRoleId();
    
    public abstract ByteString getRoleIdBytes();
    
    public abstract String getRoleName();
    
    public abstract ByteString getRoleNameBytes();
    
    public abstract String getServerId();
    
    public abstract ByteString getServerIdBytes();
    
    public abstract String getServerName();
    
    public abstract ByteString getServerNameBytes();
    
    public abstract String getZoneId();
    
    public abstract ByteString getZoneIdBytes();
    
    public abstract String getZoneName();
    
    public abstract ByteString getZoneNameBytes();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasLevel();
    
    public abstract boolean hasOpenId();
    
    public abstract boolean hasRoleId();
    
    public abstract boolean hasRoleName();
    
    public abstract boolean hasServerId();
    
    public abstract boolean hasServerName();
    
    public abstract boolean hasZoneId();
    
    public abstract boolean hasZoneName();
  }
  
  public static final class RoleDataRsp
    extends GeneratedMessage
    implements GameDataProto.RoleDataRspOrBuilder
  {
    public static final int ERRMSG_FIELD_NUMBER = 2;
    public static Parser<RoleDataRsp> PARSER = new h();
    public static final int RETCODE_FIELD_NUMBER = 1;
    private static final RoleDataRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object errMsg_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int retCode_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      RoleDataRsp localRoleDataRsp = new RoleDataRsp(true);
      defaultInstance = localRoleDataRsp;
      localRoleDataRsp.initFields();
    }
    
    /* Error */
    private RoleDataRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:initFields	()V
      //   18: invokestatic 69	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +150 -> 176
      //   29: aload_1
      //   30: invokevirtual 75	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+153->190, 0:+156->193, 8:+53->90, 18:+97->134
      //   72: aload_0
      //   73: aload_1
      //   74: aload 5
      //   76: aload_2
      //   77: iload 4
      //   79: invokevirtual 79	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 81	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 81	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 84	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   105: putfield 86	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:retCode_	I
      //   108: goto -83 -> 25
      //   111: astore_1
      //   112: aload_1
      //   113: aload_0
      //   114: invokevirtual 90	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   117: athrow
      //   118: astore_1
      //   119: aload_0
      //   120: aload 5
      //   122: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   125: putfield 98	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_1
      //   135: invokevirtual 105	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   138: astore 6
      //   140: aload_0
      //   141: aload_0
      //   142: getfield 81	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:bitField0_	I
      //   145: iconst_2
      //   146: ior
      //   147: putfield 81	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:bitField0_	I
      //   150: aload_0
      //   151: aload 6
      //   153: putfield 107	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:errMsg_	Ljava/lang/Object;
      //   156: goto -131 -> 25
      //   159: astore_1
      //   160: new 56	com/google/protobuf/InvalidProtocolBufferException
      //   163: dup
      //   164: aload_1
      //   165: invokevirtual 111	java/io/IOException:getMessage	()Ljava/lang/String;
      //   168: invokespecial 114	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   171: aload_0
      //   172: invokevirtual 90	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   175: athrow
      //   176: aload_0
      //   177: aload 5
      //   179: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   182: putfield 98	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   185: aload_0
      //   186: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:makeExtensionsImmutable	()V
      //   189: return
      //   190: goto -118 -> 72
      //   193: iconst_1
      //   194: istore_3
      //   195: goto -170 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	198	0	this	RoleDataRsp
      //   0	198	1	paramCodedInputStream	CodedInputStream
      //   0	198	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	171	3	i	int
      //   33	45	4	j	int
      //   21	157	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   138	14	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	111	com/google/protobuf/InvalidProtocolBufferException
      //   72	85	111	com/google/protobuf/InvalidProtocolBufferException
      //   90	108	111	com/google/protobuf/InvalidProtocolBufferException
      //   134	156	111	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	118	finally
      //   72	85	118	finally
      //   90	108	118	finally
      //   112	118	118	finally
      //   134	156	118	finally
      //   160	176	118	finally
      //   29	35	159	java/io/IOException
      //   72	85	159	java/io/IOException
      //   90	108	159	java/io/IOException
      //   134	156	159	java/io/IOException
    }
    
    private RoleDataRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private RoleDataRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static RoleDataRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.errMsg_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$2100();
    }
    
    public static Builder newBuilder(RoleDataRsp paramRoleDataRsp)
    {
      return newBuilder().mergeFrom(paramRoleDataRsp);
    }
    
    public static RoleDataRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RoleDataRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static RoleDataRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RoleDataRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RoleDataRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (RoleDataRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static RoleDataRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RoleDataRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static RoleDataRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (RoleDataRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static RoleDataRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RoleDataRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static RoleDataRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RoleDataRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static RoleDataRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RoleDataRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RoleDataRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (RoleDataRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static RoleDataRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RoleDataRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final RoleDataRsp getDefaultInstanceForType()
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
    
    public final Parser<RoleDataRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final int getRetCode()
    {
      return this.retCode_;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      i = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        i = CodedOutputStream.computeUInt32Size(1, this.retCode_) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeBytesSize(2, getErrMsgBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasErrMsg()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(RoleDataRsp.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(2, getErrMsgBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements GameDataProto.RoleDataRspOrBuilder
    {
      private int bitField0_;
      private Object errMsg_ = "";
      private int retCode_;
      
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
        return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final GameDataProto.RoleDataRsp build()
      {
        GameDataProto.RoleDataRsp localRoleDataRsp = buildPartial();
        if (!localRoleDataRsp.isInitialized()) {
          throw newUninitializedMessageException(localRoleDataRsp);
        }
        return localRoleDataRsp;
      }
      
      public final GameDataProto.RoleDataRsp buildPartial()
      {
        int i = 1;
        GameDataProto.RoleDataRsp localRoleDataRsp = new GameDataProto.RoleDataRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          GameDataProto.RoleDataRsp.access$2502(localRoleDataRsp, this.retCode_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          GameDataProto.RoleDataRsp.access$2602(localRoleDataRsp, this.errMsg_);
          GameDataProto.RoleDataRsp.access$2702(localRoleDataRsp, j);
          onBuilt();
          return localRoleDataRsp;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.errMsg_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearErrMsg()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.errMsg_ = GameDataProto.RoleDataRsp.getDefaultInstance().getErrMsg();
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
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final GameDataProto.RoleDataRsp getDefaultInstanceForType()
      {
        return GameDataProto.RoleDataRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_descriptor;
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
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final boolean hasErrMsg()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return GameDataProto.internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(GameDataProto.RoleDataRsp.class, Builder.class);
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
        //   2: getstatic 177	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 183 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 186	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp$Builder;
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
        if ((paramMessage instanceof GameDataProto.RoleDataRsp)) {
          return mergeFrom((GameDataProto.RoleDataRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(GameDataProto.RoleDataRsp paramRoleDataRsp)
      {
        if (paramRoleDataRsp == GameDataProto.RoleDataRsp.getDefaultInstance()) {
          return this;
        }
        if (paramRoleDataRsp.hasRetCode()) {
          setRetCode(paramRoleDataRsp.getRetCode());
        }
        if (paramRoleDataRsp.hasErrMsg())
        {
          this.bitField0_ |= 0x2;
          this.errMsg_ = paramRoleDataRsp.errMsg_;
          onChanged();
        }
        mergeUnknownFields(paramRoleDataRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setErrMsg(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.errMsg_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setErrMsgBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.errMsg_ = paramByteString;
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
    }
  }
  
  public static abstract interface RoleDataRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getErrMsg();
    
    public abstract ByteString getErrMsgBytes();
    
    public abstract int getRetCode();
    
    public abstract boolean hasErrMsg();
    
    public abstract boolean hasRetCode();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\xiaomi\gamecenter\milink\msg\GameDataProto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */