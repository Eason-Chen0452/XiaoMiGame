package com.mi.milink.sdk.proto;

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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.List;

public final class PushPacketProto
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_KickMessage_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_KickMessage_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_KickMessage_descriptor, new String[] { "Type", "Time", "Device" });
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MilinkLogReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MilinkLogReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MilinkLogReq_descriptor, new String[] { "Time", "Ip", "UrgentLevel", "Type", "LogLevel" });
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_PushLogLevel_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_PushLogLevel_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_PushLogLevel_descriptor, new String[] { "Loglevel", "TimeLong" });
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_SimplePushData_fieldAccessorTable;
  
  static
  {
    PushPacketProto.1 local1 = new PushPacketProto.1();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\016mns_push.proto\022\027com.mi.milink.sdk.proto\"b\n\016SimplePushData\022\017\n\007tomiUid\030\001 \002(\t\022\r\n\005appid\030\002 \002(\r\022\021\n\tfrommiUid\030\003 \001(\t\022\013\n\003cmd\030\004 \001(\t\022\020\n\bpushdata\030\005 \001(\f\"9\n\013KickMessage\022\f\n\004type\030\001 \001(\r\022\f\n\004time\030\002 \001(\r\022\016\n\006device\030\003 \001(\t\"\001\n\fMilinkLogReq\022\f\n\004time\030\001 \001(\005\022\n\n\002ip\030\002 \001(\t\022\023\n\013urgentLevel\030\003 \001(\r\022\f\n\004type\030\004 \001(\r\0227\n\blogLevel\030\005 \001(\0132%.com.mi.milink.sdk.proto.PushLogLevel\"2\n\fPushLogLevel\022\020\n\bloglevel\030\001 \001(\r\022\020\n\btimeLong\030\002 \001(\rB*\n\027com.mi.mi", "link.sdk.protoB\017PushPacketProto" }, new Descriptors.FileDescriptor[0], local1);
    internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_com_mi_milink_sdk_proto_SimplePushData_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor, new String[] { "TomiUid", "Appid", "FrommiUid", "Cmd", "Pushdata" });
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class KickMessage
    extends GeneratedMessage
    implements PushPacketProto.KickMessageOrBuilder
  {
    public static final int DEVICE_FIELD_NUMBER = 3;
    public static Parser<KickMessage> PARSER = new PushPacketProto.KickMessage.1();
    public static final int TIME_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final KickMessage defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object device_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int time_;
    private int type_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      KickMessage localKickMessage = new KickMessage(true);
      defaultInstance = localKickMessage;
      localKickMessage.initFields();
    }
    
    /* Error */
    private KickMessage(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 62	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 64	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 66	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 55	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:initFields	()V
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
      //   87: invokevirtual 82	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 84	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 84	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 87	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   113: putfield 89	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:type_	I
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
      //   133: putfield 101	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 104	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: aload_0
      //   144: getfield 84	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:bitField0_	I
      //   147: iconst_2
      //   148: ior
      //   149: putfield 84	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:bitField0_	I
      //   152: aload_0
      //   153: aload_1
      //   154: invokevirtual 87	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   157: putfield 106	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:time_	I
      //   160: goto -135 -> 25
      //   163: astore_1
      //   164: new 59	com/google/protobuf/InvalidProtocolBufferException
      //   167: dup
      //   168: aload_1
      //   169: invokevirtual 110	java/io/IOException:getMessage	()Ljava/lang/String;
      //   172: invokespecial 113	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   175: aload_0
      //   176: invokevirtual 93	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   179: athrow
      //   180: aload_1
      //   181: invokevirtual 117	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   184: astore 6
      //   186: aload_0
      //   187: aload_0
      //   188: getfield 84	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:bitField0_	I
      //   191: iconst_4
      //   192: ior
      //   193: putfield 84	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:bitField0_	I
      //   196: aload_0
      //   197: aload 6
      //   199: putfield 119	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:device_	Ljava/lang/Object;
      //   202: goto -177 -> 25
      //   205: aload_0
      //   206: aload 5
      //   208: invokevirtual 99	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   211: putfield 101	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   214: aload_0
      //   215: invokevirtual 104	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:makeExtensionsImmutable	()V
      //   218: return
      //   219: goto -139 -> 80
      //   222: iconst_1
      //   223: istore_3
      //   224: goto -199 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	227	0	this	KickMessage
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
    
    private KickMessage(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private KickMessage(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static KickMessage getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return PushPacketProto.internal_static_com_mi_milink_sdk_proto_KickMessage_descriptor;
    }
    
    private void initFields()
    {
      this.type_ = 0;
      this.time_ = 0;
      this.device_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1600();
    }
    
    public static Builder newBuilder(KickMessage paramKickMessage)
    {
      return newBuilder().mergeFrom(paramKickMessage);
    }
    
    public static KickMessage parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (KickMessage)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static KickMessage parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (KickMessage)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static KickMessage parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (KickMessage)PARSER.parseFrom(paramByteString);
    }
    
    public static KickMessage parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (KickMessage)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static KickMessage parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (KickMessage)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static KickMessage parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (KickMessage)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static KickMessage parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (KickMessage)PARSER.parseFrom(paramInputStream);
    }
    
    public static KickMessage parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (KickMessage)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static KickMessage parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (KickMessage)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static KickMessage parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (KickMessage)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final KickMessage getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getDevice()
    {
      Object localObject = this.device_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.device_ = str;
      }
      return str;
    }
    
    public final ByteString getDeviceBytes()
    {
      Object localObject = this.device_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.device_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<KickMessage> getParserForType()
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
        j = CodedOutputStream.computeUInt32Size(1, this.type_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt32Size(2, this.time_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getDeviceBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final int getTime()
    {
      return this.time_;
    }
    
    public final int getType()
    {
      return this.type_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasDevice()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasTime()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasType()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return PushPacketProto.internal_static_com_mi_milink_sdk_proto_KickMessage_fieldAccessorTable.ensureFieldAccessorsInitialized(KickMessage.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(2, this.time_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getDeviceBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements PushPacketProto.KickMessageOrBuilder
    {
      private int bitField0_;
      private Object device_ = "";
      private int time_;
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
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_KickMessage_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final PushPacketProto.KickMessage build()
      {
        PushPacketProto.KickMessage localKickMessage = buildPartial();
        if (!localKickMessage.isInitialized()) {
          throw newUninitializedMessageException(localKickMessage);
        }
        return localKickMessage;
      }
      
      public final PushPacketProto.KickMessage buildPartial()
      {
        int j = 1;
        PushPacketProto.KickMessage localKickMessage = new PushPacketProto.KickMessage(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          PushPacketProto.KickMessage.access$2002(localKickMessage, this.type_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          PushPacketProto.KickMessage.access$2102(localKickMessage, this.time_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          PushPacketProto.KickMessage.access$2202(localKickMessage, this.device_);
          PushPacketProto.KickMessage.access$2302(localKickMessage, j);
          onBuilt();
          return localKickMessage;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.type_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.time_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.device_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearDevice()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.device_ = PushPacketProto.KickMessage.getDefaultInstance().getDevice();
        onChanged();
        return this;
      }
      
      public final Builder clearTime()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.time_ = 0;
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
      
      public final PushPacketProto.KickMessage getDefaultInstanceForType()
      {
        return PushPacketProto.KickMessage.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_KickMessage_descriptor;
      }
      
      public final String getDevice()
      {
        Object localObject = this.device_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.device_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getDeviceBytes()
      {
        Object localObject = this.device_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.device_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getTime()
      {
        return this.time_;
      }
      
      public final int getType()
      {
        return this.type_;
      }
      
      public final boolean hasDevice()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasTime()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasType()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_KickMessage_fieldAccessorTable.ensureFieldAccessorsInitialized(PushPacketProto.KickMessage.class, Builder.class);
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
        //   2: getstatic 184	com/mi/milink/sdk/proto/PushPacketProto$KickMessage:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 190 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/PushPacketProto$KickMessage
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 123	com/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;)Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 193	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/PushPacketProto$KickMessage
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 123	com/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;)Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;
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
        if ((paramMessage instanceof PushPacketProto.KickMessage)) {
          return mergeFrom((PushPacketProto.KickMessage)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(PushPacketProto.KickMessage paramKickMessage)
      {
        if (paramKickMessage == PushPacketProto.KickMessage.getDefaultInstance()) {
          return this;
        }
        if (paramKickMessage.hasType()) {
          setType(paramKickMessage.getType());
        }
        if (paramKickMessage.hasTime()) {
          setTime(paramKickMessage.getTime());
        }
        if (paramKickMessage.hasDevice())
        {
          this.bitField0_ |= 0x4;
          this.device_ = paramKickMessage.device_;
          onChanged();
        }
        mergeUnknownFields(paramKickMessage.getUnknownFields());
        return this;
      }
      
      public final Builder setDevice(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.device_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDeviceBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.device_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setTime(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.time_ = paramInt;
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
  
  public static abstract interface KickMessageOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getDevice();
    
    public abstract ByteString getDeviceBytes();
    
    public abstract int getTime();
    
    public abstract int getType();
    
    public abstract boolean hasDevice();
    
    public abstract boolean hasTime();
    
    public abstract boolean hasType();
  }
  
  public static final class MilinkLogReq
    extends GeneratedMessage
    implements PushPacketProto.MilinkLogReqOrBuilder
  {
    public static final int IP_FIELD_NUMBER = 2;
    public static final int LOGLEVEL_FIELD_NUMBER = 5;
    public static Parser<MilinkLogReq> PARSER = new PushPacketProto.MilinkLogReq.1();
    public static final int TIME_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 4;
    public static final int URGENTLEVEL_FIELD_NUMBER = 3;
    private static final MilinkLogReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object ip_;
    private PushPacketProto.PushLogLevel logLevel_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int time_;
    private int type_;
    private final UnknownFieldSet unknownFields;
    private int urgentLevel_;
    
    static
    {
      MilinkLogReq localMilinkLogReq = new MilinkLogReq(true);
      defaultInstance = localMilinkLogReq;
      localMilinkLogReq.initFields();
    }
    
    /* Error */
    private MilinkLogReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 69	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 71	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 73	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 62	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:initFields	()V
      //   18: invokestatic 79	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 6
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +291 -> 317
      //   29: aload_1
      //   30: invokevirtual 85	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+300->337, 0:+303->340, 8:+77->114, 18:+121->158, 24:+163->200, 32:+184->221, 42:+206->243
      //   96: aload_0
      //   97: aload_1
      //   98: aload 6
      //   100: aload_2
      //   101: iload 4
      //   103: invokevirtual 89	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   106: ifne -81 -> 25
      //   109: iconst_1
      //   110: istore_3
      //   111: goto -86 -> 25
      //   114: aload_0
      //   115: aload_0
      //   116: getfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   119: iconst_1
      //   120: ior
      //   121: putfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   124: aload_0
      //   125: aload_1
      //   126: invokevirtual 94	com/google/protobuf/CodedInputStream:readInt32	()I
      //   129: putfield 96	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:time_	I
      //   132: goto -107 -> 25
      //   135: astore_1
      //   136: aload_1
      //   137: aload_0
      //   138: invokevirtual 100	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   141: athrow
      //   142: astore_1
      //   143: aload_0
      //   144: aload 6
      //   146: invokevirtual 106	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   149: putfield 108	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   152: aload_0
      //   153: invokevirtual 111	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:makeExtensionsImmutable	()V
      //   156: aload_1
      //   157: athrow
      //   158: aload_1
      //   159: invokevirtual 115	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   162: astore 5
      //   164: aload_0
      //   165: aload_0
      //   166: getfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   169: iconst_2
      //   170: ior
      //   171: putfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   174: aload_0
      //   175: aload 5
      //   177: putfield 117	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:ip_	Ljava/lang/Object;
      //   180: goto -155 -> 25
      //   183: astore_1
      //   184: new 66	com/google/protobuf/InvalidProtocolBufferException
      //   187: dup
      //   188: aload_1
      //   189: invokevirtual 121	java/io/IOException:getMessage	()Ljava/lang/String;
      //   192: invokespecial 124	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   195: aload_0
      //   196: invokevirtual 100	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   199: athrow
      //   200: aload_0
      //   201: aload_0
      //   202: getfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   205: iconst_4
      //   206: ior
      //   207: putfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   210: aload_0
      //   211: aload_1
      //   212: invokevirtual 127	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   215: putfield 129	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:urgentLevel_	I
      //   218: goto -193 -> 25
      //   221: aload_0
      //   222: aload_0
      //   223: getfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   226: bipush 8
      //   228: ior
      //   229: putfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   232: aload_0
      //   233: aload_1
      //   234: invokevirtual 127	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   237: putfield 131	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:type_	I
      //   240: goto -215 -> 25
      //   243: aload_0
      //   244: getfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   247: bipush 16
      //   249: iand
      //   250: bipush 16
      //   252: if_icmpne +79 -> 331
      //   255: aload_0
      //   256: getfield 133	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:logLevel_	Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;
      //   259: invokevirtual 139	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:toBuilder	()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;
      //   262: astore 5
      //   264: aload_0
      //   265: aload_1
      //   266: getstatic 140	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:PARSER	Lcom/google/protobuf/Parser;
      //   269: aload_2
      //   270: invokevirtual 144	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   273: checkcast 135	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel
      //   276: putfield 133	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:logLevel_	Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;
      //   279: aload 5
      //   281: ifnull +22 -> 303
      //   284: aload 5
      //   286: aload_0
      //   287: getfield 133	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:logLevel_	Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;
      //   290: invokevirtual 150	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;
      //   293: pop
      //   294: aload_0
      //   295: aload 5
      //   297: invokevirtual 154	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;
      //   300: putfield 133	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:logLevel_	Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;
      //   303: aload_0
      //   304: aload_0
      //   305: getfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   308: bipush 16
      //   310: ior
      //   311: putfield 91	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:bitField0_	I
      //   314: goto -289 -> 25
      //   317: aload_0
      //   318: aload 6
      //   320: invokevirtual 106	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   323: putfield 108	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   326: aload_0
      //   327: invokevirtual 111	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:makeExtensionsImmutable	()V
      //   330: return
      //   331: aconst_null
      //   332: astore 5
      //   334: goto -70 -> 264
      //   337: goto -241 -> 96
      //   340: iconst_1
      //   341: istore_3
      //   342: goto -317 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	345	0	this	MilinkLogReq
      //   0	345	1	paramCodedInputStream	CodedInputStream
      //   0	345	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	318	3	i	int
      //   33	69	4	j	int
      //   162	171	5	localObject	Object
      //   21	298	6	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	135	com/google/protobuf/InvalidProtocolBufferException
      //   96	109	135	com/google/protobuf/InvalidProtocolBufferException
      //   114	132	135	com/google/protobuf/InvalidProtocolBufferException
      //   158	180	135	com/google/protobuf/InvalidProtocolBufferException
      //   200	218	135	com/google/protobuf/InvalidProtocolBufferException
      //   221	240	135	com/google/protobuf/InvalidProtocolBufferException
      //   243	264	135	com/google/protobuf/InvalidProtocolBufferException
      //   264	279	135	com/google/protobuf/InvalidProtocolBufferException
      //   284	303	135	com/google/protobuf/InvalidProtocolBufferException
      //   303	314	135	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	142	finally
      //   96	109	142	finally
      //   114	132	142	finally
      //   136	142	142	finally
      //   158	180	142	finally
      //   184	200	142	finally
      //   200	218	142	finally
      //   221	240	142	finally
      //   243	264	142	finally
      //   264	279	142	finally
      //   284	303	142	finally
      //   303	314	142	finally
      //   29	35	183	java/io/IOException
      //   96	109	183	java/io/IOException
      //   114	132	183	java/io/IOException
      //   158	180	183	java/io/IOException
      //   200	218	183	java/io/IOException
      //   221	240	183	java/io/IOException
      //   243	264	183	java/io/IOException
      //   264	279	183	java/io/IOException
      //   284	303	183	java/io/IOException
      //   303	314	183	java/io/IOException
    }
    
    private MilinkLogReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MilinkLogReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MilinkLogReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return PushPacketProto.internal_static_com_mi_milink_sdk_proto_MilinkLogReq_descriptor;
    }
    
    private void initFields()
    {
      this.time_ = 0;
      this.ip_ = "";
      this.urgentLevel_ = 0;
      this.type_ = 0;
      this.logLevel_ = PushPacketProto.PushLogLevel.getDefaultInstance();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$2700();
    }
    
    public static Builder newBuilder(MilinkLogReq paramMilinkLogReq)
    {
      return newBuilder().mergeFrom(paramMilinkLogReq);
    }
    
    public static MilinkLogReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MilinkLogReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MilinkLogReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MilinkLogReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MilinkLogReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MilinkLogReq)PARSER.parseFrom(paramByteString);
    }
    
    public static MilinkLogReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MilinkLogReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MilinkLogReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MilinkLogReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MilinkLogReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MilinkLogReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MilinkLogReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MilinkLogReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static MilinkLogReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MilinkLogReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MilinkLogReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MilinkLogReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MilinkLogReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MilinkLogReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MilinkLogReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getIp()
    {
      Object localObject = this.ip_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.ip_ = str;
      }
      return str;
    }
    
    public final ByteString getIpBytes()
    {
      Object localObject = this.ip_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.ip_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final PushPacketProto.PushLogLevel getLogLevel()
    {
      return this.logLevel_;
    }
    
    public final PushPacketProto.PushLogLevelOrBuilder getLogLevelOrBuilder()
    {
      return this.logLevel_;
    }
    
    public final Parser<MilinkLogReq> getParserForType()
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
        j = CodedOutputStream.computeInt32Size(1, this.time_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getIpBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt32Size(3, this.urgentLevel_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeUInt32Size(4, this.type_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeMessageSize(5, this.logLevel_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final int getTime()
    {
      return this.time_;
    }
    
    public final int getType()
    {
      return this.type_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final int getUrgentLevel()
    {
      return this.urgentLevel_;
    }
    
    public final boolean hasIp()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasLogLevel()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasTime()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasType()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasUrgentLevel()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return PushPacketProto.internal_static_com_mi_milink_sdk_proto_MilinkLogReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MilinkLogReq.class, Builder.class);
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
        paramCodedOutputStream.writeInt32(1, this.time_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getIpBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt32(3, this.urgentLevel_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeUInt32(4, this.type_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeMessage(5, this.logLevel_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements PushPacketProto.MilinkLogReqOrBuilder
    {
      private int bitField0_;
      private Object ip_ = "";
      private SingleFieldBuilder<PushPacketProto.PushLogLevel, PushPacketProto.PushLogLevel.Builder, PushPacketProto.PushLogLevelOrBuilder> logLevelBuilder_;
      private PushPacketProto.PushLogLevel logLevel_ = PushPacketProto.PushLogLevel.getDefaultInstance();
      private int time_;
      private int type_;
      private int urgentLevel_;
      
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
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_MilinkLogReq_descriptor;
      }
      
      private SingleFieldBuilder<PushPacketProto.PushLogLevel, PushPacketProto.PushLogLevel.Builder, PushPacketProto.PushLogLevelOrBuilder> getLogLevelFieldBuilder()
      {
        if (this.logLevelBuilder_ == null)
        {
          this.logLevelBuilder_ = new SingleFieldBuilder(getLogLevel(), getParentForChildren(), isClean());
          this.logLevel_ = null;
        }
        return this.logLevelBuilder_;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (PushPacketProto.MilinkLogReq.alwaysUseFieldBuilders) {
          getLogLevelFieldBuilder();
        }
      }
      
      public final PushPacketProto.MilinkLogReq build()
      {
        PushPacketProto.MilinkLogReq localMilinkLogReq = buildPartial();
        if (!localMilinkLogReq.isInitialized()) {
          throw newUninitializedMessageException(localMilinkLogReq);
        }
        return localMilinkLogReq;
      }
      
      public final PushPacketProto.MilinkLogReq buildPartial()
      {
        int j = 1;
        PushPacketProto.MilinkLogReq localMilinkLogReq = new PushPacketProto.MilinkLogReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          PushPacketProto.MilinkLogReq.access$3102(localMilinkLogReq, this.time_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          PushPacketProto.MilinkLogReq.access$3202(localMilinkLogReq, this.ip_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          PushPacketProto.MilinkLogReq.access$3302(localMilinkLogReq, this.urgentLevel_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          PushPacketProto.MilinkLogReq.access$3402(localMilinkLogReq, this.type_);
          if ((k & 0x10) == 16) {
            i |= 0x10;
          }
          for (;;)
          {
            if (this.logLevelBuilder_ == null) {
              PushPacketProto.MilinkLogReq.access$3502(localMilinkLogReq, this.logLevel_);
            }
            for (;;)
            {
              PushPacketProto.MilinkLogReq.access$3602(localMilinkLogReq, i);
              onBuilt();
              return localMilinkLogReq;
              PushPacketProto.MilinkLogReq.access$3502(localMilinkLogReq, (PushPacketProto.PushLogLevel)this.logLevelBuilder_.build());
            }
          }
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.time_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.ip_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.urgentLevel_ = 0;
        this.bitField0_ &= 0xFFFFFFFB;
        this.type_ = 0;
        this.bitField0_ &= 0xFFFFFFF7;
        if (this.logLevelBuilder_ == null) {
          this.logLevel_ = PushPacketProto.PushLogLevel.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFEF;
          return this;
          this.logLevelBuilder_.clear();
        }
      }
      
      public final Builder clearIp()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.ip_ = PushPacketProto.MilinkLogReq.getDefaultInstance().getIp();
        onChanged();
        return this;
      }
      
      public final Builder clearLogLevel()
      {
        if (this.logLevelBuilder_ == null)
        {
          this.logLevel_ = PushPacketProto.PushLogLevel.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFEF;
          return this;
          this.logLevelBuilder_.clear();
        }
      }
      
      public final Builder clearTime()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.time_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearType()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.type_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearUrgentLevel()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.urgentLevel_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final PushPacketProto.MilinkLogReq getDefaultInstanceForType()
      {
        return PushPacketProto.MilinkLogReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_MilinkLogReq_descriptor;
      }
      
      public final String getIp()
      {
        Object localObject = this.ip_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.ip_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getIpBytes()
      {
        Object localObject = this.ip_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.ip_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final PushPacketProto.PushLogLevel getLogLevel()
      {
        if (this.logLevelBuilder_ == null) {
          return this.logLevel_;
        }
        return (PushPacketProto.PushLogLevel)this.logLevelBuilder_.getMessage();
      }
      
      public final PushPacketProto.PushLogLevel.Builder getLogLevelBuilder()
      {
        this.bitField0_ |= 0x10;
        onChanged();
        return (PushPacketProto.PushLogLevel.Builder)getLogLevelFieldBuilder().getBuilder();
      }
      
      public final PushPacketProto.PushLogLevelOrBuilder getLogLevelOrBuilder()
      {
        if (this.logLevelBuilder_ != null) {
          return (PushPacketProto.PushLogLevelOrBuilder)this.logLevelBuilder_.getMessageOrBuilder();
        }
        return this.logLevel_;
      }
      
      public final int getTime()
      {
        return this.time_;
      }
      
      public final int getType()
      {
        return this.type_;
      }
      
      public final int getUrgentLevel()
      {
        return this.urgentLevel_;
      }
      
      public final boolean hasIp()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasLogLevel()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasTime()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasType()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasUrgentLevel()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_MilinkLogReq_fieldAccessorTable.ensureFieldAccessorsInitialized(PushPacketProto.MilinkLogReq.class, Builder.class);
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
        //   2: getstatic 257	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 263 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 175	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 266	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 175	com/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
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
        if ((paramMessage instanceof PushPacketProto.MilinkLogReq)) {
          return mergeFrom((PushPacketProto.MilinkLogReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(PushPacketProto.MilinkLogReq paramMilinkLogReq)
      {
        if (paramMilinkLogReq == PushPacketProto.MilinkLogReq.getDefaultInstance()) {
          return this;
        }
        if (paramMilinkLogReq.hasTime()) {
          setTime(paramMilinkLogReq.getTime());
        }
        if (paramMilinkLogReq.hasIp())
        {
          this.bitField0_ |= 0x2;
          this.ip_ = paramMilinkLogReq.ip_;
          onChanged();
        }
        if (paramMilinkLogReq.hasUrgentLevel()) {
          setUrgentLevel(paramMilinkLogReq.getUrgentLevel());
        }
        if (paramMilinkLogReq.hasType()) {
          setType(paramMilinkLogReq.getType());
        }
        if (paramMilinkLogReq.hasLogLevel()) {
          mergeLogLevel(paramMilinkLogReq.getLogLevel());
        }
        mergeUnknownFields(paramMilinkLogReq.getUnknownFields());
        return this;
      }
      
      public final Builder mergeLogLevel(PushPacketProto.PushLogLevel paramPushLogLevel)
      {
        if (this.logLevelBuilder_ == null) {
          if (((this.bitField0_ & 0x10) == 16) && (this.logLevel_ != PushPacketProto.PushLogLevel.getDefaultInstance()))
          {
            this.logLevel_ = PushPacketProto.PushLogLevel.newBuilder(this.logLevel_).mergeFrom(paramPushLogLevel).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x10;
          return this;
          this.logLevel_ = paramPushLogLevel;
          break;
          this.logLevelBuilder_.mergeFrom(paramPushLogLevel);
        }
      }
      
      public final Builder setIp(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.ip_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setIpBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.ip_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setLogLevel(PushPacketProto.PushLogLevel.Builder paramBuilder)
      {
        if (this.logLevelBuilder_ == null)
        {
          this.logLevel_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x10;
          return this;
          this.logLevelBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setLogLevel(PushPacketProto.PushLogLevel paramPushLogLevel)
      {
        if (this.logLevelBuilder_ == null)
        {
          if (paramPushLogLevel == null) {
            throw new NullPointerException();
          }
          this.logLevel_ = paramPushLogLevel;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x10;
          return this;
          this.logLevelBuilder_.setMessage(paramPushLogLevel);
        }
      }
      
      public final Builder setTime(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.time_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setType(int paramInt)
      {
        this.bitField0_ |= 0x8;
        this.type_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setUrgentLevel(int paramInt)
      {
        this.bitField0_ |= 0x4;
        this.urgentLevel_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MilinkLogReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getIp();
    
    public abstract ByteString getIpBytes();
    
    public abstract PushPacketProto.PushLogLevel getLogLevel();
    
    public abstract PushPacketProto.PushLogLevelOrBuilder getLogLevelOrBuilder();
    
    public abstract int getTime();
    
    public abstract int getType();
    
    public abstract int getUrgentLevel();
    
    public abstract boolean hasIp();
    
    public abstract boolean hasLogLevel();
    
    public abstract boolean hasTime();
    
    public abstract boolean hasType();
    
    public abstract boolean hasUrgentLevel();
  }
  
  public static final class PushLogLevel
    extends GeneratedMessage
    implements PushPacketProto.PushLogLevelOrBuilder
  {
    public static final int LOGLEVEL_FIELD_NUMBER = 1;
    public static Parser<PushLogLevel> PARSER = new PushPacketProto.PushLogLevel.1();
    public static final int TIMELONG_FIELD_NUMBER = 2;
    private static final PushLogLevel defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int loglevel_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int timeLong_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      PushLogLevel localPushLogLevel = new PushLogLevel(true);
      defaultInstance = localPushLogLevel;
      localPushLogLevel.initFields();
    }
    
    /* Error */
    private PushLogLevel(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 58	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 60	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 62	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 51	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:initFields	()V
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
      //   79: invokevirtual 78	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 80	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 80	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 83	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   105: putfield 85	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:loglevel_	I
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
      //   125: putfield 97	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 100	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_0
      //   135: aload_0
      //   136: getfield 80	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:bitField0_	I
      //   139: iconst_2
      //   140: ior
      //   141: putfield 80	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:bitField0_	I
      //   144: aload_0
      //   145: aload_1
      //   146: invokevirtual 83	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   149: putfield 102	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:timeLong_	I
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
      //   178: putfield 97	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   181: aload_0
      //   182: invokevirtual 100	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:makeExtensionsImmutable	()V
      //   185: return
      //   186: goto -114 -> 72
      //   189: iconst_1
      //   190: istore_3
      //   191: goto -166 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	194	0	this	PushLogLevel
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
    
    private PushLogLevel(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private PushLogLevel(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static PushLogLevel getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return PushPacketProto.internal_static_com_mi_milink_sdk_proto_PushLogLevel_descriptor;
    }
    
    private void initFields()
    {
      this.loglevel_ = 0;
      this.timeLong_ = 0;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$4000();
    }
    
    public static Builder newBuilder(PushLogLevel paramPushLogLevel)
    {
      return newBuilder().mergeFrom(paramPushLogLevel);
    }
    
    public static PushLogLevel parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (PushLogLevel)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static PushLogLevel parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (PushLogLevel)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static PushLogLevel parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (PushLogLevel)PARSER.parseFrom(paramByteString);
    }
    
    public static PushLogLevel parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (PushLogLevel)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static PushLogLevel parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (PushLogLevel)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static PushLogLevel parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (PushLogLevel)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static PushLogLevel parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (PushLogLevel)PARSER.parseFrom(paramInputStream);
    }
    
    public static PushLogLevel parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (PushLogLevel)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static PushLogLevel parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (PushLogLevel)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static PushLogLevel parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (PushLogLevel)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final PushLogLevel getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getLoglevel()
    {
      return this.loglevel_;
    }
    
    public final Parser<PushLogLevel> getParserForType()
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
        i = CodedOutputStream.computeUInt32Size(1, this.loglevel_) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeUInt32Size(2, this.timeLong_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final int getTimeLong()
    {
      return this.timeLong_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasLoglevel()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasTimeLong()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return PushPacketProto.internal_static_com_mi_milink_sdk_proto_PushLogLevel_fieldAccessorTable.ensureFieldAccessorsInitialized(PushLogLevel.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.loglevel_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.timeLong_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements PushPacketProto.PushLogLevelOrBuilder
    {
      private int bitField0_;
      private int loglevel_;
      private int timeLong_;
      
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
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_PushLogLevel_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final PushPacketProto.PushLogLevel build()
      {
        PushPacketProto.PushLogLevel localPushLogLevel = buildPartial();
        if (!localPushLogLevel.isInitialized()) {
          throw newUninitializedMessageException(localPushLogLevel);
        }
        return localPushLogLevel;
      }
      
      public final PushPacketProto.PushLogLevel buildPartial()
      {
        int i = 1;
        PushPacketProto.PushLogLevel localPushLogLevel = new PushPacketProto.PushLogLevel(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          PushPacketProto.PushLogLevel.access$4402(localPushLogLevel, this.loglevel_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          PushPacketProto.PushLogLevel.access$4502(localPushLogLevel, this.timeLong_);
          PushPacketProto.PushLogLevel.access$4602(localPushLogLevel, j);
          onBuilt();
          return localPushLogLevel;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.loglevel_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.timeLong_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearLoglevel()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.loglevel_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearTimeLong()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.timeLong_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final PushPacketProto.PushLogLevel getDefaultInstanceForType()
      {
        return PushPacketProto.PushLogLevel.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_PushLogLevel_descriptor;
      }
      
      public final int getLoglevel()
      {
        return this.loglevel_;
      }
      
      public final int getTimeLong()
      {
        return this.timeLong_;
      }
      
      public final boolean hasLoglevel()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasTimeLong()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_PushLogLevel_fieldAccessorTable.ensureFieldAccessorsInitialized(PushPacketProto.PushLogLevel.class, Builder.class);
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
        //   2: getstatic 152	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 158 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 105	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 161	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 105	com/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;
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
        if ((paramMessage instanceof PushPacketProto.PushLogLevel)) {
          return mergeFrom((PushPacketProto.PushLogLevel)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(PushPacketProto.PushLogLevel paramPushLogLevel)
      {
        if (paramPushLogLevel == PushPacketProto.PushLogLevel.getDefaultInstance()) {
          return this;
        }
        if (paramPushLogLevel.hasLoglevel()) {
          setLoglevel(paramPushLogLevel.getLoglevel());
        }
        if (paramPushLogLevel.hasTimeLong()) {
          setTimeLong(paramPushLogLevel.getTimeLong());
        }
        mergeUnknownFields(paramPushLogLevel.getUnknownFields());
        return this;
      }
      
      public final Builder setLoglevel(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.loglevel_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setTimeLong(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.timeLong_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface PushLogLevelOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getLoglevel();
    
    public abstract int getTimeLong();
    
    public abstract boolean hasLoglevel();
    
    public abstract boolean hasTimeLong();
  }
  
  public static final class SimplePushData
    extends GeneratedMessage
    implements PushPacketProto.SimplePushDataOrBuilder
  {
    public static final int APPID_FIELD_NUMBER = 2;
    public static final int CMD_FIELD_NUMBER = 4;
    public static final int FROMMIUID_FIELD_NUMBER = 3;
    public static Parser<SimplePushData> PARSER = new PushPacketProto.SimplePushData.1();
    public static final int PUSHDATA_FIELD_NUMBER = 5;
    public static final int TOMIUID_FIELD_NUMBER = 1;
    private static final SimplePushData defaultInstance;
    private static final long serialVersionUID = 0L;
    private int appid_;
    private int bitField0_;
    private Object cmd_;
    private Object frommiUid_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private ByteString pushdata_;
    private Object tomiUid_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      SimplePushData localSimplePushData = new SimplePushData(true);
      defaultInstance = localSimplePushData;
      localSimplePushData.initFields();
    }
    
    /* Error */
    private SimplePushData(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 69	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 71	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 73	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 62	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:initFields	()V
      //   18: invokestatic 79	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +247 -> 273
      //   29: aload_1
      //   30: invokevirtual 85	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+250->287, 0:+253->290, 10:+77->114, 16:+125->162, 26:+163->200, 34:+188->225, 42:+214->251
      //   96: aload_0
      //   97: aload_1
      //   98: aload 5
      //   100: aload_2
      //   101: iload 4
      //   103: invokevirtual 89	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   106: ifne -81 -> 25
      //   109: iconst_1
      //   110: istore_3
      //   111: goto -86 -> 25
      //   114: aload_1
      //   115: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   118: astore 6
      //   120: aload_0
      //   121: aload_0
      //   122: getfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   125: iconst_1
      //   126: ior
      //   127: putfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   130: aload_0
      //   131: aload 6
      //   133: putfield 97	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:tomiUid_	Ljava/lang/Object;
      //   136: goto -111 -> 25
      //   139: astore_1
      //   140: aload_1
      //   141: aload_0
      //   142: invokevirtual 101	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   145: athrow
      //   146: astore_1
      //   147: aload_0
      //   148: aload 5
      //   150: invokevirtual 107	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   153: putfield 109	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   156: aload_0
      //   157: invokevirtual 112	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:makeExtensionsImmutable	()V
      //   160: aload_1
      //   161: athrow
      //   162: aload_0
      //   163: aload_0
      //   164: getfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   167: iconst_2
      //   168: ior
      //   169: putfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   172: aload_0
      //   173: aload_1
      //   174: invokevirtual 115	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   177: putfield 117	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:appid_	I
      //   180: goto -155 -> 25
      //   183: astore_1
      //   184: new 66	com/google/protobuf/InvalidProtocolBufferException
      //   187: dup
      //   188: aload_1
      //   189: invokevirtual 121	java/io/IOException:getMessage	()Ljava/lang/String;
      //   192: invokespecial 124	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   195: aload_0
      //   196: invokevirtual 101	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   199: athrow
      //   200: aload_1
      //   201: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   204: astore 6
      //   206: aload_0
      //   207: aload_0
      //   208: getfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   211: iconst_4
      //   212: ior
      //   213: putfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   216: aload_0
      //   217: aload 6
      //   219: putfield 126	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:frommiUid_	Ljava/lang/Object;
      //   222: goto -197 -> 25
      //   225: aload_1
      //   226: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   229: astore 6
      //   231: aload_0
      //   232: aload_0
      //   233: getfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   236: bipush 8
      //   238: ior
      //   239: putfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   242: aload_0
      //   243: aload 6
      //   245: putfield 128	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:cmd_	Ljava/lang/Object;
      //   248: goto -223 -> 25
      //   251: aload_0
      //   252: aload_0
      //   253: getfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   256: bipush 16
      //   258: ior
      //   259: putfield 95	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:bitField0_	I
      //   262: aload_0
      //   263: aload_1
      //   264: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   267: putfield 130	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:pushdata_	Lcom/google/protobuf/ByteString;
      //   270: goto -245 -> 25
      //   273: aload_0
      //   274: aload 5
      //   276: invokevirtual 107	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   279: putfield 109	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   282: aload_0
      //   283: invokevirtual 112	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:makeExtensionsImmutable	()V
      //   286: return
      //   287: goto -191 -> 96
      //   290: iconst_1
      //   291: istore_3
      //   292: goto -267 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	295	0	this	SimplePushData
      //   0	295	1	paramCodedInputStream	CodedInputStream
      //   0	295	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	268	3	i	int
      //   33	69	4	j	int
      //   21	254	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   118	126	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	139	com/google/protobuf/InvalidProtocolBufferException
      //   96	109	139	com/google/protobuf/InvalidProtocolBufferException
      //   114	136	139	com/google/protobuf/InvalidProtocolBufferException
      //   162	180	139	com/google/protobuf/InvalidProtocolBufferException
      //   200	222	139	com/google/protobuf/InvalidProtocolBufferException
      //   225	248	139	com/google/protobuf/InvalidProtocolBufferException
      //   251	270	139	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	146	finally
      //   96	109	146	finally
      //   114	136	146	finally
      //   140	146	146	finally
      //   162	180	146	finally
      //   184	200	146	finally
      //   200	222	146	finally
      //   225	248	146	finally
      //   251	270	146	finally
      //   29	35	183	java/io/IOException
      //   96	109	183	java/io/IOException
      //   114	136	183	java/io/IOException
      //   162	180	183	java/io/IOException
      //   200	222	183	java/io/IOException
      //   225	248	183	java/io/IOException
      //   251	270	183	java/io/IOException
    }
    
    private SimplePushData(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private SimplePushData(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static SimplePushData getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return PushPacketProto.internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor;
    }
    
    private void initFields()
    {
      this.tomiUid_ = "";
      this.appid_ = 0;
      this.frommiUid_ = "";
      this.cmd_ = "";
      this.pushdata_ = ByteString.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(SimplePushData paramSimplePushData)
    {
      return newBuilder().mergeFrom(paramSimplePushData);
    }
    
    public static SimplePushData parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SimplePushData)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static SimplePushData parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SimplePushData)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SimplePushData parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (SimplePushData)PARSER.parseFrom(paramByteString);
    }
    
    public static SimplePushData parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SimplePushData)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static SimplePushData parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (SimplePushData)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static SimplePushData parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SimplePushData)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static SimplePushData parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SimplePushData)PARSER.parseFrom(paramInputStream);
    }
    
    public static SimplePushData parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SimplePushData)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SimplePushData parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (SimplePushData)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static SimplePushData parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SimplePushData)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getAppid()
    {
      return this.appid_;
    }
    
    public final String getCmd()
    {
      Object localObject = this.cmd_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.cmd_ = str;
      }
      return str;
    }
    
    public final ByteString getCmdBytes()
    {
      Object localObject = this.cmd_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.cmd_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final SimplePushData getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getFrommiUid()
    {
      Object localObject = this.frommiUid_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.frommiUid_ = str;
      }
      return str;
    }
    
    public final ByteString getFrommiUidBytes()
    {
      Object localObject = this.frommiUid_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.frommiUid_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<SimplePushData> getParserForType()
    {
      return PARSER;
    }
    
    public final ByteString getPushdata()
    {
      return this.pushdata_;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeBytesSize(1, getTomiUidBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt32Size(2, this.appid_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getFrommiUidBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getCmdBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, this.pushdata_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getTomiUid()
    {
      Object localObject = this.tomiUid_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.tomiUid_ = str;
      }
      return str;
    }
    
    public final ByteString getTomiUidBytes()
    {
      Object localObject = this.tomiUid_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.tomiUid_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAppid()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasCmd()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasFrommiUid()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasPushdata()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasTomiUid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return PushPacketProto.internal_static_com_mi_milink_sdk_proto_SimplePushData_fieldAccessorTable.ensureFieldAccessorsInitialized(SimplePushData.class, Builder.class);
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
      if (!hasTomiUid())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasAppid())
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
        paramCodedOutputStream.writeBytes(1, getTomiUidBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.appid_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getFrommiUidBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getCmdBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, this.pushdata_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements PushPacketProto.SimplePushDataOrBuilder
    {
      private int appid_;
      private int bitField0_;
      private Object cmd_ = "";
      private Object frommiUid_ = "";
      private ByteString pushdata_ = ByteString.EMPTY;
      private Object tomiUid_ = "";
      
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
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final PushPacketProto.SimplePushData build()
      {
        PushPacketProto.SimplePushData localSimplePushData = buildPartial();
        if (!localSimplePushData.isInitialized()) {
          throw newUninitializedMessageException(localSimplePushData);
        }
        return localSimplePushData;
      }
      
      public final PushPacketProto.SimplePushData buildPartial()
      {
        int j = 1;
        PushPacketProto.SimplePushData localSimplePushData = new PushPacketProto.SimplePushData(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          PushPacketProto.SimplePushData.access$702(localSimplePushData, this.tomiUid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          PushPacketProto.SimplePushData.access$802(localSimplePushData, this.appid_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          PushPacketProto.SimplePushData.access$902(localSimplePushData, this.frommiUid_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          PushPacketProto.SimplePushData.access$1002(localSimplePushData, this.cmd_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          PushPacketProto.SimplePushData.access$1102(localSimplePushData, this.pushdata_);
          PushPacketProto.SimplePushData.access$1202(localSimplePushData, j);
          onBuilt();
          return localSimplePushData;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.tomiUid_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.appid_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.frommiUid_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.cmd_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.pushdata_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFEF;
        return this;
      }
      
      public final Builder clearAppid()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.appid_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearCmd()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.cmd_ = PushPacketProto.SimplePushData.getDefaultInstance().getCmd();
        onChanged();
        return this;
      }
      
      public final Builder clearFrommiUid()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.frommiUid_ = PushPacketProto.SimplePushData.getDefaultInstance().getFrommiUid();
        onChanged();
        return this;
      }
      
      public final Builder clearPushdata()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.pushdata_ = PushPacketProto.SimplePushData.getDefaultInstance().getPushdata();
        onChanged();
        return this;
      }
      
      public final Builder clearTomiUid()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.tomiUid_ = PushPacketProto.SimplePushData.getDefaultInstance().getTomiUid();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getAppid()
      {
        return this.appid_;
      }
      
      public final String getCmd()
      {
        Object localObject = this.cmd_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.cmd_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCmdBytes()
      {
        Object localObject = this.cmd_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.cmd_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final PushPacketProto.SimplePushData getDefaultInstanceForType()
      {
        return PushPacketProto.SimplePushData.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor;
      }
      
      public final String getFrommiUid()
      {
        Object localObject = this.frommiUid_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.frommiUid_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getFrommiUidBytes()
      {
        Object localObject = this.frommiUid_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.frommiUid_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final ByteString getPushdata()
      {
        return this.pushdata_;
      }
      
      public final String getTomiUid()
      {
        Object localObject = this.tomiUid_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.tomiUid_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTomiUidBytes()
      {
        Object localObject = this.tomiUid_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.tomiUid_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasAppid()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasCmd()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasFrommiUid()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasPushdata()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasTomiUid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return PushPacketProto.internal_static_com_mi_milink_sdk_proto_SimplePushData_fieldAccessorTable.ensureFieldAccessorsInitialized(PushPacketProto.SimplePushData.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasTomiUid()) {}
        while (!hasAppid()) {
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
        //   2: getstatic 219	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 225 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 154	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;)Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 228	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 154	com/mi/milink/sdk/proto/PushPacketProto$SimplePushData$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;)Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData$Builder;
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
        if ((paramMessage instanceof PushPacketProto.SimplePushData)) {
          return mergeFrom((PushPacketProto.SimplePushData)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(PushPacketProto.SimplePushData paramSimplePushData)
      {
        if (paramSimplePushData == PushPacketProto.SimplePushData.getDefaultInstance()) {
          return this;
        }
        if (paramSimplePushData.hasTomiUid())
        {
          this.bitField0_ |= 0x1;
          this.tomiUid_ = paramSimplePushData.tomiUid_;
          onChanged();
        }
        if (paramSimplePushData.hasAppid()) {
          setAppid(paramSimplePushData.getAppid());
        }
        if (paramSimplePushData.hasFrommiUid())
        {
          this.bitField0_ |= 0x4;
          this.frommiUid_ = paramSimplePushData.frommiUid_;
          onChanged();
        }
        if (paramSimplePushData.hasCmd())
        {
          this.bitField0_ |= 0x8;
          this.cmd_ = paramSimplePushData.cmd_;
          onChanged();
        }
        if (paramSimplePushData.hasPushdata()) {
          setPushdata(paramSimplePushData.getPushdata());
        }
        mergeUnknownFields(paramSimplePushData.getUnknownFields());
        return this;
      }
      
      public final Builder setAppid(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.appid_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setCmd(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.cmd_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCmdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.cmd_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFrommiUid(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.frommiUid_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setFrommiUidBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.frommiUid_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setPushdata(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.pushdata_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setTomiUid(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.tomiUid_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTomiUidBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.tomiUid_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface SimplePushDataOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getAppid();
    
    public abstract String getCmd();
    
    public abstract ByteString getCmdBytes();
    
    public abstract String getFrommiUid();
    
    public abstract ByteString getFrommiUidBytes();
    
    public abstract ByteString getPushdata();
    
    public abstract String getTomiUid();
    
    public abstract ByteString getTomiUidBytes();
    
    public abstract boolean hasAppid();
    
    public abstract boolean hasCmd();
    
    public abstract boolean hasFrommiUid();
    
    public abstract boolean hasPushdata();
    
    public abstract boolean hasTomiUid();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\proto\PushPacketProto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */