package com.mi.milink.sdk.proto;

import com.google.protobuf.AbstractMessageLite.Builder;
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
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class UpstreamPacketProto
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_BusiControl_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(5);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_BusiControl_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_BusiControl_descriptor, new String[] { "CompFlag", "LenBeforeComp", "IsSupportComp" });
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_ClientIpInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_ClientIpInfo_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_RetryInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_RetryInfo_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_TokenInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_TokenInfo_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_UpstreamPacket_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_UpstreamPacket_fieldAccessorTable;
  
  static
  {
    UpstreamPacketProto.1 local1 = new UpstreamPacketProto.1();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\030proto/mns_upstream.proto\022\027com.mi.milink.sdk.proto\"\003\n\016UpstreamPacket\022\013\n\003seq\030\001 \001(\r\022\r\n\005appId\030\002 \001(\r\022\r\n\005miUin\030\003 \001(\004\022\n\n\002ua\030\004 \001(\t\022\022\n\nserviceCmd\030\005 \001(\t\022\022\n\ndeviceInfo\030\006 \001(\f\0221\n\005token\030\007 \001(\0132\".com.mi.milink.sdk.proto.TokenInfo\0225\n\006ipInfo\030\b \001(\0132%.com.mi.milink.sdk.proto.ClientIpInfo\022\020\n\bbusiBuff\030\t \001(\f\022\r\n\005extra\030\n \001(\f\022\f\n\004flag\030\013 \001(\r\022\021\n\tsessionId\030\f \001(\r\0225\n\tretryInfo\030\r \001(\0132\".com.mi.milink.sdk.proto.RetryInfo\0229\n\013busi", "Control\030\016 \001(\0132$.com.mi.milink.sdk.proto.BusiControl\022\r\n\005miUid\030\017 \001(\t\"[\n\tTokenInfo\022\f\n\004type\030\001 \001(\r\022\013\n\003key\030\002 \001(\f\0223\n\006extKey\030\003 \003(\0132#.com.mi.milink.sdk.proto.ExtKeyInfo\"&\n\nExtKeyInfo\022\013\n\003key\030\001 \001(\r\022\013\n\003val\030\002 \001(\f\"Z\n\fClientIpInfo\022\016\n\006ipType\030\001 \001(\r\022\022\n\nclientPort\030\002 \001(\r\022\022\n\nclientIpV4\030\003 \001(\r\022\022\n\nclientIpV6\030\004 \001(\f\":\n\tRetryInfo\022\f\n\004flag\030\001 \001(\r\022\020\n\bretryCnt\030\002 \001(\r\022\r\n\005pkgId\030\003 \001(\004\"M\n\013BusiControl\022\020\n\bcompFlag\030\001 \001(\r\022\025\n\rlenBeforeCom", "p\030\002 \001(\004\022\025\n\risSupportComp\030\003 \001(\b*$\n\tTokenType\022\027\n\023MNS_TOKEN_TYPE_NULL\020\000B.\n\027com.mi.milink.sdk.protoB\023UpstreamPacketProto" }, new Descriptors.FileDescriptor[0], local1);
    internal_static_com_mi_milink_sdk_proto_UpstreamPacket_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_com_mi_milink_sdk_proto_UpstreamPacket_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_UpstreamPacket_descriptor, new String[] { "Seq", "AppId", "MiUin", "Ua", "ServiceCmd", "DeviceInfo", "Token", "IpInfo", "BusiBuff", "Extra", "Flag", "SessionId", "RetryInfo", "BusiControl", "MiUid" });
    internal_static_com_mi_milink_sdk_proto_TokenInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
    internal_static_com_mi_milink_sdk_proto_TokenInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_TokenInfo_descriptor, new String[] { "Type", "Key", "ExtKey" });
    internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
    internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_descriptor, new String[] { "Key", "Val" });
    internal_static_com_mi_milink_sdk_proto_ClientIpInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
    internal_static_com_mi_milink_sdk_proto_ClientIpInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_ClientIpInfo_descriptor, new String[] { "IpType", "ClientPort", "ClientIpV4", "ClientIpV6" });
    internal_static_com_mi_milink_sdk_proto_RetryInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(4);
    internal_static_com_mi_milink_sdk_proto_RetryInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_RetryInfo_descriptor, new String[] { "Flag", "RetryCnt", "PkgId" });
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class BusiControl
    extends GeneratedMessage
    implements UpstreamPacketProto.BusiControlOrBuilder
  {
    public static final int COMPFLAG_FIELD_NUMBER = 1;
    public static final int ISSUPPORTCOMP_FIELD_NUMBER = 3;
    public static final int LENBEFORECOMP_FIELD_NUMBER = 2;
    public static Parser<BusiControl> PARSER = new UpstreamPacketProto.BusiControl.1();
    private static final BusiControl defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int compFlag_;
    private boolean isSupportComp_;
    private long lenBeforeComp_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      BusiControl localBusiControl = new BusiControl(true);
      defaultInstance = localBusiControl;
      localBusiControl.initFields();
    }
    
    /* Error */
    private BusiControl(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 62	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 64	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 66	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 55	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:initFields	()V
      //   18: invokestatic 72	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +175 -> 201
      //   29: aload_1
      //   30: invokevirtual 78	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+178->215, 0:+181->218, 8:+61->98, 16:+105->142, 24:+143->180
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 82	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 84	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 84	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 87	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   113: putfield 89	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:compFlag_	I
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
      //   133: putfield 101	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 104	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: aload_0
      //   144: getfield 84	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:bitField0_	I
      //   147: iconst_2
      //   148: ior
      //   149: putfield 84	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:bitField0_	I
      //   152: aload_0
      //   153: aload_1
      //   154: invokevirtual 108	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   157: putfield 110	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:lenBeforeComp_	J
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
      //   180: aload_0
      //   181: aload_0
      //   182: getfield 84	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:bitField0_	I
      //   185: iconst_4
      //   186: ior
      //   187: putfield 84	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:bitField0_	I
      //   190: aload_0
      //   191: aload_1
      //   192: invokevirtual 121	com/google/protobuf/CodedInputStream:readBool	()Z
      //   195: putfield 123	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:isSupportComp_	Z
      //   198: goto -173 -> 25
      //   201: aload_0
      //   202: aload 5
      //   204: invokevirtual 99	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   207: putfield 101	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   210: aload_0
      //   211: invokevirtual 104	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:makeExtensionsImmutable	()V
      //   214: return
      //   215: goto -135 -> 80
      //   218: iconst_1
      //   219: istore_3
      //   220: goto -195 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	223	0	this	BusiControl
      //   0	223	1	paramCodedInputStream	CodedInputStream
      //   0	223	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	196	3	i	int
      //   33	53	4	j	int
      //   21	182	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	119	com/google/protobuf/InvalidProtocolBufferException
      //   80	93	119	com/google/protobuf/InvalidProtocolBufferException
      //   98	116	119	com/google/protobuf/InvalidProtocolBufferException
      //   142	160	119	com/google/protobuf/InvalidProtocolBufferException
      //   180	198	119	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	126	finally
      //   80	93	126	finally
      //   98	116	126	finally
      //   120	126	126	finally
      //   142	160	126	finally
      //   164	180	126	finally
      //   180	198	126	finally
      //   29	35	163	java/io/IOException
      //   80	93	163	java/io/IOException
      //   98	116	163	java/io/IOException
      //   142	160	163	java/io/IOException
      //   180	198	163	java/io/IOException
    }
    
    private BusiControl(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private BusiControl(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static BusiControl getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_BusiControl_descriptor;
    }
    
    private void initFields()
    {
      this.compFlag_ = 0;
      this.lenBeforeComp_ = 0L;
      this.isSupportComp_ = false;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$7100();
    }
    
    public static Builder newBuilder(BusiControl paramBusiControl)
    {
      return newBuilder().mergeFrom(paramBusiControl);
    }
    
    public static BusiControl parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (BusiControl)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static BusiControl parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (BusiControl)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static BusiControl parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (BusiControl)PARSER.parseFrom(paramByteString);
    }
    
    public static BusiControl parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (BusiControl)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static BusiControl parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (BusiControl)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static BusiControl parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (BusiControl)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static BusiControl parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (BusiControl)PARSER.parseFrom(paramInputStream);
    }
    
    public static BusiControl parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (BusiControl)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static BusiControl parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (BusiControl)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static BusiControl parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (BusiControl)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getCompFlag()
    {
      return this.compFlag_;
    }
    
    public final BusiControl getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final boolean getIsSupportComp()
    {
      return this.isSupportComp_;
    }
    
    public final long getLenBeforeComp()
    {
      return this.lenBeforeComp_;
    }
    
    public final Parser<BusiControl> getParserForType()
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
        j = CodedOutputStream.computeUInt32Size(1, this.compFlag_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt64Size(2, this.lenBeforeComp_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBoolSize(3, this.isSupportComp_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasCompFlag()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasIsSupportComp()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasLenBeforeComp()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_BusiControl_fieldAccessorTable.ensureFieldAccessorsInitialized(BusiControl.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.compFlag_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt64(2, this.lenBeforeComp_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBool(3, this.isSupportComp_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements UpstreamPacketProto.BusiControlOrBuilder
    {
      private int bitField0_;
      private int compFlag_;
      private boolean isSupportComp_;
      private long lenBeforeComp_;
      
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
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_BusiControl_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final UpstreamPacketProto.BusiControl build()
      {
        UpstreamPacketProto.BusiControl localBusiControl = buildPartial();
        if (!localBusiControl.isInitialized()) {
          throw newUninitializedMessageException(localBusiControl);
        }
        return localBusiControl;
      }
      
      public final UpstreamPacketProto.BusiControl buildPartial()
      {
        int j = 1;
        UpstreamPacketProto.BusiControl localBusiControl = new UpstreamPacketProto.BusiControl(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          UpstreamPacketProto.BusiControl.access$7502(localBusiControl, this.compFlag_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          UpstreamPacketProto.BusiControl.access$7602(localBusiControl, this.lenBeforeComp_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          UpstreamPacketProto.BusiControl.access$7702(localBusiControl, this.isSupportComp_);
          UpstreamPacketProto.BusiControl.access$7802(localBusiControl, j);
          onBuilt();
          return localBusiControl;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.compFlag_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.lenBeforeComp_ = 0L;
        this.bitField0_ &= 0xFFFFFFFD;
        this.isSupportComp_ = false;
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearCompFlag()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.compFlag_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearIsSupportComp()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.isSupportComp_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearLenBeforeComp()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.lenBeforeComp_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getCompFlag()
      {
        return this.compFlag_;
      }
      
      public final UpstreamPacketProto.BusiControl getDefaultInstanceForType()
      {
        return UpstreamPacketProto.BusiControl.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_BusiControl_descriptor;
      }
      
      public final boolean getIsSupportComp()
      {
        return this.isSupportComp_;
      }
      
      public final long getLenBeforeComp()
      {
        return this.lenBeforeComp_;
      }
      
      public final boolean hasCompFlag()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasIsSupportComp()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasLenBeforeComp()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_BusiControl_fieldAccessorTable.ensureFieldAccessorsInitialized(UpstreamPacketProto.BusiControl.class, Builder.class);
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
        //   2: getstatic 166	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 172 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 116	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 175	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 116	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;
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
        if ((paramMessage instanceof UpstreamPacketProto.BusiControl)) {
          return mergeFrom((UpstreamPacketProto.BusiControl)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(UpstreamPacketProto.BusiControl paramBusiControl)
      {
        if (paramBusiControl == UpstreamPacketProto.BusiControl.getDefaultInstance()) {
          return this;
        }
        if (paramBusiControl.hasCompFlag()) {
          setCompFlag(paramBusiControl.getCompFlag());
        }
        if (paramBusiControl.hasLenBeforeComp()) {
          setLenBeforeComp(paramBusiControl.getLenBeforeComp());
        }
        if (paramBusiControl.hasIsSupportComp()) {
          setIsSupportComp(paramBusiControl.getIsSupportComp());
        }
        mergeUnknownFields(paramBusiControl.getUnknownFields());
        return this;
      }
      
      public final Builder setCompFlag(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.compFlag_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setIsSupportComp(boolean paramBoolean)
      {
        this.bitField0_ |= 0x4;
        this.isSupportComp_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setLenBeforeComp(long paramLong)
      {
        this.bitField0_ |= 0x2;
        this.lenBeforeComp_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface BusiControlOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getCompFlag();
    
    public abstract boolean getIsSupportComp();
    
    public abstract long getLenBeforeComp();
    
    public abstract boolean hasCompFlag();
    
    public abstract boolean hasIsSupportComp();
    
    public abstract boolean hasLenBeforeComp();
  }
  
  public static final class ClientIpInfo
    extends GeneratedMessage
    implements UpstreamPacketProto.ClientIpInfoOrBuilder
  {
    public static final int CLIENTIPV4_FIELD_NUMBER = 3;
    public static final int CLIENTIPV6_FIELD_NUMBER = 4;
    public static final int CLIENTPORT_FIELD_NUMBER = 2;
    public static final int IPTYPE_FIELD_NUMBER = 1;
    public static Parser<ClientIpInfo> PARSER = new UpstreamPacketProto.ClientIpInfo.1();
    private static final ClientIpInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int clientIpV4_;
    private ByteString clientIpV6_;
    private int clientPort_;
    private int ipType_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      ClientIpInfo localClientIpInfo = new ClientIpInfo(true);
      defaultInstance = localClientIpInfo;
      localClientIpInfo.initFields();
    }
    
    /* Error */
    private ClientIpInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 65	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 67	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 69	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 58	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:initFields	()V
      //   18: invokestatic 75	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +205 -> 231
      //   29: aload_1
      //   30: invokevirtual 81	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+208->245, 0:+211->248, 8:+69->106, 16:+113->150, 24:+151->188, 34:+172->209
      //   88: aload_0
      //   89: aload_1
      //   90: aload 5
      //   92: aload_2
      //   93: iload 4
      //   95: invokevirtual 85	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   98: ifne -73 -> 25
      //   101: iconst_1
      //   102: istore_3
      //   103: goto -78 -> 25
      //   106: aload_0
      //   107: aload_0
      //   108: getfield 87	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:bitField0_	I
      //   111: iconst_1
      //   112: ior
      //   113: putfield 87	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:bitField0_	I
      //   116: aload_0
      //   117: aload_1
      //   118: invokevirtual 90	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   121: putfield 92	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:ipType_	I
      //   124: goto -99 -> 25
      //   127: astore_1
      //   128: aload_1
      //   129: aload_0
      //   130: invokevirtual 96	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   133: athrow
      //   134: astore_1
      //   135: aload_0
      //   136: aload 5
      //   138: invokevirtual 102	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   141: putfield 104	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   144: aload_0
      //   145: invokevirtual 107	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:makeExtensionsImmutable	()V
      //   148: aload_1
      //   149: athrow
      //   150: aload_0
      //   151: aload_0
      //   152: getfield 87	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:bitField0_	I
      //   155: iconst_2
      //   156: ior
      //   157: putfield 87	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:bitField0_	I
      //   160: aload_0
      //   161: aload_1
      //   162: invokevirtual 90	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   165: putfield 109	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:clientPort_	I
      //   168: goto -143 -> 25
      //   171: astore_1
      //   172: new 62	com/google/protobuf/InvalidProtocolBufferException
      //   175: dup
      //   176: aload_1
      //   177: invokevirtual 113	java/io/IOException:getMessage	()Ljava/lang/String;
      //   180: invokespecial 116	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   183: aload_0
      //   184: invokevirtual 96	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   187: athrow
      //   188: aload_0
      //   189: aload_0
      //   190: getfield 87	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:bitField0_	I
      //   193: iconst_4
      //   194: ior
      //   195: putfield 87	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:bitField0_	I
      //   198: aload_0
      //   199: aload_1
      //   200: invokevirtual 90	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   203: putfield 118	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:clientIpV4_	I
      //   206: goto -181 -> 25
      //   209: aload_0
      //   210: aload_0
      //   211: getfield 87	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:bitField0_	I
      //   214: bipush 8
      //   216: ior
      //   217: putfield 87	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:bitField0_	I
      //   220: aload_0
      //   221: aload_1
      //   222: invokevirtual 122	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   225: putfield 124	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:clientIpV6_	Lcom/google/protobuf/ByteString;
      //   228: goto -203 -> 25
      //   231: aload_0
      //   232: aload 5
      //   234: invokevirtual 102	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   237: putfield 104	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   240: aload_0
      //   241: invokevirtual 107	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:makeExtensionsImmutable	()V
      //   244: return
      //   245: goto -157 -> 88
      //   248: iconst_1
      //   249: istore_3
      //   250: goto -225 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	253	0	this	ClientIpInfo
      //   0	253	1	paramCodedInputStream	CodedInputStream
      //   0	253	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	226	3	i	int
      //   33	61	4	j	int
      //   21	212	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	127	com/google/protobuf/InvalidProtocolBufferException
      //   88	101	127	com/google/protobuf/InvalidProtocolBufferException
      //   106	124	127	com/google/protobuf/InvalidProtocolBufferException
      //   150	168	127	com/google/protobuf/InvalidProtocolBufferException
      //   188	206	127	com/google/protobuf/InvalidProtocolBufferException
      //   209	228	127	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	134	finally
      //   88	101	134	finally
      //   106	124	134	finally
      //   128	134	134	finally
      //   150	168	134	finally
      //   172	188	134	finally
      //   188	206	134	finally
      //   209	228	134	finally
      //   29	35	171	java/io/IOException
      //   88	101	171	java/io/IOException
      //   106	124	171	java/io/IOException
      //   150	168	171	java/io/IOException
      //   188	206	171	java/io/IOException
      //   209	228	171	java/io/IOException
    }
    
    private ClientIpInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private ClientIpInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static ClientIpInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ClientIpInfo_descriptor;
    }
    
    private void initFields()
    {
      this.ipType_ = 0;
      this.clientPort_ = 0;
      this.clientIpV4_ = 0;
      this.clientIpV6_ = ByteString.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$4800();
    }
    
    public static Builder newBuilder(ClientIpInfo paramClientIpInfo)
    {
      return newBuilder().mergeFrom(paramClientIpInfo);
    }
    
    public static ClientIpInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ClientIpInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static ClientIpInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ClientIpInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static ClientIpInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (ClientIpInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static ClientIpInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ClientIpInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static ClientIpInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (ClientIpInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static ClientIpInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ClientIpInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static ClientIpInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ClientIpInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static ClientIpInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ClientIpInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static ClientIpInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (ClientIpInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static ClientIpInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ClientIpInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getClientIpV4()
    {
      return this.clientIpV4_;
    }
    
    public final ByteString getClientIpV6()
    {
      return this.clientIpV6_;
    }
    
    public final int getClientPort()
    {
      return this.clientPort_;
    }
    
    public final ClientIpInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getIpType()
    {
      return this.ipType_;
    }
    
    public final Parser<ClientIpInfo> getParserForType()
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
        j = CodedOutputStream.computeUInt32Size(1, this.ipType_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt32Size(2, this.clientPort_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt32Size(3, this.clientIpV4_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, this.clientIpV6_);
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasClientIpV4()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasClientIpV6()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasClientPort()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasIpType()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ClientIpInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ClientIpInfo.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.ipType_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.clientPort_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt32(3, this.clientIpV4_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, this.clientIpV6_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements UpstreamPacketProto.ClientIpInfoOrBuilder
    {
      private int bitField0_;
      private int clientIpV4_;
      private ByteString clientIpV6_ = ByteString.EMPTY;
      private int clientPort_;
      private int ipType_;
      
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
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ClientIpInfo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final UpstreamPacketProto.ClientIpInfo build()
      {
        UpstreamPacketProto.ClientIpInfo localClientIpInfo = buildPartial();
        if (!localClientIpInfo.isInitialized()) {
          throw newUninitializedMessageException(localClientIpInfo);
        }
        return localClientIpInfo;
      }
      
      public final UpstreamPacketProto.ClientIpInfo buildPartial()
      {
        int j = 1;
        UpstreamPacketProto.ClientIpInfo localClientIpInfo = new UpstreamPacketProto.ClientIpInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          UpstreamPacketProto.ClientIpInfo.access$5202(localClientIpInfo, this.ipType_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          UpstreamPacketProto.ClientIpInfo.access$5302(localClientIpInfo, this.clientPort_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          UpstreamPacketProto.ClientIpInfo.access$5402(localClientIpInfo, this.clientIpV4_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          UpstreamPacketProto.ClientIpInfo.access$5502(localClientIpInfo, this.clientIpV6_);
          UpstreamPacketProto.ClientIpInfo.access$5602(localClientIpInfo, i);
          onBuilt();
          return localClientIpInfo;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.ipType_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.clientPort_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.clientIpV4_ = 0;
        this.bitField0_ &= 0xFFFFFFFB;
        this.clientIpV6_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFF7;
        return this;
      }
      
      public final Builder clearClientIpV4()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.clientIpV4_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearClientIpV6()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.clientIpV6_ = UpstreamPacketProto.ClientIpInfo.getDefaultInstance().getClientIpV6();
        onChanged();
        return this;
      }
      
      public final Builder clearClientPort()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.clientPort_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearIpType()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.ipType_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getClientIpV4()
      {
        return this.clientIpV4_;
      }
      
      public final ByteString getClientIpV6()
      {
        return this.clientIpV6_;
      }
      
      public final int getClientPort()
      {
        return this.clientPort_;
      }
      
      public final UpstreamPacketProto.ClientIpInfo getDefaultInstanceForType()
      {
        return UpstreamPacketProto.ClientIpInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ClientIpInfo_descriptor;
      }
      
      public final int getIpType()
      {
        return this.ipType_;
      }
      
      public final boolean hasClientIpV4()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasClientIpV6()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasClientPort()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasIpType()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ClientIpInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(UpstreamPacketProto.ClientIpInfo.class, Builder.class);
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
        //   2: getstatic 180	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 186 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 133	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 189	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 133	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
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
        if ((paramMessage instanceof UpstreamPacketProto.ClientIpInfo)) {
          return mergeFrom((UpstreamPacketProto.ClientIpInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(UpstreamPacketProto.ClientIpInfo paramClientIpInfo)
      {
        if (paramClientIpInfo == UpstreamPacketProto.ClientIpInfo.getDefaultInstance()) {
          return this;
        }
        if (paramClientIpInfo.hasIpType()) {
          setIpType(paramClientIpInfo.getIpType());
        }
        if (paramClientIpInfo.hasClientPort()) {
          setClientPort(paramClientIpInfo.getClientPort());
        }
        if (paramClientIpInfo.hasClientIpV4()) {
          setClientIpV4(paramClientIpInfo.getClientIpV4());
        }
        if (paramClientIpInfo.hasClientIpV6()) {
          setClientIpV6(paramClientIpInfo.getClientIpV6());
        }
        mergeUnknownFields(paramClientIpInfo.getUnknownFields());
        return this;
      }
      
      public final Builder setClientIpV4(int paramInt)
      {
        this.bitField0_ |= 0x4;
        this.clientIpV4_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setClientIpV6(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.clientIpV6_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setClientPort(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.clientPort_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setIpType(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.ipType_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface ClientIpInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getClientIpV4();
    
    public abstract ByteString getClientIpV6();
    
    public abstract int getClientPort();
    
    public abstract int getIpType();
    
    public abstract boolean hasClientIpV4();
    
    public abstract boolean hasClientIpV6();
    
    public abstract boolean hasClientPort();
    
    public abstract boolean hasIpType();
  }
  
  public static final class ExtKeyInfo
    extends GeneratedMessage
    implements UpstreamPacketProto.ExtKeyInfoOrBuilder
  {
    public static final int KEY_FIELD_NUMBER = 1;
    public static Parser<ExtKeyInfo> PARSER = new UpstreamPacketProto.ExtKeyInfo.1();
    public static final int VAL_FIELD_NUMBER = 2;
    private static final ExtKeyInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int key_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    private ByteString val_;
    
    static
    {
      ExtKeyInfo localExtKeyInfo = new ExtKeyInfo(true);
      defaultInstance = localExtKeyInfo;
      localExtKeyInfo.initFields();
    }
    
    /* Error */
    private ExtKeyInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:initFields	()V
      //   18: invokestatic 69	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +146 -> 172
      //   29: aload_1
      //   30: invokevirtual 75	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+149->186, 0:+152->189, 8:+53->90, 18:+97->134
      //   72: aload_0
      //   73: aload_1
      //   74: aload 5
      //   76: aload_2
      //   77: iload 4
      //   79: invokevirtual 79	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 81	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 81	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 84	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   105: putfield 86	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:key_	I
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
      //   125: putfield 98	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 101	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_0
      //   135: aload_0
      //   136: getfield 81	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:bitField0_	I
      //   139: iconst_2
      //   140: ior
      //   141: putfield 81	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:bitField0_	I
      //   144: aload_0
      //   145: aload_1
      //   146: invokevirtual 105	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   149: putfield 107	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:val_	Lcom/google/protobuf/ByteString;
      //   152: goto -127 -> 25
      //   155: astore_1
      //   156: new 56	com/google/protobuf/InvalidProtocolBufferException
      //   159: dup
      //   160: aload_1
      //   161: invokevirtual 111	java/io/IOException:getMessage	()Ljava/lang/String;
      //   164: invokespecial 114	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   167: aload_0
      //   168: invokevirtual 90	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   171: athrow
      //   172: aload_0
      //   173: aload 5
      //   175: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   178: putfield 98	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   181: aload_0
      //   182: invokevirtual 101	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:makeExtensionsImmutable	()V
      //   185: return
      //   186: goto -114 -> 72
      //   189: iconst_1
      //   190: istore_3
      //   191: goto -166 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	194	0	this	ExtKeyInfo
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
    
    private ExtKeyInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private ExtKeyInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static ExtKeyInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_descriptor;
    }
    
    private void initFields()
    {
      this.key_ = 0;
      this.val_ = ByteString.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$3800();
    }
    
    public static Builder newBuilder(ExtKeyInfo paramExtKeyInfo)
    {
      return newBuilder().mergeFrom(paramExtKeyInfo);
    }
    
    public static ExtKeyInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ExtKeyInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static ExtKeyInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ExtKeyInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static ExtKeyInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (ExtKeyInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static ExtKeyInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ExtKeyInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static ExtKeyInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (ExtKeyInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static ExtKeyInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ExtKeyInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static ExtKeyInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ExtKeyInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static ExtKeyInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ExtKeyInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static ExtKeyInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (ExtKeyInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static ExtKeyInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ExtKeyInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final ExtKeyInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getKey()
    {
      return this.key_;
    }
    
    public final Parser<ExtKeyInfo> getParserForType()
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
        i = CodedOutputStream.computeUInt32Size(1, this.key_) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeBytesSize(2, this.val_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final ByteString getVal()
    {
      return this.val_;
    }
    
    public final boolean hasKey()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasVal()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ExtKeyInfo.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.key_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, this.val_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements UpstreamPacketProto.ExtKeyInfoOrBuilder
    {
      private int bitField0_;
      private int key_;
      private ByteString val_ = ByteString.EMPTY;
      
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
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final UpstreamPacketProto.ExtKeyInfo build()
      {
        UpstreamPacketProto.ExtKeyInfo localExtKeyInfo = buildPartial();
        if (!localExtKeyInfo.isInitialized()) {
          throw newUninitializedMessageException(localExtKeyInfo);
        }
        return localExtKeyInfo;
      }
      
      public final UpstreamPacketProto.ExtKeyInfo buildPartial()
      {
        int i = 1;
        UpstreamPacketProto.ExtKeyInfo localExtKeyInfo = new UpstreamPacketProto.ExtKeyInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          UpstreamPacketProto.ExtKeyInfo.access$4202(localExtKeyInfo, this.key_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          UpstreamPacketProto.ExtKeyInfo.access$4302(localExtKeyInfo, this.val_);
          UpstreamPacketProto.ExtKeyInfo.access$4402(localExtKeyInfo, j);
          onBuilt();
          return localExtKeyInfo;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.key_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.val_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearKey()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.key_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearVal()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.val_ = UpstreamPacketProto.ExtKeyInfo.getDefaultInstance().getVal();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final UpstreamPacketProto.ExtKeyInfo getDefaultInstanceForType()
      {
        return UpstreamPacketProto.ExtKeyInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_descriptor;
      }
      
      public final int getKey()
      {
        return this.key_;
      }
      
      public final ByteString getVal()
      {
        return this.val_;
      }
      
      public final boolean hasKey()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasVal()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtKeyInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(UpstreamPacketProto.ExtKeyInfo.class, Builder.class);
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
        //   2: getstatic 162	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 168 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 119	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 171	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 119	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo$Builder;
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
        if ((paramMessage instanceof UpstreamPacketProto.ExtKeyInfo)) {
          return mergeFrom((UpstreamPacketProto.ExtKeyInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(UpstreamPacketProto.ExtKeyInfo paramExtKeyInfo)
      {
        if (paramExtKeyInfo == UpstreamPacketProto.ExtKeyInfo.getDefaultInstance()) {
          return this;
        }
        if (paramExtKeyInfo.hasKey()) {
          setKey(paramExtKeyInfo.getKey());
        }
        if (paramExtKeyInfo.hasVal()) {
          setVal(paramExtKeyInfo.getVal());
        }
        mergeUnknownFields(paramExtKeyInfo.getUnknownFields());
        return this;
      }
      
      public final Builder setKey(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.key_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setVal(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.val_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface ExtKeyInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getKey();
    
    public abstract ByteString getVal();
    
    public abstract boolean hasKey();
    
    public abstract boolean hasVal();
  }
  
  public static final class RetryInfo
    extends GeneratedMessage
    implements UpstreamPacketProto.RetryInfoOrBuilder
  {
    public static final int FLAG_FIELD_NUMBER = 1;
    public static Parser<RetryInfo> PARSER = new UpstreamPacketProto.RetryInfo.1();
    public static final int PKGID_FIELD_NUMBER = 3;
    public static final int RETRYCNT_FIELD_NUMBER = 2;
    private static final RetryInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int flag_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private long pkgId_;
    private int retryCnt_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      RetryInfo localRetryInfo = new RetryInfo(true);
      defaultInstance = localRetryInfo;
      localRetryInfo.initFields();
    }
    
    /* Error */
    private RetryInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 61	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 63	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 65	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 54	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:initFields	()V
      //   18: invokestatic 71	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +175 -> 201
      //   29: aload_1
      //   30: invokevirtual 77	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+178->215, 0:+181->218, 8:+61->98, 16:+105->142, 24:+143->180
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 81	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 83	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 83	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 86	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   113: putfield 88	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:flag_	I
      //   116: goto -91 -> 25
      //   119: astore_1
      //   120: aload_1
      //   121: aload_0
      //   122: invokevirtual 92	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   125: athrow
      //   126: astore_1
      //   127: aload_0
      //   128: aload 5
      //   130: invokevirtual 98	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   133: putfield 100	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 103	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: aload_0
      //   144: getfield 83	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:bitField0_	I
      //   147: iconst_2
      //   148: ior
      //   149: putfield 83	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:bitField0_	I
      //   152: aload_0
      //   153: aload_1
      //   154: invokevirtual 86	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   157: putfield 105	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:retryCnt_	I
      //   160: goto -135 -> 25
      //   163: astore_1
      //   164: new 58	com/google/protobuf/InvalidProtocolBufferException
      //   167: dup
      //   168: aload_1
      //   169: invokevirtual 109	java/io/IOException:getMessage	()Ljava/lang/String;
      //   172: invokespecial 112	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   175: aload_0
      //   176: invokevirtual 92	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   179: athrow
      //   180: aload_0
      //   181: aload_0
      //   182: getfield 83	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:bitField0_	I
      //   185: iconst_4
      //   186: ior
      //   187: putfield 83	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:bitField0_	I
      //   190: aload_0
      //   191: aload_1
      //   192: invokevirtual 116	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   195: putfield 118	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:pkgId_	J
      //   198: goto -173 -> 25
      //   201: aload_0
      //   202: aload 5
      //   204: invokevirtual 98	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   207: putfield 100	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   210: aload_0
      //   211: invokevirtual 103	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:makeExtensionsImmutable	()V
      //   214: return
      //   215: goto -135 -> 80
      //   218: iconst_1
      //   219: istore_3
      //   220: goto -195 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	223	0	this	RetryInfo
      //   0	223	1	paramCodedInputStream	CodedInputStream
      //   0	223	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	196	3	i	int
      //   33	53	4	j	int
      //   21	182	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	119	com/google/protobuf/InvalidProtocolBufferException
      //   80	93	119	com/google/protobuf/InvalidProtocolBufferException
      //   98	116	119	com/google/protobuf/InvalidProtocolBufferException
      //   142	160	119	com/google/protobuf/InvalidProtocolBufferException
      //   180	198	119	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	126	finally
      //   80	93	126	finally
      //   98	116	126	finally
      //   120	126	126	finally
      //   142	160	126	finally
      //   164	180	126	finally
      //   180	198	126	finally
      //   29	35	163	java/io/IOException
      //   80	93	163	java/io/IOException
      //   98	116	163	java/io/IOException
      //   142	160	163	java/io/IOException
      //   180	198	163	java/io/IOException
    }
    
    private RetryInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private RetryInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static RetryInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_RetryInfo_descriptor;
    }
    
    private void initFields()
    {
      this.flag_ = 0;
      this.retryCnt_ = 0;
      this.pkgId_ = 0L;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$6000();
    }
    
    public static Builder newBuilder(RetryInfo paramRetryInfo)
    {
      return newBuilder().mergeFrom(paramRetryInfo);
    }
    
    public static RetryInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RetryInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static RetryInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RetryInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RetryInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (RetryInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static RetryInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RetryInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static RetryInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (RetryInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static RetryInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RetryInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static RetryInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RetryInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static RetryInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RetryInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RetryInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (RetryInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static RetryInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RetryInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final RetryInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getFlag()
    {
      return this.flag_;
    }
    
    public final Parser<RetryInfo> getParserForType()
    {
      return PARSER;
    }
    
    public final long getPkgId()
    {
      return this.pkgId_;
    }
    
    public final int getRetryCnt()
    {
      return this.retryCnt_;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt32Size(1, this.flag_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt32Size(2, this.retryCnt_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt64Size(3, this.pkgId_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasFlag()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasPkgId()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasRetryCnt()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_RetryInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(RetryInfo.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.flag_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.retryCnt_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt64(3, this.pkgId_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements UpstreamPacketProto.RetryInfoOrBuilder
    {
      private int bitField0_;
      private int flag_;
      private long pkgId_;
      private int retryCnt_;
      
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
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_RetryInfo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final UpstreamPacketProto.RetryInfo build()
      {
        UpstreamPacketProto.RetryInfo localRetryInfo = buildPartial();
        if (!localRetryInfo.isInitialized()) {
          throw newUninitializedMessageException(localRetryInfo);
        }
        return localRetryInfo;
      }
      
      public final UpstreamPacketProto.RetryInfo buildPartial()
      {
        int j = 1;
        UpstreamPacketProto.RetryInfo localRetryInfo = new UpstreamPacketProto.RetryInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          UpstreamPacketProto.RetryInfo.access$6402(localRetryInfo, this.flag_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          UpstreamPacketProto.RetryInfo.access$6502(localRetryInfo, this.retryCnt_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          UpstreamPacketProto.RetryInfo.access$6602(localRetryInfo, this.pkgId_);
          UpstreamPacketProto.RetryInfo.access$6702(localRetryInfo, j);
          onBuilt();
          return localRetryInfo;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.flag_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.retryCnt_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.pkgId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearFlag()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.flag_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearPkgId()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.pkgId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearRetryCnt()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.retryCnt_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final UpstreamPacketProto.RetryInfo getDefaultInstanceForType()
      {
        return UpstreamPacketProto.RetryInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_RetryInfo_descriptor;
      }
      
      public final int getFlag()
      {
        return this.flag_;
      }
      
      public final long getPkgId()
      {
        return this.pkgId_;
      }
      
      public final int getRetryCnt()
      {
        return this.retryCnt_;
      }
      
      public final boolean hasFlag()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasPkgId()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasRetryCnt()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_RetryInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(UpstreamPacketProto.RetryInfo.class, Builder.class);
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
        //   2: getstatic 164	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 170 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 114	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 173	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 114	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
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
        if ((paramMessage instanceof UpstreamPacketProto.RetryInfo)) {
          return mergeFrom((UpstreamPacketProto.RetryInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(UpstreamPacketProto.RetryInfo paramRetryInfo)
      {
        if (paramRetryInfo == UpstreamPacketProto.RetryInfo.getDefaultInstance()) {
          return this;
        }
        if (paramRetryInfo.hasFlag()) {
          setFlag(paramRetryInfo.getFlag());
        }
        if (paramRetryInfo.hasRetryCnt()) {
          setRetryCnt(paramRetryInfo.getRetryCnt());
        }
        if (paramRetryInfo.hasPkgId()) {
          setPkgId(paramRetryInfo.getPkgId());
        }
        mergeUnknownFields(paramRetryInfo.getUnknownFields());
        return this;
      }
      
      public final Builder setFlag(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.flag_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setPkgId(long paramLong)
      {
        this.bitField0_ |= 0x4;
        this.pkgId_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setRetryCnt(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.retryCnt_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface RetryInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getFlag();
    
    public abstract long getPkgId();
    
    public abstract int getRetryCnt();
    
    public abstract boolean hasFlag();
    
    public abstract boolean hasPkgId();
    
    public abstract boolean hasRetryCnt();
  }
  
  public static final class TokenInfo
    extends GeneratedMessage
    implements UpstreamPacketProto.TokenInfoOrBuilder
  {
    public static final int EXTKEY_FIELD_NUMBER = 3;
    public static final int KEY_FIELD_NUMBER = 2;
    public static Parser<TokenInfo> PARSER = new UpstreamPacketProto.TokenInfo.1();
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final TokenInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private List<UpstreamPacketProto.ExtKeyInfo> extKey_;
    private ByteString key_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int type_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      TokenInfo localTokenInfo = new TokenInfo(true);
      defaultInstance = localTokenInfo;
      localTokenInfo.initFields();
    }
    
    /* Error */
    private TokenInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 64	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 66	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 68	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 57	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:initFields	()V
      //   18: invokestatic 74	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 9
      //   23: iconst_0
      //   24: istore 6
      //   26: iconst_0
      //   27: istore_3
      //   28: iload 6
      //   30: ifne +306 -> 336
      //   33: iload_3
      //   34: istore 7
      //   36: iload_3
      //   37: istore 5
      //   39: iload_3
      //   40: istore 8
      //   42: aload_1
      //   43: invokevirtual 80	com/google/protobuf/CodedInputStream:readTag	()I
      //   46: istore 4
      //   48: iload 4
      //   50: lookupswitch	default:+318->368, 0:+321->371, 8:+70->120, 18:+155->205, 26:+215->265
      //   92: iload_3
      //   93: istore 7
      //   95: iload_3
      //   96: istore 5
      //   98: iload_3
      //   99: istore 8
      //   101: aload_0
      //   102: aload_1
      //   103: aload 9
      //   105: aload_2
      //   106: iload 4
      //   108: invokevirtual 84	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   111: ifne -83 -> 28
      //   114: iconst_1
      //   115: istore 6
      //   117: goto -89 -> 28
      //   120: iload_3
      //   121: istore 7
      //   123: iload_3
      //   124: istore 5
      //   126: iload_3
      //   127: istore 8
      //   129: aload_0
      //   130: aload_0
      //   131: getfield 86	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:bitField0_	I
      //   134: iconst_1
      //   135: ior
      //   136: putfield 86	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:bitField0_	I
      //   139: iload_3
      //   140: istore 7
      //   142: iload_3
      //   143: istore 5
      //   145: iload_3
      //   146: istore 8
      //   148: aload_0
      //   149: aload_1
      //   150: invokevirtual 89	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   153: putfield 91	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:type_	I
      //   156: goto -128 -> 28
      //   159: astore_1
      //   160: iload 7
      //   162: istore 5
      //   164: aload_1
      //   165: aload_0
      //   166: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   169: athrow
      //   170: astore_1
      //   171: iload 5
      //   173: iconst_4
      //   174: iand
      //   175: iconst_4
      //   176: if_icmpne +14 -> 190
      //   179: aload_0
      //   180: aload_0
      //   181: getfield 97	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:extKey_	Ljava/util/List;
      //   184: invokestatic 103	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   187: putfield 97	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:extKey_	Ljava/util/List;
      //   190: aload_0
      //   191: aload 9
      //   193: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   196: putfield 111	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   199: aload_0
      //   200: invokevirtual 114	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:makeExtensionsImmutable	()V
      //   203: aload_1
      //   204: athrow
      //   205: iload_3
      //   206: istore 7
      //   208: iload_3
      //   209: istore 5
      //   211: iload_3
      //   212: istore 8
      //   214: aload_0
      //   215: aload_0
      //   216: getfield 86	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:bitField0_	I
      //   219: iconst_2
      //   220: ior
      //   221: putfield 86	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:bitField0_	I
      //   224: iload_3
      //   225: istore 7
      //   227: iload_3
      //   228: istore 5
      //   230: iload_3
      //   231: istore 8
      //   233: aload_0
      //   234: aload_1
      //   235: invokevirtual 118	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   238: putfield 120	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:key_	Lcom/google/protobuf/ByteString;
      //   241: goto -213 -> 28
      //   244: astore_1
      //   245: iload 8
      //   247: istore 5
      //   249: new 61	com/google/protobuf/InvalidProtocolBufferException
      //   252: dup
      //   253: aload_1
      //   254: invokevirtual 124	java/io/IOException:getMessage	()Ljava/lang/String;
      //   257: invokespecial 127	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   260: aload_0
      //   261: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   264: athrow
      //   265: iload_3
      //   266: istore 4
      //   268: iload_3
      //   269: iconst_4
      //   270: iand
      //   271: iconst_4
      //   272: if_icmpeq +28 -> 300
      //   275: iload_3
      //   276: istore 7
      //   278: iload_3
      //   279: istore 5
      //   281: iload_3
      //   282: istore 8
      //   284: aload_0
      //   285: new 129	java/util/ArrayList
      //   288: dup
      //   289: invokespecial 130	java/util/ArrayList:<init>	()V
      //   292: putfield 97	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:extKey_	Ljava/util/List;
      //   295: iload_3
      //   296: iconst_4
      //   297: ior
      //   298: istore 4
      //   300: iload 4
      //   302: istore 7
      //   304: iload 4
      //   306: istore 5
      //   308: iload 4
      //   310: istore 8
      //   312: aload_0
      //   313: getfield 97	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:extKey_	Ljava/util/List;
      //   316: aload_1
      //   317: getstatic 133	com/mi/milink/sdk/proto/UpstreamPacketProto$ExtKeyInfo:PARSER	Lcom/google/protobuf/Parser;
      //   320: aload_2
      //   321: invokevirtual 137	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   324: invokeinterface 143 2 0
      //   329: pop
      //   330: iload 4
      //   332: istore_3
      //   333: goto -305 -> 28
      //   336: iload_3
      //   337: iconst_4
      //   338: iand
      //   339: iconst_4
      //   340: if_icmpne +14 -> 354
      //   343: aload_0
      //   344: aload_0
      //   345: getfield 97	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:extKey_	Ljava/util/List;
      //   348: invokestatic 103	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   351: putfield 97	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:extKey_	Ljava/util/List;
      //   354: aload_0
      //   355: aload 9
      //   357: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   360: putfield 111	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   363: aload_0
      //   364: invokevirtual 114	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:makeExtensionsImmutable	()V
      //   367: return
      //   368: goto -276 -> 92
      //   371: iconst_1
      //   372: istore 6
      //   374: goto -346 -> 28
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	377	0	this	TokenInfo
      //   0	377	1	paramCodedInputStream	CodedInputStream
      //   0	377	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   27	312	3	i	int
      //   46	285	4	j	int
      //   37	270	5	k	int
      //   24	349	6	m	int
      //   34	269	7	n	int
      //   40	271	8	i1	int
      //   21	335	9	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   42	48	159	com/google/protobuf/InvalidProtocolBufferException
      //   101	114	159	com/google/protobuf/InvalidProtocolBufferException
      //   129	139	159	com/google/protobuf/InvalidProtocolBufferException
      //   148	156	159	com/google/protobuf/InvalidProtocolBufferException
      //   214	224	159	com/google/protobuf/InvalidProtocolBufferException
      //   233	241	159	com/google/protobuf/InvalidProtocolBufferException
      //   284	295	159	com/google/protobuf/InvalidProtocolBufferException
      //   312	330	159	com/google/protobuf/InvalidProtocolBufferException
      //   42	48	170	finally
      //   101	114	170	finally
      //   129	139	170	finally
      //   148	156	170	finally
      //   164	170	170	finally
      //   214	224	170	finally
      //   233	241	170	finally
      //   249	265	170	finally
      //   284	295	170	finally
      //   312	330	170	finally
      //   42	48	244	java/io/IOException
      //   101	114	244	java/io/IOException
      //   129	139	244	java/io/IOException
      //   148	156	244	java/io/IOException
      //   214	224	244	java/io/IOException
      //   233	241	244	java/io/IOException
      //   284	295	244	java/io/IOException
      //   312	330	244	java/io/IOException
    }
    
    private TokenInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private TokenInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static TokenInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_TokenInfo_descriptor;
    }
    
    private void initFields()
    {
      this.type_ = 0;
      this.key_ = ByteString.EMPTY;
      this.extKey_ = Collections.emptyList();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$2600();
    }
    
    public static Builder newBuilder(TokenInfo paramTokenInfo)
    {
      return newBuilder().mergeFrom(paramTokenInfo);
    }
    
    public static TokenInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (TokenInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static TokenInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (TokenInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static TokenInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (TokenInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static TokenInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (TokenInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static TokenInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (TokenInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static TokenInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (TokenInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static TokenInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (TokenInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static TokenInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (TokenInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static TokenInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (TokenInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static TokenInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (TokenInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final TokenInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final UpstreamPacketProto.ExtKeyInfo getExtKey(int paramInt)
    {
      return (UpstreamPacketProto.ExtKeyInfo)this.extKey_.get(paramInt);
    }
    
    public final int getExtKeyCount()
    {
      return this.extKey_.size();
    }
    
    public final List<UpstreamPacketProto.ExtKeyInfo> getExtKeyList()
    {
      return this.extKey_;
    }
    
    public final UpstreamPacketProto.ExtKeyInfoOrBuilder getExtKeyOrBuilder(int paramInt)
    {
      return (UpstreamPacketProto.ExtKeyInfoOrBuilder)this.extKey_.get(paramInt);
    }
    
    public final List<? extends UpstreamPacketProto.ExtKeyInfoOrBuilder> getExtKeyOrBuilderList()
    {
      return this.extKey_;
    }
    
    public final ByteString getKey()
    {
      return this.key_;
    }
    
    public final Parser<TokenInfo> getParserForType()
    {
      return PARSER;
    }
    
    public final int getSerializedSize()
    {
      int k = 0;
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      if ((this.bitField0_ & 0x1) == 1) {}
      for (i = CodedOutputStream.computeUInt32Size(1, this.type_) + 0;; i = 0)
      {
        int j = i;
        if ((this.bitField0_ & 0x2) == 2) {
          j = i + CodedOutputStream.computeBytesSize(2, this.key_);
        }
        i = j;
        j = k;
        while (j < this.extKey_.size())
        {
          k = CodedOutputStream.computeMessageSize(3, (MessageLite)this.extKey_.get(j));
          j += 1;
          i = k + i;
        }
        i = getUnknownFields().getSerializedSize() + i;
        this.memoizedSerializedSize = i;
        return i;
      }
    }
    
    public final int getType()
    {
      return this.type_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasKey()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasType()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_TokenInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(TokenInfo.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.type_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, this.key_);
      }
      int i = 0;
      while (i < this.extKey_.size())
      {
        paramCodedOutputStream.writeMessage(3, (MessageLite)this.extKey_.get(i));
        i += 1;
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements UpstreamPacketProto.TokenInfoOrBuilder
    {
      private int bitField0_;
      private RepeatedFieldBuilder<UpstreamPacketProto.ExtKeyInfo, UpstreamPacketProto.ExtKeyInfo.Builder, UpstreamPacketProto.ExtKeyInfoOrBuilder> extKeyBuilder_;
      private List<UpstreamPacketProto.ExtKeyInfo> extKey_ = Collections.emptyList();
      private ByteString key_ = ByteString.EMPTY;
      private int type_;
      
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
      
      private void ensureExtKeyIsMutable()
      {
        if ((this.bitField0_ & 0x4) != 4)
        {
          this.extKey_ = new ArrayList(this.extKey_);
          this.bitField0_ |= 0x4;
        }
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_TokenInfo_descriptor;
      }
      
      private RepeatedFieldBuilder<UpstreamPacketProto.ExtKeyInfo, UpstreamPacketProto.ExtKeyInfo.Builder, UpstreamPacketProto.ExtKeyInfoOrBuilder> getExtKeyFieldBuilder()
      {
        List localList;
        if (this.extKeyBuilder_ == null)
        {
          localList = this.extKey_;
          if ((this.bitField0_ & 0x4) != 4) {
            break label55;
          }
        }
        label55:
        for (boolean bool = true;; bool = false)
        {
          this.extKeyBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
          this.extKey_ = null;
          return this.extKeyBuilder_;
        }
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (UpstreamPacketProto.TokenInfo.alwaysUseFieldBuilders) {
          getExtKeyFieldBuilder();
        }
      }
      
      public final Builder addAllExtKey(Iterable<? extends UpstreamPacketProto.ExtKeyInfo> paramIterable)
      {
        if (this.extKeyBuilder_ == null)
        {
          ensureExtKeyIsMutable();
          AbstractMessageLite.Builder.addAll(paramIterable, this.extKey_);
          onChanged();
          return this;
        }
        this.extKeyBuilder_.addAllMessages(paramIterable);
        return this;
      }
      
      public final Builder addExtKey(int paramInt, UpstreamPacketProto.ExtKeyInfo.Builder paramBuilder)
      {
        if (this.extKeyBuilder_ == null)
        {
          ensureExtKeyIsMutable();
          this.extKey_.add(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.extKeyBuilder_.addMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder addExtKey(int paramInt, UpstreamPacketProto.ExtKeyInfo paramExtKeyInfo)
      {
        if (this.extKeyBuilder_ == null)
        {
          if (paramExtKeyInfo == null) {
            throw new NullPointerException();
          }
          ensureExtKeyIsMutable();
          this.extKey_.add(paramInt, paramExtKeyInfo);
          onChanged();
          return this;
        }
        this.extKeyBuilder_.addMessage(paramInt, paramExtKeyInfo);
        return this;
      }
      
      public final Builder addExtKey(UpstreamPacketProto.ExtKeyInfo.Builder paramBuilder)
      {
        if (this.extKeyBuilder_ == null)
        {
          ensureExtKeyIsMutable();
          this.extKey_.add(paramBuilder.build());
          onChanged();
          return this;
        }
        this.extKeyBuilder_.addMessage(paramBuilder.build());
        return this;
      }
      
      public final Builder addExtKey(UpstreamPacketProto.ExtKeyInfo paramExtKeyInfo)
      {
        if (this.extKeyBuilder_ == null)
        {
          if (paramExtKeyInfo == null) {
            throw new NullPointerException();
          }
          ensureExtKeyIsMutable();
          this.extKey_.add(paramExtKeyInfo);
          onChanged();
          return this;
        }
        this.extKeyBuilder_.addMessage(paramExtKeyInfo);
        return this;
      }
      
      public final UpstreamPacketProto.ExtKeyInfo.Builder addExtKeyBuilder()
      {
        return (UpstreamPacketProto.ExtKeyInfo.Builder)getExtKeyFieldBuilder().addBuilder(UpstreamPacketProto.ExtKeyInfo.getDefaultInstance());
      }
      
      public final UpstreamPacketProto.ExtKeyInfo.Builder addExtKeyBuilder(int paramInt)
      {
        return (UpstreamPacketProto.ExtKeyInfo.Builder)getExtKeyFieldBuilder().addBuilder(paramInt, UpstreamPacketProto.ExtKeyInfo.getDefaultInstance());
      }
      
      public final UpstreamPacketProto.TokenInfo build()
      {
        UpstreamPacketProto.TokenInfo localTokenInfo = buildPartial();
        if (!localTokenInfo.isInitialized()) {
          throw newUninitializedMessageException(localTokenInfo);
        }
        return localTokenInfo;
      }
      
      public final UpstreamPacketProto.TokenInfo buildPartial()
      {
        int i = 1;
        UpstreamPacketProto.TokenInfo localTokenInfo = new UpstreamPacketProto.TokenInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          UpstreamPacketProto.TokenInfo.access$3002(localTokenInfo, this.type_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          UpstreamPacketProto.TokenInfo.access$3102(localTokenInfo, this.key_);
          if (this.extKeyBuilder_ == null)
          {
            if ((this.bitField0_ & 0x4) == 4)
            {
              this.extKey_ = Collections.unmodifiableList(this.extKey_);
              this.bitField0_ &= 0xFFFFFFFB;
            }
            UpstreamPacketProto.TokenInfo.access$3202(localTokenInfo, this.extKey_);
          }
          for (;;)
          {
            UpstreamPacketProto.TokenInfo.access$3302(localTokenInfo, j);
            onBuilt();
            return localTokenInfo;
            UpstreamPacketProto.TokenInfo.access$3202(localTokenInfo, this.extKeyBuilder_.build());
          }
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.type_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.key_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFD;
        if (this.extKeyBuilder_ == null)
        {
          this.extKey_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFB;
          return this;
        }
        this.extKeyBuilder_.clear();
        return this;
      }
      
      public final Builder clearExtKey()
      {
        if (this.extKeyBuilder_ == null)
        {
          this.extKey_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFB;
          onChanged();
          return this;
        }
        this.extKeyBuilder_.clear();
        return this;
      }
      
      public final Builder clearKey()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.key_ = UpstreamPacketProto.TokenInfo.getDefaultInstance().getKey();
        onChanged();
        return this;
      }
      
      public final Builder clearType()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.type_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final UpstreamPacketProto.TokenInfo getDefaultInstanceForType()
      {
        return UpstreamPacketProto.TokenInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_TokenInfo_descriptor;
      }
      
      public final UpstreamPacketProto.ExtKeyInfo getExtKey(int paramInt)
      {
        if (this.extKeyBuilder_ == null) {
          return (UpstreamPacketProto.ExtKeyInfo)this.extKey_.get(paramInt);
        }
        return (UpstreamPacketProto.ExtKeyInfo)this.extKeyBuilder_.getMessage(paramInt);
      }
      
      public final UpstreamPacketProto.ExtKeyInfo.Builder getExtKeyBuilder(int paramInt)
      {
        return (UpstreamPacketProto.ExtKeyInfo.Builder)getExtKeyFieldBuilder().getBuilder(paramInt);
      }
      
      public final List<UpstreamPacketProto.ExtKeyInfo.Builder> getExtKeyBuilderList()
      {
        return getExtKeyFieldBuilder().getBuilderList();
      }
      
      public final int getExtKeyCount()
      {
        if (this.extKeyBuilder_ == null) {
          return this.extKey_.size();
        }
        return this.extKeyBuilder_.getCount();
      }
      
      public final List<UpstreamPacketProto.ExtKeyInfo> getExtKeyList()
      {
        if (this.extKeyBuilder_ == null) {
          return Collections.unmodifiableList(this.extKey_);
        }
        return this.extKeyBuilder_.getMessageList();
      }
      
      public final UpstreamPacketProto.ExtKeyInfoOrBuilder getExtKeyOrBuilder(int paramInt)
      {
        if (this.extKeyBuilder_ == null) {
          return (UpstreamPacketProto.ExtKeyInfoOrBuilder)this.extKey_.get(paramInt);
        }
        return (UpstreamPacketProto.ExtKeyInfoOrBuilder)this.extKeyBuilder_.getMessageOrBuilder(paramInt);
      }
      
      public final List<? extends UpstreamPacketProto.ExtKeyInfoOrBuilder> getExtKeyOrBuilderList()
      {
        if (this.extKeyBuilder_ != null) {
          return this.extKeyBuilder_.getMessageOrBuilderList();
        }
        return Collections.unmodifiableList(this.extKey_);
      }
      
      public final ByteString getKey()
      {
        return this.key_;
      }
      
      public final int getType()
      {
        return this.type_;
      }
      
      public final boolean hasKey()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasType()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_TokenInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(UpstreamPacketProto.TokenInfo.class, Builder.class);
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
        //   2: getstatic 318	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 324 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 230	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 327	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 230	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
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
        if ((paramMessage instanceof UpstreamPacketProto.TokenInfo)) {
          return mergeFrom((UpstreamPacketProto.TokenInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(UpstreamPacketProto.TokenInfo paramTokenInfo)
      {
        RepeatedFieldBuilder localRepeatedFieldBuilder = null;
        if (paramTokenInfo == UpstreamPacketProto.TokenInfo.getDefaultInstance()) {
          return this;
        }
        if (paramTokenInfo.hasType()) {
          setType(paramTokenInfo.getType());
        }
        if (paramTokenInfo.hasKey()) {
          setKey(paramTokenInfo.getKey());
        }
        if (this.extKeyBuilder_ == null) {
          if (!paramTokenInfo.extKey_.isEmpty())
          {
            if (!this.extKey_.isEmpty()) {
              break label108;
            }
            this.extKey_ = paramTokenInfo.extKey_;
            this.bitField0_ &= 0xFFFFFFFB;
            onChanged();
          }
        }
        for (;;)
        {
          mergeUnknownFields(paramTokenInfo.getUnknownFields());
          return this;
          label108:
          ensureExtKeyIsMutable();
          this.extKey_.addAll(paramTokenInfo.extKey_);
          break;
          if (!paramTokenInfo.extKey_.isEmpty()) {
            if (this.extKeyBuilder_.isEmpty())
            {
              this.extKeyBuilder_.dispose();
              this.extKeyBuilder_ = null;
              this.extKey_ = paramTokenInfo.extKey_;
              this.bitField0_ &= 0xFFFFFFFB;
              if (UpstreamPacketProto.TokenInfo.alwaysUseFieldBuilders) {
                localRepeatedFieldBuilder = getExtKeyFieldBuilder();
              }
              this.extKeyBuilder_ = localRepeatedFieldBuilder;
            }
            else
            {
              this.extKeyBuilder_.addAllMessages(paramTokenInfo.extKey_);
            }
          }
        }
      }
      
      public final Builder removeExtKey(int paramInt)
      {
        if (this.extKeyBuilder_ == null)
        {
          ensureExtKeyIsMutable();
          this.extKey_.remove(paramInt);
          onChanged();
          return this;
        }
        this.extKeyBuilder_.remove(paramInt);
        return this;
      }
      
      public final Builder setExtKey(int paramInt, UpstreamPacketProto.ExtKeyInfo.Builder paramBuilder)
      {
        if (this.extKeyBuilder_ == null)
        {
          ensureExtKeyIsMutable();
          this.extKey_.set(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.extKeyBuilder_.setMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder setExtKey(int paramInt, UpstreamPacketProto.ExtKeyInfo paramExtKeyInfo)
      {
        if (this.extKeyBuilder_ == null)
        {
          if (paramExtKeyInfo == null) {
            throw new NullPointerException();
          }
          ensureExtKeyIsMutable();
          this.extKey_.set(paramInt, paramExtKeyInfo);
          onChanged();
          return this;
        }
        this.extKeyBuilder_.setMessage(paramInt, paramExtKeyInfo);
        return this;
      }
      
      public final Builder setKey(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.key_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setType(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.type_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface TokenInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract UpstreamPacketProto.ExtKeyInfo getExtKey(int paramInt);
    
    public abstract int getExtKeyCount();
    
    public abstract List<UpstreamPacketProto.ExtKeyInfo> getExtKeyList();
    
    public abstract UpstreamPacketProto.ExtKeyInfoOrBuilder getExtKeyOrBuilder(int paramInt);
    
    public abstract List<? extends UpstreamPacketProto.ExtKeyInfoOrBuilder> getExtKeyOrBuilderList();
    
    public abstract ByteString getKey();
    
    public abstract int getType();
    
    public abstract boolean hasKey();
    
    public abstract boolean hasType();
  }
  
  public static enum TokenType
    implements ProtocolMessageEnum
  {
    public static final int MNS_TOKEN_TYPE_NULL_VALUE = 0;
    private static final TokenType[] VALUES = values();
    private static Internal.EnumLiteMap<TokenType> internalValueMap;
    private final int index;
    private final int value;
    
    static
    {
      $VALUES = new TokenType[] { MNS_TOKEN_TYPE_NULL };
      internalValueMap = new UpstreamPacketProto.TokenType.1();
    }
    
    private TokenType(int paramInt1, int paramInt2)
    {
      this.index = paramInt1;
      this.value = paramInt2;
    }
    
    public static final Descriptors.EnumDescriptor getDescriptor()
    {
      return (Descriptors.EnumDescriptor)UpstreamPacketProto.getDescriptor().getEnumTypes().get(0);
    }
    
    public static Internal.EnumLiteMap<TokenType> internalGetValueMap()
    {
      return internalValueMap;
    }
    
    public static TokenType valueOf(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return null;
      }
      return MNS_TOKEN_TYPE_NULL;
    }
    
    public static TokenType valueOf(Descriptors.EnumValueDescriptor paramEnumValueDescriptor)
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
  
  public static final class UpstreamPacket
    extends GeneratedMessage
    implements UpstreamPacketProto.UpstreamPacketOrBuilder
  {
    public static final int APPID_FIELD_NUMBER = 2;
    public static final int BUSIBUFF_FIELD_NUMBER = 9;
    public static final int BUSICONTROL_FIELD_NUMBER = 14;
    public static final int DEVICEINFO_FIELD_NUMBER = 6;
    public static final int EXTRA_FIELD_NUMBER = 10;
    public static final int FLAG_FIELD_NUMBER = 11;
    public static final int IPINFO_FIELD_NUMBER = 8;
    public static final int MIUID_FIELD_NUMBER = 15;
    public static final int MIUIN_FIELD_NUMBER = 3;
    public static Parser<UpstreamPacket> PARSER = new UpstreamPacketProto.UpstreamPacket.1();
    public static final int RETRYINFO_FIELD_NUMBER = 13;
    public static final int SEQ_FIELD_NUMBER = 1;
    public static final int SERVICECMD_FIELD_NUMBER = 5;
    public static final int SESSIONID_FIELD_NUMBER = 12;
    public static final int TOKEN_FIELD_NUMBER = 7;
    public static final int UA_FIELD_NUMBER = 4;
    private static final UpstreamPacket defaultInstance;
    private static final long serialVersionUID = 0L;
    private int appId_;
    private int bitField0_;
    private ByteString busiBuff_;
    private UpstreamPacketProto.BusiControl busiControl_;
    private ByteString deviceInfo_;
    private ByteString extra_;
    private int flag_;
    private UpstreamPacketProto.ClientIpInfo ipInfo_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object miUid_;
    private long miUin_;
    private UpstreamPacketProto.RetryInfo retryInfo_;
    private int seq_;
    private Object serviceCmd_;
    private int sessionId_;
    private UpstreamPacketProto.TokenInfo token_;
    private Object ua_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      UpstreamPacket localUpstreamPacket = new UpstreamPacket(true);
      defaultInstance = localUpstreamPacket;
      localUpstreamPacket.initFields();
    }
    
    /* Error */
    private UpstreamPacket(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 103	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 105	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 107	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 96	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:initFields	()V
      //   18: invokestatic 113	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 6
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +769 -> 795
      //   29: aload_1
      //   30: invokevirtual 119	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+796->833, 0:+799->836, 8:+157->194, 16:+201->238, 24:+239->276, 34:+260->297, 42:+286->323, 50:+312->349, 58:+334->371, 66:+408->445, 74:+485->522, 82:+508->545, 88:+531->568, 96:+554->591, 106:+577->614, 114:+654->691, 122:+731->768
      //   176: aload_0
      //   177: aload_1
      //   178: aload 6
      //   180: aload_2
      //   181: iload 4
      //   183: invokevirtual 123	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   186: ifne -161 -> 25
      //   189: iconst_1
      //   190: istore_3
      //   191: goto -166 -> 25
      //   194: aload_0
      //   195: aload_0
      //   196: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   199: iconst_1
      //   200: ior
      //   201: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   204: aload_0
      //   205: aload_1
      //   206: invokevirtual 128	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   209: putfield 130	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:seq_	I
      //   212: goto -187 -> 25
      //   215: astore_1
      //   216: aload_1
      //   217: aload_0
      //   218: invokevirtual 134	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   221: athrow
      //   222: astore_1
      //   223: aload_0
      //   224: aload 6
      //   226: invokevirtual 140	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   229: putfield 142	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   232: aload_0
      //   233: invokevirtual 145	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:makeExtensionsImmutable	()V
      //   236: aload_1
      //   237: athrow
      //   238: aload_0
      //   239: aload_0
      //   240: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   243: iconst_2
      //   244: ior
      //   245: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   248: aload_0
      //   249: aload_1
      //   250: invokevirtual 128	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   253: putfield 147	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:appId_	I
      //   256: goto -231 -> 25
      //   259: astore_1
      //   260: new 100	com/google/protobuf/InvalidProtocolBufferException
      //   263: dup
      //   264: aload_1
      //   265: invokevirtual 151	java/io/IOException:getMessage	()Ljava/lang/String;
      //   268: invokespecial 154	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   271: aload_0
      //   272: invokevirtual 134	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   275: athrow
      //   276: aload_0
      //   277: aload_0
      //   278: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   281: iconst_4
      //   282: ior
      //   283: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   286: aload_0
      //   287: aload_1
      //   288: invokevirtual 158	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   291: putfield 160	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:miUin_	J
      //   294: goto -269 -> 25
      //   297: aload_1
      //   298: invokevirtual 164	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   301: astore 5
      //   303: aload_0
      //   304: aload_0
      //   305: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   308: bipush 8
      //   310: ior
      //   311: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   314: aload_0
      //   315: aload 5
      //   317: putfield 166	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:ua_	Ljava/lang/Object;
      //   320: goto -295 -> 25
      //   323: aload_1
      //   324: invokevirtual 164	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   327: astore 5
      //   329: aload_0
      //   330: aload_0
      //   331: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   334: bipush 16
      //   336: ior
      //   337: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   340: aload_0
      //   341: aload 5
      //   343: putfield 168	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:serviceCmd_	Ljava/lang/Object;
      //   346: goto -321 -> 25
      //   349: aload_0
      //   350: aload_0
      //   351: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   354: bipush 32
      //   356: ior
      //   357: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   360: aload_0
      //   361: aload_1
      //   362: invokevirtual 164	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   365: putfield 170	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:deviceInfo_	Lcom/google/protobuf/ByteString;
      //   368: goto -343 -> 25
      //   371: aload_0
      //   372: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   375: bipush 64
      //   377: iand
      //   378: bipush 64
      //   380: if_icmpne +447 -> 827
      //   383: aload_0
      //   384: getfield 172	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:token_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;
      //   387: invokevirtual 178	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:toBuilder	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
      //   390: astore 5
      //   392: aload_0
      //   393: aload_1
      //   394: getstatic 179	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo:PARSER	Lcom/google/protobuf/Parser;
      //   397: aload_2
      //   398: invokevirtual 183	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   401: checkcast 174	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo
      //   404: putfield 172	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:token_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;
      //   407: aload 5
      //   409: ifnull +22 -> 431
      //   412: aload 5
      //   414: aload_0
      //   415: getfield 172	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:token_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;
      //   418: invokevirtual 189	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;
      //   421: pop
      //   422: aload_0
      //   423: aload 5
      //   425: invokevirtual 193	com/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;
      //   428: putfield 172	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:token_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;
      //   431: aload_0
      //   432: aload_0
      //   433: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   436: bipush 64
      //   438: ior
      //   439: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   442: goto -417 -> 25
      //   445: aload_0
      //   446: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   449: sipush 128
      //   452: iand
      //   453: sipush 128
      //   456: if_icmpne +365 -> 821
      //   459: aload_0
      //   460: getfield 195	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:ipInfo_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;
      //   463: invokevirtual 200	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:toBuilder	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
      //   466: astore 5
      //   468: aload_0
      //   469: aload_1
      //   470: getstatic 201	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo:PARSER	Lcom/google/protobuf/Parser;
      //   473: aload_2
      //   474: invokevirtual 183	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   477: checkcast 197	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo
      //   480: putfield 195	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:ipInfo_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;
      //   483: aload 5
      //   485: ifnull +22 -> 507
      //   488: aload 5
      //   490: aload_0
      //   491: getfield 195	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:ipInfo_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;
      //   494: invokevirtual 206	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
      //   497: pop
      //   498: aload_0
      //   499: aload 5
      //   501: invokevirtual 209	com/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;
      //   504: putfield 195	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:ipInfo_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;
      //   507: aload_0
      //   508: aload_0
      //   509: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   512: sipush 128
      //   515: ior
      //   516: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   519: goto -494 -> 25
      //   522: aload_0
      //   523: aload_0
      //   524: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   527: sipush 256
      //   530: ior
      //   531: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   534: aload_0
      //   535: aload_1
      //   536: invokevirtual 164	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   539: putfield 211	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:busiBuff_	Lcom/google/protobuf/ByteString;
      //   542: goto -517 -> 25
      //   545: aload_0
      //   546: aload_0
      //   547: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   550: sipush 512
      //   553: ior
      //   554: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   557: aload_0
      //   558: aload_1
      //   559: invokevirtual 164	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   562: putfield 213	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:extra_	Lcom/google/protobuf/ByteString;
      //   565: goto -540 -> 25
      //   568: aload_0
      //   569: aload_0
      //   570: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   573: sipush 1024
      //   576: ior
      //   577: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   580: aload_0
      //   581: aload_1
      //   582: invokevirtual 128	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   585: putfield 215	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:flag_	I
      //   588: goto -563 -> 25
      //   591: aload_0
      //   592: aload_0
      //   593: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   596: sipush 2048
      //   599: ior
      //   600: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   603: aload_0
      //   604: aload_1
      //   605: invokevirtual 128	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   608: putfield 217	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:sessionId_	I
      //   611: goto -586 -> 25
      //   614: aload_0
      //   615: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   618: sipush 4096
      //   621: iand
      //   622: sipush 4096
      //   625: if_icmpne +190 -> 815
      //   628: aload_0
      //   629: getfield 219	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:retryInfo_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;
      //   632: invokevirtual 224	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:toBuilder	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
      //   635: astore 5
      //   637: aload_0
      //   638: aload_1
      //   639: getstatic 225	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo:PARSER	Lcom/google/protobuf/Parser;
      //   642: aload_2
      //   643: invokevirtual 183	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   646: checkcast 221	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo
      //   649: putfield 219	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:retryInfo_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;
      //   652: aload 5
      //   654: ifnull +22 -> 676
      //   657: aload 5
      //   659: aload_0
      //   660: getfield 219	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:retryInfo_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;
      //   663: invokevirtual 230	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;
      //   666: pop
      //   667: aload_0
      //   668: aload 5
      //   670: invokevirtual 233	com/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;
      //   673: putfield 219	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:retryInfo_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;
      //   676: aload_0
      //   677: aload_0
      //   678: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   681: sipush 4096
      //   684: ior
      //   685: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   688: goto -663 -> 25
      //   691: aload_0
      //   692: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   695: sipush 8192
      //   698: iand
      //   699: sipush 8192
      //   702: if_icmpne +107 -> 809
      //   705: aload_0
      //   706: getfield 235	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:busiControl_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   709: invokevirtual 240	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:toBuilder	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;
      //   712: astore 5
      //   714: aload_0
      //   715: aload_1
      //   716: getstatic 241	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:PARSER	Lcom/google/protobuf/Parser;
      //   719: aload_2
      //   720: invokevirtual 183	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   723: checkcast 237	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl
      //   726: putfield 235	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:busiControl_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   729: aload 5
      //   731: ifnull +22 -> 753
      //   734: aload 5
      //   736: aload_0
      //   737: getfield 235	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:busiControl_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   740: invokevirtual 246	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;
      //   743: pop
      //   744: aload_0
      //   745: aload 5
      //   747: invokevirtual 249	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   750: putfield 235	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:busiControl_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   753: aload_0
      //   754: aload_0
      //   755: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   758: sipush 8192
      //   761: ior
      //   762: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   765: goto -740 -> 25
      //   768: aload_1
      //   769: invokevirtual 164	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   772: astore 5
      //   774: aload_0
      //   775: aload_0
      //   776: getfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   779: sipush 16384
      //   782: ior
      //   783: putfield 125	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:bitField0_	I
      //   786: aload_0
      //   787: aload 5
      //   789: putfield 251	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:miUid_	Ljava/lang/Object;
      //   792: goto -767 -> 25
      //   795: aload_0
      //   796: aload 6
      //   798: invokevirtual 140	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   801: putfield 142	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   804: aload_0
      //   805: invokevirtual 145	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:makeExtensionsImmutable	()V
      //   808: return
      //   809: aconst_null
      //   810: astore 5
      //   812: goto -98 -> 714
      //   815: aconst_null
      //   816: astore 5
      //   818: goto -181 -> 637
      //   821: aconst_null
      //   822: astore 5
      //   824: goto -356 -> 468
      //   827: aconst_null
      //   828: astore 5
      //   830: goto -438 -> 392
      //   833: goto -657 -> 176
      //   836: iconst_1
      //   837: istore_3
      //   838: goto -813 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	841	0	this	UpstreamPacket
      //   0	841	1	paramCodedInputStream	CodedInputStream
      //   0	841	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	814	3	i	int
      //   33	149	4	j	int
      //   301	528	5	localObject	Object
      //   21	776	6	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	215	com/google/protobuf/InvalidProtocolBufferException
      //   176	189	215	com/google/protobuf/InvalidProtocolBufferException
      //   194	212	215	com/google/protobuf/InvalidProtocolBufferException
      //   238	256	215	com/google/protobuf/InvalidProtocolBufferException
      //   276	294	215	com/google/protobuf/InvalidProtocolBufferException
      //   297	320	215	com/google/protobuf/InvalidProtocolBufferException
      //   323	346	215	com/google/protobuf/InvalidProtocolBufferException
      //   349	368	215	com/google/protobuf/InvalidProtocolBufferException
      //   371	392	215	com/google/protobuf/InvalidProtocolBufferException
      //   392	407	215	com/google/protobuf/InvalidProtocolBufferException
      //   412	431	215	com/google/protobuf/InvalidProtocolBufferException
      //   431	442	215	com/google/protobuf/InvalidProtocolBufferException
      //   445	468	215	com/google/protobuf/InvalidProtocolBufferException
      //   468	483	215	com/google/protobuf/InvalidProtocolBufferException
      //   488	507	215	com/google/protobuf/InvalidProtocolBufferException
      //   507	519	215	com/google/protobuf/InvalidProtocolBufferException
      //   522	542	215	com/google/protobuf/InvalidProtocolBufferException
      //   545	565	215	com/google/protobuf/InvalidProtocolBufferException
      //   568	588	215	com/google/protobuf/InvalidProtocolBufferException
      //   591	611	215	com/google/protobuf/InvalidProtocolBufferException
      //   614	637	215	com/google/protobuf/InvalidProtocolBufferException
      //   637	652	215	com/google/protobuf/InvalidProtocolBufferException
      //   657	676	215	com/google/protobuf/InvalidProtocolBufferException
      //   676	688	215	com/google/protobuf/InvalidProtocolBufferException
      //   691	714	215	com/google/protobuf/InvalidProtocolBufferException
      //   714	729	215	com/google/protobuf/InvalidProtocolBufferException
      //   734	753	215	com/google/protobuf/InvalidProtocolBufferException
      //   753	765	215	com/google/protobuf/InvalidProtocolBufferException
      //   768	792	215	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	222	finally
      //   176	189	222	finally
      //   194	212	222	finally
      //   216	222	222	finally
      //   238	256	222	finally
      //   260	276	222	finally
      //   276	294	222	finally
      //   297	320	222	finally
      //   323	346	222	finally
      //   349	368	222	finally
      //   371	392	222	finally
      //   392	407	222	finally
      //   412	431	222	finally
      //   431	442	222	finally
      //   445	468	222	finally
      //   468	483	222	finally
      //   488	507	222	finally
      //   507	519	222	finally
      //   522	542	222	finally
      //   545	565	222	finally
      //   568	588	222	finally
      //   591	611	222	finally
      //   614	637	222	finally
      //   637	652	222	finally
      //   657	676	222	finally
      //   676	688	222	finally
      //   691	714	222	finally
      //   714	729	222	finally
      //   734	753	222	finally
      //   753	765	222	finally
      //   768	792	222	finally
      //   29	35	259	java/io/IOException
      //   176	189	259	java/io/IOException
      //   194	212	259	java/io/IOException
      //   238	256	259	java/io/IOException
      //   276	294	259	java/io/IOException
      //   297	320	259	java/io/IOException
      //   323	346	259	java/io/IOException
      //   349	368	259	java/io/IOException
      //   371	392	259	java/io/IOException
      //   392	407	259	java/io/IOException
      //   412	431	259	java/io/IOException
      //   431	442	259	java/io/IOException
      //   445	468	259	java/io/IOException
      //   468	483	259	java/io/IOException
      //   488	507	259	java/io/IOException
      //   507	519	259	java/io/IOException
      //   522	542	259	java/io/IOException
      //   545	565	259	java/io/IOException
      //   568	588	259	java/io/IOException
      //   591	611	259	java/io/IOException
      //   614	637	259	java/io/IOException
      //   637	652	259	java/io/IOException
      //   657	676	259	java/io/IOException
      //   676	688	259	java/io/IOException
      //   691	714	259	java/io/IOException
      //   714	729	259	java/io/IOException
      //   734	753	259	java/io/IOException
      //   753	765	259	java/io/IOException
      //   768	792	259	java/io/IOException
    }
    
    private UpstreamPacket(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private UpstreamPacket(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static UpstreamPacket getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_UpstreamPacket_descriptor;
    }
    
    private void initFields()
    {
      this.seq_ = 0;
      this.appId_ = 0;
      this.miUin_ = 0L;
      this.ua_ = "";
      this.serviceCmd_ = "";
      this.deviceInfo_ = ByteString.EMPTY;
      this.token_ = UpstreamPacketProto.TokenInfo.getDefaultInstance();
      this.ipInfo_ = UpstreamPacketProto.ClientIpInfo.getDefaultInstance();
      this.busiBuff_ = ByteString.EMPTY;
      this.extra_ = ByteString.EMPTY;
      this.flag_ = 0;
      this.sessionId_ = 0;
      this.retryInfo_ = UpstreamPacketProto.RetryInfo.getDefaultInstance();
      this.busiControl_ = UpstreamPacketProto.BusiControl.getDefaultInstance();
      this.miUid_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(UpstreamPacket paramUpstreamPacket)
    {
      return newBuilder().mergeFrom(paramUpstreamPacket);
    }
    
    public static UpstreamPacket parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (UpstreamPacket)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static UpstreamPacket parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (UpstreamPacket)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static UpstreamPacket parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (UpstreamPacket)PARSER.parseFrom(paramByteString);
    }
    
    public static UpstreamPacket parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (UpstreamPacket)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static UpstreamPacket parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (UpstreamPacket)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static UpstreamPacket parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (UpstreamPacket)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static UpstreamPacket parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (UpstreamPacket)PARSER.parseFrom(paramInputStream);
    }
    
    public static UpstreamPacket parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (UpstreamPacket)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static UpstreamPacket parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (UpstreamPacket)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static UpstreamPacket parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (UpstreamPacket)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getAppId()
    {
      return this.appId_;
    }
    
    public final ByteString getBusiBuff()
    {
      return this.busiBuff_;
    }
    
    public final UpstreamPacketProto.BusiControl getBusiControl()
    {
      return this.busiControl_;
    }
    
    public final UpstreamPacketProto.BusiControlOrBuilder getBusiControlOrBuilder()
    {
      return this.busiControl_;
    }
    
    public final UpstreamPacket getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final ByteString getDeviceInfo()
    {
      return this.deviceInfo_;
    }
    
    public final ByteString getExtra()
    {
      return this.extra_;
    }
    
    public final int getFlag()
    {
      return this.flag_;
    }
    
    public final UpstreamPacketProto.ClientIpInfo getIpInfo()
    {
      return this.ipInfo_;
    }
    
    public final UpstreamPacketProto.ClientIpInfoOrBuilder getIpInfoOrBuilder()
    {
      return this.ipInfo_;
    }
    
    public final String getMiUid()
    {
      Object localObject = this.miUid_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.miUid_ = str;
      }
      return str;
    }
    
    public final ByteString getMiUidBytes()
    {
      Object localObject = this.miUid_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.miUid_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getMiUin()
    {
      return this.miUin_;
    }
    
    public final Parser<UpstreamPacket> getParserForType()
    {
      return PARSER;
    }
    
    public final UpstreamPacketProto.RetryInfo getRetryInfo()
    {
      return this.retryInfo_;
    }
    
    public final UpstreamPacketProto.RetryInfoOrBuilder getRetryInfoOrBuilder()
    {
      return this.retryInfo_;
    }
    
    public final int getSeq()
    {
      return this.seq_;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt32Size(1, this.seq_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt32Size(2, this.appId_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt64Size(3, this.miUin_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getUaBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getServiceCmdBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, this.deviceInfo_);
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeMessageSize(7, this.token_);
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeMessageSize(8, this.ipInfo_);
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, this.busiBuff_);
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, this.extra_);
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeUInt32Size(11, this.flag_);
      }
      i = j;
      if ((this.bitField0_ & 0x800) == 2048) {
        i = j + CodedOutputStream.computeUInt32Size(12, this.sessionId_);
      }
      j = i;
      if ((this.bitField0_ & 0x1000) == 4096) {
        j = i + CodedOutputStream.computeMessageSize(13, this.retryInfo_);
      }
      i = j;
      if ((this.bitField0_ & 0x2000) == 8192) {
        i = j + CodedOutputStream.computeMessageSize(14, this.busiControl_);
      }
      j = i;
      if ((this.bitField0_ & 0x4000) == 16384) {
        j = i + CodedOutputStream.computeBytesSize(15, getMiUidBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getServiceCmd()
    {
      Object localObject = this.serviceCmd_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serviceCmd_ = str;
      }
      return str;
    }
    
    public final ByteString getServiceCmdBytes()
    {
      Object localObject = this.serviceCmd_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serviceCmd_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getSessionId()
    {
      return this.sessionId_;
    }
    
    public final UpstreamPacketProto.TokenInfo getToken()
    {
      return this.token_;
    }
    
    public final UpstreamPacketProto.TokenInfoOrBuilder getTokenOrBuilder()
    {
      return this.token_;
    }
    
    public final String getUa()
    {
      Object localObject = this.ua_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.ua_ = str;
      }
      return str;
    }
    
    public final ByteString getUaBytes()
    {
      Object localObject = this.ua_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.ua_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAppId()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasBusiBuff()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasBusiControl()
    {
      return (this.bitField0_ & 0x2000) == 8192;
    }
    
    public final boolean hasDeviceInfo()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasExtra()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasFlag()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasIpInfo()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasMiUid()
    {
      return (this.bitField0_ & 0x4000) == 16384;
    }
    
    public final boolean hasMiUin()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasRetryInfo()
    {
      return (this.bitField0_ & 0x1000) == 4096;
    }
    
    public final boolean hasSeq()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasServiceCmd()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasSessionId()
    {
      return (this.bitField0_ & 0x800) == 2048;
    }
    
    public final boolean hasToken()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_UpstreamPacket_fieldAccessorTable.ensureFieldAccessorsInitialized(UpstreamPacket.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.seq_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.appId_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt64(3, this.miUin_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getUaBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getServiceCmdBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, this.deviceInfo_);
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeMessage(7, this.token_);
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeMessage(8, this.ipInfo_);
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, this.busiBuff_);
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, this.extra_);
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeUInt32(11, this.flag_);
      }
      if ((this.bitField0_ & 0x800) == 2048) {
        paramCodedOutputStream.writeUInt32(12, this.sessionId_);
      }
      if ((this.bitField0_ & 0x1000) == 4096) {
        paramCodedOutputStream.writeMessage(13, this.retryInfo_);
      }
      if ((this.bitField0_ & 0x2000) == 8192) {
        paramCodedOutputStream.writeMessage(14, this.busiControl_);
      }
      if ((this.bitField0_ & 0x4000) == 16384) {
        paramCodedOutputStream.writeBytes(15, getMiUidBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements UpstreamPacketProto.UpstreamPacketOrBuilder
    {
      private int appId_;
      private int bitField0_;
      private ByteString busiBuff_ = ByteString.EMPTY;
      private SingleFieldBuilder<UpstreamPacketProto.BusiControl, UpstreamPacketProto.BusiControl.Builder, UpstreamPacketProto.BusiControlOrBuilder> busiControlBuilder_;
      private UpstreamPacketProto.BusiControl busiControl_ = UpstreamPacketProto.BusiControl.getDefaultInstance();
      private ByteString deviceInfo_ = ByteString.EMPTY;
      private ByteString extra_ = ByteString.EMPTY;
      private int flag_;
      private SingleFieldBuilder<UpstreamPacketProto.ClientIpInfo, UpstreamPacketProto.ClientIpInfo.Builder, UpstreamPacketProto.ClientIpInfoOrBuilder> ipInfoBuilder_;
      private UpstreamPacketProto.ClientIpInfo ipInfo_ = UpstreamPacketProto.ClientIpInfo.getDefaultInstance();
      private Object miUid_ = "";
      private long miUin_;
      private SingleFieldBuilder<UpstreamPacketProto.RetryInfo, UpstreamPacketProto.RetryInfo.Builder, UpstreamPacketProto.RetryInfoOrBuilder> retryInfoBuilder_;
      private UpstreamPacketProto.RetryInfo retryInfo_ = UpstreamPacketProto.RetryInfo.getDefaultInstance();
      private int seq_;
      private Object serviceCmd_ = "";
      private int sessionId_;
      private SingleFieldBuilder<UpstreamPacketProto.TokenInfo, UpstreamPacketProto.TokenInfo.Builder, UpstreamPacketProto.TokenInfoOrBuilder> tokenBuilder_;
      private UpstreamPacketProto.TokenInfo token_ = UpstreamPacketProto.TokenInfo.getDefaultInstance();
      private Object ua_ = "";
      
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
      
      private SingleFieldBuilder<UpstreamPacketProto.BusiControl, UpstreamPacketProto.BusiControl.Builder, UpstreamPacketProto.BusiControlOrBuilder> getBusiControlFieldBuilder()
      {
        if (this.busiControlBuilder_ == null)
        {
          this.busiControlBuilder_ = new SingleFieldBuilder(getBusiControl(), getParentForChildren(), isClean());
          this.busiControl_ = null;
        }
        return this.busiControlBuilder_;
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_UpstreamPacket_descriptor;
      }
      
      private SingleFieldBuilder<UpstreamPacketProto.ClientIpInfo, UpstreamPacketProto.ClientIpInfo.Builder, UpstreamPacketProto.ClientIpInfoOrBuilder> getIpInfoFieldBuilder()
      {
        if (this.ipInfoBuilder_ == null)
        {
          this.ipInfoBuilder_ = new SingleFieldBuilder(getIpInfo(), getParentForChildren(), isClean());
          this.ipInfo_ = null;
        }
        return this.ipInfoBuilder_;
      }
      
      private SingleFieldBuilder<UpstreamPacketProto.RetryInfo, UpstreamPacketProto.RetryInfo.Builder, UpstreamPacketProto.RetryInfoOrBuilder> getRetryInfoFieldBuilder()
      {
        if (this.retryInfoBuilder_ == null)
        {
          this.retryInfoBuilder_ = new SingleFieldBuilder(getRetryInfo(), getParentForChildren(), isClean());
          this.retryInfo_ = null;
        }
        return this.retryInfoBuilder_;
      }
      
      private SingleFieldBuilder<UpstreamPacketProto.TokenInfo, UpstreamPacketProto.TokenInfo.Builder, UpstreamPacketProto.TokenInfoOrBuilder> getTokenFieldBuilder()
      {
        if (this.tokenBuilder_ == null)
        {
          this.tokenBuilder_ = new SingleFieldBuilder(getToken(), getParentForChildren(), isClean());
          this.token_ = null;
        }
        return this.tokenBuilder_;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (UpstreamPacketProto.UpstreamPacket.alwaysUseFieldBuilders)
        {
          getTokenFieldBuilder();
          getIpInfoFieldBuilder();
          getRetryInfoFieldBuilder();
          getBusiControlFieldBuilder();
        }
      }
      
      public final UpstreamPacketProto.UpstreamPacket build()
      {
        UpstreamPacketProto.UpstreamPacket localUpstreamPacket = buildPartial();
        if (!localUpstreamPacket.isInitialized()) {
          throw newUninitializedMessageException(localUpstreamPacket);
        }
        return localUpstreamPacket;
      }
      
      public final UpstreamPacketProto.UpstreamPacket buildPartial()
      {
        int j = 1;
        UpstreamPacketProto.UpstreamPacket localUpstreamPacket = new UpstreamPacketProto.UpstreamPacket(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          UpstreamPacketProto.UpstreamPacket.access$702(localUpstreamPacket, this.seq_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          UpstreamPacketProto.UpstreamPacket.access$802(localUpstreamPacket, this.appId_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          UpstreamPacketProto.UpstreamPacket.access$902(localUpstreamPacket, this.miUin_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          UpstreamPacketProto.UpstreamPacket.access$1002(localUpstreamPacket, this.ua_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          UpstreamPacketProto.UpstreamPacket.access$1102(localUpstreamPacket, this.serviceCmd_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          UpstreamPacketProto.UpstreamPacket.access$1202(localUpstreamPacket, this.deviceInfo_);
          if ((k & 0x40) == 64) {}
          for (j = i | 0x40;; j = i)
          {
            if (this.tokenBuilder_ == null)
            {
              UpstreamPacketProto.UpstreamPacket.access$1302(localUpstreamPacket, this.token_);
              i = j;
              if ((k & 0x80) == 128) {
                i = j | 0x80;
              }
              if (this.ipInfoBuilder_ != null) {
                break label476;
              }
              UpstreamPacketProto.UpstreamPacket.access$1402(localUpstreamPacket, this.ipInfo_);
              label226:
              j = i;
              if ((k & 0x100) == 256) {
                j = i | 0x100;
              }
              UpstreamPacketProto.UpstreamPacket.access$1502(localUpstreamPacket, this.busiBuff_);
              i = j;
              if ((k & 0x200) == 512) {
                i = j | 0x200;
              }
              UpstreamPacketProto.UpstreamPacket.access$1602(localUpstreamPacket, this.extra_);
              j = i;
              if ((k & 0x400) == 1024) {
                j = i | 0x400;
              }
              UpstreamPacketProto.UpstreamPacket.access$1702(localUpstreamPacket, this.flag_);
              i = j;
              if ((k & 0x800) == 2048) {
                i = j | 0x800;
              }
              UpstreamPacketProto.UpstreamPacket.access$1802(localUpstreamPacket, this.sessionId_);
              j = i;
              if ((k & 0x1000) == 4096) {
                j = i | 0x1000;
              }
              if (this.retryInfoBuilder_ != null) {
                break label495;
              }
              UpstreamPacketProto.UpstreamPacket.access$1902(localUpstreamPacket, this.retryInfo_);
              label378:
              i = j;
              if ((k & 0x2000) == 8192) {
                i = j | 0x2000;
              }
              if (this.busiControlBuilder_ != null) {
                break label514;
              }
              UpstreamPacketProto.UpstreamPacket.access$2002(localUpstreamPacket, this.busiControl_);
            }
            for (;;)
            {
              j = i;
              if ((k & 0x4000) == 16384) {
                j = i | 0x4000;
              }
              UpstreamPacketProto.UpstreamPacket.access$2102(localUpstreamPacket, this.miUid_);
              UpstreamPacketProto.UpstreamPacket.access$2202(localUpstreamPacket, j);
              onBuilt();
              return localUpstreamPacket;
              UpstreamPacketProto.UpstreamPacket.access$1302(localUpstreamPacket, (UpstreamPacketProto.TokenInfo)this.tokenBuilder_.build());
              break;
              label476:
              UpstreamPacketProto.UpstreamPacket.access$1402(localUpstreamPacket, (UpstreamPacketProto.ClientIpInfo)this.ipInfoBuilder_.build());
              break label226;
              label495:
              UpstreamPacketProto.UpstreamPacket.access$1902(localUpstreamPacket, (UpstreamPacketProto.RetryInfo)this.retryInfoBuilder_.build());
              break label378;
              label514:
              UpstreamPacketProto.UpstreamPacket.access$2002(localUpstreamPacket, (UpstreamPacketProto.BusiControl)this.busiControlBuilder_.build());
            }
          }
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.seq_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.appId_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.miUin_ = 0L;
        this.bitField0_ &= 0xFFFFFFFB;
        this.ua_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.serviceCmd_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.deviceInfo_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFDF;
        if (this.tokenBuilder_ == null)
        {
          this.token_ = UpstreamPacketProto.TokenInfo.getDefaultInstance();
          this.bitField0_ &= 0xFFFFFFBF;
          if (this.ipInfoBuilder_ != null) {
            break label311;
          }
          this.ipInfo_ = UpstreamPacketProto.ClientIpInfo.getDefaultInstance();
          label144:
          this.bitField0_ &= 0xFF7F;
          this.busiBuff_ = ByteString.EMPTY;
          this.bitField0_ &= 0xFEFF;
          this.extra_ = ByteString.EMPTY;
          this.bitField0_ &= 0xFDFF;
          this.flag_ = 0;
          this.bitField0_ &= 0xFBFF;
          this.sessionId_ = 0;
          this.bitField0_ &= 0xF7FF;
          if (this.retryInfoBuilder_ != null) {
            break label322;
          }
          this.retryInfo_ = UpstreamPacketProto.RetryInfo.getDefaultInstance();
          label242:
          this.bitField0_ &= 0xEFFF;
          if (this.busiControlBuilder_ != null) {
            break label333;
          }
          this.busiControl_ = UpstreamPacketProto.BusiControl.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xDFFF;
          this.miUid_ = "";
          this.bitField0_ &= 0xBFFF;
          return this;
          this.tokenBuilder_.clear();
          break;
          label311:
          this.ipInfoBuilder_.clear();
          break label144;
          label322:
          this.retryInfoBuilder_.clear();
          break label242;
          label333:
          this.busiControlBuilder_.clear();
        }
      }
      
      public final Builder clearAppId()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.appId_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearBusiBuff()
      {
        this.bitField0_ &= 0xFEFF;
        this.busiBuff_ = UpstreamPacketProto.UpstreamPacket.getDefaultInstance().getBusiBuff();
        onChanged();
        return this;
      }
      
      public final Builder clearBusiControl()
      {
        if (this.busiControlBuilder_ == null)
        {
          this.busiControl_ = UpstreamPacketProto.BusiControl.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xDFFF;
          return this;
          this.busiControlBuilder_.clear();
        }
      }
      
      public final Builder clearDeviceInfo()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.deviceInfo_ = UpstreamPacketProto.UpstreamPacket.getDefaultInstance().getDeviceInfo();
        onChanged();
        return this;
      }
      
      public final Builder clearExtra()
      {
        this.bitField0_ &= 0xFDFF;
        this.extra_ = UpstreamPacketProto.UpstreamPacket.getDefaultInstance().getExtra();
        onChanged();
        return this;
      }
      
      public final Builder clearFlag()
      {
        this.bitField0_ &= 0xFBFF;
        this.flag_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearIpInfo()
      {
        if (this.ipInfoBuilder_ == null)
        {
          this.ipInfo_ = UpstreamPacketProto.ClientIpInfo.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFF7F;
          return this;
          this.ipInfoBuilder_.clear();
        }
      }
      
      public final Builder clearMiUid()
      {
        this.bitField0_ &= 0xBFFF;
        this.miUid_ = UpstreamPacketProto.UpstreamPacket.getDefaultInstance().getMiUid();
        onChanged();
        return this;
      }
      
      public final Builder clearMiUin()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.miUin_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearRetryInfo()
      {
        if (this.retryInfoBuilder_ == null)
        {
          this.retryInfo_ = UpstreamPacketProto.RetryInfo.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xEFFF;
          return this;
          this.retryInfoBuilder_.clear();
        }
      }
      
      public final Builder clearSeq()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.seq_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearServiceCmd()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.serviceCmd_ = UpstreamPacketProto.UpstreamPacket.getDefaultInstance().getServiceCmd();
        onChanged();
        return this;
      }
      
      public final Builder clearSessionId()
      {
        this.bitField0_ &= 0xF7FF;
        this.sessionId_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearToken()
      {
        if (this.tokenBuilder_ == null)
        {
          this.token_ = UpstreamPacketProto.TokenInfo.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFBF;
          return this;
          this.tokenBuilder_.clear();
        }
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.ua_ = UpstreamPacketProto.UpstreamPacket.getDefaultInstance().getUa();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getAppId()
      {
        return this.appId_;
      }
      
      public final ByteString getBusiBuff()
      {
        return this.busiBuff_;
      }
      
      public final UpstreamPacketProto.BusiControl getBusiControl()
      {
        if (this.busiControlBuilder_ == null) {
          return this.busiControl_;
        }
        return (UpstreamPacketProto.BusiControl)this.busiControlBuilder_.getMessage();
      }
      
      public final UpstreamPacketProto.BusiControl.Builder getBusiControlBuilder()
      {
        this.bitField0_ |= 0x2000;
        onChanged();
        return (UpstreamPacketProto.BusiControl.Builder)getBusiControlFieldBuilder().getBuilder();
      }
      
      public final UpstreamPacketProto.BusiControlOrBuilder getBusiControlOrBuilder()
      {
        if (this.busiControlBuilder_ != null) {
          return (UpstreamPacketProto.BusiControlOrBuilder)this.busiControlBuilder_.getMessageOrBuilder();
        }
        return this.busiControl_;
      }
      
      public final UpstreamPacketProto.UpstreamPacket getDefaultInstanceForType()
      {
        return UpstreamPacketProto.UpstreamPacket.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_UpstreamPacket_descriptor;
      }
      
      public final ByteString getDeviceInfo()
      {
        return this.deviceInfo_;
      }
      
      public final ByteString getExtra()
      {
        return this.extra_;
      }
      
      public final int getFlag()
      {
        return this.flag_;
      }
      
      public final UpstreamPacketProto.ClientIpInfo getIpInfo()
      {
        if (this.ipInfoBuilder_ == null) {
          return this.ipInfo_;
        }
        return (UpstreamPacketProto.ClientIpInfo)this.ipInfoBuilder_.getMessage();
      }
      
      public final UpstreamPacketProto.ClientIpInfo.Builder getIpInfoBuilder()
      {
        this.bitField0_ |= 0x80;
        onChanged();
        return (UpstreamPacketProto.ClientIpInfo.Builder)getIpInfoFieldBuilder().getBuilder();
      }
      
      public final UpstreamPacketProto.ClientIpInfoOrBuilder getIpInfoOrBuilder()
      {
        if (this.ipInfoBuilder_ != null) {
          return (UpstreamPacketProto.ClientIpInfoOrBuilder)this.ipInfoBuilder_.getMessageOrBuilder();
        }
        return this.ipInfo_;
      }
      
      public final String getMiUid()
      {
        Object localObject = this.miUid_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.miUid_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getMiUidBytes()
      {
        Object localObject = this.miUid_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.miUid_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getMiUin()
      {
        return this.miUin_;
      }
      
      public final UpstreamPacketProto.RetryInfo getRetryInfo()
      {
        if (this.retryInfoBuilder_ == null) {
          return this.retryInfo_;
        }
        return (UpstreamPacketProto.RetryInfo)this.retryInfoBuilder_.getMessage();
      }
      
      public final UpstreamPacketProto.RetryInfo.Builder getRetryInfoBuilder()
      {
        this.bitField0_ |= 0x1000;
        onChanged();
        return (UpstreamPacketProto.RetryInfo.Builder)getRetryInfoFieldBuilder().getBuilder();
      }
      
      public final UpstreamPacketProto.RetryInfoOrBuilder getRetryInfoOrBuilder()
      {
        if (this.retryInfoBuilder_ != null) {
          return (UpstreamPacketProto.RetryInfoOrBuilder)this.retryInfoBuilder_.getMessageOrBuilder();
        }
        return this.retryInfo_;
      }
      
      public final int getSeq()
      {
        return this.seq_;
      }
      
      public final String getServiceCmd()
      {
        Object localObject = this.serviceCmd_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serviceCmd_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServiceCmdBytes()
      {
        Object localObject = this.serviceCmd_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serviceCmd_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getSessionId()
      {
        return this.sessionId_;
      }
      
      public final UpstreamPacketProto.TokenInfo getToken()
      {
        if (this.tokenBuilder_ == null) {
          return this.token_;
        }
        return (UpstreamPacketProto.TokenInfo)this.tokenBuilder_.getMessage();
      }
      
      public final UpstreamPacketProto.TokenInfo.Builder getTokenBuilder()
      {
        this.bitField0_ |= 0x40;
        onChanged();
        return (UpstreamPacketProto.TokenInfo.Builder)getTokenFieldBuilder().getBuilder();
      }
      
      public final UpstreamPacketProto.TokenInfoOrBuilder getTokenOrBuilder()
      {
        if (this.tokenBuilder_ != null) {
          return (UpstreamPacketProto.TokenInfoOrBuilder)this.tokenBuilder_.getMessageOrBuilder();
        }
        return this.token_;
      }
      
      public final String getUa()
      {
        Object localObject = this.ua_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.ua_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getUaBytes()
      {
        Object localObject = this.ua_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.ua_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasAppId()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasBusiBuff()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasBusiControl()
      {
        return (this.bitField0_ & 0x2000) == 8192;
      }
      
      public final boolean hasDeviceInfo()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasExtra()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasFlag()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasIpInfo()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasMiUid()
      {
        return (this.bitField0_ & 0x4000) == 16384;
      }
      
      public final boolean hasMiUin()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasRetryInfo()
      {
        return (this.bitField0_ & 0x1000) == 4096;
      }
      
      public final boolean hasSeq()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasServiceCmd()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasSessionId()
      {
        return (this.bitField0_ & 0x800) == 2048;
      }
      
      public final boolean hasToken()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return UpstreamPacketProto.internal_static_com_mi_milink_sdk_proto_UpstreamPacket_fieldAccessorTable.ensureFieldAccessorsInitialized(UpstreamPacketProto.UpstreamPacket.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return true;
      }
      
      public final Builder mergeBusiControl(UpstreamPacketProto.BusiControl paramBusiControl)
      {
        if (this.busiControlBuilder_ == null) {
          if (((this.bitField0_ & 0x2000) == 8192) && (this.busiControl_ != UpstreamPacketProto.BusiControl.getDefaultInstance()))
          {
            this.busiControl_ = UpstreamPacketProto.BusiControl.newBuilder(this.busiControl_).mergeFrom(paramBusiControl).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x2000;
          return this;
          this.busiControl_ = paramBusiControl;
          break;
          this.busiControlBuilder_.mergeFrom(paramBusiControl);
        }
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 455	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 461 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 324	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 464	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 324	com/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
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
        if ((paramMessage instanceof UpstreamPacketProto.UpstreamPacket)) {
          return mergeFrom((UpstreamPacketProto.UpstreamPacket)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(UpstreamPacketProto.UpstreamPacket paramUpstreamPacket)
      {
        if (paramUpstreamPacket == UpstreamPacketProto.UpstreamPacket.getDefaultInstance()) {
          return this;
        }
        if (paramUpstreamPacket.hasSeq()) {
          setSeq(paramUpstreamPacket.getSeq());
        }
        if (paramUpstreamPacket.hasAppId()) {
          setAppId(paramUpstreamPacket.getAppId());
        }
        if (paramUpstreamPacket.hasMiUin()) {
          setMiUin(paramUpstreamPacket.getMiUin());
        }
        if (paramUpstreamPacket.hasUa())
        {
          this.bitField0_ |= 0x8;
          this.ua_ = paramUpstreamPacket.ua_;
          onChanged();
        }
        if (paramUpstreamPacket.hasServiceCmd())
        {
          this.bitField0_ |= 0x10;
          this.serviceCmd_ = paramUpstreamPacket.serviceCmd_;
          onChanged();
        }
        if (paramUpstreamPacket.hasDeviceInfo()) {
          setDeviceInfo(paramUpstreamPacket.getDeviceInfo());
        }
        if (paramUpstreamPacket.hasToken()) {
          mergeToken(paramUpstreamPacket.getToken());
        }
        if (paramUpstreamPacket.hasIpInfo()) {
          mergeIpInfo(paramUpstreamPacket.getIpInfo());
        }
        if (paramUpstreamPacket.hasBusiBuff()) {
          setBusiBuff(paramUpstreamPacket.getBusiBuff());
        }
        if (paramUpstreamPacket.hasExtra()) {
          setExtra(paramUpstreamPacket.getExtra());
        }
        if (paramUpstreamPacket.hasFlag()) {
          setFlag(paramUpstreamPacket.getFlag());
        }
        if (paramUpstreamPacket.hasSessionId()) {
          setSessionId(paramUpstreamPacket.getSessionId());
        }
        if (paramUpstreamPacket.hasRetryInfo()) {
          mergeRetryInfo(paramUpstreamPacket.getRetryInfo());
        }
        if (paramUpstreamPacket.hasBusiControl()) {
          mergeBusiControl(paramUpstreamPacket.getBusiControl());
        }
        if (paramUpstreamPacket.hasMiUid())
        {
          this.bitField0_ |= 0x4000;
          this.miUid_ = paramUpstreamPacket.miUid_;
          onChanged();
        }
        mergeUnknownFields(paramUpstreamPacket.getUnknownFields());
        return this;
      }
      
      public final Builder mergeIpInfo(UpstreamPacketProto.ClientIpInfo paramClientIpInfo)
      {
        if (this.ipInfoBuilder_ == null) {
          if (((this.bitField0_ & 0x80) == 128) && (this.ipInfo_ != UpstreamPacketProto.ClientIpInfo.getDefaultInstance()))
          {
            this.ipInfo_ = UpstreamPacketProto.ClientIpInfo.newBuilder(this.ipInfo_).mergeFrom(paramClientIpInfo).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x80;
          return this;
          this.ipInfo_ = paramClientIpInfo;
          break;
          this.ipInfoBuilder_.mergeFrom(paramClientIpInfo);
        }
      }
      
      public final Builder mergeRetryInfo(UpstreamPacketProto.RetryInfo paramRetryInfo)
      {
        if (this.retryInfoBuilder_ == null) {
          if (((this.bitField0_ & 0x1000) == 4096) && (this.retryInfo_ != UpstreamPacketProto.RetryInfo.getDefaultInstance()))
          {
            this.retryInfo_ = UpstreamPacketProto.RetryInfo.newBuilder(this.retryInfo_).mergeFrom(paramRetryInfo).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x1000;
          return this;
          this.retryInfo_ = paramRetryInfo;
          break;
          this.retryInfoBuilder_.mergeFrom(paramRetryInfo);
        }
      }
      
      public final Builder mergeToken(UpstreamPacketProto.TokenInfo paramTokenInfo)
      {
        if (this.tokenBuilder_ == null) {
          if (((this.bitField0_ & 0x40) == 64) && (this.token_ != UpstreamPacketProto.TokenInfo.getDefaultInstance()))
          {
            this.token_ = UpstreamPacketProto.TokenInfo.newBuilder(this.token_).mergeFrom(paramTokenInfo).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x40;
          return this;
          this.token_ = paramTokenInfo;
          break;
          this.tokenBuilder_.mergeFrom(paramTokenInfo);
        }
      }
      
      public final Builder setAppId(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.appId_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setBusiBuff(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.busiBuff_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setBusiControl(UpstreamPacketProto.BusiControl.Builder paramBuilder)
      {
        if (this.busiControlBuilder_ == null)
        {
          this.busiControl_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2000;
          return this;
          this.busiControlBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setBusiControl(UpstreamPacketProto.BusiControl paramBusiControl)
      {
        if (this.busiControlBuilder_ == null)
        {
          if (paramBusiControl == null) {
            throw new NullPointerException();
          }
          this.busiControl_ = paramBusiControl;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2000;
          return this;
          this.busiControlBuilder_.setMessage(paramBusiControl);
        }
      }
      
      public final Builder setDeviceInfo(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.deviceInfo_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setExtra(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.extra_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFlag(int paramInt)
      {
        this.bitField0_ |= 0x400;
        this.flag_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setIpInfo(UpstreamPacketProto.ClientIpInfo.Builder paramBuilder)
      {
        if (this.ipInfoBuilder_ == null)
        {
          this.ipInfo_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x80;
          return this;
          this.ipInfoBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setIpInfo(UpstreamPacketProto.ClientIpInfo paramClientIpInfo)
      {
        if (this.ipInfoBuilder_ == null)
        {
          if (paramClientIpInfo == null) {
            throw new NullPointerException();
          }
          this.ipInfo_ = paramClientIpInfo;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x80;
          return this;
          this.ipInfoBuilder_.setMessage(paramClientIpInfo);
        }
      }
      
      public final Builder setMiUid(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4000;
        this.miUid_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setMiUidBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4000;
        this.miUid_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setMiUin(long paramLong)
      {
        this.bitField0_ |= 0x4;
        this.miUin_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setRetryInfo(UpstreamPacketProto.RetryInfo.Builder paramBuilder)
      {
        if (this.retryInfoBuilder_ == null)
        {
          this.retryInfo_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x1000;
          return this;
          this.retryInfoBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setRetryInfo(UpstreamPacketProto.RetryInfo paramRetryInfo)
      {
        if (this.retryInfoBuilder_ == null)
        {
          if (paramRetryInfo == null) {
            throw new NullPointerException();
          }
          this.retryInfo_ = paramRetryInfo;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x1000;
          return this;
          this.retryInfoBuilder_.setMessage(paramRetryInfo);
        }
      }
      
      public final Builder setSeq(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.seq_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setServiceCmd(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.serviceCmd_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceCmdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.serviceCmd_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSessionId(int paramInt)
      {
        this.bitField0_ |= 0x800;
        this.sessionId_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setToken(UpstreamPacketProto.TokenInfo.Builder paramBuilder)
      {
        if (this.tokenBuilder_ == null)
        {
          this.token_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x40;
          return this;
          this.tokenBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setToken(UpstreamPacketProto.TokenInfo paramTokenInfo)
      {
        if (this.tokenBuilder_ == null)
        {
          if (paramTokenInfo == null) {
            throw new NullPointerException();
          }
          this.token_ = paramTokenInfo;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x40;
          return this;
          this.tokenBuilder_.setMessage(paramTokenInfo);
        }
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface UpstreamPacketOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getAppId();
    
    public abstract ByteString getBusiBuff();
    
    public abstract UpstreamPacketProto.BusiControl getBusiControl();
    
    public abstract UpstreamPacketProto.BusiControlOrBuilder getBusiControlOrBuilder();
    
    public abstract ByteString getDeviceInfo();
    
    public abstract ByteString getExtra();
    
    public abstract int getFlag();
    
    public abstract UpstreamPacketProto.ClientIpInfo getIpInfo();
    
    public abstract UpstreamPacketProto.ClientIpInfoOrBuilder getIpInfoOrBuilder();
    
    public abstract String getMiUid();
    
    public abstract ByteString getMiUidBytes();
    
    public abstract long getMiUin();
    
    public abstract UpstreamPacketProto.RetryInfo getRetryInfo();
    
    public abstract UpstreamPacketProto.RetryInfoOrBuilder getRetryInfoOrBuilder();
    
    public abstract int getSeq();
    
    public abstract String getServiceCmd();
    
    public abstract ByteString getServiceCmdBytes();
    
    public abstract int getSessionId();
    
    public abstract UpstreamPacketProto.TokenInfo getToken();
    
    public abstract UpstreamPacketProto.TokenInfoOrBuilder getTokenOrBuilder();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract boolean hasAppId();
    
    public abstract boolean hasBusiBuff();
    
    public abstract boolean hasBusiControl();
    
    public abstract boolean hasDeviceInfo();
    
    public abstract boolean hasExtra();
    
    public abstract boolean hasFlag();
    
    public abstract boolean hasIpInfo();
    
    public abstract boolean hasMiUid();
    
    public abstract boolean hasMiUin();
    
    public abstract boolean hasRetryInfo();
    
    public abstract boolean hasSeq();
    
    public abstract boolean hasServiceCmd();
    
    public abstract boolean hasSessionId();
    
    public abstract boolean hasToken();
    
    public abstract boolean hasUa();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\proto\UpstreamPacketProto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */