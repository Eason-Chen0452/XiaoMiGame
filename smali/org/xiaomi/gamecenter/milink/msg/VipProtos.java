package org.xiaomi.gamecenter.milink.msg;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.EnumDescriptor;
import com.google.protobuf.Descriptors.EnumValueDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import com.google.protobuf.GeneratedMessage.BuilderParent;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import com.google.protobuf.Internal.EnumLiteMap;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.List;

public final class VipProtos
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(4);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_descriptor, new String[] { "Fuid", "Token" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(5);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_descriptor, new String[] { "RetCode", "Fuid", "ValidateStatus", "ExpireTime", "VipNo", "VipUrl", "Remark" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_fieldAccessorTable;
  
  static
  {
    av localav = new av();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\tVip.proto\022 org.xiaomi.gamecenter.milink.msg\"n\n\023GetUserLevelInfoReq\022\f\n\004fuid\030\001 \002(\003\022\r\n\005token\030\002 \002(\t\022:\n\007appType\030\003 \002(\0162).org.xiaomi.gamecenter.milink.msg.AppType\"õ\002\n\023GetUserLevelInfoRsp\022\017\n\007retCode\030\001 \002(\005\022\r\n\005level\030\002 \001(\005\022\020\n\blevelExp\030\003 \001(\005\022\024\n\flevelBigIcon\030\004 \001(\t\022\033\n\023levelSmallIconForOn\030\005 \001(\t\022\034\n\024levelSmallIconForOff\030\006 \001(\t\022\025\n\rlevelNickIcon\030\007 \001(\t\022\021\n\tnextLevel\030\b \001(\005\022\024\n\fnextLevelExp\030\t \001(\005\022\030\n\020nextlevelBigIcon\030\n \001", "(\t\022\037\n\027nextlevelSmallIconForOn\030\013 \001(\t\022 \n\030nextlevelSmallIconForOff\030\f \001(\t\022\031\n\021nextlevelNickIcon\030\r \001(\t\022\025\n\rgameCenterUrl\030\016 \001(\t\022\f\n\004note\030\017 \001(\t\"E\n\024SdkCheckLoginShowReq\022\f\n\004fuid\030\001 \002(\003\022\r\n\005token\030\002 \002(\t\022\020\n\bdevAppId\030\003 \002(\003\"5\n\024SdkCheckLoginShowRsp\022\017\n\007retCode\030\001 \002(\005\022\f\n\004show\030\002 \001(\005\".\n\017QueryVipUserReq\022\f\n\004fuid\030\001 \002(\004\022\r\n\005token\030\002 \001(\t\"\001\n\017QueryVipUserRsp\022\017\n\007retCode\030\001 \002(\r\022\f\n\004fuid\030\002 \001(\004\022\026\n\016validateStatus\030\003 \001(\r\022\022\n\nexpireTime\030\004 \001", "(\004\022\r\n\005vipNo\030\005 \001(\t\022\016\n\006vipUrl\030\006 \001(\t\022\016\n\006remark\030\007 \001(\t*\"\n\007AppType\022\007\n\003SDK\020\001\022\016\n\nGAMECENTER\020\002B-\n org.xiaomi.gamecenter.milink.msgB\tVipProtos" }, new Descriptors.FileDescriptor[0], localav);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor, new String[] { "Fuid", "Token", "AppType" });
    internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor, new String[] { "RetCode", "Level", "LevelExp", "LevelBigIcon", "LevelSmallIconForOn", "LevelSmallIconForOff", "LevelNickIcon", "NextLevel", "NextLevelExp", "NextlevelBigIcon", "NextlevelSmallIconForOn", "NextlevelSmallIconForOff", "NextlevelNickIcon", "GameCenterUrl", "Note" });
    internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
    internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor, new String[] { "Fuid", "Token", "DevAppId" });
    internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
    internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor, new String[] { "RetCode", "Show" });
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static enum AppType
    implements ProtocolMessageEnum
  {
    public static final int GAMECENTER_VALUE = 2;
    public static final int SDK_VALUE = 1;
    private static final AppType[] VALUES = values();
    private static Internal.EnumLiteMap<AppType> internalValueMap;
    private final int index;
    private final int value;
    
    static
    {
      GAMECENTER = new AppType("GAMECENTER", 1, 1, 2);
      $VALUES = new AppType[] { SDK, GAMECENTER };
      internalValueMap = new aw();
    }
    
    private AppType(int paramInt1, int paramInt2)
    {
      this.index = paramInt1;
      this.value = paramInt2;
    }
    
    public static final Descriptors.EnumDescriptor getDescriptor()
    {
      return (Descriptors.EnumDescriptor)VipProtos.getDescriptor().getEnumTypes().get(0);
    }
    
    public static Internal.EnumLiteMap<AppType> internalGetValueMap()
    {
      return internalValueMap;
    }
    
    public static AppType valueOf(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return null;
      case 1: 
        return SDK;
      }
      return GAMECENTER;
    }
    
    public static AppType valueOf(Descriptors.EnumValueDescriptor paramEnumValueDescriptor)
    {
      if (paramEnumValueDescriptor.getType() != getDescriptor()) {
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
      }
      return VALUES[paramEnumValueDescriptor.getIndex()];
    }
    
    public final Descriptors.EnumDescriptor getDescriptorForType()
    {
      return getDescriptor();
    }
    
    public final int getNumber()
    {
      return this.value;
    }
    
    public final Descriptors.EnumValueDescriptor getValueDescriptor()
    {
      return (Descriptors.EnumValueDescriptor)getDescriptor().getValues().get(this.index);
    }
  }
  
  public static final class GetUserLevelInfoReq
    extends GeneratedMessage
    implements VipProtos.GetUserLevelInfoReqOrBuilder
  {
    public static final int APPTYPE_FIELD_NUMBER = 3;
    public static final int FUID_FIELD_NUMBER = 1;
    public static Parser<GetUserLevelInfoReq> PARSER = new ax();
    public static final int TOKEN_FIELD_NUMBER = 2;
    private static final GetUserLevelInfoReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private VipProtos.AppType appType_;
    private int bitField0_;
    private long fuid_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object token_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetUserLevelInfoReq localGetUserLevelInfoReq = new GetUserLevelInfoReq(true);
      defaultInstance = localGetUserLevelInfoReq;
      localGetUserLevelInfoReq.initFields();
    }
    
    /* Error */
    private GetUserLevelInfoReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 63	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 65	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 67	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 56	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:initFields	()V
      //   18: invokestatic 73	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +207 -> 233
      //   29: aload_1
      //   30: invokevirtual 79	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+210->247, 0:+213->250, 8:+61->98, 18:+105->142, 24:+147->184
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 83	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 85	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 85	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 89	com/google/protobuf/CodedInputStream:readInt64	()J
      //   113: putfield 91	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:fuid_	J
      //   116: goto -91 -> 25
      //   119: astore_1
      //   120: aload_1
      //   121: aload_0
      //   122: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   125: athrow
      //   126: astore_1
      //   127: aload_0
      //   128: aload 5
      //   130: invokevirtual 101	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   133: putfield 103	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 106	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_1
      //   143: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   146: astore 6
      //   148: aload_0
      //   149: aload_0
      //   150: getfield 85	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:bitField0_	I
      //   153: iconst_2
      //   154: ior
      //   155: putfield 85	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:bitField0_	I
      //   158: aload_0
      //   159: aload 6
      //   161: putfield 112	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:token_	Ljava/lang/Object;
      //   164: goto -139 -> 25
      //   167: astore_1
      //   168: new 60	com/google/protobuf/InvalidProtocolBufferException
      //   171: dup
      //   172: aload_1
      //   173: invokevirtual 116	java/io/IOException:getMessage	()Ljava/lang/String;
      //   176: invokespecial 119	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   179: aload_0
      //   180: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   183: athrow
      //   184: aload_1
      //   185: invokevirtual 122	com/google/protobuf/CodedInputStream:readEnum	()I
      //   188: istore 4
      //   190: iload 4
      //   192: invokestatic 128	org/xiaomi/gamecenter/milink/msg/VipProtos$AppType:valueOf	(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;
      //   195: astore 6
      //   197: aload 6
      //   199: ifnonnull +15 -> 214
      //   202: aload 5
      //   204: iconst_3
      //   205: iload 4
      //   207: invokevirtual 132	com/google/protobuf/UnknownFieldSet$Builder:mergeVarintField	(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   210: pop
      //   211: goto -186 -> 25
      //   214: aload_0
      //   215: aload_0
      //   216: getfield 85	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:bitField0_	I
      //   219: iconst_4
      //   220: ior
      //   221: putfield 85	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:bitField0_	I
      //   224: aload_0
      //   225: aload 6
      //   227: putfield 134	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:appType_	Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;
      //   230: goto -205 -> 25
      //   233: aload_0
      //   234: aload 5
      //   236: invokevirtual 101	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   239: putfield 103	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   242: aload_0
      //   243: invokevirtual 106	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:makeExtensionsImmutable	()V
      //   246: return
      //   247: goto -167 -> 80
      //   250: iconst_1
      //   251: istore_3
      //   252: goto -227 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	255	0	this	GetUserLevelInfoReq
      //   0	255	1	paramCodedInputStream	CodedInputStream
      //   0	255	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	228	3	i	int
      //   33	173	4	j	int
      //   21	214	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   146	80	6	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   29	35	119	com/google/protobuf/InvalidProtocolBufferException
      //   80	93	119	com/google/protobuf/InvalidProtocolBufferException
      //   98	116	119	com/google/protobuf/InvalidProtocolBufferException
      //   142	164	119	com/google/protobuf/InvalidProtocolBufferException
      //   184	197	119	com/google/protobuf/InvalidProtocolBufferException
      //   202	211	119	com/google/protobuf/InvalidProtocolBufferException
      //   214	230	119	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	126	finally
      //   80	93	126	finally
      //   98	116	126	finally
      //   120	126	126	finally
      //   142	164	126	finally
      //   168	184	126	finally
      //   184	197	126	finally
      //   202	211	126	finally
      //   214	230	126	finally
      //   29	35	167	java/io/IOException
      //   80	93	167	java/io/IOException
      //   98	116	167	java/io/IOException
      //   142	164	167	java/io/IOException
      //   184	197	167	java/io/IOException
      //   202	211	167	java/io/IOException
      //   214	230	167	java/io/IOException
    }
    
    private GetUserLevelInfoReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetUserLevelInfoReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetUserLevelInfoReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor;
    }
    
    private void initFields()
    {
      this.fuid_ = 0L;
      this.token_ = "";
      this.appType_ = VipProtos.AppType.SDK;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(GetUserLevelInfoReq paramGetUserLevelInfoReq)
    {
      return newBuilder().mergeFrom(paramGetUserLevelInfoReq);
    }
    
    public static GetUserLevelInfoReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetUserLevelInfoReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetUserLevelInfoReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetUserLevelInfoReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetUserLevelInfoReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetUserLevelInfoReq)PARSER.parseFrom(paramByteString);
    }
    
    public static GetUserLevelInfoReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetUserLevelInfoReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetUserLevelInfoReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetUserLevelInfoReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetUserLevelInfoReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetUserLevelInfoReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetUserLevelInfoReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetUserLevelInfoReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetUserLevelInfoReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetUserLevelInfoReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetUserLevelInfoReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetUserLevelInfoReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetUserLevelInfoReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetUserLevelInfoReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final VipProtos.AppType getAppType()
    {
      return this.appType_;
    }
    
    public final GetUserLevelInfoReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final Parser<GetUserLevelInfoReq> getParserForType()
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
        j = CodedOutputStream.computeInt64Size(1, this.fuid_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getTokenBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeEnumSize(3, this.appType_.getNumber());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getToken()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.token_ = str;
      }
      return str;
    }
    
    public final ByteString getTokenBytes()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.token_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAppType()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasToken()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_fieldAccessorTable.ensureFieldAccessorsInitialized(GetUserLevelInfoReq.class, Builder.class);
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
      if (!hasFuid())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasToken())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasAppType())
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
        paramCodedOutputStream.writeInt64(1, this.fuid_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getTokenBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeEnum(3, this.appType_.getNumber());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements VipProtos.GetUserLevelInfoReqOrBuilder
    {
      private VipProtos.AppType appType_ = VipProtos.AppType.SDK;
      private int bitField0_;
      private long fuid_;
      private Object token_ = "";
      
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
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final VipProtos.GetUserLevelInfoReq build()
      {
        VipProtos.GetUserLevelInfoReq localGetUserLevelInfoReq = buildPartial();
        if (!localGetUserLevelInfoReq.isInitialized()) {
          throw newUninitializedMessageException(localGetUserLevelInfoReq);
        }
        return localGetUserLevelInfoReq;
      }
      
      public final VipProtos.GetUserLevelInfoReq buildPartial()
      {
        int j = 1;
        VipProtos.GetUserLevelInfoReq localGetUserLevelInfoReq = new VipProtos.GetUserLevelInfoReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          VipProtos.GetUserLevelInfoReq.access$702(localGetUserLevelInfoReq, this.fuid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          VipProtos.GetUserLevelInfoReq.access$802(localGetUserLevelInfoReq, this.token_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          VipProtos.GetUserLevelInfoReq.access$902(localGetUserLevelInfoReq, this.appType_);
          VipProtos.GetUserLevelInfoReq.access$1002(localGetUserLevelInfoReq, j);
          onBuilt();
          return localGetUserLevelInfoReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.token_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.appType_ = VipProtos.AppType.SDK;
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearAppType()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.appType_ = VipProtos.AppType.SDK;
        onChanged();
        return this;
      }
      
      public final Builder clearFuid()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.fuid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearToken()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.token_ = VipProtos.GetUserLevelInfoReq.getDefaultInstance().getToken();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final VipProtos.AppType getAppType()
      {
        return this.appType_;
      }
      
      public final VipProtos.GetUserLevelInfoReq getDefaultInstanceForType()
      {
        return VipProtos.GetUserLevelInfoReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getToken()
      {
        Object localObject = this.token_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.token_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTokenBytes()
      {
        Object localObject = this.token_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.token_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasAppType()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasToken()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_fieldAccessorTable.ensureFieldAccessorsInitialized(VipProtos.GetUserLevelInfoReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasFuid()) {}
        while ((!hasToken()) || (!hasAppType())) {
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
        //   2: getstatic 200	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 206 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 136	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 209	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 136	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
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
        if ((paramMessage instanceof VipProtos.GetUserLevelInfoReq)) {
          return mergeFrom((VipProtos.GetUserLevelInfoReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(VipProtos.GetUserLevelInfoReq paramGetUserLevelInfoReq)
      {
        if (paramGetUserLevelInfoReq == VipProtos.GetUserLevelInfoReq.getDefaultInstance()) {
          return this;
        }
        if (paramGetUserLevelInfoReq.hasFuid()) {
          setFuid(paramGetUserLevelInfoReq.getFuid());
        }
        if (paramGetUserLevelInfoReq.hasToken())
        {
          this.bitField0_ |= 0x2;
          this.token_ = paramGetUserLevelInfoReq.token_;
          onChanged();
        }
        if (paramGetUserLevelInfoReq.hasAppType()) {
          setAppType(paramGetUserLevelInfoReq.getAppType());
        }
        mergeUnknownFields(paramGetUserLevelInfoReq.getUnknownFields());
        return this;
      }
      
      public final Builder setAppType(VipProtos.AppType paramAppType)
      {
        if (paramAppType == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.appType_ = paramAppType;
        onChanged();
        return this;
      }
      
      public final Builder setFuid(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.fuid_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.token_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.token_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface GetUserLevelInfoReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract VipProtos.AppType getAppType();
    
    public abstract long getFuid();
    
    public abstract String getToken();
    
    public abstract ByteString getTokenBytes();
    
    public abstract boolean hasAppType();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasToken();
  }
  
  public static final class GetUserLevelInfoRsp
    extends GeneratedMessage
    implements VipProtos.GetUserLevelInfoRspOrBuilder
  {
    public static final int GAMECENTERURL_FIELD_NUMBER = 14;
    public static final int LEVELBIGICON_FIELD_NUMBER = 4;
    public static final int LEVELEXP_FIELD_NUMBER = 3;
    public static final int LEVELNICKICON_FIELD_NUMBER = 7;
    public static final int LEVELSMALLICONFOROFF_FIELD_NUMBER = 6;
    public static final int LEVELSMALLICONFORON_FIELD_NUMBER = 5;
    public static final int LEVEL_FIELD_NUMBER = 2;
    public static final int NEXTLEVELBIGICON_FIELD_NUMBER = 10;
    public static final int NEXTLEVELEXP_FIELD_NUMBER = 9;
    public static final int NEXTLEVELNICKICON_FIELD_NUMBER = 13;
    public static final int NEXTLEVELSMALLICONFOROFF_FIELD_NUMBER = 12;
    public static final int NEXTLEVELSMALLICONFORON_FIELD_NUMBER = 11;
    public static final int NEXTLEVEL_FIELD_NUMBER = 8;
    public static final int NOTE_FIELD_NUMBER = 15;
    public static Parser<GetUserLevelInfoRsp> PARSER = new ay();
    public static final int RETCODE_FIELD_NUMBER = 1;
    private static final GetUserLevelInfoRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object gameCenterUrl_;
    private Object levelBigIcon_;
    private int levelExp_;
    private Object levelNickIcon_;
    private Object levelSmallIconForOff_;
    private Object levelSmallIconForOn_;
    private int level_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int nextLevelExp_;
    private int nextLevel_;
    private Object nextlevelBigIcon_;
    private Object nextlevelNickIcon_;
    private Object nextlevelSmallIconForOff_;
    private Object nextlevelSmallIconForOn_;
    private Object note_;
    private int retCode_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetUserLevelInfoRsp localGetUserLevelInfoRsp = new GetUserLevelInfoRsp(true);
      defaultInstance = localGetUserLevelInfoRsp;
      localGetUserLevelInfoRsp.initFields();
    }
    
    /* Error */
    private GetUserLevelInfoRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 98	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 100	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 102	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 91	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:initFields	()V
      //   18: invokestatic 108	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +583 -> 609
      //   29: aload_1
      //   30: invokevirtual 114	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+586->623, 0:+589->626, 8:+157->194, 16:+201->238, 24:+239->276, 34:+260->297, 42:+286->323, 50:+312->349, 58:+338->375, 64:+364->401, 72:+387->424, 82:+410->447, 90:+437->474, 98:+464->501, 106:+491->528, 114:+518->555, 122:+545->582
      //   176: aload_0
      //   177: aload_1
      //   178: aload 5
      //   180: aload_2
      //   181: iload 4
      //   183: invokevirtual 118	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   186: ifne -161 -> 25
      //   189: iconst_1
      //   190: istore_3
      //   191: goto -166 -> 25
      //   194: aload_0
      //   195: aload_0
      //   196: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   199: iconst_1
      //   200: ior
      //   201: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   204: aload_0
      //   205: aload_1
      //   206: invokevirtual 123	com/google/protobuf/CodedInputStream:readInt32	()I
      //   209: putfield 125	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:retCode_	I
      //   212: goto -187 -> 25
      //   215: astore_1
      //   216: aload_1
      //   217: aload_0
      //   218: invokevirtual 129	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   221: athrow
      //   222: astore_1
      //   223: aload_0
      //   224: aload 5
      //   226: invokevirtual 135	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   229: putfield 137	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   232: aload_0
      //   233: invokevirtual 140	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:makeExtensionsImmutable	()V
      //   236: aload_1
      //   237: athrow
      //   238: aload_0
      //   239: aload_0
      //   240: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   243: iconst_2
      //   244: ior
      //   245: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   248: aload_0
      //   249: aload_1
      //   250: invokevirtual 123	com/google/protobuf/CodedInputStream:readInt32	()I
      //   253: putfield 142	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:level_	I
      //   256: goto -231 -> 25
      //   259: astore_1
      //   260: new 95	com/google/protobuf/InvalidProtocolBufferException
      //   263: dup
      //   264: aload_1
      //   265: invokevirtual 146	java/io/IOException:getMessage	()Ljava/lang/String;
      //   268: invokespecial 149	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   271: aload_0
      //   272: invokevirtual 129	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   275: athrow
      //   276: aload_0
      //   277: aload_0
      //   278: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   281: iconst_4
      //   282: ior
      //   283: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   286: aload_0
      //   287: aload_1
      //   288: invokevirtual 123	com/google/protobuf/CodedInputStream:readInt32	()I
      //   291: putfield 151	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:levelExp_	I
      //   294: goto -269 -> 25
      //   297: aload_1
      //   298: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   301: astore 6
      //   303: aload_0
      //   304: aload_0
      //   305: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   308: bipush 8
      //   310: ior
      //   311: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   314: aload_0
      //   315: aload 6
      //   317: putfield 157	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:levelBigIcon_	Ljava/lang/Object;
      //   320: goto -295 -> 25
      //   323: aload_1
      //   324: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   327: astore 6
      //   329: aload_0
      //   330: aload_0
      //   331: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   334: bipush 16
      //   336: ior
      //   337: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   340: aload_0
      //   341: aload 6
      //   343: putfield 159	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:levelSmallIconForOn_	Ljava/lang/Object;
      //   346: goto -321 -> 25
      //   349: aload_1
      //   350: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   353: astore 6
      //   355: aload_0
      //   356: aload_0
      //   357: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   360: bipush 32
      //   362: ior
      //   363: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   366: aload_0
      //   367: aload 6
      //   369: putfield 161	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:levelSmallIconForOff_	Ljava/lang/Object;
      //   372: goto -347 -> 25
      //   375: aload_1
      //   376: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   379: astore 6
      //   381: aload_0
      //   382: aload_0
      //   383: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   386: bipush 64
      //   388: ior
      //   389: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   392: aload_0
      //   393: aload 6
      //   395: putfield 163	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:levelNickIcon_	Ljava/lang/Object;
      //   398: goto -373 -> 25
      //   401: aload_0
      //   402: aload_0
      //   403: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   406: sipush 128
      //   409: ior
      //   410: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   413: aload_0
      //   414: aload_1
      //   415: invokevirtual 123	com/google/protobuf/CodedInputStream:readInt32	()I
      //   418: putfield 165	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:nextLevel_	I
      //   421: goto -396 -> 25
      //   424: aload_0
      //   425: aload_0
      //   426: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   429: sipush 256
      //   432: ior
      //   433: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   436: aload_0
      //   437: aload_1
      //   438: invokevirtual 123	com/google/protobuf/CodedInputStream:readInt32	()I
      //   441: putfield 167	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:nextLevelExp_	I
      //   444: goto -419 -> 25
      //   447: aload_1
      //   448: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   451: astore 6
      //   453: aload_0
      //   454: aload_0
      //   455: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   458: sipush 512
      //   461: ior
      //   462: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   465: aload_0
      //   466: aload 6
      //   468: putfield 169	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:nextlevelBigIcon_	Ljava/lang/Object;
      //   471: goto -446 -> 25
      //   474: aload_1
      //   475: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   478: astore 6
      //   480: aload_0
      //   481: aload_0
      //   482: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   485: sipush 1024
      //   488: ior
      //   489: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   492: aload_0
      //   493: aload 6
      //   495: putfield 171	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:nextlevelSmallIconForOn_	Ljava/lang/Object;
      //   498: goto -473 -> 25
      //   501: aload_1
      //   502: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   505: astore 6
      //   507: aload_0
      //   508: aload_0
      //   509: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   512: sipush 2048
      //   515: ior
      //   516: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   519: aload_0
      //   520: aload 6
      //   522: putfield 173	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:nextlevelSmallIconForOff_	Ljava/lang/Object;
      //   525: goto -500 -> 25
      //   528: aload_1
      //   529: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   532: astore 6
      //   534: aload_0
      //   535: aload_0
      //   536: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   539: sipush 4096
      //   542: ior
      //   543: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   546: aload_0
      //   547: aload 6
      //   549: putfield 175	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:nextlevelNickIcon_	Ljava/lang/Object;
      //   552: goto -527 -> 25
      //   555: aload_1
      //   556: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   559: astore 6
      //   561: aload_0
      //   562: aload_0
      //   563: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   566: sipush 8192
      //   569: ior
      //   570: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   573: aload_0
      //   574: aload 6
      //   576: putfield 177	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:gameCenterUrl_	Ljava/lang/Object;
      //   579: goto -554 -> 25
      //   582: aload_1
      //   583: invokevirtual 155	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   586: astore 6
      //   588: aload_0
      //   589: aload_0
      //   590: getfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   593: sipush 16384
      //   596: ior
      //   597: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:bitField0_	I
      //   600: aload_0
      //   601: aload 6
      //   603: putfield 179	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:note_	Ljava/lang/Object;
      //   606: goto -581 -> 25
      //   609: aload_0
      //   610: aload 5
      //   612: invokevirtual 135	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   615: putfield 137	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   618: aload_0
      //   619: invokevirtual 140	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:makeExtensionsImmutable	()V
      //   622: return
      //   623: goto -447 -> 176
      //   626: iconst_1
      //   627: istore_3
      //   628: goto -603 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	631	0	this	GetUserLevelInfoRsp
      //   0	631	1	paramCodedInputStream	CodedInputStream
      //   0	631	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	604	3	i	int
      //   33	149	4	j	int
      //   21	590	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   301	301	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	215	com/google/protobuf/InvalidProtocolBufferException
      //   176	189	215	com/google/protobuf/InvalidProtocolBufferException
      //   194	212	215	com/google/protobuf/InvalidProtocolBufferException
      //   238	256	215	com/google/protobuf/InvalidProtocolBufferException
      //   276	294	215	com/google/protobuf/InvalidProtocolBufferException
      //   297	320	215	com/google/protobuf/InvalidProtocolBufferException
      //   323	346	215	com/google/protobuf/InvalidProtocolBufferException
      //   349	372	215	com/google/protobuf/InvalidProtocolBufferException
      //   375	398	215	com/google/protobuf/InvalidProtocolBufferException
      //   401	421	215	com/google/protobuf/InvalidProtocolBufferException
      //   424	444	215	com/google/protobuf/InvalidProtocolBufferException
      //   447	471	215	com/google/protobuf/InvalidProtocolBufferException
      //   474	498	215	com/google/protobuf/InvalidProtocolBufferException
      //   501	525	215	com/google/protobuf/InvalidProtocolBufferException
      //   528	552	215	com/google/protobuf/InvalidProtocolBufferException
      //   555	579	215	com/google/protobuf/InvalidProtocolBufferException
      //   582	606	215	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	222	finally
      //   176	189	222	finally
      //   194	212	222	finally
      //   216	222	222	finally
      //   238	256	222	finally
      //   260	276	222	finally
      //   276	294	222	finally
      //   297	320	222	finally
      //   323	346	222	finally
      //   349	372	222	finally
      //   375	398	222	finally
      //   401	421	222	finally
      //   424	444	222	finally
      //   447	471	222	finally
      //   474	498	222	finally
      //   501	525	222	finally
      //   528	552	222	finally
      //   555	579	222	finally
      //   582	606	222	finally
      //   29	35	259	java/io/IOException
      //   176	189	259	java/io/IOException
      //   194	212	259	java/io/IOException
      //   238	256	259	java/io/IOException
      //   276	294	259	java/io/IOException
      //   297	320	259	java/io/IOException
      //   323	346	259	java/io/IOException
      //   349	372	259	java/io/IOException
      //   375	398	259	java/io/IOException
      //   401	421	259	java/io/IOException
      //   424	444	259	java/io/IOException
      //   447	471	259	java/io/IOException
      //   474	498	259	java/io/IOException
      //   501	525	259	java/io/IOException
      //   528	552	259	java/io/IOException
      //   555	579	259	java/io/IOException
      //   582	606	259	java/io/IOException
    }
    
    private GetUserLevelInfoRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetUserLevelInfoRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetUserLevelInfoRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.level_ = 0;
      this.levelExp_ = 0;
      this.levelBigIcon_ = "";
      this.levelSmallIconForOn_ = "";
      this.levelSmallIconForOff_ = "";
      this.levelNickIcon_ = "";
      this.nextLevel_ = 0;
      this.nextLevelExp_ = 0;
      this.nextlevelBigIcon_ = "";
      this.nextlevelSmallIconForOn_ = "";
      this.nextlevelSmallIconForOff_ = "";
      this.nextlevelNickIcon_ = "";
      this.gameCenterUrl_ = "";
      this.note_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1400();
    }
    
    public static Builder newBuilder(GetUserLevelInfoRsp paramGetUserLevelInfoRsp)
    {
      return newBuilder().mergeFrom(paramGetUserLevelInfoRsp);
    }
    
    public static GetUserLevelInfoRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetUserLevelInfoRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetUserLevelInfoRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetUserLevelInfoRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetUserLevelInfoRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetUserLevelInfoRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static GetUserLevelInfoRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetUserLevelInfoRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetUserLevelInfoRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetUserLevelInfoRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetUserLevelInfoRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetUserLevelInfoRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetUserLevelInfoRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetUserLevelInfoRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetUserLevelInfoRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetUserLevelInfoRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetUserLevelInfoRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetUserLevelInfoRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetUserLevelInfoRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetUserLevelInfoRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final GetUserLevelInfoRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getGameCenterUrl()
    {
      Object localObject = this.gameCenterUrl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.gameCenterUrl_ = str;
      }
      return str;
    }
    
    public final ByteString getGameCenterUrlBytes()
    {
      Object localObject = this.gameCenterUrl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.gameCenterUrl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getLevel()
    {
      return this.level_;
    }
    
    public final String getLevelBigIcon()
    {
      Object localObject = this.levelBigIcon_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.levelBigIcon_ = str;
      }
      return str;
    }
    
    public final ByteString getLevelBigIconBytes()
    {
      Object localObject = this.levelBigIcon_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.levelBigIcon_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getLevelExp()
    {
      return this.levelExp_;
    }
    
    public final String getLevelNickIcon()
    {
      Object localObject = this.levelNickIcon_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.levelNickIcon_ = str;
      }
      return str;
    }
    
    public final ByteString getLevelNickIconBytes()
    {
      Object localObject = this.levelNickIcon_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.levelNickIcon_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getLevelSmallIconForOff()
    {
      Object localObject = this.levelSmallIconForOff_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.levelSmallIconForOff_ = str;
      }
      return str;
    }
    
    public final ByteString getLevelSmallIconForOffBytes()
    {
      Object localObject = this.levelSmallIconForOff_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.levelSmallIconForOff_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getLevelSmallIconForOn()
    {
      Object localObject = this.levelSmallIconForOn_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.levelSmallIconForOn_ = str;
      }
      return str;
    }
    
    public final ByteString getLevelSmallIconForOnBytes()
    {
      Object localObject = this.levelSmallIconForOn_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.levelSmallIconForOn_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getNextLevel()
    {
      return this.nextLevel_;
    }
    
    public final int getNextLevelExp()
    {
      return this.nextLevelExp_;
    }
    
    public final String getNextlevelBigIcon()
    {
      Object localObject = this.nextlevelBigIcon_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.nextlevelBigIcon_ = str;
      }
      return str;
    }
    
    public final ByteString getNextlevelBigIconBytes()
    {
      Object localObject = this.nextlevelBigIcon_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.nextlevelBigIcon_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getNextlevelNickIcon()
    {
      Object localObject = this.nextlevelNickIcon_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.nextlevelNickIcon_ = str;
      }
      return str;
    }
    
    public final ByteString getNextlevelNickIconBytes()
    {
      Object localObject = this.nextlevelNickIcon_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.nextlevelNickIcon_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getNextlevelSmallIconForOff()
    {
      Object localObject = this.nextlevelSmallIconForOff_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.nextlevelSmallIconForOff_ = str;
      }
      return str;
    }
    
    public final ByteString getNextlevelSmallIconForOffBytes()
    {
      Object localObject = this.nextlevelSmallIconForOff_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.nextlevelSmallIconForOff_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getNextlevelSmallIconForOn()
    {
      Object localObject = this.nextlevelSmallIconForOn_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.nextlevelSmallIconForOn_ = str;
      }
      return str;
    }
    
    public final ByteString getNextlevelSmallIconForOnBytes()
    {
      Object localObject = this.nextlevelSmallIconForOn_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.nextlevelSmallIconForOn_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getNote()
    {
      Object localObject = this.note_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.note_ = str;
      }
      return str;
    }
    
    public final ByteString getNoteBytes()
    {
      Object localObject = this.note_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.note_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<GetUserLevelInfoRsp> getParserForType()
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
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeInt32Size(1, this.retCode_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeInt32Size(2, this.level_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeInt32Size(3, this.levelExp_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getLevelBigIconBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getLevelSmallIconForOnBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getLevelSmallIconForOffBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getLevelNickIconBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeInt32Size(8, this.nextLevel_);
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeInt32Size(9, this.nextLevelExp_);
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getNextlevelBigIconBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getNextlevelSmallIconForOnBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x800) == 2048) {
        i = j + CodedOutputStream.computeBytesSize(12, getNextlevelSmallIconForOffBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x1000) == 4096) {
        j = i + CodedOutputStream.computeBytesSize(13, getNextlevelNickIconBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x2000) == 8192) {
        i = j + CodedOutputStream.computeBytesSize(14, getGameCenterUrlBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4000) == 16384) {
        j = i + CodedOutputStream.computeBytesSize(15, getNoteBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasGameCenterUrl()
    {
      return (this.bitField0_ & 0x2000) == 8192;
    }
    
    public final boolean hasLevel()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasLevelBigIcon()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasLevelExp()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasLevelNickIcon()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasLevelSmallIconForOff()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasLevelSmallIconForOn()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasNextLevel()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasNextLevelExp()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasNextlevelBigIcon()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasNextlevelNickIcon()
    {
      return (this.bitField0_ & 0x1000) == 4096;
    }
    
    public final boolean hasNextlevelSmallIconForOff()
    {
      return (this.bitField0_ & 0x800) == 2048;
    }
    
    public final boolean hasNextlevelSmallIconForOn()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasNote()
    {
      return (this.bitField0_ & 0x4000) == 16384;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(GetUserLevelInfoRsp.class, Builder.class);
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
        paramCodedOutputStream.writeInt32(1, this.retCode_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeInt32(2, this.level_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeInt32(3, this.levelExp_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getLevelBigIconBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getLevelSmallIconForOnBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getLevelSmallIconForOffBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getLevelNickIconBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeInt32(8, this.nextLevel_);
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeInt32(9, this.nextLevelExp_);
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getNextlevelBigIconBytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getNextlevelSmallIconForOnBytes());
      }
      if ((this.bitField0_ & 0x800) == 2048) {
        paramCodedOutputStream.writeBytes(12, getNextlevelSmallIconForOffBytes());
      }
      if ((this.bitField0_ & 0x1000) == 4096) {
        paramCodedOutputStream.writeBytes(13, getNextlevelNickIconBytes());
      }
      if ((this.bitField0_ & 0x2000) == 8192) {
        paramCodedOutputStream.writeBytes(14, getGameCenterUrlBytes());
      }
      if ((this.bitField0_ & 0x4000) == 16384) {
        paramCodedOutputStream.writeBytes(15, getNoteBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements VipProtos.GetUserLevelInfoRspOrBuilder
    {
      private int bitField0_;
      private Object gameCenterUrl_ = "";
      private Object levelBigIcon_ = "";
      private int levelExp_;
      private Object levelNickIcon_ = "";
      private Object levelSmallIconForOff_ = "";
      private Object levelSmallIconForOn_ = "";
      private int level_;
      private int nextLevelExp_;
      private int nextLevel_;
      private Object nextlevelBigIcon_ = "";
      private Object nextlevelNickIcon_ = "";
      private Object nextlevelSmallIconForOff_ = "";
      private Object nextlevelSmallIconForOn_ = "";
      private Object note_ = "";
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
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final VipProtos.GetUserLevelInfoRsp build()
      {
        VipProtos.GetUserLevelInfoRsp localGetUserLevelInfoRsp = buildPartial();
        if (!localGetUserLevelInfoRsp.isInitialized()) {
          throw newUninitializedMessageException(localGetUserLevelInfoRsp);
        }
        return localGetUserLevelInfoRsp;
      }
      
      public final VipProtos.GetUserLevelInfoRsp buildPartial()
      {
        int j = 1;
        VipProtos.GetUserLevelInfoRsp localGetUserLevelInfoRsp = new VipProtos.GetUserLevelInfoRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          VipProtos.GetUserLevelInfoRsp.access$1802(localGetUserLevelInfoRsp, this.retCode_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          VipProtos.GetUserLevelInfoRsp.access$1902(localGetUserLevelInfoRsp, this.level_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          VipProtos.GetUserLevelInfoRsp.access$2002(localGetUserLevelInfoRsp, this.levelExp_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          VipProtos.GetUserLevelInfoRsp.access$2102(localGetUserLevelInfoRsp, this.levelBigIcon_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          VipProtos.GetUserLevelInfoRsp.access$2202(localGetUserLevelInfoRsp, this.levelSmallIconForOn_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          VipProtos.GetUserLevelInfoRsp.access$2302(localGetUserLevelInfoRsp, this.levelSmallIconForOff_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          VipProtos.GetUserLevelInfoRsp.access$2402(localGetUserLevelInfoRsp, this.levelNickIcon_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          VipProtos.GetUserLevelInfoRsp.access$2502(localGetUserLevelInfoRsp, this.nextLevel_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          VipProtos.GetUserLevelInfoRsp.access$2602(localGetUserLevelInfoRsp, this.nextLevelExp_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          VipProtos.GetUserLevelInfoRsp.access$2702(localGetUserLevelInfoRsp, this.nextlevelBigIcon_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          VipProtos.GetUserLevelInfoRsp.access$2802(localGetUserLevelInfoRsp, this.nextlevelSmallIconForOn_);
          i = j;
          if ((k & 0x800) == 2048) {
            i = j | 0x800;
          }
          VipProtos.GetUserLevelInfoRsp.access$2902(localGetUserLevelInfoRsp, this.nextlevelSmallIconForOff_);
          j = i;
          if ((k & 0x1000) == 4096) {
            j = i | 0x1000;
          }
          VipProtos.GetUserLevelInfoRsp.access$3002(localGetUserLevelInfoRsp, this.nextlevelNickIcon_);
          i = j;
          if ((k & 0x2000) == 8192) {
            i = j | 0x2000;
          }
          VipProtos.GetUserLevelInfoRsp.access$3102(localGetUserLevelInfoRsp, this.gameCenterUrl_);
          j = i;
          if ((k & 0x4000) == 16384) {
            j = i | 0x4000;
          }
          VipProtos.GetUserLevelInfoRsp.access$3202(localGetUserLevelInfoRsp, this.note_);
          VipProtos.GetUserLevelInfoRsp.access$3302(localGetUserLevelInfoRsp, j);
          onBuilt();
          return localGetUserLevelInfoRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.level_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.levelExp_ = 0;
        this.bitField0_ &= 0xFFFFFFFB;
        this.levelBigIcon_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.levelSmallIconForOn_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.levelSmallIconForOff_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.levelNickIcon_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.nextLevel_ = 0;
        this.bitField0_ &= 0xFF7F;
        this.nextLevelExp_ = 0;
        this.bitField0_ &= 0xFEFF;
        this.nextlevelBigIcon_ = "";
        this.bitField0_ &= 0xFDFF;
        this.nextlevelSmallIconForOn_ = "";
        this.bitField0_ &= 0xFBFF;
        this.nextlevelSmallIconForOff_ = "";
        this.bitField0_ &= 0xF7FF;
        this.nextlevelNickIcon_ = "";
        this.bitField0_ &= 0xEFFF;
        this.gameCenterUrl_ = "";
        this.bitField0_ &= 0xDFFF;
        this.note_ = "";
        this.bitField0_ &= 0xBFFF;
        return this;
      }
      
      public final Builder clearGameCenterUrl()
      {
        this.bitField0_ &= 0xDFFF;
        this.gameCenterUrl_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getGameCenterUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearLevel()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.level_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearLevelBigIcon()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.levelBigIcon_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getLevelBigIcon();
        onChanged();
        return this;
      }
      
      public final Builder clearLevelExp()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.levelExp_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearLevelNickIcon()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.levelNickIcon_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getLevelNickIcon();
        onChanged();
        return this;
      }
      
      public final Builder clearLevelSmallIconForOff()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.levelSmallIconForOff_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getLevelSmallIconForOff();
        onChanged();
        return this;
      }
      
      public final Builder clearLevelSmallIconForOn()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.levelSmallIconForOn_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getLevelSmallIconForOn();
        onChanged();
        return this;
      }
      
      public final Builder clearNextLevel()
      {
        this.bitField0_ &= 0xFF7F;
        this.nextLevel_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearNextLevelExp()
      {
        this.bitField0_ &= 0xFEFF;
        this.nextLevelExp_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearNextlevelBigIcon()
      {
        this.bitField0_ &= 0xFDFF;
        this.nextlevelBigIcon_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getNextlevelBigIcon();
        onChanged();
        return this;
      }
      
      public final Builder clearNextlevelNickIcon()
      {
        this.bitField0_ &= 0xEFFF;
        this.nextlevelNickIcon_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getNextlevelNickIcon();
        onChanged();
        return this;
      }
      
      public final Builder clearNextlevelSmallIconForOff()
      {
        this.bitField0_ &= 0xF7FF;
        this.nextlevelSmallIconForOff_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getNextlevelSmallIconForOff();
        onChanged();
        return this;
      }
      
      public final Builder clearNextlevelSmallIconForOn()
      {
        this.bitField0_ &= 0xFBFF;
        this.nextlevelSmallIconForOn_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getNextlevelSmallIconForOn();
        onChanged();
        return this;
      }
      
      public final Builder clearNote()
      {
        this.bitField0_ &= 0xBFFF;
        this.note_ = VipProtos.GetUserLevelInfoRsp.getDefaultInstance().getNote();
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
      
      public final VipProtos.GetUserLevelInfoRsp getDefaultInstanceForType()
      {
        return VipProtos.GetUserLevelInfoRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor;
      }
      
      public final String getGameCenterUrl()
      {
        Object localObject = this.gameCenterUrl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.gameCenterUrl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getGameCenterUrlBytes()
      {
        Object localObject = this.gameCenterUrl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.gameCenterUrl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getLevel()
      {
        return this.level_;
      }
      
      public final String getLevelBigIcon()
      {
        Object localObject = this.levelBigIcon_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.levelBigIcon_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getLevelBigIconBytes()
      {
        Object localObject = this.levelBigIcon_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.levelBigIcon_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getLevelExp()
      {
        return this.levelExp_;
      }
      
      public final String getLevelNickIcon()
      {
        Object localObject = this.levelNickIcon_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.levelNickIcon_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getLevelNickIconBytes()
      {
        Object localObject = this.levelNickIcon_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.levelNickIcon_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getLevelSmallIconForOff()
      {
        Object localObject = this.levelSmallIconForOff_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.levelSmallIconForOff_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getLevelSmallIconForOffBytes()
      {
        Object localObject = this.levelSmallIconForOff_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.levelSmallIconForOff_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getLevelSmallIconForOn()
      {
        Object localObject = this.levelSmallIconForOn_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.levelSmallIconForOn_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getLevelSmallIconForOnBytes()
      {
        Object localObject = this.levelSmallIconForOn_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.levelSmallIconForOn_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getNextLevel()
      {
        return this.nextLevel_;
      }
      
      public final int getNextLevelExp()
      {
        return this.nextLevelExp_;
      }
      
      public final String getNextlevelBigIcon()
      {
        Object localObject = this.nextlevelBigIcon_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.nextlevelBigIcon_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNextlevelBigIconBytes()
      {
        Object localObject = this.nextlevelBigIcon_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.nextlevelBigIcon_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getNextlevelNickIcon()
      {
        Object localObject = this.nextlevelNickIcon_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.nextlevelNickIcon_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNextlevelNickIconBytes()
      {
        Object localObject = this.nextlevelNickIcon_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.nextlevelNickIcon_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getNextlevelSmallIconForOff()
      {
        Object localObject = this.nextlevelSmallIconForOff_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.nextlevelSmallIconForOff_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNextlevelSmallIconForOffBytes()
      {
        Object localObject = this.nextlevelSmallIconForOff_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.nextlevelSmallIconForOff_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getNextlevelSmallIconForOn()
      {
        Object localObject = this.nextlevelSmallIconForOn_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.nextlevelSmallIconForOn_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNextlevelSmallIconForOnBytes()
      {
        Object localObject = this.nextlevelSmallIconForOn_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.nextlevelSmallIconForOn_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getNote()
      {
        Object localObject = this.note_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.note_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNoteBytes()
      {
        Object localObject = this.note_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.note_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final boolean hasGameCenterUrl()
      {
        return (this.bitField0_ & 0x2000) == 8192;
      }
      
      public final boolean hasLevel()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasLevelBigIcon()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasLevelExp()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasLevelNickIcon()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasLevelSmallIconForOff()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasLevelSmallIconForOn()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasNextLevel()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasNextLevelExp()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasNextlevelBigIcon()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasNextlevelNickIcon()
      {
        return (this.bitField0_ & 0x1000) == 4096;
      }
      
      public final boolean hasNextlevelSmallIconForOff()
      {
        return (this.bitField0_ & 0x800) == 2048;
      }
      
      public final boolean hasNextlevelSmallIconForOn()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasNote()
      {
        return (this.bitField0_ & 0x4000) == 16384;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(VipProtos.GetUserLevelInfoRsp.class, Builder.class);
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
        //   2: getstatic 321	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 327 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 238	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 330	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 238	org/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
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
        if ((paramMessage instanceof VipProtos.GetUserLevelInfoRsp)) {
          return mergeFrom((VipProtos.GetUserLevelInfoRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(VipProtos.GetUserLevelInfoRsp paramGetUserLevelInfoRsp)
      {
        if (paramGetUserLevelInfoRsp == VipProtos.GetUserLevelInfoRsp.getDefaultInstance()) {
          return this;
        }
        if (paramGetUserLevelInfoRsp.hasRetCode()) {
          setRetCode(paramGetUserLevelInfoRsp.getRetCode());
        }
        if (paramGetUserLevelInfoRsp.hasLevel()) {
          setLevel(paramGetUserLevelInfoRsp.getLevel());
        }
        if (paramGetUserLevelInfoRsp.hasLevelExp()) {
          setLevelExp(paramGetUserLevelInfoRsp.getLevelExp());
        }
        if (paramGetUserLevelInfoRsp.hasLevelBigIcon())
        {
          this.bitField0_ |= 0x8;
          this.levelBigIcon_ = paramGetUserLevelInfoRsp.levelBigIcon_;
          onChanged();
        }
        if (paramGetUserLevelInfoRsp.hasLevelSmallIconForOn())
        {
          this.bitField0_ |= 0x10;
          this.levelSmallIconForOn_ = paramGetUserLevelInfoRsp.levelSmallIconForOn_;
          onChanged();
        }
        if (paramGetUserLevelInfoRsp.hasLevelSmallIconForOff())
        {
          this.bitField0_ |= 0x20;
          this.levelSmallIconForOff_ = paramGetUserLevelInfoRsp.levelSmallIconForOff_;
          onChanged();
        }
        if (paramGetUserLevelInfoRsp.hasLevelNickIcon())
        {
          this.bitField0_ |= 0x40;
          this.levelNickIcon_ = paramGetUserLevelInfoRsp.levelNickIcon_;
          onChanged();
        }
        if (paramGetUserLevelInfoRsp.hasNextLevel()) {
          setNextLevel(paramGetUserLevelInfoRsp.getNextLevel());
        }
        if (paramGetUserLevelInfoRsp.hasNextLevelExp()) {
          setNextLevelExp(paramGetUserLevelInfoRsp.getNextLevelExp());
        }
        if (paramGetUserLevelInfoRsp.hasNextlevelBigIcon())
        {
          this.bitField0_ |= 0x200;
          this.nextlevelBigIcon_ = paramGetUserLevelInfoRsp.nextlevelBigIcon_;
          onChanged();
        }
        if (paramGetUserLevelInfoRsp.hasNextlevelSmallIconForOn())
        {
          this.bitField0_ |= 0x400;
          this.nextlevelSmallIconForOn_ = paramGetUserLevelInfoRsp.nextlevelSmallIconForOn_;
          onChanged();
        }
        if (paramGetUserLevelInfoRsp.hasNextlevelSmallIconForOff())
        {
          this.bitField0_ |= 0x800;
          this.nextlevelSmallIconForOff_ = paramGetUserLevelInfoRsp.nextlevelSmallIconForOff_;
          onChanged();
        }
        if (paramGetUserLevelInfoRsp.hasNextlevelNickIcon())
        {
          this.bitField0_ |= 0x1000;
          this.nextlevelNickIcon_ = paramGetUserLevelInfoRsp.nextlevelNickIcon_;
          onChanged();
        }
        if (paramGetUserLevelInfoRsp.hasGameCenterUrl())
        {
          this.bitField0_ |= 0x2000;
          this.gameCenterUrl_ = paramGetUserLevelInfoRsp.gameCenterUrl_;
          onChanged();
        }
        if (paramGetUserLevelInfoRsp.hasNote())
        {
          this.bitField0_ |= 0x4000;
          this.note_ = paramGetUserLevelInfoRsp.note_;
          onChanged();
        }
        mergeUnknownFields(paramGetUserLevelInfoRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setGameCenterUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2000;
        this.gameCenterUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setGameCenterUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2000;
        this.gameCenterUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setLevel(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.level_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setLevelBigIcon(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.levelBigIcon_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setLevelBigIconBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.levelBigIcon_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setLevelExp(int paramInt)
      {
        this.bitField0_ |= 0x4;
        this.levelExp_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setLevelNickIcon(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.levelNickIcon_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setLevelNickIconBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.levelNickIcon_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setLevelSmallIconForOff(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.levelSmallIconForOff_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setLevelSmallIconForOffBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.levelSmallIconForOff_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setLevelSmallIconForOn(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.levelSmallIconForOn_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setLevelSmallIconForOnBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.levelSmallIconForOn_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setNextLevel(int paramInt)
      {
        this.bitField0_ |= 0x80;
        this.nextLevel_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setNextLevelExp(int paramInt)
      {
        this.bitField0_ |= 0x100;
        this.nextLevelExp_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setNextlevelBigIcon(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.nextlevelBigIcon_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNextlevelBigIconBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.nextlevelBigIcon_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setNextlevelNickIcon(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1000;
        this.nextlevelNickIcon_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNextlevelNickIconBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1000;
        this.nextlevelNickIcon_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setNextlevelSmallIconForOff(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.nextlevelSmallIconForOff_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNextlevelSmallIconForOffBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.nextlevelSmallIconForOff_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setNextlevelSmallIconForOn(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.nextlevelSmallIconForOn_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNextlevelSmallIconForOnBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.nextlevelSmallIconForOn_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setNote(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4000;
        this.note_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNoteBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4000;
        this.note_ = paramByteString;
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
  
  public static abstract interface GetUserLevelInfoRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getGameCenterUrl();
    
    public abstract ByteString getGameCenterUrlBytes();
    
    public abstract int getLevel();
    
    public abstract String getLevelBigIcon();
    
    public abstract ByteString getLevelBigIconBytes();
    
    public abstract int getLevelExp();
    
    public abstract String getLevelNickIcon();
    
    public abstract ByteString getLevelNickIconBytes();
    
    public abstract String getLevelSmallIconForOff();
    
    public abstract ByteString getLevelSmallIconForOffBytes();
    
    public abstract String getLevelSmallIconForOn();
    
    public abstract ByteString getLevelSmallIconForOnBytes();
    
    public abstract int getNextLevel();
    
    public abstract int getNextLevelExp();
    
    public abstract String getNextlevelBigIcon();
    
    public abstract ByteString getNextlevelBigIconBytes();
    
    public abstract String getNextlevelNickIcon();
    
    public abstract ByteString getNextlevelNickIconBytes();
    
    public abstract String getNextlevelSmallIconForOff();
    
    public abstract ByteString getNextlevelSmallIconForOffBytes();
    
    public abstract String getNextlevelSmallIconForOn();
    
    public abstract ByteString getNextlevelSmallIconForOnBytes();
    
    public abstract String getNote();
    
    public abstract ByteString getNoteBytes();
    
    public abstract int getRetCode();
    
    public abstract boolean hasGameCenterUrl();
    
    public abstract boolean hasLevel();
    
    public abstract boolean hasLevelBigIcon();
    
    public abstract boolean hasLevelExp();
    
    public abstract boolean hasLevelNickIcon();
    
    public abstract boolean hasLevelSmallIconForOff();
    
    public abstract boolean hasLevelSmallIconForOn();
    
    public abstract boolean hasNextLevel();
    
    public abstract boolean hasNextLevelExp();
    
    public abstract boolean hasNextlevelBigIcon();
    
    public abstract boolean hasNextlevelNickIcon();
    
    public abstract boolean hasNextlevelSmallIconForOff();
    
    public abstract boolean hasNextlevelSmallIconForOn();
    
    public abstract boolean hasNote();
    
    public abstract boolean hasRetCode();
  }
  
  public static final class QueryVipUserReq
    extends GeneratedMessage
    implements VipProtos.QueryVipUserReqOrBuilder
  {
    public static final int FUID_FIELD_NUMBER = 1;
    public static Parser<QueryVipUserReq> PARSER = new az();
    public static final int TOKEN_FIELD_NUMBER = 2;
    private static final QueryVipUserReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private long fuid_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object token_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      QueryVipUserReq localQueryVipUserReq = new QueryVipUserReq(true);
      defaultInstance = localQueryVipUserReq;
      localQueryVipUserReq.initFields();
    }
    
    /* Error */
    private QueryVipUserReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:initFields	()V
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
      //   79: invokevirtual 79	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 81	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 81	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 85	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   105: putfield 87	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:fuid_	J
      //   108: goto -83 -> 25
      //   111: astore_1
      //   112: aload_1
      //   113: aload_0
      //   114: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   117: athrow
      //   118: astore_1
      //   119: aload_0
      //   120: aload 5
      //   122: invokevirtual 97	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   125: putfield 99	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 102	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_1
      //   135: invokevirtual 106	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   138: astore 6
      //   140: aload_0
      //   141: aload_0
      //   142: getfield 81	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:bitField0_	I
      //   145: iconst_2
      //   146: ior
      //   147: putfield 81	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:bitField0_	I
      //   150: aload_0
      //   151: aload 6
      //   153: putfield 108	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:token_	Ljava/lang/Object;
      //   156: goto -131 -> 25
      //   159: astore_1
      //   160: new 56	com/google/protobuf/InvalidProtocolBufferException
      //   163: dup
      //   164: aload_1
      //   165: invokevirtual 112	java/io/IOException:getMessage	()Ljava/lang/String;
      //   168: invokespecial 115	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   171: aload_0
      //   172: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   175: athrow
      //   176: aload_0
      //   177: aload 5
      //   179: invokevirtual 97	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   182: putfield 99	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   185: aload_0
      //   186: invokevirtual 102	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:makeExtensionsImmutable	()V
      //   189: return
      //   190: goto -118 -> 72
      //   193: iconst_1
      //   194: istore_3
      //   195: goto -170 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	198	0	this	QueryVipUserReq
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
    
    private QueryVipUserReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private QueryVipUserReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static QueryVipUserReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_descriptor;
    }
    
    private void initFields()
    {
      this.fuid_ = 0L;
      this.token_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$5800();
    }
    
    public static Builder newBuilder(QueryVipUserReq paramQueryVipUserReq)
    {
      return newBuilder().mergeFrom(paramQueryVipUserReq);
    }
    
    public static QueryVipUserReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (QueryVipUserReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static QueryVipUserReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (QueryVipUserReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static QueryVipUserReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (QueryVipUserReq)PARSER.parseFrom(paramByteString);
    }
    
    public static QueryVipUserReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (QueryVipUserReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static QueryVipUserReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (QueryVipUserReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static QueryVipUserReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (QueryVipUserReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static QueryVipUserReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (QueryVipUserReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static QueryVipUserReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (QueryVipUserReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static QueryVipUserReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (QueryVipUserReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static QueryVipUserReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (QueryVipUserReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final QueryVipUserReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final Parser<QueryVipUserReq> getParserForType()
    {
      return PARSER;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      i = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        i = CodedOutputStream.computeUInt64Size(1, this.fuid_) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeBytesSize(2, getTokenBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getToken()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.token_ = str;
      }
      return str;
    }
    
    public final ByteString getTokenBytes()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.token_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasToken()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryVipUserReq.class, Builder.class);
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
      if (!hasFuid())
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
        paramCodedOutputStream.writeUInt64(1, this.fuid_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getTokenBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements VipProtos.QueryVipUserReqOrBuilder
    {
      private int bitField0_;
      private long fuid_;
      private Object token_ = "";
      
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
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final VipProtos.QueryVipUserReq build()
      {
        VipProtos.QueryVipUserReq localQueryVipUserReq = buildPartial();
        if (!localQueryVipUserReq.isInitialized()) {
          throw newUninitializedMessageException(localQueryVipUserReq);
        }
        return localQueryVipUserReq;
      }
      
      public final VipProtos.QueryVipUserReq buildPartial()
      {
        int i = 1;
        VipProtos.QueryVipUserReq localQueryVipUserReq = new VipProtos.QueryVipUserReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          VipProtos.QueryVipUserReq.access$6202(localQueryVipUserReq, this.fuid_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          VipProtos.QueryVipUserReq.access$6302(localQueryVipUserReq, this.token_);
          VipProtos.QueryVipUserReq.access$6402(localQueryVipUserReq, j);
          onBuilt();
          return localQueryVipUserReq;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.token_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearFuid()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.fuid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearToken()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.token_ = VipProtos.QueryVipUserReq.getDefaultInstance().getToken();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final VipProtos.QueryVipUserReq getDefaultInstanceForType()
      {
        return VipProtos.QueryVipUserReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_descriptor;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getToken()
      {
        Object localObject = this.token_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.token_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTokenBytes()
      {
        Object localObject = this.token_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.token_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasToken()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_fieldAccessorTable.ensureFieldAccessorsInitialized(VipProtos.QueryVipUserReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return hasFuid();
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 179	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 185 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 122	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 188	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 122	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder;
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
        if ((paramMessage instanceof VipProtos.QueryVipUserReq)) {
          return mergeFrom((VipProtos.QueryVipUserReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(VipProtos.QueryVipUserReq paramQueryVipUserReq)
      {
        if (paramQueryVipUserReq == VipProtos.QueryVipUserReq.getDefaultInstance()) {
          return this;
        }
        if (paramQueryVipUserReq.hasFuid()) {
          setFuid(paramQueryVipUserReq.getFuid());
        }
        if (paramQueryVipUserReq.hasToken())
        {
          this.bitField0_ |= 0x2;
          this.token_ = paramQueryVipUserReq.token_;
          onChanged();
        }
        mergeUnknownFields(paramQueryVipUserReq.getUnknownFields());
        return this;
      }
      
      public final Builder setFuid(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.fuid_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.token_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.token_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface QueryVipUserReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract long getFuid();
    
    public abstract String getToken();
    
    public abstract ByteString getTokenBytes();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasToken();
  }
  
  public static final class QueryVipUserRsp
    extends GeneratedMessage
    implements VipProtos.QueryVipUserRspOrBuilder
  {
    public static final int EXPIRETIME_FIELD_NUMBER = 4;
    public static final int FUID_FIELD_NUMBER = 2;
    public static Parser<QueryVipUserRsp> PARSER = new ba();
    public static final int REMARK_FIELD_NUMBER = 7;
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int VALIDATESTATUS_FIELD_NUMBER = 3;
    public static final int VIPNO_FIELD_NUMBER = 5;
    public static final int VIPURL_FIELD_NUMBER = 6;
    private static final QueryVipUserRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private long expireTime_;
    private long fuid_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object remark_;
    private int retCode_;
    private final UnknownFieldSet unknownFields;
    private int validateStatus_;
    private Object vipNo_;
    private Object vipUrl_;
    
    static
    {
      QueryVipUserRsp localQueryVipUserRsp = new QueryVipUserRsp(true);
      defaultInstance = localQueryVipUserRsp;
      localQueryVipUserRsp.initFields();
    }
    
    /* Error */
    private QueryVipUserRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 74	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 76	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 78	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 67	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:initFields	()V
      //   18: invokestatic 84	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +307 -> 333
      //   29: aload_1
      //   30: invokevirtual 90	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+310->347, 0:+313->350, 8:+93->130, 16:+137->174, 24:+175->212, 32:+196->233, 42:+218->255, 50:+244->281, 58:+270->307
      //   112: aload_0
      //   113: aload_1
      //   114: aload 5
      //   116: aload_2
      //   117: iload 4
      //   119: invokevirtual 94	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   122: ifne -97 -> 25
      //   125: iconst_1
      //   126: istore_3
      //   127: goto -102 -> 25
      //   130: aload_0
      //   131: aload_0
      //   132: getfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   135: iconst_1
      //   136: ior
      //   137: putfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   140: aload_0
      //   141: aload_1
      //   142: invokevirtual 99	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   145: putfield 101	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:retCode_	I
      //   148: goto -123 -> 25
      //   151: astore_1
      //   152: aload_1
      //   153: aload_0
      //   154: invokevirtual 105	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   157: athrow
      //   158: astore_1
      //   159: aload_0
      //   160: aload 5
      //   162: invokevirtual 111	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   165: putfield 113	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   168: aload_0
      //   169: invokevirtual 116	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:makeExtensionsImmutable	()V
      //   172: aload_1
      //   173: athrow
      //   174: aload_0
      //   175: aload_0
      //   176: getfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   179: iconst_2
      //   180: ior
      //   181: putfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   184: aload_0
      //   185: aload_1
      //   186: invokevirtual 120	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   189: putfield 122	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:fuid_	J
      //   192: goto -167 -> 25
      //   195: astore_1
      //   196: new 71	com/google/protobuf/InvalidProtocolBufferException
      //   199: dup
      //   200: aload_1
      //   201: invokevirtual 126	java/io/IOException:getMessage	()Ljava/lang/String;
      //   204: invokespecial 129	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   207: aload_0
      //   208: invokevirtual 105	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   211: athrow
      //   212: aload_0
      //   213: aload_0
      //   214: getfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   217: iconst_4
      //   218: ior
      //   219: putfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   222: aload_0
      //   223: aload_1
      //   224: invokevirtual 99	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   227: putfield 131	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:validateStatus_	I
      //   230: goto -205 -> 25
      //   233: aload_0
      //   234: aload_0
      //   235: getfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   238: bipush 8
      //   240: ior
      //   241: putfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   244: aload_0
      //   245: aload_1
      //   246: invokevirtual 120	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   249: putfield 133	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:expireTime_	J
      //   252: goto -227 -> 25
      //   255: aload_1
      //   256: invokevirtual 137	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   259: astore 6
      //   261: aload_0
      //   262: aload_0
      //   263: getfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   266: bipush 16
      //   268: ior
      //   269: putfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   272: aload_0
      //   273: aload 6
      //   275: putfield 139	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:vipNo_	Ljava/lang/Object;
      //   278: goto -253 -> 25
      //   281: aload_1
      //   282: invokevirtual 137	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   285: astore 6
      //   287: aload_0
      //   288: aload_0
      //   289: getfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   292: bipush 32
      //   294: ior
      //   295: putfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   298: aload_0
      //   299: aload 6
      //   301: putfield 141	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:vipUrl_	Ljava/lang/Object;
      //   304: goto -279 -> 25
      //   307: aload_1
      //   308: invokevirtual 137	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   311: astore 6
      //   313: aload_0
      //   314: aload_0
      //   315: getfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   318: bipush 64
      //   320: ior
      //   321: putfield 96	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:bitField0_	I
      //   324: aload_0
      //   325: aload 6
      //   327: putfield 143	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:remark_	Ljava/lang/Object;
      //   330: goto -305 -> 25
      //   333: aload_0
      //   334: aload 5
      //   336: invokevirtual 111	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   339: putfield 113	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   342: aload_0
      //   343: invokevirtual 116	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:makeExtensionsImmutable	()V
      //   346: return
      //   347: goto -235 -> 112
      //   350: iconst_1
      //   351: istore_3
      //   352: goto -327 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	355	0	this	QueryVipUserRsp
      //   0	355	1	paramCodedInputStream	CodedInputStream
      //   0	355	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	328	3	i	int
      //   33	85	4	j	int
      //   21	314	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   259	67	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	151	com/google/protobuf/InvalidProtocolBufferException
      //   112	125	151	com/google/protobuf/InvalidProtocolBufferException
      //   130	148	151	com/google/protobuf/InvalidProtocolBufferException
      //   174	192	151	com/google/protobuf/InvalidProtocolBufferException
      //   212	230	151	com/google/protobuf/InvalidProtocolBufferException
      //   233	252	151	com/google/protobuf/InvalidProtocolBufferException
      //   255	278	151	com/google/protobuf/InvalidProtocolBufferException
      //   281	304	151	com/google/protobuf/InvalidProtocolBufferException
      //   307	330	151	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	158	finally
      //   112	125	158	finally
      //   130	148	158	finally
      //   152	158	158	finally
      //   174	192	158	finally
      //   196	212	158	finally
      //   212	230	158	finally
      //   233	252	158	finally
      //   255	278	158	finally
      //   281	304	158	finally
      //   307	330	158	finally
      //   29	35	195	java/io/IOException
      //   112	125	195	java/io/IOException
      //   130	148	195	java/io/IOException
      //   174	192	195	java/io/IOException
      //   212	230	195	java/io/IOException
      //   233	252	195	java/io/IOException
      //   255	278	195	java/io/IOException
      //   281	304	195	java/io/IOException
      //   307	330	195	java/io/IOException
    }
    
    private QueryVipUserRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private QueryVipUserRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static QueryVipUserRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.fuid_ = 0L;
      this.validateStatus_ = 0;
      this.expireTime_ = 0L;
      this.vipNo_ = "";
      this.vipUrl_ = "";
      this.remark_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$6800();
    }
    
    public static Builder newBuilder(QueryVipUserRsp paramQueryVipUserRsp)
    {
      return newBuilder().mergeFrom(paramQueryVipUserRsp);
    }
    
    public static QueryVipUserRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (QueryVipUserRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static QueryVipUserRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (QueryVipUserRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static QueryVipUserRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (QueryVipUserRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static QueryVipUserRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (QueryVipUserRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static QueryVipUserRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (QueryVipUserRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static QueryVipUserRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (QueryVipUserRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static QueryVipUserRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (QueryVipUserRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static QueryVipUserRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (QueryVipUserRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static QueryVipUserRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (QueryVipUserRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static QueryVipUserRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (QueryVipUserRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final QueryVipUserRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getExpireTime()
    {
      return this.expireTime_;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final Parser<QueryVipUserRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final String getRemark()
    {
      Object localObject = this.remark_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.remark_ = str;
      }
      return str;
    }
    
    public final ByteString getRemarkBytes()
    {
      Object localObject = this.remark_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.remark_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt32Size(1, this.retCode_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt64Size(2, this.fuid_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt32Size(3, this.validateStatus_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeUInt64Size(4, this.expireTime_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getVipNoBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getVipUrlBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getRemarkBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final int getValidateStatus()
    {
      return this.validateStatus_;
    }
    
    public final String getVipNo()
    {
      Object localObject = this.vipNo_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.vipNo_ = str;
      }
      return str;
    }
    
    public final ByteString getVipNoBytes()
    {
      Object localObject = this.vipNo_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.vipNo_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getVipUrl()
    {
      Object localObject = this.vipUrl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.vipUrl_ = str;
      }
      return str;
    }
    
    public final ByteString getVipUrlBytes()
    {
      Object localObject = this.vipUrl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.vipUrl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final boolean hasExpireTime()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasRemark()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasValidateStatus()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasVipNo()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasVipUrl()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(QueryVipUserRsp.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(2, this.fuid_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt32(3, this.validateStatus_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeUInt64(4, this.expireTime_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getVipNoBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getVipUrlBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getRemarkBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements VipProtos.QueryVipUserRspOrBuilder
    {
      private int bitField0_;
      private long expireTime_;
      private long fuid_;
      private Object remark_ = "";
      private int retCode_;
      private int validateStatus_;
      private Object vipNo_ = "";
      private Object vipUrl_ = "";
      
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
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final VipProtos.QueryVipUserRsp build()
      {
        VipProtos.QueryVipUserRsp localQueryVipUserRsp = buildPartial();
        if (!localQueryVipUserRsp.isInitialized()) {
          throw newUninitializedMessageException(localQueryVipUserRsp);
        }
        return localQueryVipUserRsp;
      }
      
      public final VipProtos.QueryVipUserRsp buildPartial()
      {
        int j = 1;
        VipProtos.QueryVipUserRsp localQueryVipUserRsp = new VipProtos.QueryVipUserRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          VipProtos.QueryVipUserRsp.access$7202(localQueryVipUserRsp, this.retCode_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          VipProtos.QueryVipUserRsp.access$7302(localQueryVipUserRsp, this.fuid_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          VipProtos.QueryVipUserRsp.access$7402(localQueryVipUserRsp, this.validateStatus_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          VipProtos.QueryVipUserRsp.access$7502(localQueryVipUserRsp, this.expireTime_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          VipProtos.QueryVipUserRsp.access$7602(localQueryVipUserRsp, this.vipNo_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          VipProtos.QueryVipUserRsp.access$7702(localQueryVipUserRsp, this.vipUrl_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          VipProtos.QueryVipUserRsp.access$7802(localQueryVipUserRsp, this.remark_);
          VipProtos.QueryVipUserRsp.access$7902(localQueryVipUserRsp, j);
          onBuilt();
          return localQueryVipUserRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFD;
        this.validateStatus_ = 0;
        this.bitField0_ &= 0xFFFFFFFB;
        this.expireTime_ = 0L;
        this.bitField0_ &= 0xFFFFFFF7;
        this.vipNo_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.vipUrl_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.remark_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        return this;
      }
      
      public final Builder clearExpireTime()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.expireTime_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearFuid()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.fuid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearRemark()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.remark_ = VipProtos.QueryVipUserRsp.getDefaultInstance().getRemark();
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
      
      public final Builder clearValidateStatus()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.validateStatus_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearVipNo()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.vipNo_ = VipProtos.QueryVipUserRsp.getDefaultInstance().getVipNo();
        onChanged();
        return this;
      }
      
      public final Builder clearVipUrl()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.vipUrl_ = VipProtos.QueryVipUserRsp.getDefaultInstance().getVipUrl();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final VipProtos.QueryVipUserRsp getDefaultInstanceForType()
      {
        return VipProtos.QueryVipUserRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_descriptor;
      }
      
      public final long getExpireTime()
      {
        return this.expireTime_;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getRemark()
      {
        Object localObject = this.remark_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.remark_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getRemarkBytes()
      {
        Object localObject = this.remark_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.remark_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final int getValidateStatus()
      {
        return this.validateStatus_;
      }
      
      public final String getVipNo()
      {
        Object localObject = this.vipNo_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.vipNo_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getVipNoBytes()
      {
        Object localObject = this.vipNo_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.vipNo_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getVipUrl()
      {
        Object localObject = this.vipUrl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.vipUrl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getVipUrlBytes()
      {
        Object localObject = this.vipUrl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.vipUrl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasExpireTime()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasRemark()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasValidateStatus()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasVipNo()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasVipUrl()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(VipProtos.QueryVipUserRsp.class, Builder.class);
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
        //   2: getstatic 231	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 237 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 163	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 240	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 163	org/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp$Builder;
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
        if ((paramMessage instanceof VipProtos.QueryVipUserRsp)) {
          return mergeFrom((VipProtos.QueryVipUserRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(VipProtos.QueryVipUserRsp paramQueryVipUserRsp)
      {
        if (paramQueryVipUserRsp == VipProtos.QueryVipUserRsp.getDefaultInstance()) {
          return this;
        }
        if (paramQueryVipUserRsp.hasRetCode()) {
          setRetCode(paramQueryVipUserRsp.getRetCode());
        }
        if (paramQueryVipUserRsp.hasFuid()) {
          setFuid(paramQueryVipUserRsp.getFuid());
        }
        if (paramQueryVipUserRsp.hasValidateStatus()) {
          setValidateStatus(paramQueryVipUserRsp.getValidateStatus());
        }
        if (paramQueryVipUserRsp.hasExpireTime()) {
          setExpireTime(paramQueryVipUserRsp.getExpireTime());
        }
        if (paramQueryVipUserRsp.hasVipNo())
        {
          this.bitField0_ |= 0x10;
          this.vipNo_ = paramQueryVipUserRsp.vipNo_;
          onChanged();
        }
        if (paramQueryVipUserRsp.hasVipUrl())
        {
          this.bitField0_ |= 0x20;
          this.vipUrl_ = paramQueryVipUserRsp.vipUrl_;
          onChanged();
        }
        if (paramQueryVipUserRsp.hasRemark())
        {
          this.bitField0_ |= 0x40;
          this.remark_ = paramQueryVipUserRsp.remark_;
          onChanged();
        }
        mergeUnknownFields(paramQueryVipUserRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setExpireTime(long paramLong)
      {
        this.bitField0_ |= 0x8;
        this.expireTime_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setFuid(long paramLong)
      {
        this.bitField0_ |= 0x2;
        this.fuid_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setRemark(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.remark_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setRemarkBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.remark_ = paramByteString;
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
      
      public final Builder setValidateStatus(int paramInt)
      {
        this.bitField0_ |= 0x4;
        this.validateStatus_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setVipNo(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.vipNo_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setVipNoBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.vipNo_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setVipUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.vipUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setVipUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.vipUrl_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface QueryVipUserRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract long getExpireTime();
    
    public abstract long getFuid();
    
    public abstract String getRemark();
    
    public abstract ByteString getRemarkBytes();
    
    public abstract int getRetCode();
    
    public abstract int getValidateStatus();
    
    public abstract String getVipNo();
    
    public abstract ByteString getVipNoBytes();
    
    public abstract String getVipUrl();
    
    public abstract ByteString getVipUrlBytes();
    
    public abstract boolean hasExpireTime();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasRemark();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasValidateStatus();
    
    public abstract boolean hasVipNo();
    
    public abstract boolean hasVipUrl();
  }
  
  public static final class SdkCheckLoginShowReq
    extends GeneratedMessage
    implements VipProtos.SdkCheckLoginShowReqOrBuilder
  {
    public static final int DEVAPPID_FIELD_NUMBER = 3;
    public static final int FUID_FIELD_NUMBER = 1;
    public static Parser<SdkCheckLoginShowReq> PARSER = new bb();
    public static final int TOKEN_FIELD_NUMBER = 2;
    private static final SdkCheckLoginShowReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private long devAppId_;
    private long fuid_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object token_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      SdkCheckLoginShowReq localSdkCheckLoginShowReq = new SdkCheckLoginShowReq(true);
      defaultInstance = localSdkCheckLoginShowReq;
      localSdkCheckLoginShowReq.initFields();
    }
    
    /* Error */
    private SdkCheckLoginShowReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 62	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 64	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 66	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 55	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:initFields	()V
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
      //   37: lookupswitch	default:+182->219, 0:+185->222, 8:+61->98, 18:+105->142, 24:+147->184
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 82	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 84	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 84	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 88	com/google/protobuf/CodedInputStream:readInt64	()J
      //   113: putfield 90	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:fuid_	J
      //   116: goto -91 -> 25
      //   119: astore_1
      //   120: aload_1
      //   121: aload_0
      //   122: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   125: athrow
      //   126: astore_1
      //   127: aload_0
      //   128: aload 5
      //   130: invokevirtual 100	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   133: putfield 102	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 105	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_1
      //   143: invokevirtual 109	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   146: astore 6
      //   148: aload_0
      //   149: aload_0
      //   150: getfield 84	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:bitField0_	I
      //   153: iconst_2
      //   154: ior
      //   155: putfield 84	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:bitField0_	I
      //   158: aload_0
      //   159: aload 6
      //   161: putfield 111	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:token_	Ljava/lang/Object;
      //   164: goto -139 -> 25
      //   167: astore_1
      //   168: new 59	com/google/protobuf/InvalidProtocolBufferException
      //   171: dup
      //   172: aload_1
      //   173: invokevirtual 115	java/io/IOException:getMessage	()Ljava/lang/String;
      //   176: invokespecial 118	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   179: aload_0
      //   180: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   183: athrow
      //   184: aload_0
      //   185: aload_0
      //   186: getfield 84	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:bitField0_	I
      //   189: iconst_4
      //   190: ior
      //   191: putfield 84	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:bitField0_	I
      //   194: aload_0
      //   195: aload_1
      //   196: invokevirtual 88	com/google/protobuf/CodedInputStream:readInt64	()J
      //   199: putfield 120	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:devAppId_	J
      //   202: goto -177 -> 25
      //   205: aload_0
      //   206: aload 5
      //   208: invokevirtual 100	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   211: putfield 102	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   214: aload_0
      //   215: invokevirtual 105	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:makeExtensionsImmutable	()V
      //   218: return
      //   219: goto -139 -> 80
      //   222: iconst_1
      //   223: istore_3
      //   224: goto -199 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	227	0	this	SdkCheckLoginShowReq
      //   0	227	1	paramCodedInputStream	CodedInputStream
      //   0	227	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	200	3	i	int
      //   33	53	4	j	int
      //   21	186	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   146	14	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	119	com/google/protobuf/InvalidProtocolBufferException
      //   80	93	119	com/google/protobuf/InvalidProtocolBufferException
      //   98	116	119	com/google/protobuf/InvalidProtocolBufferException
      //   142	164	119	com/google/protobuf/InvalidProtocolBufferException
      //   184	202	119	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	126	finally
      //   80	93	126	finally
      //   98	116	126	finally
      //   120	126	126	finally
      //   142	164	126	finally
      //   168	184	126	finally
      //   184	202	126	finally
      //   29	35	167	java/io/IOException
      //   80	93	167	java/io/IOException
      //   98	116	167	java/io/IOException
      //   142	164	167	java/io/IOException
      //   184	202	167	java/io/IOException
    }
    
    private SdkCheckLoginShowReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private SdkCheckLoginShowReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static SdkCheckLoginShowReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor;
    }
    
    private void initFields()
    {
      this.fuid_ = 0L;
      this.token_ = "";
      this.devAppId_ = 0L;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$3700();
    }
    
    public static Builder newBuilder(SdkCheckLoginShowReq paramSdkCheckLoginShowReq)
    {
      return newBuilder().mergeFrom(paramSdkCheckLoginShowReq);
    }
    
    public static SdkCheckLoginShowReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkCheckLoginShowReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static SdkCheckLoginShowReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkCheckLoginShowReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkCheckLoginShowReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (SdkCheckLoginShowReq)PARSER.parseFrom(paramByteString);
    }
    
    public static SdkCheckLoginShowReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkCheckLoginShowReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static SdkCheckLoginShowReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (SdkCheckLoginShowReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static SdkCheckLoginShowReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkCheckLoginShowReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkCheckLoginShowReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkCheckLoginShowReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static SdkCheckLoginShowReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkCheckLoginShowReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkCheckLoginShowReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (SdkCheckLoginShowReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static SdkCheckLoginShowReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkCheckLoginShowReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final SdkCheckLoginShowReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getDevAppId()
    {
      return this.devAppId_;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final Parser<SdkCheckLoginShowReq> getParserForType()
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
        j = CodedOutputStream.computeInt64Size(1, this.fuid_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getTokenBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeInt64Size(3, this.devAppId_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getToken()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.token_ = str;
      }
      return str;
    }
    
    public final ByteString getTokenBytes()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.token_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasToken()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SdkCheckLoginShowReq.class, Builder.class);
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
      if (!hasFuid())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasToken())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasDevAppId())
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
        paramCodedOutputStream.writeInt64(1, this.fuid_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getTokenBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeInt64(3, this.devAppId_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements VipProtos.SdkCheckLoginShowReqOrBuilder
    {
      private int bitField0_;
      private long devAppId_;
      private long fuid_;
      private Object token_ = "";
      
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
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final VipProtos.SdkCheckLoginShowReq build()
      {
        VipProtos.SdkCheckLoginShowReq localSdkCheckLoginShowReq = buildPartial();
        if (!localSdkCheckLoginShowReq.isInitialized()) {
          throw newUninitializedMessageException(localSdkCheckLoginShowReq);
        }
        return localSdkCheckLoginShowReq;
      }
      
      public final VipProtos.SdkCheckLoginShowReq buildPartial()
      {
        int j = 1;
        VipProtos.SdkCheckLoginShowReq localSdkCheckLoginShowReq = new VipProtos.SdkCheckLoginShowReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          VipProtos.SdkCheckLoginShowReq.access$4102(localSdkCheckLoginShowReq, this.fuid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          VipProtos.SdkCheckLoginShowReq.access$4202(localSdkCheckLoginShowReq, this.token_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          VipProtos.SdkCheckLoginShowReq.access$4302(localSdkCheckLoginShowReq, this.devAppId_);
          VipProtos.SdkCheckLoginShowReq.access$4402(localSdkCheckLoginShowReq, j);
          onBuilt();
          return localSdkCheckLoginShowReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.token_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.devAppId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.devAppId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearFuid()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.fuid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearToken()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.token_ = VipProtos.SdkCheckLoginShowReq.getDefaultInstance().getToken();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final VipProtos.SdkCheckLoginShowReq getDefaultInstanceForType()
      {
        return VipProtos.SdkCheckLoginShowReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor;
      }
      
      public final long getDevAppId()
      {
        return this.devAppId_;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getToken()
      {
        Object localObject = this.token_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.token_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTokenBytes()
      {
        Object localObject = this.token_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.token_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasToken()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_fieldAccessorTable.ensureFieldAccessorsInitialized(VipProtos.SdkCheckLoginShowReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasFuid()) {}
        while ((!hasToken()) || (!hasDevAppId())) {
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
        //   2: getstatic 192	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 198 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 201	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq$Builder;
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
        if ((paramMessage instanceof VipProtos.SdkCheckLoginShowReq)) {
          return mergeFrom((VipProtos.SdkCheckLoginShowReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(VipProtos.SdkCheckLoginShowReq paramSdkCheckLoginShowReq)
      {
        if (paramSdkCheckLoginShowReq == VipProtos.SdkCheckLoginShowReq.getDefaultInstance()) {
          return this;
        }
        if (paramSdkCheckLoginShowReq.hasFuid()) {
          setFuid(paramSdkCheckLoginShowReq.getFuid());
        }
        if (paramSdkCheckLoginShowReq.hasToken())
        {
          this.bitField0_ |= 0x2;
          this.token_ = paramSdkCheckLoginShowReq.token_;
          onChanged();
        }
        if (paramSdkCheckLoginShowReq.hasDevAppId()) {
          setDevAppId(paramSdkCheckLoginShowReq.getDevAppId());
        }
        mergeUnknownFields(paramSdkCheckLoginShowReq.getUnknownFields());
        return this;
      }
      
      public final Builder setDevAppId(long paramLong)
      {
        this.bitField0_ |= 0x4;
        this.devAppId_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setFuid(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.fuid_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.token_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.token_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface SdkCheckLoginShowReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract long getDevAppId();
    
    public abstract long getFuid();
    
    public abstract String getToken();
    
    public abstract ByteString getTokenBytes();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasToken();
  }
  
  public static final class SdkCheckLoginShowRsp
    extends GeneratedMessage
    implements VipProtos.SdkCheckLoginShowRspOrBuilder
  {
    public static Parser<SdkCheckLoginShowRsp> PARSER = new bc();
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int SHOW_FIELD_NUMBER = 2;
    private static final SdkCheckLoginShowRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int retCode_;
    private int show_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      SdkCheckLoginShowRsp localSdkCheckLoginShowRsp = new SdkCheckLoginShowRsp(true);
      defaultInstance = localSdkCheckLoginShowRsp;
      localSdkCheckLoginShowRsp.initFields();
    }
    
    /* Error */
    private SdkCheckLoginShowRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 58	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 60	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 62	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 51	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:initFields	()V
      //   18: invokestatic 68	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +146 -> 172
      //   29: aload_1
      //   30: invokevirtual 74	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+149->186, 0:+152->189, 8:+53->90, 16:+97->134
      //   72: aload_0
      //   73: aload_1
      //   74: aload 5
      //   76: aload_2
      //   77: iload 4
      //   79: invokevirtual 78	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 80	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 80	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 83	com/google/protobuf/CodedInputStream:readInt32	()I
      //   105: putfield 85	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:retCode_	I
      //   108: goto -83 -> 25
      //   111: astore_1
      //   112: aload_1
      //   113: aload_0
      //   114: invokevirtual 89	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   117: athrow
      //   118: astore_1
      //   119: aload_0
      //   120: aload 5
      //   122: invokevirtual 95	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   125: putfield 97	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 100	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_0
      //   135: aload_0
      //   136: getfield 80	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:bitField0_	I
      //   139: iconst_2
      //   140: ior
      //   141: putfield 80	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:bitField0_	I
      //   144: aload_0
      //   145: aload_1
      //   146: invokevirtual 83	com/google/protobuf/CodedInputStream:readInt32	()I
      //   149: putfield 102	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:show_	I
      //   152: goto -127 -> 25
      //   155: astore_1
      //   156: new 55	com/google/protobuf/InvalidProtocolBufferException
      //   159: dup
      //   160: aload_1
      //   161: invokevirtual 106	java/io/IOException:getMessage	()Ljava/lang/String;
      //   164: invokespecial 109	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   167: aload_0
      //   168: invokevirtual 89	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   171: athrow
      //   172: aload_0
      //   173: aload 5
      //   175: invokevirtual 95	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   178: putfield 97	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   181: aload_0
      //   182: invokevirtual 100	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:makeExtensionsImmutable	()V
      //   185: return
      //   186: goto -114 -> 72
      //   189: iconst_1
      //   190: istore_3
      //   191: goto -166 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	194	0	this	SdkCheckLoginShowRsp
      //   0	194	1	paramCodedInputStream	CodedInputStream
      //   0	194	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	167	3	i	int
      //   33	45	4	j	int
      //   21	153	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	111	com/google/protobuf/InvalidProtocolBufferException
      //   72	85	111	com/google/protobuf/InvalidProtocolBufferException
      //   90	108	111	com/google/protobuf/InvalidProtocolBufferException
      //   134	152	111	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	118	finally
      //   72	85	118	finally
      //   90	108	118	finally
      //   112	118	118	finally
      //   134	152	118	finally
      //   156	172	118	finally
      //   29	35	155	java/io/IOException
      //   72	85	155	java/io/IOException
      //   90	108	155	java/io/IOException
      //   134	152	155	java/io/IOException
    }
    
    private SdkCheckLoginShowRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private SdkCheckLoginShowRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static SdkCheckLoginShowRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.show_ = 0;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$4800();
    }
    
    public static Builder newBuilder(SdkCheckLoginShowRsp paramSdkCheckLoginShowRsp)
    {
      return newBuilder().mergeFrom(paramSdkCheckLoginShowRsp);
    }
    
    public static SdkCheckLoginShowRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static SdkCheckLoginShowRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkCheckLoginShowRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static SdkCheckLoginShowRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static SdkCheckLoginShowRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static SdkCheckLoginShowRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkCheckLoginShowRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static SdkCheckLoginShowRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkCheckLoginShowRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static SdkCheckLoginShowRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkCheckLoginShowRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final SdkCheckLoginShowRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<SdkCheckLoginShowRsp> getParserForType()
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
        i = CodedOutputStream.computeInt32Size(1, this.retCode_) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeInt32Size(2, this.show_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final int getShow()
    {
      return this.show_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasShow()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SdkCheckLoginShowRsp.class, Builder.class);
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
        paramCodedOutputStream.writeInt32(1, this.retCode_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeInt32(2, this.show_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements VipProtos.SdkCheckLoginShowRspOrBuilder
    {
      private int bitField0_;
      private int retCode_;
      private int show_;
      
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
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final VipProtos.SdkCheckLoginShowRsp build()
      {
        VipProtos.SdkCheckLoginShowRsp localSdkCheckLoginShowRsp = buildPartial();
        if (!localSdkCheckLoginShowRsp.isInitialized()) {
          throw newUninitializedMessageException(localSdkCheckLoginShowRsp);
        }
        return localSdkCheckLoginShowRsp;
      }
      
      public final VipProtos.SdkCheckLoginShowRsp buildPartial()
      {
        int i = 1;
        VipProtos.SdkCheckLoginShowRsp localSdkCheckLoginShowRsp = new VipProtos.SdkCheckLoginShowRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          VipProtos.SdkCheckLoginShowRsp.access$5202(localSdkCheckLoginShowRsp, this.retCode_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          VipProtos.SdkCheckLoginShowRsp.access$5302(localSdkCheckLoginShowRsp, this.show_);
          VipProtos.SdkCheckLoginShowRsp.access$5402(localSdkCheckLoginShowRsp, j);
          onBuilt();
          return localSdkCheckLoginShowRsp;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.show_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearRetCode()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.retCode_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearShow()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.show_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final VipProtos.SdkCheckLoginShowRsp getDefaultInstanceForType()
      {
        return VipProtos.SdkCheckLoginShowRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final int getShow()
      {
        return this.show_;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasShow()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return VipProtos.internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(VipProtos.SdkCheckLoginShowRsp.class, Builder.class);
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
        //   2: getstatic 154	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 160 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 109	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 163	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 109	org/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp$Builder;
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
        if ((paramMessage instanceof VipProtos.SdkCheckLoginShowRsp)) {
          return mergeFrom((VipProtos.SdkCheckLoginShowRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(VipProtos.SdkCheckLoginShowRsp paramSdkCheckLoginShowRsp)
      {
        if (paramSdkCheckLoginShowRsp == VipProtos.SdkCheckLoginShowRsp.getDefaultInstance()) {
          return this;
        }
        if (paramSdkCheckLoginShowRsp.hasRetCode()) {
          setRetCode(paramSdkCheckLoginShowRsp.getRetCode());
        }
        if (paramSdkCheckLoginShowRsp.hasShow()) {
          setShow(paramSdkCheckLoginShowRsp.getShow());
        }
        mergeUnknownFields(paramSdkCheckLoginShowRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setRetCode(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.retCode_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setShow(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.show_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface SdkCheckLoginShowRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getRetCode();
    
    public abstract int getShow();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasShow();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\xiaomi\gamecenter\milink\msg\VipProtos.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */