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

public final class DownstreamPacketProto
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_DownstreamPacket_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_DownstreamPacket_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_ExtraInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_ExtraInfo_fieldAccessorTable;
  
  static
  {
    DownstreamPacketProto.1 local1 = new DownstreamPacketProto.1();
    Descriptors.FileDescriptor localFileDescriptor = UpstreamPacketProto.getDescriptor();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\032proto/mns_downstream.proto\022\027com.mi.milink.sdk.proto\032\030proto/mns_upstream.proto\"ã\001\n\020DownstreamPacket\022\013\n\003seq\030\001 \001(\r\022\r\n\005miUin\030\002 \001(\004\022\017\n\007mnsCode\030\003 \001(\021\022\020\n\bbusiCode\030\004 \001(\021\022\022\n\nserviceCmd\030\005 \001(\t\022\020\n\bbusiBuff\030\006 \001(\f\022\r\n\005extra\030\007 \001(\f\022\021\n\tmnsErrMsg\030\b \001(\t\022\r\n\005miUid\030\t \001(\t\0229\n\013busiControl\030\n \001(\0132$.com.mi.milink.sdk.proto.BusiControl\"\"\n\tExtraInfo\022\025\n\rhasClientInfo\030\001 \001(\bB0\n\027com.mi.milink.sdk.protoB\025DownstreamPacketProto" }, new Descriptors.FileDescriptor[] { localFileDescriptor }, local1);
    internal_static_com_mi_milink_sdk_proto_DownstreamPacket_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_com_mi_milink_sdk_proto_DownstreamPacket_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_DownstreamPacket_descriptor, new String[] { "Seq", "MiUin", "MnsCode", "BusiCode", "ServiceCmd", "BusiBuff", "Extra", "MnsErrMsg", "MiUid", "BusiControl" });
    internal_static_com_mi_milink_sdk_proto_ExtraInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
    internal_static_com_mi_milink_sdk_proto_ExtraInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_ExtraInfo_descriptor, new String[] { "HasClientInfo" });
    UpstreamPacketProto.getDescriptor();
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class DownstreamPacket
    extends GeneratedMessage
    implements DownstreamPacketProto.DownstreamPacketOrBuilder
  {
    public static final int BUSIBUFF_FIELD_NUMBER = 6;
    public static final int BUSICODE_FIELD_NUMBER = 4;
    public static final int BUSICONTROL_FIELD_NUMBER = 10;
    public static final int EXTRA_FIELD_NUMBER = 7;
    public static final int MIUID_FIELD_NUMBER = 9;
    public static final int MIUIN_FIELD_NUMBER = 2;
    public static final int MNSCODE_FIELD_NUMBER = 3;
    public static final int MNSERRMSG_FIELD_NUMBER = 8;
    public static Parser<DownstreamPacket> PARSER = new DownstreamPacketProto.DownstreamPacket.1();
    public static final int SEQ_FIELD_NUMBER = 1;
    public static final int SERVICECMD_FIELD_NUMBER = 5;
    private static final DownstreamPacket defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private ByteString busiBuff_;
    private int busiCode_;
    private UpstreamPacketProto.BusiControl busiControl_;
    private ByteString extra_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object miUid_;
    private long miUin_;
    private int mnsCode_;
    private Object mnsErrMsg_;
    private int seq_;
    private Object serviceCmd_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      DownstreamPacket localDownstreamPacket = new DownstreamPacket(true);
      defaultInstance = localDownstreamPacket;
      localDownstreamPacket.initFields();
    }
    
    /* Error */
    private DownstreamPacket(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 85	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 87	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 89	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 78	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:initFields	()V
      //   18: invokestatic 95	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 6
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +454 -> 480
      //   29: aload_1
      //   30: invokevirtual 101	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+463->500, 0:+466->503, 8:+117->154, 16:+161->198, 24:+199->236, 32:+220->257, 42:+242->279, 50:+268->305, 58:+290->327, 66:+312->349, 74:+339->376, 82:+366->403
      //   136: aload_0
      //   137: aload_1
      //   138: aload 6
      //   140: aload_2
      //   141: iload 4
      //   143: invokevirtual 105	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   146: ifne -121 -> 25
      //   149: iconst_1
      //   150: istore_3
      //   151: goto -126 -> 25
      //   154: aload_0
      //   155: aload_0
      //   156: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   159: iconst_1
      //   160: ior
      //   161: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   164: aload_0
      //   165: aload_1
      //   166: invokevirtual 110	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   169: putfield 112	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:seq_	I
      //   172: goto -147 -> 25
      //   175: astore_1
      //   176: aload_1
      //   177: aload_0
      //   178: invokevirtual 116	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   181: athrow
      //   182: astore_1
      //   183: aload_0
      //   184: aload 6
      //   186: invokevirtual 122	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   189: putfield 124	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   192: aload_0
      //   193: invokevirtual 127	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:makeExtensionsImmutable	()V
      //   196: aload_1
      //   197: athrow
      //   198: aload_0
      //   199: aload_0
      //   200: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   203: iconst_2
      //   204: ior
      //   205: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   208: aload_0
      //   209: aload_1
      //   210: invokevirtual 131	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   213: putfield 133	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:miUin_	J
      //   216: goto -191 -> 25
      //   219: astore_1
      //   220: new 82	com/google/protobuf/InvalidProtocolBufferException
      //   223: dup
      //   224: aload_1
      //   225: invokevirtual 137	java/io/IOException:getMessage	()Ljava/lang/String;
      //   228: invokespecial 140	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   231: aload_0
      //   232: invokevirtual 116	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   235: athrow
      //   236: aload_0
      //   237: aload_0
      //   238: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   241: iconst_4
      //   242: ior
      //   243: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   246: aload_0
      //   247: aload_1
      //   248: invokevirtual 143	com/google/protobuf/CodedInputStream:readSInt32	()I
      //   251: putfield 145	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:mnsCode_	I
      //   254: goto -229 -> 25
      //   257: aload_0
      //   258: aload_0
      //   259: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   262: bipush 8
      //   264: ior
      //   265: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   268: aload_0
      //   269: aload_1
      //   270: invokevirtual 143	com/google/protobuf/CodedInputStream:readSInt32	()I
      //   273: putfield 147	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:busiCode_	I
      //   276: goto -251 -> 25
      //   279: aload_1
      //   280: invokevirtual 151	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   283: astore 5
      //   285: aload_0
      //   286: aload_0
      //   287: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   290: bipush 16
      //   292: ior
      //   293: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   296: aload_0
      //   297: aload 5
      //   299: putfield 153	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:serviceCmd_	Ljava/lang/Object;
      //   302: goto -277 -> 25
      //   305: aload_0
      //   306: aload_0
      //   307: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   310: bipush 32
      //   312: ior
      //   313: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   316: aload_0
      //   317: aload_1
      //   318: invokevirtual 151	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   321: putfield 155	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:busiBuff_	Lcom/google/protobuf/ByteString;
      //   324: goto -299 -> 25
      //   327: aload_0
      //   328: aload_0
      //   329: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   332: bipush 64
      //   334: ior
      //   335: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   338: aload_0
      //   339: aload_1
      //   340: invokevirtual 151	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   343: putfield 157	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:extra_	Lcom/google/protobuf/ByteString;
      //   346: goto -321 -> 25
      //   349: aload_1
      //   350: invokevirtual 151	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   353: astore 5
      //   355: aload_0
      //   356: aload_0
      //   357: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   360: sipush 128
      //   363: ior
      //   364: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   367: aload_0
      //   368: aload 5
      //   370: putfield 159	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:mnsErrMsg_	Ljava/lang/Object;
      //   373: goto -348 -> 25
      //   376: aload_1
      //   377: invokevirtual 151	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   380: astore 5
      //   382: aload_0
      //   383: aload_0
      //   384: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   387: sipush 256
      //   390: ior
      //   391: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   394: aload_0
      //   395: aload 5
      //   397: putfield 161	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:miUid_	Ljava/lang/Object;
      //   400: goto -375 -> 25
      //   403: aload_0
      //   404: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   407: sipush 512
      //   410: iand
      //   411: sipush 512
      //   414: if_icmpne +80 -> 494
      //   417: aload_0
      //   418: getfield 163	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:busiControl_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   421: invokevirtual 169	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:toBuilder	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;
      //   424: astore 5
      //   426: aload_0
      //   427: aload_1
      //   428: getstatic 170	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl:PARSER	Lcom/google/protobuf/Parser;
      //   431: aload_2
      //   432: invokevirtual 174	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   435: checkcast 165	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl
      //   438: putfield 163	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:busiControl_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   441: aload 5
      //   443: ifnull +22 -> 465
      //   446: aload 5
      //   448: aload_0
      //   449: getfield 163	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:busiControl_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   452: invokevirtual 180	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;
      //   455: pop
      //   456: aload_0
      //   457: aload 5
      //   459: invokevirtual 184	com/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   462: putfield 163	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:busiControl_	Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
      //   465: aload_0
      //   466: aload_0
      //   467: getfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   470: sipush 512
      //   473: ior
      //   474: putfield 107	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:bitField0_	I
      //   477: goto -452 -> 25
      //   480: aload_0
      //   481: aload 6
      //   483: invokevirtual 122	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   486: putfield 124	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   489: aload_0
      //   490: invokevirtual 127	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:makeExtensionsImmutable	()V
      //   493: return
      //   494: aconst_null
      //   495: astore 5
      //   497: goto -71 -> 426
      //   500: goto -364 -> 136
      //   503: iconst_1
      //   504: istore_3
      //   505: goto -480 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	508	0	this	DownstreamPacket
      //   0	508	1	paramCodedInputStream	CodedInputStream
      //   0	508	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	481	3	i	int
      //   33	109	4	j	int
      //   283	213	5	localObject	Object
      //   21	461	6	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	175	com/google/protobuf/InvalidProtocolBufferException
      //   136	149	175	com/google/protobuf/InvalidProtocolBufferException
      //   154	172	175	com/google/protobuf/InvalidProtocolBufferException
      //   198	216	175	com/google/protobuf/InvalidProtocolBufferException
      //   236	254	175	com/google/protobuf/InvalidProtocolBufferException
      //   257	276	175	com/google/protobuf/InvalidProtocolBufferException
      //   279	302	175	com/google/protobuf/InvalidProtocolBufferException
      //   305	324	175	com/google/protobuf/InvalidProtocolBufferException
      //   327	346	175	com/google/protobuf/InvalidProtocolBufferException
      //   349	373	175	com/google/protobuf/InvalidProtocolBufferException
      //   376	400	175	com/google/protobuf/InvalidProtocolBufferException
      //   403	426	175	com/google/protobuf/InvalidProtocolBufferException
      //   426	441	175	com/google/protobuf/InvalidProtocolBufferException
      //   446	465	175	com/google/protobuf/InvalidProtocolBufferException
      //   465	477	175	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	182	finally
      //   136	149	182	finally
      //   154	172	182	finally
      //   176	182	182	finally
      //   198	216	182	finally
      //   220	236	182	finally
      //   236	254	182	finally
      //   257	276	182	finally
      //   279	302	182	finally
      //   305	324	182	finally
      //   327	346	182	finally
      //   349	373	182	finally
      //   376	400	182	finally
      //   403	426	182	finally
      //   426	441	182	finally
      //   446	465	182	finally
      //   465	477	182	finally
      //   29	35	219	java/io/IOException
      //   136	149	219	java/io/IOException
      //   154	172	219	java/io/IOException
      //   198	216	219	java/io/IOException
      //   236	254	219	java/io/IOException
      //   257	276	219	java/io/IOException
      //   279	302	219	java/io/IOException
      //   305	324	219	java/io/IOException
      //   327	346	219	java/io/IOException
      //   349	373	219	java/io/IOException
      //   376	400	219	java/io/IOException
      //   403	426	219	java/io/IOException
      //   426	441	219	java/io/IOException
      //   446	465	219	java/io/IOException
      //   465	477	219	java/io/IOException
    }
    
    private DownstreamPacket(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private DownstreamPacket(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static DownstreamPacket getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_DownstreamPacket_descriptor;
    }
    
    private void initFields()
    {
      this.seq_ = 0;
      this.miUin_ = 0L;
      this.mnsCode_ = 0;
      this.busiCode_ = 0;
      this.serviceCmd_ = "";
      this.busiBuff_ = ByteString.EMPTY;
      this.extra_ = ByteString.EMPTY;
      this.mnsErrMsg_ = "";
      this.miUid_ = "";
      this.busiControl_ = UpstreamPacketProto.BusiControl.getDefaultInstance();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(DownstreamPacket paramDownstreamPacket)
    {
      return newBuilder().mergeFrom(paramDownstreamPacket);
    }
    
    public static DownstreamPacket parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DownstreamPacket)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static DownstreamPacket parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DownstreamPacket)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DownstreamPacket parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (DownstreamPacket)PARSER.parseFrom(paramByteString);
    }
    
    public static DownstreamPacket parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DownstreamPacket)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static DownstreamPacket parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (DownstreamPacket)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static DownstreamPacket parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DownstreamPacket)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static DownstreamPacket parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (DownstreamPacket)PARSER.parseFrom(paramInputStream);
    }
    
    public static DownstreamPacket parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (DownstreamPacket)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static DownstreamPacket parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (DownstreamPacket)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static DownstreamPacket parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (DownstreamPacket)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final ByteString getBusiBuff()
    {
      return this.busiBuff_;
    }
    
    public final int getBusiCode()
    {
      return this.busiCode_;
    }
    
    public final UpstreamPacketProto.BusiControl getBusiControl()
    {
      return this.busiControl_;
    }
    
    public final UpstreamPacketProto.BusiControlOrBuilder getBusiControlOrBuilder()
    {
      return this.busiControl_;
    }
    
    public final DownstreamPacket getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final ByteString getExtra()
    {
      return this.extra_;
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
    
    public final int getMnsCode()
    {
      return this.mnsCode_;
    }
    
    public final String getMnsErrMsg()
    {
      Object localObject = this.mnsErrMsg_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.mnsErrMsg_ = str;
      }
      return str;
    }
    
    public final ByteString getMnsErrMsgBytes()
    {
      Object localObject = this.mnsErrMsg_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.mnsErrMsg_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<DownstreamPacket> getParserForType()
    {
      return PARSER;
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
        i = j + CodedOutputStream.computeUInt64Size(2, this.miUin_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeSInt32Size(3, this.mnsCode_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeSInt32Size(4, this.busiCode_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getServiceCmdBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, this.busiBuff_);
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, this.extra_);
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getMnsErrMsgBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getMiUidBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeMessageSize(10, this.busiControl_);
      }
      i += getUnknownFields().getSerializedSize();
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
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasBusiBuff()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasBusiCode()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasBusiControl()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasExtra()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasMiUid()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasMiUin()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasMnsCode()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasMnsErrMsg()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasSeq()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasServiceCmd()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_DownstreamPacket_fieldAccessorTable.ensureFieldAccessorsInitialized(DownstreamPacket.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(2, this.miUin_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeSInt32(3, this.mnsCode_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeSInt32(4, this.busiCode_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getServiceCmdBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, this.busiBuff_);
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, this.extra_);
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getMnsErrMsgBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getMiUidBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeMessage(10, this.busiControl_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements DownstreamPacketProto.DownstreamPacketOrBuilder
    {
      private int bitField0_;
      private ByteString busiBuff_ = ByteString.EMPTY;
      private int busiCode_;
      private SingleFieldBuilder<UpstreamPacketProto.BusiControl, UpstreamPacketProto.BusiControl.Builder, UpstreamPacketProto.BusiControlOrBuilder> busiControlBuilder_;
      private UpstreamPacketProto.BusiControl busiControl_ = UpstreamPacketProto.BusiControl.getDefaultInstance();
      private ByteString extra_ = ByteString.EMPTY;
      private Object miUid_ = "";
      private long miUin_;
      private int mnsCode_;
      private Object mnsErrMsg_ = "";
      private int seq_;
      private Object serviceCmd_ = "";
      
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
        return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_DownstreamPacket_descriptor;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (DownstreamPacketProto.DownstreamPacket.alwaysUseFieldBuilders) {
          getBusiControlFieldBuilder();
        }
      }
      
      public final DownstreamPacketProto.DownstreamPacket build()
      {
        DownstreamPacketProto.DownstreamPacket localDownstreamPacket = buildPartial();
        if (!localDownstreamPacket.isInitialized()) {
          throw newUninitializedMessageException(localDownstreamPacket);
        }
        return localDownstreamPacket;
      }
      
      public final DownstreamPacketProto.DownstreamPacket buildPartial()
      {
        int j = 1;
        DownstreamPacketProto.DownstreamPacket localDownstreamPacket = new DownstreamPacketProto.DownstreamPacket(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          DownstreamPacketProto.DownstreamPacket.access$702(localDownstreamPacket, this.seq_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          DownstreamPacketProto.DownstreamPacket.access$802(localDownstreamPacket, this.miUin_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          DownstreamPacketProto.DownstreamPacket.access$902(localDownstreamPacket, this.mnsCode_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          DownstreamPacketProto.DownstreamPacket.access$1002(localDownstreamPacket, this.busiCode_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          DownstreamPacketProto.DownstreamPacket.access$1102(localDownstreamPacket, this.serviceCmd_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          DownstreamPacketProto.DownstreamPacket.access$1202(localDownstreamPacket, this.busiBuff_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          DownstreamPacketProto.DownstreamPacket.access$1302(localDownstreamPacket, this.extra_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          DownstreamPacketProto.DownstreamPacket.access$1402(localDownstreamPacket, this.mnsErrMsg_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          DownstreamPacketProto.DownstreamPacket.access$1502(localDownstreamPacket, this.miUid_);
          if ((k & 0x200) == 512) {}
          for (i = j | 0x200;; i = j)
          {
            if (this.busiControlBuilder_ == null) {
              DownstreamPacketProto.DownstreamPacket.access$1602(localDownstreamPacket, this.busiControl_);
            }
            for (;;)
            {
              DownstreamPacketProto.DownstreamPacket.access$1702(localDownstreamPacket, i);
              onBuilt();
              return localDownstreamPacket;
              DownstreamPacketProto.DownstreamPacket.access$1602(localDownstreamPacket, (UpstreamPacketProto.BusiControl)this.busiControlBuilder_.build());
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
        this.miUin_ = 0L;
        this.bitField0_ &= 0xFFFFFFFD;
        this.mnsCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFB;
        this.busiCode_ = 0;
        this.bitField0_ &= 0xFFFFFFF7;
        this.serviceCmd_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.busiBuff_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFDF;
        this.extra_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFBF;
        this.mnsErrMsg_ = "";
        this.bitField0_ &= 0xFF7F;
        this.miUid_ = "";
        this.bitField0_ &= 0xFEFF;
        if (this.busiControlBuilder_ == null) {
          this.busiControl_ = UpstreamPacketProto.BusiControl.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFDFF;
          return this;
          this.busiControlBuilder_.clear();
        }
      }
      
      public final Builder clearBusiBuff()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.busiBuff_ = DownstreamPacketProto.DownstreamPacket.getDefaultInstance().getBusiBuff();
        onChanged();
        return this;
      }
      
      public final Builder clearBusiCode()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.busiCode_ = 0;
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
          this.bitField0_ &= 0xFDFF;
          return this;
          this.busiControlBuilder_.clear();
        }
      }
      
      public final Builder clearExtra()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.extra_ = DownstreamPacketProto.DownstreamPacket.getDefaultInstance().getExtra();
        onChanged();
        return this;
      }
      
      public final Builder clearMiUid()
      {
        this.bitField0_ &= 0xFEFF;
        this.miUid_ = DownstreamPacketProto.DownstreamPacket.getDefaultInstance().getMiUid();
        onChanged();
        return this;
      }
      
      public final Builder clearMiUin()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.miUin_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearMnsCode()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.mnsCode_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearMnsErrMsg()
      {
        this.bitField0_ &= 0xFF7F;
        this.mnsErrMsg_ = DownstreamPacketProto.DownstreamPacket.getDefaultInstance().getMnsErrMsg();
        onChanged();
        return this;
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
        this.serviceCmd_ = DownstreamPacketProto.DownstreamPacket.getDefaultInstance().getServiceCmd();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final ByteString getBusiBuff()
      {
        return this.busiBuff_;
      }
      
      public final int getBusiCode()
      {
        return this.busiCode_;
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
        this.bitField0_ |= 0x200;
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
      
      public final DownstreamPacketProto.DownstreamPacket getDefaultInstanceForType()
      {
        return DownstreamPacketProto.DownstreamPacket.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_DownstreamPacket_descriptor;
      }
      
      public final ByteString getExtra()
      {
        return this.extra_;
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
      
      public final int getMnsCode()
      {
        return this.mnsCode_;
      }
      
      public final String getMnsErrMsg()
      {
        Object localObject = this.mnsErrMsg_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.mnsErrMsg_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getMnsErrMsgBytes()
      {
        Object localObject = this.mnsErrMsg_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.mnsErrMsg_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final boolean hasBusiBuff()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasBusiCode()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasBusiControl()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasExtra()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasMiUid()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasMiUin()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasMnsCode()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasMnsErrMsg()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasSeq()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasServiceCmd()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_DownstreamPacket_fieldAccessorTable.ensureFieldAccessorsInitialized(DownstreamPacketProto.DownstreamPacket.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return true;
      }
      
      public final Builder mergeBusiControl(UpstreamPacketProto.BusiControl paramBusiControl)
      {
        if (this.busiControlBuilder_ == null) {
          if (((this.bitField0_ & 0x200) == 512) && (this.busiControl_ != UpstreamPacketProto.BusiControl.getDefaultInstance()))
          {
            this.busiControl_ = UpstreamPacketProto.BusiControl.newBuilder(this.busiControl_).mergeFrom(paramBusiControl).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x200;
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
        //   2: getstatic 333	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 339 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 232	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 342	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 232	com/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
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
        if ((paramMessage instanceof DownstreamPacketProto.DownstreamPacket)) {
          return mergeFrom((DownstreamPacketProto.DownstreamPacket)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(DownstreamPacketProto.DownstreamPacket paramDownstreamPacket)
      {
        if (paramDownstreamPacket == DownstreamPacketProto.DownstreamPacket.getDefaultInstance()) {
          return this;
        }
        if (paramDownstreamPacket.hasSeq()) {
          setSeq(paramDownstreamPacket.getSeq());
        }
        if (paramDownstreamPacket.hasMiUin()) {
          setMiUin(paramDownstreamPacket.getMiUin());
        }
        if (paramDownstreamPacket.hasMnsCode()) {
          setMnsCode(paramDownstreamPacket.getMnsCode());
        }
        if (paramDownstreamPacket.hasBusiCode()) {
          setBusiCode(paramDownstreamPacket.getBusiCode());
        }
        if (paramDownstreamPacket.hasServiceCmd())
        {
          this.bitField0_ |= 0x10;
          this.serviceCmd_ = paramDownstreamPacket.serviceCmd_;
          onChanged();
        }
        if (paramDownstreamPacket.hasBusiBuff()) {
          setBusiBuff(paramDownstreamPacket.getBusiBuff());
        }
        if (paramDownstreamPacket.hasExtra()) {
          setExtra(paramDownstreamPacket.getExtra());
        }
        if (paramDownstreamPacket.hasMnsErrMsg())
        {
          this.bitField0_ |= 0x80;
          this.mnsErrMsg_ = paramDownstreamPacket.mnsErrMsg_;
          onChanged();
        }
        if (paramDownstreamPacket.hasMiUid())
        {
          this.bitField0_ |= 0x100;
          this.miUid_ = paramDownstreamPacket.miUid_;
          onChanged();
        }
        if (paramDownstreamPacket.hasBusiControl()) {
          mergeBusiControl(paramDownstreamPacket.getBusiControl());
        }
        mergeUnknownFields(paramDownstreamPacket.getUnknownFields());
        return this;
      }
      
      public final Builder setBusiBuff(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.busiBuff_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setBusiCode(int paramInt)
      {
        this.bitField0_ |= 0x8;
        this.busiCode_ = paramInt;
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
          this.bitField0_ |= 0x200;
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
          this.bitField0_ |= 0x200;
          return this;
          this.busiControlBuilder_.setMessage(paramBusiControl);
        }
      }
      
      public final Builder setExtra(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.extra_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setMiUid(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.miUid_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setMiUidBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.miUid_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setMiUin(long paramLong)
      {
        this.bitField0_ |= 0x2;
        this.miUin_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setMnsCode(int paramInt)
      {
        this.bitField0_ |= 0x4;
        this.mnsCode_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setMnsErrMsg(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.mnsErrMsg_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setMnsErrMsgBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.mnsErrMsg_ = paramByteString;
        onChanged();
        return this;
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
    }
  }
  
  public static abstract interface DownstreamPacketOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getBusiBuff();
    
    public abstract int getBusiCode();
    
    public abstract UpstreamPacketProto.BusiControl getBusiControl();
    
    public abstract UpstreamPacketProto.BusiControlOrBuilder getBusiControlOrBuilder();
    
    public abstract ByteString getExtra();
    
    public abstract String getMiUid();
    
    public abstract ByteString getMiUidBytes();
    
    public abstract long getMiUin();
    
    public abstract int getMnsCode();
    
    public abstract String getMnsErrMsg();
    
    public abstract ByteString getMnsErrMsgBytes();
    
    public abstract int getSeq();
    
    public abstract String getServiceCmd();
    
    public abstract ByteString getServiceCmdBytes();
    
    public abstract boolean hasBusiBuff();
    
    public abstract boolean hasBusiCode();
    
    public abstract boolean hasBusiControl();
    
    public abstract boolean hasExtra();
    
    public abstract boolean hasMiUid();
    
    public abstract boolean hasMiUin();
    
    public abstract boolean hasMnsCode();
    
    public abstract boolean hasMnsErrMsg();
    
    public abstract boolean hasSeq();
    
    public abstract boolean hasServiceCmd();
  }
  
  public static final class ExtraInfo
    extends GeneratedMessage
    implements DownstreamPacketProto.ExtraInfoOrBuilder
  {
    public static final int HASCLIENTINFO_FIELD_NUMBER = 1;
    public static Parser<ExtraInfo> PARSER = new DownstreamPacketProto.ExtraInfo.1();
    private static final ExtraInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private boolean hasClientInfo_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      ExtraInfo localExtraInfo = new ExtraInfo(true);
      defaultInstance = localExtraInfo;
      localExtraInfo.initFields();
    }
    
    /* Error */
    private ExtraInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 56	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 58	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 60	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 49	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:initFields	()V
      //   18: invokestatic 66	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +100 -> 126
      //   29: aload_1
      //   30: invokevirtual 72	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+120->157, 0:+123->160, 8:+45->82
      //   64: aload_0
      //   65: aload_1
      //   66: aload 5
      //   68: aload_2
      //   69: iload 4
      //   71: invokevirtual 76	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   74: ifne -49 -> 25
      //   77: iconst_1
      //   78: istore_3
      //   79: goto -54 -> 25
      //   82: aload_0
      //   83: aload_0
      //   84: getfield 78	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:bitField0_	I
      //   87: iconst_1
      //   88: ior
      //   89: putfield 78	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:bitField0_	I
      //   92: aload_0
      //   93: aload_1
      //   94: invokevirtual 82	com/google/protobuf/CodedInputStream:readBool	()Z
      //   97: putfield 84	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:hasClientInfo_	Z
      //   100: goto -75 -> 25
      //   103: astore_1
      //   104: aload_1
      //   105: aload_0
      //   106: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   109: athrow
      //   110: astore_1
      //   111: aload_0
      //   112: aload 5
      //   114: invokevirtual 94	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   117: putfield 96	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   120: aload_0
      //   121: invokevirtual 99	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:makeExtensionsImmutable	()V
      //   124: aload_1
      //   125: athrow
      //   126: aload_0
      //   127: aload 5
      //   129: invokevirtual 94	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   132: putfield 96	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   135: aload_0
      //   136: invokevirtual 99	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:makeExtensionsImmutable	()V
      //   139: return
      //   140: astore_1
      //   141: new 53	com/google/protobuf/InvalidProtocolBufferException
      //   144: dup
      //   145: aload_1
      //   146: invokevirtual 103	java/io/IOException:getMessage	()Ljava/lang/String;
      //   149: invokespecial 106	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   152: aload_0
      //   153: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   156: athrow
      //   157: goto -93 -> 64
      //   160: iconst_1
      //   161: istore_3
      //   162: goto -137 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	165	0	this	ExtraInfo
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
    
    private ExtraInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private ExtraInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static ExtraInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtraInfo_descriptor;
    }
    
    private void initFields()
    {
      this.hasClientInfo_ = false;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$2100();
    }
    
    public static Builder newBuilder(ExtraInfo paramExtraInfo)
    {
      return newBuilder().mergeFrom(paramExtraInfo);
    }
    
    public static ExtraInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ExtraInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static ExtraInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ExtraInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static ExtraInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (ExtraInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static ExtraInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ExtraInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static ExtraInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (ExtraInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static ExtraInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ExtraInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static ExtraInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ExtraInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static ExtraInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ExtraInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static ExtraInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (ExtraInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static ExtraInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ExtraInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final ExtraInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final boolean getHasClientInfo()
    {
      return this.hasClientInfo_;
    }
    
    public final Parser<ExtraInfo> getParserForType()
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
        i = CodedOutputStream.computeBoolSize(1, this.hasClientInfo_) + 0;
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasHasClientInfo()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtraInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ExtraInfo.class, Builder.class);
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
        paramCodedOutputStream.writeBool(1, this.hasClientInfo_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements DownstreamPacketProto.ExtraInfoOrBuilder
    {
      private int bitField0_;
      private boolean hasClientInfo_;
      
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
        return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtraInfo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final DownstreamPacketProto.ExtraInfo build()
      {
        DownstreamPacketProto.ExtraInfo localExtraInfo = buildPartial();
        if (!localExtraInfo.isInitialized()) {
          throw newUninitializedMessageException(localExtraInfo);
        }
        return localExtraInfo;
      }
      
      public final DownstreamPacketProto.ExtraInfo buildPartial()
      {
        int i = 1;
        DownstreamPacketProto.ExtraInfo localExtraInfo = new DownstreamPacketProto.ExtraInfo(this, null);
        if ((this.bitField0_ & 0x1) == 1) {}
        for (;;)
        {
          DownstreamPacketProto.ExtraInfo.access$2502(localExtraInfo, this.hasClientInfo_);
          DownstreamPacketProto.ExtraInfo.access$2602(localExtraInfo, i);
          onBuilt();
          return localExtraInfo;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.hasClientInfo_ = false;
        this.bitField0_ &= 0xFFFFFFFE;
        return this;
      }
      
      public final Builder clearHasClientInfo()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.hasClientInfo_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final DownstreamPacketProto.ExtraInfo getDefaultInstanceForType()
      {
        return DownstreamPacketProto.ExtraInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtraInfo_descriptor;
      }
      
      public final boolean getHasClientInfo()
      {
        return this.hasClientInfo_;
      }
      
      public final boolean hasHasClientInfo()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return DownstreamPacketProto.internal_static_com_mi_milink_sdk_proto_ExtraInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(DownstreamPacketProto.ExtraInfo.class, Builder.class);
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
        //   2: getstatic 144	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 150 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 100	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo;)Lcom/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 153	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 100	com/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo;)Lcom/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo$Builder;
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
        if ((paramMessage instanceof DownstreamPacketProto.ExtraInfo)) {
          return mergeFrom((DownstreamPacketProto.ExtraInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(DownstreamPacketProto.ExtraInfo paramExtraInfo)
      {
        if (paramExtraInfo == DownstreamPacketProto.ExtraInfo.getDefaultInstance()) {
          return this;
        }
        if (paramExtraInfo.hasHasClientInfo()) {
          setHasClientInfo(paramExtraInfo.getHasClientInfo());
        }
        mergeUnknownFields(paramExtraInfo.getUnknownFields());
        return this;
      }
      
      public final Builder setHasClientInfo(boolean paramBoolean)
      {
        this.bitField0_ |= 0x1;
        this.hasClientInfo_ = paramBoolean;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface ExtraInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract boolean getHasClientInfo();
    
    public abstract boolean hasHasClientInfo();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\proto\DownstreamPacketProto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */