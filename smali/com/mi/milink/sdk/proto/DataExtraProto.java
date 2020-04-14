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
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.List;

public final class DataExtraProto
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_descriptor, new String[] { "Wid" });
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_DataClientIp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_DataExtra_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_DataLoglevel_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_DataLoglevel_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_DataLoglevel_descriptor, new String[] { "Loglevel", "TimeLong" });
  
  static
  {
    DataExtraProto.1 local1 = new DataExtraProto.1();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\023mns_dataextra.proto\022\027com.mi.milink.sdk.proto\":\n\tDataExtra\022\023\n\013engineratio\030\001 \001(\002\022\030\n\020engineConfigJson\030\005 \001(\t\"5\n\fDataClientIp\022\020\n\bclientIp\030\001 \001(\t\022\023\n\013clientIpIsp\030\002 \001(\t\"\037\n\020DataAnonymousWid\022\013\n\003wid\030\001 \001(\004\"2\n\fDataLoglevel\022\020\n\bloglevel\030\001 \001(\r\022\020\n\btimeLong\030\002 \001(\rB)\n\027com.mi.milink.sdk.protoB\016DataExtraProto" }, new Descriptors.FileDescriptor[0], local1);
    internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_com_mi_milink_sdk_proto_DataExtra_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor, new String[] { "Engineratio", "EngineConfigJson" });
    internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
    internal_static_com_mi_milink_sdk_proto_DataClientIp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor, new String[] { "ClientIp", "ClientIpIsp" });
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class DataAnonymousWid
    extends GeneratedMessage
    implements DataExtraProto.DataAnonymousWidOrBuilder
  {
    public static Parser<DataAnonymousWid> PARSER = new DataExtraProto.DataAnonymousWid.1();
    public static final int WID_FIELD_NUMBER = 1;
    private static final DataAnonymousWid defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    private long wid_;
    
    static
    {
      DataAnonymousWid localDataAnonymousWid = new DataAnonymousWid(true);
      defaultInstance = localDataAnonymousWid;
      localDataAnonymousWid.initFields();
    }
    
    /* Error */
    private DataAnonymousWid(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 57	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 59	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 48	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:initFields	()V
      //   18: invokestatic 65	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +100 -> 126
      //   29: aload_1
      //   30: invokevirtual 71	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+120->157, 0:+123->160, 8:+45->82
      //   64: aload_0
      //   65: aload_1
      //   66: aload 5
      //   68: aload_2
      //   69: iload 4
      //   71: invokevirtual 75	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   74: ifne -49 -> 25
      //   77: iconst_1
      //   78: istore_3
      //   79: goto -54 -> 25
      //   82: aload_0
      //   83: aload_0
      //   84: getfield 77	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:bitField0_	I
      //   87: iconst_1
      //   88: ior
      //   89: putfield 77	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:bitField0_	I
      //   92: aload_0
      //   93: aload_1
      //   94: invokevirtual 81	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   97: putfield 83	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:wid_	J
      //   100: goto -75 -> 25
      //   103: astore_1
      //   104: aload_1
      //   105: aload_0
      //   106: invokevirtual 87	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   109: athrow
      //   110: astore_1
      //   111: aload_0
      //   112: aload 5
      //   114: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   117: putfield 95	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   120: aload_0
      //   121: invokevirtual 98	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:makeExtensionsImmutable	()V
      //   124: aload_1
      //   125: athrow
      //   126: aload_0
      //   127: aload 5
      //   129: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   132: putfield 95	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   135: aload_0
      //   136: invokevirtual 98	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:makeExtensionsImmutable	()V
      //   139: return
      //   140: astore_1
      //   141: new 52	com/google/protobuf/InvalidProtocolBufferException
      //   144: dup
      //   145: aload_1
      //   146: invokevirtual 102	java/io/IOException:getMessage	()Ljava/lang/String;
      //   149: invokespecial 105	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   152: aload_0
      //   153: invokevirtual 87	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   156: athrow
      //   157: goto -93 -> 64
      //   160: iconst_1
      //   161: istore_3
      //   162: goto -137 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	165	0	this	DataAnonymousWid
      //   0	165	1	paramCodedInputStream	CodedInputStream
      //   0	165	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	138	3	i	int
      //   33	37	4	j	int
      //   21	107	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	103	com/google/protobuf/InvalidProtocolBufferException
      //   64	77	103	com/google/protobuf/InvalidProtocolBufferException
      //   82	100	103	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	110	finally
      //   64	77	110	finally
      //   82	100	110	finally
      //   104	110	110	finally
      //   141	157	110	finally
      //   29	35	140	java/io/IOException
      //   64	77	140	java/io/IOException
      //   82	100	140	java/io/IOException
    }
    
    private DataAnonymousWid(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private DataAnonymousWid(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static DataAnonymousWid getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_descriptor;
    }
    
    private void initFields()
    {
      this.wid_ = 0L;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$2300();
    }
    
    public static Builder newBuilder(DataAnonymousWid paramDataAnonymousWid)
    {
      return newBuilder().mergeFrom(paramDataAnonymousWid);
    }
    
    public static DataAnonymousWid parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DataAnonymousWid)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static DataAnonymousWid parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataAnonymousWid)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DataAnonymousWid parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (DataAnonymousWid)PARSER.parseFrom(paramByteString);
    }
    
    public static DataAnonymousWid parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DataAnonymousWid)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static DataAnonymousWid parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (DataAnonymousWid)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static DataAnonymousWid parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataAnonymousWid)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static DataAnonymousWid parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DataAnonymousWid)PARSER.parseFrom(paramInputStream);
    }
    
    public static DataAnonymousWid parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataAnonymousWid)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DataAnonymousWid parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (DataAnonymousWid)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static DataAnonymousWid parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DataAnonymousWid)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final DataAnonymousWid getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<DataAnonymousWid> getParserForType()
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
        i = CodedOutputStream.computeUInt64Size(1, this.wid_) + 0;
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final long getWid()
    {
      return this.wid_;
    }
    
    public final boolean hasWid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_fieldAccessorTable.ensureFieldAccessorsInitialized(DataAnonymousWid.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(1, this.wid_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements DataExtraProto.DataAnonymousWidOrBuilder
    {
      private int bitField0_;
      private long wid_;
      
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
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final DataExtraProto.DataAnonymousWid build()
      {
        DataExtraProto.DataAnonymousWid localDataAnonymousWid = buildPartial();
        if (!localDataAnonymousWid.isInitialized()) {
          throw newUninitializedMessageException(localDataAnonymousWid);
        }
        return localDataAnonymousWid;
      }
      
      public final DataExtraProto.DataAnonymousWid buildPartial()
      {
        int i = 1;
        DataExtraProto.DataAnonymousWid localDataAnonymousWid = new DataExtraProto.DataAnonymousWid(this, null);
        if ((this.bitField0_ & 0x1) == 1) {}
        for (;;)
        {
          DataExtraProto.DataAnonymousWid.access$2702(localDataAnonymousWid, this.wid_);
          DataExtraProto.DataAnonymousWid.access$2802(localDataAnonymousWid, i);
          onBuilt();
          return localDataAnonymousWid;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.wid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        return this;
      }
      
      public final Builder clearWid()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.wid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final DataExtraProto.DataAnonymousWid getDefaultInstanceForType()
      {
        return DataExtraProto.DataAnonymousWid.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_descriptor;
      }
      
      public final long getWid()
      {
        return this.wid_;
      }
      
      public final boolean hasWid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_fieldAccessorTable.ensureFieldAccessorsInitialized(DataExtraProto.DataAnonymousWid.class, Builder.class);
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
        //   2: getstatic 145	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 151 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 100	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 154	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 100	com/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;
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
        if ((paramMessage instanceof DataExtraProto.DataAnonymousWid)) {
          return mergeFrom((DataExtraProto.DataAnonymousWid)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(DataExtraProto.DataAnonymousWid paramDataAnonymousWid)
      {
        if (paramDataAnonymousWid == DataExtraProto.DataAnonymousWid.getDefaultInstance()) {
          return this;
        }
        if (paramDataAnonymousWid.hasWid()) {
          setWid(paramDataAnonymousWid.getWid());
        }
        mergeUnknownFields(paramDataAnonymousWid.getUnknownFields());
        return this;
      }
      
      public final Builder setWid(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.wid_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface DataAnonymousWidOrBuilder
    extends MessageOrBuilder
  {
    public abstract long getWid();
    
    public abstract boolean hasWid();
  }
  
  public static final class DataClientIp
    extends GeneratedMessage
    implements DataExtraProto.DataClientIpOrBuilder
  {
    public static final int CLIENTIPISP_FIELD_NUMBER = 2;
    public static final int CLIENTIP_FIELD_NUMBER = 1;
    public static Parser<DataClientIp> PARSER = new DataExtraProto.DataClientIp.1();
    private static final DataClientIp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object clientIpIsp_;
    private Object clientIp_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      DataClientIp localDataClientIp = new DataClientIp(true);
      defaultInstance = localDataClientIp;
      localDataClientIp.initFields();
    }
    
    /* Error */
    private DataClientIp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:initFields	()V
      //   18: invokestatic 69	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +154 -> 180
      //   29: aload_1
      //   30: invokevirtual 75	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+157->194, 0:+160->197, 10:+53->90, 18:+101->138
      //   72: aload_0
      //   73: aload_1
      //   74: aload 5
      //   76: aload_2
      //   77: iload 4
      //   79: invokevirtual 79	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_1
      //   91: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   94: astore 6
      //   96: aload_0
      //   97: aload_0
      //   98: getfield 85	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:bitField0_	I
      //   101: iconst_1
      //   102: ior
      //   103: putfield 85	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:bitField0_	I
      //   106: aload_0
      //   107: aload 6
      //   109: putfield 87	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:clientIp_	Ljava/lang/Object;
      //   112: goto -87 -> 25
      //   115: astore_1
      //   116: aload_1
      //   117: aload_0
      //   118: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   121: athrow
      //   122: astore_1
      //   123: aload_0
      //   124: aload 5
      //   126: invokevirtual 97	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   129: putfield 99	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   132: aload_0
      //   133: invokevirtual 102	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:makeExtensionsImmutable	()V
      //   136: aload_1
      //   137: athrow
      //   138: aload_1
      //   139: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   142: astore 6
      //   144: aload_0
      //   145: aload_0
      //   146: getfield 85	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:bitField0_	I
      //   149: iconst_2
      //   150: ior
      //   151: putfield 85	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:bitField0_	I
      //   154: aload_0
      //   155: aload 6
      //   157: putfield 104	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:clientIpIsp_	Ljava/lang/Object;
      //   160: goto -135 -> 25
      //   163: astore_1
      //   164: new 56	com/google/protobuf/InvalidProtocolBufferException
      //   167: dup
      //   168: aload_1
      //   169: invokevirtual 108	java/io/IOException:getMessage	()Ljava/lang/String;
      //   172: invokespecial 111	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   175: aload_0
      //   176: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   179: athrow
      //   180: aload_0
      //   181: aload 5
      //   183: invokevirtual 97	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   186: putfield 99	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   189: aload_0
      //   190: invokevirtual 102	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:makeExtensionsImmutable	()V
      //   193: return
      //   194: goto -122 -> 72
      //   197: iconst_1
      //   198: istore_3
      //   199: goto -174 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	202	0	this	DataClientIp
      //   0	202	1	paramCodedInputStream	CodedInputStream
      //   0	202	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	175	3	i	int
      //   33	45	4	j	int
      //   21	161	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   94	62	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	115	com/google/protobuf/InvalidProtocolBufferException
      //   72	85	115	com/google/protobuf/InvalidProtocolBufferException
      //   90	112	115	com/google/protobuf/InvalidProtocolBufferException
      //   138	160	115	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	122	finally
      //   72	85	122	finally
      //   90	112	122	finally
      //   116	122	122	finally
      //   138	160	122	finally
      //   164	180	122	finally
      //   29	35	163	java/io/IOException
      //   72	85	163	java/io/IOException
      //   90	112	163	java/io/IOException
      //   138	160	163	java/io/IOException
    }
    
    private DataClientIp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private DataClientIp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static DataClientIp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor;
    }
    
    private void initFields()
    {
      this.clientIp_ = "";
      this.clientIpIsp_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1300();
    }
    
    public static Builder newBuilder(DataClientIp paramDataClientIp)
    {
      return newBuilder().mergeFrom(paramDataClientIp);
    }
    
    public static DataClientIp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DataClientIp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static DataClientIp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataClientIp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DataClientIp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (DataClientIp)PARSER.parseFrom(paramByteString);
    }
    
    public static DataClientIp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DataClientIp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static DataClientIp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (DataClientIp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static DataClientIp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataClientIp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static DataClientIp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DataClientIp)PARSER.parseFrom(paramInputStream);
    }
    
    public static DataClientIp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataClientIp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DataClientIp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (DataClientIp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static DataClientIp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DataClientIp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getClientIp()
    {
      Object localObject = this.clientIp_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.clientIp_ = str;
      }
      return str;
    }
    
    public final ByteString getClientIpBytes()
    {
      Object localObject = this.clientIp_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.clientIp_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getClientIpIsp()
    {
      Object localObject = this.clientIpIsp_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.clientIpIsp_ = str;
      }
      return str;
    }
    
    public final ByteString getClientIpIspBytes()
    {
      Object localObject = this.clientIpIsp_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.clientIpIsp_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final DataClientIp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<DataClientIp> getParserForType()
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
        i = CodedOutputStream.computeBytesSize(1, getClientIpBytes()) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeBytesSize(2, getClientIpIspBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasClientIp()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasClientIpIsp()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataClientIp_fieldAccessorTable.ensureFieldAccessorsInitialized(DataClientIp.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getClientIpBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getClientIpIspBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements DataExtraProto.DataClientIpOrBuilder
    {
      private int bitField0_;
      private Object clientIpIsp_ = "";
      private Object clientIp_ = "";
      
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
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final DataExtraProto.DataClientIp build()
      {
        DataExtraProto.DataClientIp localDataClientIp = buildPartial();
        if (!localDataClientIp.isInitialized()) {
          throw newUninitializedMessageException(localDataClientIp);
        }
        return localDataClientIp;
      }
      
      public final DataExtraProto.DataClientIp buildPartial()
      {
        int i = 1;
        DataExtraProto.DataClientIp localDataClientIp = new DataExtraProto.DataClientIp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          DataExtraProto.DataClientIp.access$1702(localDataClientIp, this.clientIp_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          DataExtraProto.DataClientIp.access$1802(localDataClientIp, this.clientIpIsp_);
          DataExtraProto.DataClientIp.access$1902(localDataClientIp, j);
          onBuilt();
          return localDataClientIp;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.clientIp_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.clientIpIsp_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearClientIp()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.clientIp_ = DataExtraProto.DataClientIp.getDefaultInstance().getClientIp();
        onChanged();
        return this;
      }
      
      public final Builder clearClientIpIsp()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.clientIpIsp_ = DataExtraProto.DataClientIp.getDefaultInstance().getClientIpIsp();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getClientIp()
      {
        Object localObject = this.clientIp_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.clientIp_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getClientIpBytes()
      {
        Object localObject = this.clientIp_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.clientIp_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getClientIpIsp()
      {
        Object localObject = this.clientIpIsp_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.clientIpIsp_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getClientIpIspBytes()
      {
        Object localObject = this.clientIpIsp_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.clientIpIsp_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final DataExtraProto.DataClientIp getDefaultInstanceForType()
      {
        return DataExtraProto.DataClientIp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor;
      }
      
      public final boolean hasClientIp()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasClientIpIsp()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataClientIp_fieldAccessorTable.ensureFieldAccessorsInitialized(DataExtraProto.DataClientIp.class, Builder.class);
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
        //   2: getstatic 177	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 183 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 119	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 186	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 119	com/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder;
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
        if ((paramMessage instanceof DataExtraProto.DataClientIp)) {
          return mergeFrom((DataExtraProto.DataClientIp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(DataExtraProto.DataClientIp paramDataClientIp)
      {
        if (paramDataClientIp == DataExtraProto.DataClientIp.getDefaultInstance()) {
          return this;
        }
        if (paramDataClientIp.hasClientIp())
        {
          this.bitField0_ |= 0x1;
          this.clientIp_ = paramDataClientIp.clientIp_;
          onChanged();
        }
        if (paramDataClientIp.hasClientIpIsp())
        {
          this.bitField0_ |= 0x2;
          this.clientIpIsp_ = paramDataClientIp.clientIpIsp_;
          onChanged();
        }
        mergeUnknownFields(paramDataClientIp.getUnknownFields());
        return this;
      }
      
      public final Builder setClientIp(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.clientIp_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setClientIpBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.clientIp_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setClientIpIsp(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.clientIpIsp_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setClientIpIspBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.clientIpIsp_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface DataClientIpOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getClientIp();
    
    public abstract ByteString getClientIpBytes();
    
    public abstract String getClientIpIsp();
    
    public abstract ByteString getClientIpIspBytes();
    
    public abstract boolean hasClientIp();
    
    public abstract boolean hasClientIpIsp();
  }
  
  public static final class DataExtra
    extends GeneratedMessage
    implements DataExtraProto.DataExtraOrBuilder
  {
    public static final int ENGINECONFIGJSON_FIELD_NUMBER = 5;
    public static final int ENGINERATIO_FIELD_NUMBER = 1;
    public static Parser<DataExtra> PARSER = new DataExtraProto.DataExtra.1();
    private static final DataExtra defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object engineConfigJson_;
    private float engineratio_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      DataExtra localDataExtra = new DataExtra(true);
      defaultInstance = localDataExtra;
      localDataExtra.initFields();
    }
    
    /* Error */
    private DataExtra(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 60	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 62	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 64	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 53	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:initFields	()V
      //   18: invokestatic 70	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +150 -> 176
      //   29: aload_1
      //   30: invokevirtual 76	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+153->190, 0:+156->193, 13:+53->90, 42:+97->134
      //   72: aload_0
      //   73: aload_1
      //   74: aload 5
      //   76: aload_2
      //   77: iload 4
      //   79: invokevirtual 80	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 82	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 82	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 86	com/google/protobuf/CodedInputStream:readFloat	()F
      //   105: putfield 88	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:engineratio_	F
      //   108: goto -83 -> 25
      //   111: astore_1
      //   112: aload_1
      //   113: aload_0
      //   114: invokevirtual 92	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   117: athrow
      //   118: astore_1
      //   119: aload_0
      //   120: aload 5
      //   122: invokevirtual 98	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   125: putfield 100	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 103	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_1
      //   135: invokevirtual 107	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   138: astore 6
      //   140: aload_0
      //   141: aload_0
      //   142: getfield 82	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:bitField0_	I
      //   145: iconst_2
      //   146: ior
      //   147: putfield 82	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:bitField0_	I
      //   150: aload_0
      //   151: aload 6
      //   153: putfield 109	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:engineConfigJson_	Ljava/lang/Object;
      //   156: goto -131 -> 25
      //   159: astore_1
      //   160: new 57	com/google/protobuf/InvalidProtocolBufferException
      //   163: dup
      //   164: aload_1
      //   165: invokevirtual 113	java/io/IOException:getMessage	()Ljava/lang/String;
      //   168: invokespecial 116	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   171: aload_0
      //   172: invokevirtual 92	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   175: athrow
      //   176: aload_0
      //   177: aload 5
      //   179: invokevirtual 98	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   182: putfield 100	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   185: aload_0
      //   186: invokevirtual 103	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:makeExtensionsImmutable	()V
      //   189: return
      //   190: goto -118 -> 72
      //   193: iconst_1
      //   194: istore_3
      //   195: goto -170 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	198	0	this	DataExtra
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
    
    private DataExtra(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private DataExtra(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static DataExtra getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor;
    }
    
    private void initFields()
    {
      this.engineratio_ = 0.0F;
      this.engineConfigJson_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(DataExtra paramDataExtra)
    {
      return newBuilder().mergeFrom(paramDataExtra);
    }
    
    public static DataExtra parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DataExtra)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static DataExtra parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataExtra)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DataExtra parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (DataExtra)PARSER.parseFrom(paramByteString);
    }
    
    public static DataExtra parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DataExtra)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static DataExtra parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (DataExtra)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static DataExtra parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataExtra)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static DataExtra parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DataExtra)PARSER.parseFrom(paramInputStream);
    }
    
    public static DataExtra parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataExtra)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DataExtra parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (DataExtra)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static DataExtra parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DataExtra)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final DataExtra getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getEngineConfigJson()
    {
      Object localObject = this.engineConfigJson_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.engineConfigJson_ = str;
      }
      return str;
    }
    
    public final ByteString getEngineConfigJsonBytes()
    {
      Object localObject = this.engineConfigJson_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.engineConfigJson_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final float getEngineratio()
    {
      return this.engineratio_;
    }
    
    public final Parser<DataExtra> getParserForType()
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
        i = CodedOutputStream.computeFloatSize(1, this.engineratio_) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeBytesSize(5, getEngineConfigJsonBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasEngineConfigJson()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasEngineratio()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataExtra_fieldAccessorTable.ensureFieldAccessorsInitialized(DataExtra.class, Builder.class);
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
        paramCodedOutputStream.writeFloat(1, this.engineratio_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(5, getEngineConfigJsonBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements DataExtraProto.DataExtraOrBuilder
    {
      private int bitField0_;
      private Object engineConfigJson_ = "";
      private float engineratio_;
      
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
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final DataExtraProto.DataExtra build()
      {
        DataExtraProto.DataExtra localDataExtra = buildPartial();
        if (!localDataExtra.isInitialized()) {
          throw newUninitializedMessageException(localDataExtra);
        }
        return localDataExtra;
      }
      
      public final DataExtraProto.DataExtra buildPartial()
      {
        int i = 1;
        DataExtraProto.DataExtra localDataExtra = new DataExtraProto.DataExtra(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          DataExtraProto.DataExtra.access$702(localDataExtra, this.engineratio_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          DataExtraProto.DataExtra.access$802(localDataExtra, this.engineConfigJson_);
          DataExtraProto.DataExtra.access$902(localDataExtra, j);
          onBuilt();
          return localDataExtra;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.engineratio_ = 0.0F;
        this.bitField0_ &= 0xFFFFFFFE;
        this.engineConfigJson_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearEngineConfigJson()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.engineConfigJson_ = DataExtraProto.DataExtra.getDefaultInstance().getEngineConfigJson();
        onChanged();
        return this;
      }
      
      public final Builder clearEngineratio()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.engineratio_ = 0.0F;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final DataExtraProto.DataExtra getDefaultInstanceForType()
      {
        return DataExtraProto.DataExtra.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor;
      }
      
      public final String getEngineConfigJson()
      {
        Object localObject = this.engineConfigJson_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.engineConfigJson_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getEngineConfigJsonBytes()
      {
        Object localObject = this.engineConfigJson_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.engineConfigJson_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final float getEngineratio()
      {
        return this.engineratio_;
      }
      
      public final boolean hasEngineConfigJson()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasEngineratio()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataExtra_fieldAccessorTable.ensureFieldAccessorsInitialized(DataExtraProto.DataExtra.class, Builder.class);
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
        //   2: getstatic 177	com/mi/milink/sdk/proto/DataExtraProto$DataExtra:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 183 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/DataExtraProto$DataExtra
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 118	com/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 186	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/DataExtraProto$DataExtra
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 118	com/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;
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
        if ((paramMessage instanceof DataExtraProto.DataExtra)) {
          return mergeFrom((DataExtraProto.DataExtra)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(DataExtraProto.DataExtra paramDataExtra)
      {
        if (paramDataExtra == DataExtraProto.DataExtra.getDefaultInstance()) {
          return this;
        }
        if (paramDataExtra.hasEngineratio()) {
          setEngineratio(paramDataExtra.getEngineratio());
        }
        if (paramDataExtra.hasEngineConfigJson())
        {
          this.bitField0_ |= 0x2;
          this.engineConfigJson_ = paramDataExtra.engineConfigJson_;
          onChanged();
        }
        mergeUnknownFields(paramDataExtra.getUnknownFields());
        return this;
      }
      
      public final Builder setEngineConfigJson(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.engineConfigJson_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setEngineConfigJsonBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.engineConfigJson_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setEngineratio(float paramFloat)
      {
        this.bitField0_ |= 0x1;
        this.engineratio_ = paramFloat;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface DataExtraOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getEngineConfigJson();
    
    public abstract ByteString getEngineConfigJsonBytes();
    
    public abstract float getEngineratio();
    
    public abstract boolean hasEngineConfigJson();
    
    public abstract boolean hasEngineratio();
  }
  
  public static final class DataLoglevel
    extends GeneratedMessage
    implements DataExtraProto.DataLoglevelOrBuilder
  {
    public static final int LOGLEVEL_FIELD_NUMBER = 1;
    public static Parser<DataLoglevel> PARSER = new DataExtraProto.DataLoglevel.1();
    public static final int TIMELONG_FIELD_NUMBER = 2;
    private static final DataLoglevel defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int loglevel_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int timeLong_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      DataLoglevel localDataLoglevel = new DataLoglevel(true);
      defaultInstance = localDataLoglevel;
      localDataLoglevel.initFields();
    }
    
    /* Error */
    private DataLoglevel(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 58	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 60	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 62	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 51	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:initFields	()V
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
      //   79: invokevirtual 78	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 80	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 80	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 83	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   105: putfield 85	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:loglevel_	I
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
      //   125: putfield 97	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 100	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_0
      //   135: aload_0
      //   136: getfield 80	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:bitField0_	I
      //   139: iconst_2
      //   140: ior
      //   141: putfield 80	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:bitField0_	I
      //   144: aload_0
      //   145: aload_1
      //   146: invokevirtual 83	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   149: putfield 102	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:timeLong_	I
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
      //   178: putfield 97	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   181: aload_0
      //   182: invokevirtual 100	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:makeExtensionsImmutable	()V
      //   185: return
      //   186: goto -114 -> 72
      //   189: iconst_1
      //   190: istore_3
      //   191: goto -166 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	194	0	this	DataLoglevel
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
    
    private DataLoglevel(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private DataLoglevel(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static DataLoglevel getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataLoglevel_descriptor;
    }
    
    private void initFields()
    {
      this.loglevel_ = 0;
      this.timeLong_ = 0;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$3200();
    }
    
    public static Builder newBuilder(DataLoglevel paramDataLoglevel)
    {
      return newBuilder().mergeFrom(paramDataLoglevel);
    }
    
    public static DataLoglevel parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DataLoglevel)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static DataLoglevel parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataLoglevel)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DataLoglevel parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (DataLoglevel)PARSER.parseFrom(paramByteString);
    }
    
    public static DataLoglevel parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DataLoglevel)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static DataLoglevel parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (DataLoglevel)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static DataLoglevel parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataLoglevel)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static DataLoglevel parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DataLoglevel)PARSER.parseFrom(paramInputStream);
    }
    
    public static DataLoglevel parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DataLoglevel)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DataLoglevel parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (DataLoglevel)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static DataLoglevel parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DataLoglevel)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final DataLoglevel getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getLoglevel()
    {
      return this.loglevel_;
    }
    
    public final Parser<DataLoglevel> getParserForType()
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
      return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataLoglevel_fieldAccessorTable.ensureFieldAccessorsInitialized(DataLoglevel.class, Builder.class);
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
      implements DataExtraProto.DataLoglevelOrBuilder
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
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataLoglevel_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final DataExtraProto.DataLoglevel build()
      {
        DataExtraProto.DataLoglevel localDataLoglevel = buildPartial();
        if (!localDataLoglevel.isInitialized()) {
          throw newUninitializedMessageException(localDataLoglevel);
        }
        return localDataLoglevel;
      }
      
      public final DataExtraProto.DataLoglevel buildPartial()
      {
        int i = 1;
        DataExtraProto.DataLoglevel localDataLoglevel = new DataExtraProto.DataLoglevel(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          DataExtraProto.DataLoglevel.access$3602(localDataLoglevel, this.loglevel_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          DataExtraProto.DataLoglevel.access$3702(localDataLoglevel, this.timeLong_);
          DataExtraProto.DataLoglevel.access$3802(localDataLoglevel, j);
          onBuilt();
          return localDataLoglevel;
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
      
      public final DataExtraProto.DataLoglevel getDefaultInstanceForType()
      {
        return DataExtraProto.DataLoglevel.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataLoglevel_descriptor;
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
        return DataExtraProto.internal_static_com_mi_milink_sdk_proto_DataLoglevel_fieldAccessorTable.ensureFieldAccessorsInitialized(DataExtraProto.DataLoglevel.class, Builder.class);
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
        //   2: getstatic 152	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 158 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 105	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 161	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 105	com/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder;
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
        if ((paramMessage instanceof DataExtraProto.DataLoglevel)) {
          return mergeFrom((DataExtraProto.DataLoglevel)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(DataExtraProto.DataLoglevel paramDataLoglevel)
      {
        if (paramDataLoglevel == DataExtraProto.DataLoglevel.getDefaultInstance()) {
          return this;
        }
        if (paramDataLoglevel.hasLoglevel()) {
          setLoglevel(paramDataLoglevel.getLoglevel());
        }
        if (paramDataLoglevel.hasTimeLong()) {
          setTimeLong(paramDataLoglevel.getTimeLong());
        }
        mergeUnknownFields(paramDataLoglevel.getUnknownFields());
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
  
  public static abstract interface DataLoglevelOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getLoglevel();
    
    public abstract int getTimeLong();
    
    public abstract boolean hasLoglevel();
    
    public abstract boolean hasTimeLong();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\proto\DataExtraProto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */