package com.xiaomi.hy.dj.pb;

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

public final class AnonymousLogin
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_descriptor, new String[] { "DevAppId", "DeviceNo", "Channel" });
  private static final Descriptors.Descriptor internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_descriptor, new String[] { "RetCode", "OpenId", "Session" });
  
  static
  {
    AnonymousLogin.1 local1 = new AnonymousLogin.1();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\024AnonymousLogin.proto\022\023com.xiaomi.hy.dj.pb\"H\n\021AnonymousLoginReq\022\020\n\bdevAppId\030\001 \002(\004\022\020\n\bdeviceNo\030\002 \002(\t\022\017\n\007channel\030\003 \001(\t\"E\n\021AnonymousLoginRsp\022\017\n\007retCode\030\001 \002(\r\022\016\n\006openId\030\002 \001(\004\022\017\n\007session\030\003 \001(\t" }, new Descriptors.FileDescriptor[0], local1);
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class AnonymousLoginReq
    extends GeneratedMessage
    implements AnonymousLogin.AnonymousLoginReqOrBuilder
  {
    public static final int CHANNEL_FIELD_NUMBER = 3;
    public static final int DEVAPPID_FIELD_NUMBER = 1;
    public static final int DEVICENO_FIELD_NUMBER = 2;
    public static Parser<AnonymousLoginReq> PARSER = new AnonymousLogin.AnonymousLoginReq.1();
    private static final AnonymousLoginReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object channel_;
    private long devAppId_;
    private Object deviceNo_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      AnonymousLoginReq localAnonymousLoginReq = new AnonymousLoginReq(true);
      defaultInstance = localAnonymousLoginReq;
      localAnonymousLoginReq.initFields();
    }
    
    /* Error */
    private AnonymousLoginReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 62	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 64	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 66	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 55	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:initFields	()V
      //   18: invokestatic 72	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +183 -> 209
      //   29: aload_1
      //   30: invokevirtual 78	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+186->223, 0:+189->226, 8:+61->98, 18:+105->142, 26:+147->184
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 82	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 88	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   113: putfield 90	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:devAppId_	J
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
      //   133: putfield 102	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 105	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_1
      //   143: invokevirtual 109	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   146: astore 6
      //   148: aload_0
      //   149: aload_0
      //   150: getfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:bitField0_	I
      //   153: iconst_2
      //   154: ior
      //   155: putfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:bitField0_	I
      //   158: aload_0
      //   159: aload 6
      //   161: putfield 111	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:deviceNo_	Ljava/lang/Object;
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
      //   184: aload_1
      //   185: invokevirtual 109	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   188: astore 6
      //   190: aload_0
      //   191: aload_0
      //   192: getfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:bitField0_	I
      //   195: iconst_4
      //   196: ior
      //   197: putfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:bitField0_	I
      //   200: aload_0
      //   201: aload 6
      //   203: putfield 120	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:channel_	Ljava/lang/Object;
      //   206: goto -181 -> 25
      //   209: aload_0
      //   210: aload 5
      //   212: invokevirtual 100	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   215: putfield 102	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   218: aload_0
      //   219: invokevirtual 105	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:makeExtensionsImmutable	()V
      //   222: return
      //   223: goto -143 -> 80
      //   226: iconst_1
      //   227: istore_3
      //   228: goto -203 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	231	0	this	AnonymousLoginReq
      //   0	231	1	paramCodedInputStream	CodedInputStream
      //   0	231	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	204	3	i	int
      //   33	53	4	j	int
      //   21	190	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   146	56	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	119	com/google/protobuf/InvalidProtocolBufferException
      //   80	93	119	com/google/protobuf/InvalidProtocolBufferException
      //   98	116	119	com/google/protobuf/InvalidProtocolBufferException
      //   142	164	119	com/google/protobuf/InvalidProtocolBufferException
      //   184	206	119	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	126	finally
      //   80	93	126	finally
      //   98	116	126	finally
      //   120	126	126	finally
      //   142	164	126	finally
      //   168	184	126	finally
      //   184	206	126	finally
      //   29	35	167	java/io/IOException
      //   80	93	167	java/io/IOException
      //   98	116	167	java/io/IOException
      //   142	164	167	java/io/IOException
      //   184	206	167	java/io/IOException
    }
    
    private AnonymousLoginReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private AnonymousLoginReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static AnonymousLoginReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_descriptor;
    }
    
    private void initFields()
    {
      this.devAppId_ = 0L;
      this.deviceNo_ = "";
      this.channel_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(AnonymousLoginReq paramAnonymousLoginReq)
    {
      return newBuilder().mergeFrom(paramAnonymousLoginReq);
    }
    
    public static AnonymousLoginReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (AnonymousLoginReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static AnonymousLoginReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (AnonymousLoginReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static AnonymousLoginReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (AnonymousLoginReq)PARSER.parseFrom(paramByteString);
    }
    
    public static AnonymousLoginReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (AnonymousLoginReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static AnonymousLoginReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (AnonymousLoginReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static AnonymousLoginReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (AnonymousLoginReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static AnonymousLoginReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (AnonymousLoginReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static AnonymousLoginReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (AnonymousLoginReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static AnonymousLoginReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (AnonymousLoginReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static AnonymousLoginReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (AnonymousLoginReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getChannel()
    {
      Object localObject = this.channel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.channel_ = str;
      }
      return str;
    }
    
    public final ByteString getChannelBytes()
    {
      Object localObject = this.channel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.channel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final AnonymousLoginReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getDevAppId()
    {
      return this.devAppId_;
    }
    
    public final String getDeviceNo()
    {
      Object localObject = this.deviceNo_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.deviceNo_ = str;
      }
      return str;
    }
    
    public final ByteString getDeviceNoBytes()
    {
      Object localObject = this.deviceNo_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.deviceNo_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<AnonymousLoginReq> getParserForType()
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
        j = CodedOutputStream.computeUInt64Size(1, this.devAppId_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getDeviceNoBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getChannelBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasChannel()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasDeviceNo()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(AnonymousLoginReq.class, Builder.class);
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
      if (!hasDevAppId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasDeviceNo())
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
        paramCodedOutputStream.writeUInt64(1, this.devAppId_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getDeviceNoBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getChannelBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements AnonymousLogin.AnonymousLoginReqOrBuilder
    {
      private int bitField0_;
      private Object channel_ = "";
      private long devAppId_;
      private Object deviceNo_ = "";
      
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
        return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final AnonymousLogin.AnonymousLoginReq build()
      {
        AnonymousLogin.AnonymousLoginReq localAnonymousLoginReq = buildPartial();
        if (!localAnonymousLoginReq.isInitialized()) {
          throw newUninitializedMessageException(localAnonymousLoginReq);
        }
        return localAnonymousLoginReq;
      }
      
      public final AnonymousLogin.AnonymousLoginReq buildPartial()
      {
        int j = 1;
        AnonymousLogin.AnonymousLoginReq localAnonymousLoginReq = new AnonymousLogin.AnonymousLoginReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          AnonymousLogin.AnonymousLoginReq.access$702(localAnonymousLoginReq, this.devAppId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          AnonymousLogin.AnonymousLoginReq.access$802(localAnonymousLoginReq, this.deviceNo_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          AnonymousLogin.AnonymousLoginReq.access$902(localAnonymousLoginReq, this.channel_);
          AnonymousLogin.AnonymousLoginReq.access$1002(localAnonymousLoginReq, j);
          onBuilt();
          return localAnonymousLoginReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.devAppId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.deviceNo_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.channel_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearChannel()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.channel_ = AnonymousLogin.AnonymousLoginReq.getDefaultInstance().getChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.devAppId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearDeviceNo()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.deviceNo_ = AnonymousLogin.AnonymousLoginReq.getDefaultInstance().getDeviceNo();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getChannel()
      {
        Object localObject = this.channel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.channel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getChannelBytes()
      {
        Object localObject = this.channel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.channel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final AnonymousLogin.AnonymousLoginReq getDefaultInstanceForType()
      {
        return AnonymousLogin.AnonymousLoginReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_descriptor;
      }
      
      public final long getDevAppId()
      {
        return this.devAppId_;
      }
      
      public final String getDeviceNo()
      {
        Object localObject = this.deviceNo_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.deviceNo_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getDeviceNoBytes()
      {
        Object localObject = this.deviceNo_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.deviceNo_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasChannel()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasDeviceNo()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(AnonymousLogin.AnonymousLoginReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasDevAppId()) {}
        while (!hasDeviceNo()) {
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
        //   2: getstatic 193	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 199 3 0
        //   12: checkcast 9	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 128	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 202	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 128	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
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
        if ((paramMessage instanceof AnonymousLogin.AnonymousLoginReq)) {
          return mergeFrom((AnonymousLogin.AnonymousLoginReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(AnonymousLogin.AnonymousLoginReq paramAnonymousLoginReq)
      {
        if (paramAnonymousLoginReq == AnonymousLogin.AnonymousLoginReq.getDefaultInstance()) {
          return this;
        }
        if (paramAnonymousLoginReq.hasDevAppId()) {
          setDevAppId(paramAnonymousLoginReq.getDevAppId());
        }
        if (paramAnonymousLoginReq.hasDeviceNo())
        {
          this.bitField0_ |= 0x2;
          this.deviceNo_ = paramAnonymousLoginReq.deviceNo_;
          onChanged();
        }
        if (paramAnonymousLoginReq.hasChannel())
        {
          this.bitField0_ |= 0x4;
          this.channel_ = paramAnonymousLoginReq.channel_;
          onChanged();
        }
        mergeUnknownFields(paramAnonymousLoginReq.getUnknownFields());
        return this;
      }
      
      public final Builder setChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.channel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.channel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppId(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.devAppId_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setDeviceNo(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.deviceNo_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDeviceNoBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.deviceNo_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface AnonymousLoginReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getChannel();
    
    public abstract ByteString getChannelBytes();
    
    public abstract long getDevAppId();
    
    public abstract String getDeviceNo();
    
    public abstract ByteString getDeviceNoBytes();
    
    public abstract boolean hasChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasDeviceNo();
  }
  
  public static final class AnonymousLoginRsp
    extends GeneratedMessage
    implements AnonymousLogin.AnonymousLoginRspOrBuilder
  {
    public static final int OPENID_FIELD_NUMBER = 2;
    public static Parser<AnonymousLoginRsp> PARSER = new AnonymousLogin.AnonymousLoginRsp.1();
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int SESSION_FIELD_NUMBER = 3;
    private static final AnonymousLoginRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private long openId_;
    private int retCode_;
    private Object session_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      AnonymousLoginRsp localAnonymousLoginRsp = new AnonymousLoginRsp(true);
      defaultInstance = localAnonymousLoginRsp;
      localAnonymousLoginRsp.initFields();
    }
    
    /* Error */
    private AnonymousLoginRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 62	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 64	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 66	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 55	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:initFields	()V
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
      //   87: invokevirtual 82	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 87	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   113: putfield 89	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:retCode_	I
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
      //   133: putfield 101	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 104	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: aload_0
      //   144: getfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:bitField0_	I
      //   147: iconst_2
      //   148: ior
      //   149: putfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:bitField0_	I
      //   152: aload_0
      //   153: aload_1
      //   154: invokevirtual 108	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   157: putfield 110	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:openId_	J
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
      //   188: getfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:bitField0_	I
      //   191: iconst_4
      //   192: ior
      //   193: putfield 84	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:bitField0_	I
      //   196: aload_0
      //   197: aload 6
      //   199: putfield 123	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:session_	Ljava/lang/Object;
      //   202: goto -177 -> 25
      //   205: aload_0
      //   206: aload 5
      //   208: invokevirtual 99	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   211: putfield 101	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   214: aload_0
      //   215: invokevirtual 104	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:makeExtensionsImmutable	()V
      //   218: return
      //   219: goto -139 -> 80
      //   222: iconst_1
      //   223: istore_3
      //   224: goto -199 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	227	0	this	AnonymousLoginRsp
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
    
    private AnonymousLoginRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private AnonymousLoginRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static AnonymousLoginRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.openId_ = 0L;
      this.session_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1400();
    }
    
    public static Builder newBuilder(AnonymousLoginRsp paramAnonymousLoginRsp)
    {
      return newBuilder().mergeFrom(paramAnonymousLoginRsp);
    }
    
    public static AnonymousLoginRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (AnonymousLoginRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static AnonymousLoginRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (AnonymousLoginRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static AnonymousLoginRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (AnonymousLoginRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static AnonymousLoginRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (AnonymousLoginRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static AnonymousLoginRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (AnonymousLoginRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static AnonymousLoginRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (AnonymousLoginRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static AnonymousLoginRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (AnonymousLoginRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static AnonymousLoginRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (AnonymousLoginRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static AnonymousLoginRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (AnonymousLoginRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static AnonymousLoginRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (AnonymousLoginRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final AnonymousLoginRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getOpenId()
    {
      return this.openId_;
    }
    
    public final Parser<AnonymousLoginRsp> getParserForType()
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
        j = CodedOutputStream.computeUInt32Size(1, this.retCode_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt64Size(2, this.openId_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getSessionBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getSession()
    {
      Object localObject = this.session_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.session_ = str;
      }
      return str;
    }
    
    public final ByteString getSessionBytes()
    {
      Object localObject = this.session_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.session_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasOpenId()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasSession()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(AnonymousLoginRsp.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(2, this.openId_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getSessionBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements AnonymousLogin.AnonymousLoginRspOrBuilder
    {
      private int bitField0_;
      private long openId_;
      private int retCode_;
      private Object session_ = "";
      
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
        return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final AnonymousLogin.AnonymousLoginRsp build()
      {
        AnonymousLogin.AnonymousLoginRsp localAnonymousLoginRsp = buildPartial();
        if (!localAnonymousLoginRsp.isInitialized()) {
          throw newUninitializedMessageException(localAnonymousLoginRsp);
        }
        return localAnonymousLoginRsp;
      }
      
      public final AnonymousLogin.AnonymousLoginRsp buildPartial()
      {
        int j = 1;
        AnonymousLogin.AnonymousLoginRsp localAnonymousLoginRsp = new AnonymousLogin.AnonymousLoginRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          AnonymousLogin.AnonymousLoginRsp.access$1802(localAnonymousLoginRsp, this.retCode_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          AnonymousLogin.AnonymousLoginRsp.access$1902(localAnonymousLoginRsp, this.openId_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          AnonymousLogin.AnonymousLoginRsp.access$2002(localAnonymousLoginRsp, this.session_);
          AnonymousLogin.AnonymousLoginRsp.access$2102(localAnonymousLoginRsp, j);
          onBuilt();
          return localAnonymousLoginRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.openId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFD;
        this.session_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearOpenId()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.openId_ = 0L;
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
      
      public final Builder clearSession()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.session_ = AnonymousLogin.AnonymousLoginRsp.getDefaultInstance().getSession();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final AnonymousLogin.AnonymousLoginRsp getDefaultInstanceForType()
      {
        return AnonymousLogin.AnonymousLoginRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_descriptor;
      }
      
      public final long getOpenId()
      {
        return this.openId_;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final String getSession()
      {
        Object localObject = this.session_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.session_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSessionBytes()
      {
        Object localObject = this.session_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.session_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasOpenId()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSession()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return AnonymousLogin.internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(AnonymousLogin.AnonymousLoginRsp.class, Builder.class);
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
        //   2: getstatic 189	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 195 3 0
        //   12: checkcast 9	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 125	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 198	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 125	com/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp$Builder;
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
        if ((paramMessage instanceof AnonymousLogin.AnonymousLoginRsp)) {
          return mergeFrom((AnonymousLogin.AnonymousLoginRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(AnonymousLogin.AnonymousLoginRsp paramAnonymousLoginRsp)
      {
        if (paramAnonymousLoginRsp == AnonymousLogin.AnonymousLoginRsp.getDefaultInstance()) {
          return this;
        }
        if (paramAnonymousLoginRsp.hasRetCode()) {
          setRetCode(paramAnonymousLoginRsp.getRetCode());
        }
        if (paramAnonymousLoginRsp.hasOpenId()) {
          setOpenId(paramAnonymousLoginRsp.getOpenId());
        }
        if (paramAnonymousLoginRsp.hasSession())
        {
          this.bitField0_ |= 0x4;
          this.session_ = paramAnonymousLoginRsp.session_;
          onChanged();
        }
        mergeUnknownFields(paramAnonymousLoginRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setOpenId(long paramLong)
      {
        this.bitField0_ |= 0x2;
        this.openId_ = paramLong;
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
      
      public final Builder setSession(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.session_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSessionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.session_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface AnonymousLoginRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract long getOpenId();
    
    public abstract int getRetCode();
    
    public abstract String getSession();
    
    public abstract ByteString getSessionBytes();
    
    public abstract boolean hasOpenId();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasSession();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pb\AnonymousLogin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */