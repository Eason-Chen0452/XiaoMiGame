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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.List;

public final class SplashScreenProto
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_descriptor, new String[] { "DevAppId", "DeviceNo", "GamePackageName", "GameVersionCode", "GameVersionName", "Channel", "SdkType", "SdkVersion", "UnionId", "Model", "Ua", "BusinessId" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_descriptor, new String[] { "RetCode", "SplashScreen" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_fieldAccessorTable;
  
  static
  {
    ar localar = new ar();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\022SplashScreen.proto\022 org.xiaomi.gamecenter.milink.msg\"z\n\fSplashScreen\022\020\n\bsplashid\030\001 \001(\t\022\030\n\020imagePortraitUrl\030\002 \001(\t\022\031\n\021imageLandscapeUrl\030\003 \001(\t\022\020\n\bduration\030\004 \001(\r\022\021\n\tactionUrl\030\005 \001(\t\"ù\001\n\022GetSplashScreenReq\022\020\n\bdevAppId\030\001 \001(\004\022\020\n\bdeviceNo\030\002 \001(\t\022\027\n\017gamePackageName\030\003 \001(\t\022\027\n\017gameVersionCode\030\004 \001(\r\022\027\n\017gameVersionName\030\005 \001(\t\022\017\n\007channel\030\006 \001(\t\022\017\n\007sdkType\030\007 \001(\r\022\022\n\nsdkVersion\030\b \001(\t\022\017\n\007unionId\030\t \001(\t\022\r\n\005model\030\n \001(\t\022\n", "\n\002ua\030\013 \001(\t\022\022\n\nbusinessId\030\f \001(\r\"k\n\022GetSplashScreenRsp\022\017\n\007retCode\030\001 \002(\r\022D\n\fsplashScreen\030\002 \001(\0132..org.xiaomi.gamecenter.milink.msg.SplashScreenB5\n org.xiaomi.gamecenter.milink.msgB\021SplashScreenProto" }, new Descriptors.FileDescriptor[0], localar);
    internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor, new String[] { "Splashid", "ImagePortraitUrl", "ImageLandscapeUrl", "Duration", "ActionUrl" });
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class GetSplashScreenReq
    extends GeneratedMessage
    implements SplashScreenProto.GetSplashScreenReqOrBuilder
  {
    public static final int BUSINESSID_FIELD_NUMBER = 12;
    public static final int CHANNEL_FIELD_NUMBER = 6;
    public static final int DEVAPPID_FIELD_NUMBER = 1;
    public static final int DEVICENO_FIELD_NUMBER = 2;
    public static final int GAMEPACKAGENAME_FIELD_NUMBER = 3;
    public static final int GAMEVERSIONCODE_FIELD_NUMBER = 4;
    public static final int GAMEVERSIONNAME_FIELD_NUMBER = 5;
    public static final int MODEL_FIELD_NUMBER = 10;
    public static Parser<GetSplashScreenReq> PARSER = new as();
    public static final int SDKTYPE_FIELD_NUMBER = 7;
    public static final int SDKVERSION_FIELD_NUMBER = 8;
    public static final int UA_FIELD_NUMBER = 11;
    public static final int UNIONID_FIELD_NUMBER = 9;
    private static final GetSplashScreenReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int businessId_;
    private Object channel_;
    private long devAppId_;
    private Object deviceNo_;
    private Object gamePackageName_;
    private int gameVersionCode_;
    private Object gameVersionName_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object model_;
    private int sdkType_;
    private Object sdkVersion_;
    private Object ua_;
    private Object unionId_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetSplashScreenReq localGetSplashScreenReq = new GetSplashScreenReq(true);
      defaultInstance = localGetSplashScreenReq;
      localGetSplashScreenReq.initFields();
    }
    
    /* Error */
    private GetSplashScreenReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 89	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 91	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 93	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 82	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:initFields	()V
      //   18: invokestatic 99	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +482 -> 508
      //   29: aload_1
      //   30: invokevirtual 105	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+485->522, 0:+488->525, 8:+133->170, 18:+177->214, 26:+219->256, 32:+244->281, 42:+266->303, 50:+292->329, 56:+318->355, 66:+340->377, 74:+367->404, 82:+394->431, 90:+421->458, 96:+448->485
      //   152: aload_0
      //   153: aload_1
      //   154: aload 5
      //   156: aload_2
      //   157: iload 4
      //   159: invokevirtual 109	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   162: ifne -137 -> 25
      //   165: iconst_1
      //   166: istore_3
      //   167: goto -142 -> 25
      //   170: aload_0
      //   171: aload_0
      //   172: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   175: iconst_1
      //   176: ior
      //   177: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   180: aload_0
      //   181: aload_1
      //   182: invokevirtual 115	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   185: putfield 117	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:devAppId_	J
      //   188: goto -163 -> 25
      //   191: astore_1
      //   192: aload_1
      //   193: aload_0
      //   194: invokevirtual 121	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   197: athrow
      //   198: astore_1
      //   199: aload_0
      //   200: aload 5
      //   202: invokevirtual 127	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   205: putfield 129	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   208: aload_0
      //   209: invokevirtual 132	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:makeExtensionsImmutable	()V
      //   212: aload_1
      //   213: athrow
      //   214: aload_1
      //   215: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   218: astore 6
      //   220: aload_0
      //   221: aload_0
      //   222: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   225: iconst_2
      //   226: ior
      //   227: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   230: aload_0
      //   231: aload 6
      //   233: putfield 138	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:deviceNo_	Ljava/lang/Object;
      //   236: goto -211 -> 25
      //   239: astore_1
      //   240: new 86	com/google/protobuf/InvalidProtocolBufferException
      //   243: dup
      //   244: aload_1
      //   245: invokevirtual 142	java/io/IOException:getMessage	()Ljava/lang/String;
      //   248: invokespecial 145	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   251: aload_0
      //   252: invokevirtual 121	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   255: athrow
      //   256: aload_1
      //   257: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   260: astore 6
      //   262: aload_0
      //   263: aload_0
      //   264: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   267: iconst_4
      //   268: ior
      //   269: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   272: aload_0
      //   273: aload 6
      //   275: putfield 147	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:gamePackageName_	Ljava/lang/Object;
      //   278: goto -253 -> 25
      //   281: aload_0
      //   282: aload_0
      //   283: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   286: bipush 8
      //   288: ior
      //   289: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   292: aload_0
      //   293: aload_1
      //   294: invokevirtual 150	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   297: putfield 152	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:gameVersionCode_	I
      //   300: goto -275 -> 25
      //   303: aload_1
      //   304: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   307: astore 6
      //   309: aload_0
      //   310: aload_0
      //   311: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   314: bipush 16
      //   316: ior
      //   317: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   320: aload_0
      //   321: aload 6
      //   323: putfield 154	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:gameVersionName_	Ljava/lang/Object;
      //   326: goto -301 -> 25
      //   329: aload_1
      //   330: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   333: astore 6
      //   335: aload_0
      //   336: aload_0
      //   337: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   340: bipush 32
      //   342: ior
      //   343: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   346: aload_0
      //   347: aload 6
      //   349: putfield 156	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:channel_	Ljava/lang/Object;
      //   352: goto -327 -> 25
      //   355: aload_0
      //   356: aload_0
      //   357: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   360: bipush 64
      //   362: ior
      //   363: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   366: aload_0
      //   367: aload_1
      //   368: invokevirtual 150	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   371: putfield 158	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:sdkType_	I
      //   374: goto -349 -> 25
      //   377: aload_1
      //   378: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   381: astore 6
      //   383: aload_0
      //   384: aload_0
      //   385: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   388: sipush 128
      //   391: ior
      //   392: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   395: aload_0
      //   396: aload 6
      //   398: putfield 160	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:sdkVersion_	Ljava/lang/Object;
      //   401: goto -376 -> 25
      //   404: aload_1
      //   405: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   408: astore 6
      //   410: aload_0
      //   411: aload_0
      //   412: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   415: sipush 256
      //   418: ior
      //   419: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   422: aload_0
      //   423: aload 6
      //   425: putfield 162	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:unionId_	Ljava/lang/Object;
      //   428: goto -403 -> 25
      //   431: aload_1
      //   432: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   435: astore 6
      //   437: aload_0
      //   438: aload_0
      //   439: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   442: sipush 512
      //   445: ior
      //   446: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   449: aload_0
      //   450: aload 6
      //   452: putfield 164	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:model_	Ljava/lang/Object;
      //   455: goto -430 -> 25
      //   458: aload_1
      //   459: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   462: astore 6
      //   464: aload_0
      //   465: aload_0
      //   466: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   469: sipush 1024
      //   472: ior
      //   473: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   476: aload_0
      //   477: aload 6
      //   479: putfield 166	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:ua_	Ljava/lang/Object;
      //   482: goto -457 -> 25
      //   485: aload_0
      //   486: aload_0
      //   487: getfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   490: sipush 2048
      //   493: ior
      //   494: putfield 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:bitField0_	I
      //   497: aload_0
      //   498: aload_1
      //   499: invokevirtual 150	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   502: putfield 168	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:businessId_	I
      //   505: goto -480 -> 25
      //   508: aload_0
      //   509: aload 5
      //   511: invokevirtual 127	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   514: putfield 129	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   517: aload_0
      //   518: invokevirtual 132	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:makeExtensionsImmutable	()V
      //   521: return
      //   522: goto -370 -> 152
      //   525: iconst_1
      //   526: istore_3
      //   527: goto -502 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	530	0	this	GetSplashScreenReq
      //   0	530	1	paramCodedInputStream	CodedInputStream
      //   0	530	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	503	3	i	int
      //   33	125	4	j	int
      //   21	489	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   218	260	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	191	com/google/protobuf/InvalidProtocolBufferException
      //   152	165	191	com/google/protobuf/InvalidProtocolBufferException
      //   170	188	191	com/google/protobuf/InvalidProtocolBufferException
      //   214	236	191	com/google/protobuf/InvalidProtocolBufferException
      //   256	278	191	com/google/protobuf/InvalidProtocolBufferException
      //   281	300	191	com/google/protobuf/InvalidProtocolBufferException
      //   303	326	191	com/google/protobuf/InvalidProtocolBufferException
      //   329	352	191	com/google/protobuf/InvalidProtocolBufferException
      //   355	374	191	com/google/protobuf/InvalidProtocolBufferException
      //   377	401	191	com/google/protobuf/InvalidProtocolBufferException
      //   404	428	191	com/google/protobuf/InvalidProtocolBufferException
      //   431	455	191	com/google/protobuf/InvalidProtocolBufferException
      //   458	482	191	com/google/protobuf/InvalidProtocolBufferException
      //   485	505	191	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	198	finally
      //   152	165	198	finally
      //   170	188	198	finally
      //   192	198	198	finally
      //   214	236	198	finally
      //   240	256	198	finally
      //   256	278	198	finally
      //   281	300	198	finally
      //   303	326	198	finally
      //   329	352	198	finally
      //   355	374	198	finally
      //   377	401	198	finally
      //   404	428	198	finally
      //   431	455	198	finally
      //   458	482	198	finally
      //   485	505	198	finally
      //   29	35	239	java/io/IOException
      //   152	165	239	java/io/IOException
      //   170	188	239	java/io/IOException
      //   214	236	239	java/io/IOException
      //   256	278	239	java/io/IOException
      //   281	300	239	java/io/IOException
      //   303	326	239	java/io/IOException
      //   329	352	239	java/io/IOException
      //   355	374	239	java/io/IOException
      //   377	401	239	java/io/IOException
      //   404	428	239	java/io/IOException
      //   431	455	239	java/io/IOException
      //   458	482	239	java/io/IOException
      //   485	505	239	java/io/IOException
    }
    
    private GetSplashScreenReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetSplashScreenReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetSplashScreenReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_descriptor;
    }
    
    private void initFields()
    {
      this.devAppId_ = 0L;
      this.deviceNo_ = "";
      this.gamePackageName_ = "";
      this.gameVersionCode_ = 0;
      this.gameVersionName_ = "";
      this.channel_ = "";
      this.sdkType_ = 0;
      this.sdkVersion_ = "";
      this.unionId_ = "";
      this.model_ = "";
      this.ua_ = "";
      this.businessId_ = 0;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1600();
    }
    
    public static Builder newBuilder(GetSplashScreenReq paramGetSplashScreenReq)
    {
      return newBuilder().mergeFrom(paramGetSplashScreenReq);
    }
    
    public static GetSplashScreenReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetSplashScreenReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetSplashScreenReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSplashScreenReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSplashScreenReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetSplashScreenReq)PARSER.parseFrom(paramByteString);
    }
    
    public static GetSplashScreenReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetSplashScreenReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetSplashScreenReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetSplashScreenReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetSplashScreenReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSplashScreenReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSplashScreenReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetSplashScreenReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetSplashScreenReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSplashScreenReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSplashScreenReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetSplashScreenReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetSplashScreenReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetSplashScreenReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getBusinessId()
    {
      return this.businessId_;
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
    
    public final GetSplashScreenReq getDefaultInstanceForType()
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
    
    public final String getGamePackageName()
    {
      Object localObject = this.gamePackageName_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.gamePackageName_ = str;
      }
      return str;
    }
    
    public final ByteString getGamePackageNameBytes()
    {
      Object localObject = this.gamePackageName_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.gamePackageName_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getGameVersionCode()
    {
      return this.gameVersionCode_;
    }
    
    public final String getGameVersionName()
    {
      Object localObject = this.gameVersionName_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.gameVersionName_ = str;
      }
      return str;
    }
    
    public final ByteString getGameVersionNameBytes()
    {
      Object localObject = this.gameVersionName_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.gameVersionName_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getModel()
    {
      Object localObject = this.model_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.model_ = str;
      }
      return str;
    }
    
    public final ByteString getModelBytes()
    {
      Object localObject = this.model_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.model_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<GetSplashScreenReq> getParserForType()
    {
      return PARSER;
    }
    
    public final int getSdkType()
    {
      return this.sdkType_;
    }
    
    public final String getSdkVersion()
    {
      Object localObject = this.sdkVersion_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sdkVersion_ = str;
      }
      return str;
    }
    
    public final ByteString getSdkVersionBytes()
    {
      Object localObject = this.sdkVersion_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sdkVersion_ = localObject;
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
        j = CodedOutputStream.computeUInt64Size(1, this.devAppId_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getDeviceNoBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getGamePackageNameBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeUInt32Size(4, this.gameVersionCode_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getGameVersionNameBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getChannelBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeUInt32Size(7, this.sdkType_);
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getSdkVersionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getUnionIdBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getModelBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getUaBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x800) == 2048) {
        i = j + CodedOutputStream.computeUInt32Size(12, this.businessId_);
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
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
    
    public final String getUnionId()
    {
      Object localObject = this.unionId_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.unionId_ = str;
      }
      return str;
    }
    
    public final ByteString getUnionIdBytes()
    {
      Object localObject = this.unionId_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.unionId_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasBusinessId()
    {
      return (this.bitField0_ & 0x800) == 2048;
    }
    
    public final boolean hasChannel()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasDeviceNo()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasGamePackageName()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasGameVersionCode()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasGameVersionName()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasModel()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasSdkType()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasSdkVersion()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasUnionId()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_fieldAccessorTable.ensureFieldAccessorsInitialized(GetSplashScreenReq.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(1, this.devAppId_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getDeviceNoBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getGamePackageNameBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeUInt32(4, this.gameVersionCode_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getGameVersionNameBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getChannelBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeUInt32(7, this.sdkType_);
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getSdkVersionBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getUnionIdBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getModelBytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getUaBytes());
      }
      if ((this.bitField0_ & 0x800) == 2048) {
        paramCodedOutputStream.writeUInt32(12, this.businessId_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SplashScreenProto.GetSplashScreenReqOrBuilder
    {
      private int bitField0_;
      private int businessId_;
      private Object channel_ = "";
      private long devAppId_;
      private Object deviceNo_ = "";
      private Object gamePackageName_ = "";
      private int gameVersionCode_;
      private Object gameVersionName_ = "";
      private Object model_ = "";
      private int sdkType_;
      private Object sdkVersion_ = "";
      private Object ua_ = "";
      private Object unionId_ = "";
      
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
        return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SplashScreenProto.GetSplashScreenReq build()
      {
        SplashScreenProto.GetSplashScreenReq localGetSplashScreenReq = buildPartial();
        if (!localGetSplashScreenReq.isInitialized()) {
          throw newUninitializedMessageException(localGetSplashScreenReq);
        }
        return localGetSplashScreenReq;
      }
      
      public final SplashScreenProto.GetSplashScreenReq buildPartial()
      {
        int j = 1;
        SplashScreenProto.GetSplashScreenReq localGetSplashScreenReq = new SplashScreenProto.GetSplashScreenReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SplashScreenProto.GetSplashScreenReq.access$2002(localGetSplashScreenReq, this.devAppId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SplashScreenProto.GetSplashScreenReq.access$2102(localGetSplashScreenReq, this.deviceNo_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SplashScreenProto.GetSplashScreenReq.access$2202(localGetSplashScreenReq, this.gamePackageName_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          SplashScreenProto.GetSplashScreenReq.access$2302(localGetSplashScreenReq, this.gameVersionCode_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          SplashScreenProto.GetSplashScreenReq.access$2402(localGetSplashScreenReq, this.gameVersionName_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          SplashScreenProto.GetSplashScreenReq.access$2502(localGetSplashScreenReq, this.channel_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          SplashScreenProto.GetSplashScreenReq.access$2602(localGetSplashScreenReq, this.sdkType_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          SplashScreenProto.GetSplashScreenReq.access$2702(localGetSplashScreenReq, this.sdkVersion_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          SplashScreenProto.GetSplashScreenReq.access$2802(localGetSplashScreenReq, this.unionId_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          SplashScreenProto.GetSplashScreenReq.access$2902(localGetSplashScreenReq, this.model_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          SplashScreenProto.GetSplashScreenReq.access$3002(localGetSplashScreenReq, this.ua_);
          i = j;
          if ((k & 0x800) == 2048) {
            i = j | 0x800;
          }
          SplashScreenProto.GetSplashScreenReq.access$3102(localGetSplashScreenReq, this.businessId_);
          SplashScreenProto.GetSplashScreenReq.access$3202(localGetSplashScreenReq, i);
          onBuilt();
          return localGetSplashScreenReq;
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
        this.gamePackageName_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.gameVersionCode_ = 0;
        this.bitField0_ &= 0xFFFFFFF7;
        this.gameVersionName_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.channel_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.sdkType_ = 0;
        this.bitField0_ &= 0xFFFFFFBF;
        this.sdkVersion_ = "";
        this.bitField0_ &= 0xFF7F;
        this.unionId_ = "";
        this.bitField0_ &= 0xFEFF;
        this.model_ = "";
        this.bitField0_ &= 0xFDFF;
        this.ua_ = "";
        this.bitField0_ &= 0xFBFF;
        this.businessId_ = 0;
        this.bitField0_ &= 0xF7FF;
        return this;
      }
      
      public final Builder clearBusinessId()
      {
        this.bitField0_ &= 0xF7FF;
        this.businessId_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearChannel()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.channel_ = SplashScreenProto.GetSplashScreenReq.getDefaultInstance().getChannel();
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
        this.deviceNo_ = SplashScreenProto.GetSplashScreenReq.getDefaultInstance().getDeviceNo();
        onChanged();
        return this;
      }
      
      public final Builder clearGamePackageName()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.gamePackageName_ = SplashScreenProto.GetSplashScreenReq.getDefaultInstance().getGamePackageName();
        onChanged();
        return this;
      }
      
      public final Builder clearGameVersionCode()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.gameVersionCode_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearGameVersionName()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.gameVersionName_ = SplashScreenProto.GetSplashScreenReq.getDefaultInstance().getGameVersionName();
        onChanged();
        return this;
      }
      
      public final Builder clearModel()
      {
        this.bitField0_ &= 0xFDFF;
        this.model_ = SplashScreenProto.GetSplashScreenReq.getDefaultInstance().getModel();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkType()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.sdkType_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearSdkVersion()
      {
        this.bitField0_ &= 0xFF7F;
        this.sdkVersion_ = SplashScreenProto.GetSplashScreenReq.getDefaultInstance().getSdkVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFBFF;
        this.ua_ = SplashScreenProto.GetSplashScreenReq.getDefaultInstance().getUa();
        onChanged();
        return this;
      }
      
      public final Builder clearUnionId()
      {
        this.bitField0_ &= 0xFEFF;
        this.unionId_ = SplashScreenProto.GetSplashScreenReq.getDefaultInstance().getUnionId();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getBusinessId()
      {
        return this.businessId_;
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
      
      public final SplashScreenProto.GetSplashScreenReq getDefaultInstanceForType()
      {
        return SplashScreenProto.GetSplashScreenReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_descriptor;
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
      
      public final String getGamePackageName()
      {
        Object localObject = this.gamePackageName_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.gamePackageName_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getGamePackageNameBytes()
      {
        Object localObject = this.gamePackageName_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.gamePackageName_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getGameVersionCode()
      {
        return this.gameVersionCode_;
      }
      
      public final String getGameVersionName()
      {
        Object localObject = this.gameVersionName_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.gameVersionName_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getGameVersionNameBytes()
      {
        Object localObject = this.gameVersionName_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.gameVersionName_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getModel()
      {
        Object localObject = this.model_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.model_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getModelBytes()
      {
        Object localObject = this.model_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.model_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getSdkType()
      {
        return this.sdkType_;
      }
      
      public final String getSdkVersion()
      {
        Object localObject = this.sdkVersion_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sdkVersion_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSdkVersionBytes()
      {
        Object localObject = this.sdkVersion_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sdkVersion_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getUnionId()
      {
        Object localObject = this.unionId_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.unionId_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getUnionIdBytes()
      {
        Object localObject = this.unionId_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.unionId_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasBusinessId()
      {
        return (this.bitField0_ & 0x800) == 2048;
      }
      
      public final boolean hasChannel()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasDeviceNo()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasGamePackageName()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasGameVersionCode()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasGameVersionName()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasModel()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasSdkType()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasSdkVersion()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasUnionId()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SplashScreenProto.GetSplashScreenReq.class, Builder.class);
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
        //   2: getstatic 289	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 295 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 213	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 298	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 213	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;
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
        if ((paramMessage instanceof SplashScreenProto.GetSplashScreenReq)) {
          return mergeFrom((SplashScreenProto.GetSplashScreenReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SplashScreenProto.GetSplashScreenReq paramGetSplashScreenReq)
      {
        if (paramGetSplashScreenReq == SplashScreenProto.GetSplashScreenReq.getDefaultInstance()) {
          return this;
        }
        if (paramGetSplashScreenReq.hasDevAppId()) {
          setDevAppId(paramGetSplashScreenReq.getDevAppId());
        }
        if (paramGetSplashScreenReq.hasDeviceNo())
        {
          this.bitField0_ |= 0x2;
          this.deviceNo_ = paramGetSplashScreenReq.deviceNo_;
          onChanged();
        }
        if (paramGetSplashScreenReq.hasGamePackageName())
        {
          this.bitField0_ |= 0x4;
          this.gamePackageName_ = paramGetSplashScreenReq.gamePackageName_;
          onChanged();
        }
        if (paramGetSplashScreenReq.hasGameVersionCode()) {
          setGameVersionCode(paramGetSplashScreenReq.getGameVersionCode());
        }
        if (paramGetSplashScreenReq.hasGameVersionName())
        {
          this.bitField0_ |= 0x10;
          this.gameVersionName_ = paramGetSplashScreenReq.gameVersionName_;
          onChanged();
        }
        if (paramGetSplashScreenReq.hasChannel())
        {
          this.bitField0_ |= 0x20;
          this.channel_ = paramGetSplashScreenReq.channel_;
          onChanged();
        }
        if (paramGetSplashScreenReq.hasSdkType()) {
          setSdkType(paramGetSplashScreenReq.getSdkType());
        }
        if (paramGetSplashScreenReq.hasSdkVersion())
        {
          this.bitField0_ |= 0x80;
          this.sdkVersion_ = paramGetSplashScreenReq.sdkVersion_;
          onChanged();
        }
        if (paramGetSplashScreenReq.hasUnionId())
        {
          this.bitField0_ |= 0x100;
          this.unionId_ = paramGetSplashScreenReq.unionId_;
          onChanged();
        }
        if (paramGetSplashScreenReq.hasModel())
        {
          this.bitField0_ |= 0x200;
          this.model_ = paramGetSplashScreenReq.model_;
          onChanged();
        }
        if (paramGetSplashScreenReq.hasUa())
        {
          this.bitField0_ |= 0x400;
          this.ua_ = paramGetSplashScreenReq.ua_;
          onChanged();
        }
        if (paramGetSplashScreenReq.hasBusinessId()) {
          setBusinessId(paramGetSplashScreenReq.getBusinessId());
        }
        mergeUnknownFields(paramGetSplashScreenReq.getUnknownFields());
        return this;
      }
      
      public final Builder setBusinessId(int paramInt)
      {
        this.bitField0_ |= 0x800;
        this.businessId_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.channel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
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
      
      public final Builder setGamePackageName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.gamePackageName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setGamePackageNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.gamePackageName_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setGameVersionCode(int paramInt)
      {
        this.bitField0_ |= 0x8;
        this.gameVersionCode_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setGameVersionName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.gameVersionName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setGameVersionNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.gameVersionName_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setModel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.model_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setModelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.model_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkType(int paramInt)
      {
        this.bitField0_ |= 0x40;
        this.sdkType_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.sdkVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.sdkVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUnionId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.unionId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUnionIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.unionId_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface GetSplashScreenReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getBusinessId();
    
    public abstract String getChannel();
    
    public abstract ByteString getChannelBytes();
    
    public abstract long getDevAppId();
    
    public abstract String getDeviceNo();
    
    public abstract ByteString getDeviceNoBytes();
    
    public abstract String getGamePackageName();
    
    public abstract ByteString getGamePackageNameBytes();
    
    public abstract int getGameVersionCode();
    
    public abstract String getGameVersionName();
    
    public abstract ByteString getGameVersionNameBytes();
    
    public abstract String getModel();
    
    public abstract ByteString getModelBytes();
    
    public abstract int getSdkType();
    
    public abstract String getSdkVersion();
    
    public abstract ByteString getSdkVersionBytes();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract String getUnionId();
    
    public abstract ByteString getUnionIdBytes();
    
    public abstract boolean hasBusinessId();
    
    public abstract boolean hasChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasDeviceNo();
    
    public abstract boolean hasGamePackageName();
    
    public abstract boolean hasGameVersionCode();
    
    public abstract boolean hasGameVersionName();
    
    public abstract boolean hasModel();
    
    public abstract boolean hasSdkType();
    
    public abstract boolean hasSdkVersion();
    
    public abstract boolean hasUa();
    
    public abstract boolean hasUnionId();
  }
  
  public static final class GetSplashScreenRsp
    extends GeneratedMessage
    implements SplashScreenProto.GetSplashScreenRspOrBuilder
  {
    public static Parser<GetSplashScreenRsp> PARSER = new at();
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int SPLASHSCREEN_FIELD_NUMBER = 2;
    private static final GetSplashScreenRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int retCode_;
    private SplashScreenProto.SplashScreen splashScreen_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetSplashScreenRsp localGetSplashScreenRsp = new GetSplashScreenRsp(true);
      defaultInstance = localGetSplashScreenRsp;
      localGetSplashScreenRsp.initFields();
    }
    
    /* Error */
    private GetSplashScreenRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:initFields	()V
      //   18: invokestatic 69	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 6
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +196 -> 222
      //   29: aload_1
      //   30: invokevirtual 75	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+205->242, 0:+208->245, 8:+53->90, 18:+97->134
      //   72: aload_0
      //   73: aload_1
      //   74: aload 6
      //   76: aload_2
      //   77: iload 4
      //   79: invokevirtual 79	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 81	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 81	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 84	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   105: putfield 86	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:retCode_	I
      //   108: goto -83 -> 25
      //   111: astore_1
      //   112: aload_1
      //   113: aload_0
      //   114: invokevirtual 90	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   117: athrow
      //   118: astore_1
      //   119: aload_0
      //   120: aload 6
      //   122: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   125: putfield 98	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_0
      //   135: getfield 81	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:bitField0_	I
      //   138: iconst_2
      //   139: iand
      //   140: iconst_2
      //   141: if_icmpne +95 -> 236
      //   144: aload_0
      //   145: getfield 103	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:splashScreen_	Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
      //   148: invokevirtual 109	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:toBuilder	()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
      //   151: astore 5
      //   153: aload_0
      //   154: aload_1
      //   155: getstatic 110	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:PARSER	Lcom/google/protobuf/Parser;
      //   158: aload_2
      //   159: invokevirtual 114	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   162: checkcast 105	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen
      //   165: putfield 103	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:splashScreen_	Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
      //   168: aload 5
      //   170: ifnull +22 -> 192
      //   173: aload 5
      //   175: aload_0
      //   176: getfield 103	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:splashScreen_	Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
      //   179: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
      //   182: pop
      //   183: aload_0
      //   184: aload 5
      //   186: invokevirtual 124	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder:buildPartial	()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
      //   189: putfield 103	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:splashScreen_	Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
      //   192: aload_0
      //   193: aload_0
      //   194: getfield 81	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:bitField0_	I
      //   197: iconst_2
      //   198: ior
      //   199: putfield 81	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:bitField0_	I
      //   202: goto -177 -> 25
      //   205: astore_1
      //   206: new 56	com/google/protobuf/InvalidProtocolBufferException
      //   209: dup
      //   210: aload_1
      //   211: invokevirtual 128	java/io/IOException:getMessage	()Ljava/lang/String;
      //   214: invokespecial 131	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   217: aload_0
      //   218: invokevirtual 90	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   221: athrow
      //   222: aload_0
      //   223: aload 6
      //   225: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   228: putfield 98	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   231: aload_0
      //   232: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:makeExtensionsImmutable	()V
      //   235: return
      //   236: aconst_null
      //   237: astore 5
      //   239: goto -86 -> 153
      //   242: goto -170 -> 72
      //   245: iconst_1
      //   246: istore_3
      //   247: goto -222 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	250	0	this	GetSplashScreenRsp
      //   0	250	1	paramCodedInputStream	CodedInputStream
      //   0	250	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	223	3	i	int
      //   33	45	4	j	int
      //   151	87	5	localBuilder	SplashScreenProto.SplashScreen.Builder
      //   21	203	6	localBuilder1	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	111	com/google/protobuf/InvalidProtocolBufferException
      //   72	85	111	com/google/protobuf/InvalidProtocolBufferException
      //   90	108	111	com/google/protobuf/InvalidProtocolBufferException
      //   134	153	111	com/google/protobuf/InvalidProtocolBufferException
      //   153	168	111	com/google/protobuf/InvalidProtocolBufferException
      //   173	192	111	com/google/protobuf/InvalidProtocolBufferException
      //   192	202	111	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	118	finally
      //   72	85	118	finally
      //   90	108	118	finally
      //   112	118	118	finally
      //   134	153	118	finally
      //   153	168	118	finally
      //   173	192	118	finally
      //   192	202	118	finally
      //   206	222	118	finally
      //   29	35	205	java/io/IOException
      //   72	85	205	java/io/IOException
      //   90	108	205	java/io/IOException
      //   134	153	205	java/io/IOException
      //   153	168	205	java/io/IOException
      //   173	192	205	java/io/IOException
      //   192	202	205	java/io/IOException
    }
    
    private GetSplashScreenRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetSplashScreenRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetSplashScreenRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.splashScreen_ = SplashScreenProto.SplashScreen.getDefaultInstance();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$3600();
    }
    
    public static Builder newBuilder(GetSplashScreenRsp paramGetSplashScreenRsp)
    {
      return newBuilder().mergeFrom(paramGetSplashScreenRsp);
    }
    
    public static GetSplashScreenRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetSplashScreenRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetSplashScreenRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSplashScreenRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSplashScreenRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetSplashScreenRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static GetSplashScreenRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetSplashScreenRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetSplashScreenRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetSplashScreenRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetSplashScreenRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSplashScreenRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSplashScreenRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetSplashScreenRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetSplashScreenRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSplashScreenRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSplashScreenRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetSplashScreenRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetSplashScreenRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetSplashScreenRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final GetSplashScreenRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<GetSplashScreenRsp> getParserForType()
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
        j = i + CodedOutputStream.computeMessageSize(2, this.splashScreen_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final SplashScreenProto.SplashScreen getSplashScreen()
    {
      return this.splashScreen_;
    }
    
    public final SplashScreenProto.SplashScreenOrBuilder getSplashScreenOrBuilder()
    {
      return this.splashScreen_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasSplashScreen()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(GetSplashScreenRsp.class, Builder.class);
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
        paramCodedOutputStream.writeMessage(2, this.splashScreen_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SplashScreenProto.GetSplashScreenRspOrBuilder
    {
      private int bitField0_;
      private int retCode_;
      private SingleFieldBuilder<SplashScreenProto.SplashScreen, SplashScreenProto.SplashScreen.Builder, SplashScreenProto.SplashScreenOrBuilder> splashScreenBuilder_;
      private SplashScreenProto.SplashScreen splashScreen_ = SplashScreenProto.SplashScreen.getDefaultInstance();
      
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
        return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_descriptor;
      }
      
      private SingleFieldBuilder<SplashScreenProto.SplashScreen, SplashScreenProto.SplashScreen.Builder, SplashScreenProto.SplashScreenOrBuilder> getSplashScreenFieldBuilder()
      {
        if (this.splashScreenBuilder_ == null)
        {
          this.splashScreenBuilder_ = new SingleFieldBuilder(getSplashScreen(), getParentForChildren(), isClean());
          this.splashScreen_ = null;
        }
        return this.splashScreenBuilder_;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (SplashScreenProto.GetSplashScreenRsp.alwaysUseFieldBuilders) {
          getSplashScreenFieldBuilder();
        }
      }
      
      public final SplashScreenProto.GetSplashScreenRsp build()
      {
        SplashScreenProto.GetSplashScreenRsp localGetSplashScreenRsp = buildPartial();
        if (!localGetSplashScreenRsp.isInitialized()) {
          throw newUninitializedMessageException(localGetSplashScreenRsp);
        }
        return localGetSplashScreenRsp;
      }
      
      public final SplashScreenProto.GetSplashScreenRsp buildPartial()
      {
        int i = 1;
        SplashScreenProto.GetSplashScreenRsp localGetSplashScreenRsp = new SplashScreenProto.GetSplashScreenRsp(this, null);
        int j = this.bitField0_;
        if ((j & 0x1) == 1) {}
        for (;;)
        {
          SplashScreenProto.GetSplashScreenRsp.access$4002(localGetSplashScreenRsp, this.retCode_);
          if ((j & 0x2) == 2) {
            i |= 0x2;
          }
          for (;;)
          {
            if (this.splashScreenBuilder_ == null) {
              SplashScreenProto.GetSplashScreenRsp.access$4102(localGetSplashScreenRsp, this.splashScreen_);
            }
            for (;;)
            {
              SplashScreenProto.GetSplashScreenRsp.access$4202(localGetSplashScreenRsp, i);
              onBuilt();
              return localGetSplashScreenRsp;
              SplashScreenProto.GetSplashScreenRsp.access$4102(localGetSplashScreenRsp, (SplashScreenProto.SplashScreen)this.splashScreenBuilder_.build());
            }
          }
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        if (this.splashScreenBuilder_ == null) {
          this.splashScreen_ = SplashScreenProto.SplashScreen.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          return this;
          this.splashScreenBuilder_.clear();
        }
      }
      
      public final Builder clearRetCode()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.retCode_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearSplashScreen()
      {
        if (this.splashScreenBuilder_ == null)
        {
          this.splashScreen_ = SplashScreenProto.SplashScreen.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          return this;
          this.splashScreenBuilder_.clear();
        }
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SplashScreenProto.GetSplashScreenRsp getDefaultInstanceForType()
      {
        return SplashScreenProto.GetSplashScreenRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_descriptor;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final SplashScreenProto.SplashScreen getSplashScreen()
      {
        if (this.splashScreenBuilder_ == null) {
          return this.splashScreen_;
        }
        return (SplashScreenProto.SplashScreen)this.splashScreenBuilder_.getMessage();
      }
      
      public final SplashScreenProto.SplashScreen.Builder getSplashScreenBuilder()
      {
        this.bitField0_ |= 0x2;
        onChanged();
        return (SplashScreenProto.SplashScreen.Builder)getSplashScreenFieldBuilder().getBuilder();
      }
      
      public final SplashScreenProto.SplashScreenOrBuilder getSplashScreenOrBuilder()
      {
        if (this.splashScreenBuilder_ != null) {
          return (SplashScreenProto.SplashScreenOrBuilder)this.splashScreenBuilder_.getMessageOrBuilder();
        }
        return this.splashScreen_;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSplashScreen()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SplashScreenProto.GetSplashScreenRsp.class, Builder.class);
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
        //   2: getstatic 209	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 215 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 148	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 218	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 148	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
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
        if ((paramMessage instanceof SplashScreenProto.GetSplashScreenRsp)) {
          return mergeFrom((SplashScreenProto.GetSplashScreenRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SplashScreenProto.GetSplashScreenRsp paramGetSplashScreenRsp)
      {
        if (paramGetSplashScreenRsp == SplashScreenProto.GetSplashScreenRsp.getDefaultInstance()) {
          return this;
        }
        if (paramGetSplashScreenRsp.hasRetCode()) {
          setRetCode(paramGetSplashScreenRsp.getRetCode());
        }
        if (paramGetSplashScreenRsp.hasSplashScreen()) {
          mergeSplashScreen(paramGetSplashScreenRsp.getSplashScreen());
        }
        mergeUnknownFields(paramGetSplashScreenRsp.getUnknownFields());
        return this;
      }
      
      public final Builder mergeSplashScreen(SplashScreenProto.SplashScreen paramSplashScreen)
      {
        if (this.splashScreenBuilder_ == null) {
          if (((this.bitField0_ & 0x2) == 2) && (this.splashScreen_ != SplashScreenProto.SplashScreen.getDefaultInstance()))
          {
            this.splashScreen_ = SplashScreenProto.SplashScreen.newBuilder(this.splashScreen_).mergeFrom(paramSplashScreen).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.splashScreen_ = paramSplashScreen;
          break;
          this.splashScreenBuilder_.mergeFrom(paramSplashScreen);
        }
      }
      
      public final Builder setRetCode(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.retCode_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setSplashScreen(SplashScreenProto.SplashScreen.Builder paramBuilder)
      {
        if (this.splashScreenBuilder_ == null)
        {
          this.splashScreen_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.splashScreenBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setSplashScreen(SplashScreenProto.SplashScreen paramSplashScreen)
      {
        if (this.splashScreenBuilder_ == null)
        {
          if (paramSplashScreen == null) {
            throw new NullPointerException();
          }
          this.splashScreen_ = paramSplashScreen;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.splashScreenBuilder_.setMessage(paramSplashScreen);
        }
      }
    }
  }
  
  public static abstract interface GetSplashScreenRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getRetCode();
    
    public abstract SplashScreenProto.SplashScreen getSplashScreen();
    
    public abstract SplashScreenProto.SplashScreenOrBuilder getSplashScreenOrBuilder();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasSplashScreen();
  }
  
  public static final class SplashScreen
    extends GeneratedMessage
    implements SplashScreenProto.SplashScreenOrBuilder
  {
    public static final int ACTIONURL_FIELD_NUMBER = 5;
    public static final int DURATION_FIELD_NUMBER = 4;
    public static final int IMAGELANDSCAPEURL_FIELD_NUMBER = 3;
    public static final int IMAGEPORTRAITURL_FIELD_NUMBER = 2;
    public static Parser<SplashScreen> PARSER = new au();
    public static final int SPLASHID_FIELD_NUMBER = 1;
    private static final SplashScreen defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object actionUrl_;
    private int bitField0_;
    private int duration_;
    private Object imageLandscapeUrl_;
    private Object imagePortraitUrl_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object splashid_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      SplashScreen localSplashScreen = new SplashScreen(true);
      defaultInstance = localSplashScreen;
      localSplashScreen.initFields();
    }
    
    /* Error */
    private SplashScreen(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 68	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 70	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 72	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 61	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:initFields	()V
      //   18: invokestatic 78	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +251 -> 277
      //   29: aload_1
      //   30: invokevirtual 84	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+254->291, 0:+257->294, 10:+77->114, 18:+125->162, 26:+167->204, 32:+192->229, 42:+214->251
      //   96: aload_0
      //   97: aload_1
      //   98: aload 5
      //   100: aload_2
      //   101: iload 4
      //   103: invokevirtual 88	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   106: ifne -81 -> 25
      //   109: iconst_1
      //   110: istore_3
      //   111: goto -86 -> 25
      //   114: aload_1
      //   115: invokevirtual 92	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   118: astore 6
      //   120: aload_0
      //   121: aload_0
      //   122: getfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   125: iconst_1
      //   126: ior
      //   127: putfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   130: aload_0
      //   131: aload 6
      //   133: putfield 96	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:splashid_	Ljava/lang/Object;
      //   136: goto -111 -> 25
      //   139: astore_1
      //   140: aload_1
      //   141: aload_0
      //   142: invokevirtual 100	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   145: athrow
      //   146: astore_1
      //   147: aload_0
      //   148: aload 5
      //   150: invokevirtual 106	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   153: putfield 108	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   156: aload_0
      //   157: invokevirtual 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:makeExtensionsImmutable	()V
      //   160: aload_1
      //   161: athrow
      //   162: aload_1
      //   163: invokevirtual 92	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   166: astore 6
      //   168: aload_0
      //   169: aload_0
      //   170: getfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   173: iconst_2
      //   174: ior
      //   175: putfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   178: aload_0
      //   179: aload 6
      //   181: putfield 113	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:imagePortraitUrl_	Ljava/lang/Object;
      //   184: goto -159 -> 25
      //   187: astore_1
      //   188: new 65	com/google/protobuf/InvalidProtocolBufferException
      //   191: dup
      //   192: aload_1
      //   193: invokevirtual 117	java/io/IOException:getMessage	()Ljava/lang/String;
      //   196: invokespecial 120	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   199: aload_0
      //   200: invokevirtual 100	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   203: athrow
      //   204: aload_1
      //   205: invokevirtual 92	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   208: astore 6
      //   210: aload_0
      //   211: aload_0
      //   212: getfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   215: iconst_4
      //   216: ior
      //   217: putfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   220: aload_0
      //   221: aload 6
      //   223: putfield 122	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:imageLandscapeUrl_	Ljava/lang/Object;
      //   226: goto -201 -> 25
      //   229: aload_0
      //   230: aload_0
      //   231: getfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   234: bipush 8
      //   236: ior
      //   237: putfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   240: aload_0
      //   241: aload_1
      //   242: invokevirtual 125	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   245: putfield 127	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:duration_	I
      //   248: goto -223 -> 25
      //   251: aload_1
      //   252: invokevirtual 92	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   255: astore 6
      //   257: aload_0
      //   258: aload_0
      //   259: getfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   262: bipush 16
      //   264: ior
      //   265: putfield 94	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:bitField0_	I
      //   268: aload_0
      //   269: aload 6
      //   271: putfield 129	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:actionUrl_	Ljava/lang/Object;
      //   274: goto -249 -> 25
      //   277: aload_0
      //   278: aload 5
      //   280: invokevirtual 106	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   283: putfield 108	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   286: aload_0
      //   287: invokevirtual 111	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:makeExtensionsImmutable	()V
      //   290: return
      //   291: goto -195 -> 96
      //   294: iconst_1
      //   295: istore_3
      //   296: goto -271 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	299	0	this	SplashScreen
      //   0	299	1	paramCodedInputStream	CodedInputStream
      //   0	299	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	272	3	i	int
      //   33	69	4	j	int
      //   21	258	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   118	152	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	139	com/google/protobuf/InvalidProtocolBufferException
      //   96	109	139	com/google/protobuf/InvalidProtocolBufferException
      //   114	136	139	com/google/protobuf/InvalidProtocolBufferException
      //   162	184	139	com/google/protobuf/InvalidProtocolBufferException
      //   204	226	139	com/google/protobuf/InvalidProtocolBufferException
      //   229	248	139	com/google/protobuf/InvalidProtocolBufferException
      //   251	274	139	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	146	finally
      //   96	109	146	finally
      //   114	136	146	finally
      //   140	146	146	finally
      //   162	184	146	finally
      //   188	204	146	finally
      //   204	226	146	finally
      //   229	248	146	finally
      //   251	274	146	finally
      //   29	35	187	java/io/IOException
      //   96	109	187	java/io/IOException
      //   114	136	187	java/io/IOException
      //   162	184	187	java/io/IOException
      //   204	226	187	java/io/IOException
      //   229	248	187	java/io/IOException
      //   251	274	187	java/io/IOException
    }
    
    private SplashScreen(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private SplashScreen(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static SplashScreen getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor;
    }
    
    private void initFields()
    {
      this.splashid_ = "";
      this.imagePortraitUrl_ = "";
      this.imageLandscapeUrl_ = "";
      this.duration_ = 0;
      this.actionUrl_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(SplashScreen paramSplashScreen)
    {
      return newBuilder().mergeFrom(paramSplashScreen);
    }
    
    public static SplashScreen parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SplashScreen)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static SplashScreen parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SplashScreen)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SplashScreen parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (SplashScreen)PARSER.parseFrom(paramByteString);
    }
    
    public static SplashScreen parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SplashScreen)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static SplashScreen parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (SplashScreen)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static SplashScreen parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SplashScreen)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static SplashScreen parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SplashScreen)PARSER.parseFrom(paramInputStream);
    }
    
    public static SplashScreen parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SplashScreen)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SplashScreen parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (SplashScreen)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static SplashScreen parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SplashScreen)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getActionUrl()
    {
      Object localObject = this.actionUrl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.actionUrl_ = str;
      }
      return str;
    }
    
    public final ByteString getActionUrlBytes()
    {
      Object localObject = this.actionUrl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.actionUrl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final SplashScreen getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getDuration()
    {
      return this.duration_;
    }
    
    public final String getImageLandscapeUrl()
    {
      Object localObject = this.imageLandscapeUrl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imageLandscapeUrl_ = str;
      }
      return str;
    }
    
    public final ByteString getImageLandscapeUrlBytes()
    {
      Object localObject = this.imageLandscapeUrl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imageLandscapeUrl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getImagePortraitUrl()
    {
      Object localObject = this.imagePortraitUrl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imagePortraitUrl_ = str;
      }
      return str;
    }
    
    public final ByteString getImagePortraitUrlBytes()
    {
      Object localObject = this.imagePortraitUrl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imagePortraitUrl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<SplashScreen> getParserForType()
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
        j = CodedOutputStream.computeBytesSize(1, getSplashidBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getImagePortraitUrlBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getImageLandscapeUrlBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeUInt32Size(4, this.duration_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getActionUrlBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getSplashid()
    {
      Object localObject = this.splashid_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.splashid_ = str;
      }
      return str;
    }
    
    public final ByteString getSplashidBytes()
    {
      Object localObject = this.splashid_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.splashid_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasActionUrl()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasDuration()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasImageLandscapeUrl()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasImagePortraitUrl()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasSplashid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_fieldAccessorTable.ensureFieldAccessorsInitialized(SplashScreen.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getSplashidBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getImagePortraitUrlBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getImageLandscapeUrlBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeUInt32(4, this.duration_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getActionUrlBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SplashScreenProto.SplashScreenOrBuilder
    {
      private Object actionUrl_ = "";
      private int bitField0_;
      private int duration_;
      private Object imageLandscapeUrl_ = "";
      private Object imagePortraitUrl_ = "";
      private Object splashid_ = "";
      
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
        return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SplashScreenProto.SplashScreen build()
      {
        SplashScreenProto.SplashScreen localSplashScreen = buildPartial();
        if (!localSplashScreen.isInitialized()) {
          throw newUninitializedMessageException(localSplashScreen);
        }
        return localSplashScreen;
      }
      
      public final SplashScreenProto.SplashScreen buildPartial()
      {
        int j = 1;
        SplashScreenProto.SplashScreen localSplashScreen = new SplashScreenProto.SplashScreen(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SplashScreenProto.SplashScreen.access$702(localSplashScreen, this.splashid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SplashScreenProto.SplashScreen.access$802(localSplashScreen, this.imagePortraitUrl_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SplashScreenProto.SplashScreen.access$902(localSplashScreen, this.imageLandscapeUrl_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          SplashScreenProto.SplashScreen.access$1002(localSplashScreen, this.duration_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          SplashScreenProto.SplashScreen.access$1102(localSplashScreen, this.actionUrl_);
          SplashScreenProto.SplashScreen.access$1202(localSplashScreen, j);
          onBuilt();
          return localSplashScreen;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.splashid_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.imagePortraitUrl_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.imageLandscapeUrl_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.duration_ = 0;
        this.bitField0_ &= 0xFFFFFFF7;
        this.actionUrl_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        return this;
      }
      
      public final Builder clearActionUrl()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.actionUrl_ = SplashScreenProto.SplashScreen.getDefaultInstance().getActionUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearDuration()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.duration_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearImageLandscapeUrl()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.imageLandscapeUrl_ = SplashScreenProto.SplashScreen.getDefaultInstance().getImageLandscapeUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearImagePortraitUrl()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.imagePortraitUrl_ = SplashScreenProto.SplashScreen.getDefaultInstance().getImagePortraitUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearSplashid()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.splashid_ = SplashScreenProto.SplashScreen.getDefaultInstance().getSplashid();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getActionUrl()
      {
        Object localObject = this.actionUrl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.actionUrl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getActionUrlBytes()
      {
        Object localObject = this.actionUrl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.actionUrl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final SplashScreenProto.SplashScreen getDefaultInstanceForType()
      {
        return SplashScreenProto.SplashScreen.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor;
      }
      
      public final int getDuration()
      {
        return this.duration_;
      }
      
      public final String getImageLandscapeUrl()
      {
        Object localObject = this.imageLandscapeUrl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imageLandscapeUrl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImageLandscapeUrlBytes()
      {
        Object localObject = this.imageLandscapeUrl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imageLandscapeUrl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getImagePortraitUrl()
      {
        Object localObject = this.imagePortraitUrl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imagePortraitUrl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImagePortraitUrlBytes()
      {
        Object localObject = this.imagePortraitUrl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imagePortraitUrl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getSplashid()
      {
        Object localObject = this.splashid_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.splashid_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSplashidBytes()
      {
        Object localObject = this.splashid_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.splashid_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasActionUrl()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasDuration()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasImageLandscapeUrl()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasImagePortraitUrl()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasSplashid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SplashScreenProto.internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_fieldAccessorTable.ensureFieldAccessorsInitialized(SplashScreenProto.SplashScreen.class, Builder.class);
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
        //   2: getstatic 211	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 217 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 150	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 220	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 150	org/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
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
        if ((paramMessage instanceof SplashScreenProto.SplashScreen)) {
          return mergeFrom((SplashScreenProto.SplashScreen)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SplashScreenProto.SplashScreen paramSplashScreen)
      {
        if (paramSplashScreen == SplashScreenProto.SplashScreen.getDefaultInstance()) {
          return this;
        }
        if (paramSplashScreen.hasSplashid())
        {
          this.bitField0_ |= 0x1;
          this.splashid_ = paramSplashScreen.splashid_;
          onChanged();
        }
        if (paramSplashScreen.hasImagePortraitUrl())
        {
          this.bitField0_ |= 0x2;
          this.imagePortraitUrl_ = paramSplashScreen.imagePortraitUrl_;
          onChanged();
        }
        if (paramSplashScreen.hasImageLandscapeUrl())
        {
          this.bitField0_ |= 0x4;
          this.imageLandscapeUrl_ = paramSplashScreen.imageLandscapeUrl_;
          onChanged();
        }
        if (paramSplashScreen.hasDuration()) {
          setDuration(paramSplashScreen.getDuration());
        }
        if (paramSplashScreen.hasActionUrl())
        {
          this.bitField0_ |= 0x10;
          this.actionUrl_ = paramSplashScreen.actionUrl_;
          onChanged();
        }
        mergeUnknownFields(paramSplashScreen.getUnknownFields());
        return this;
      }
      
      public final Builder setActionUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.actionUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setActionUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.actionUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDuration(int paramInt)
      {
        this.bitField0_ |= 0x8;
        this.duration_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setImageLandscapeUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.imageLandscapeUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImageLandscapeUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.imageLandscapeUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImagePortraitUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.imagePortraitUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImagePortraitUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.imagePortraitUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSplashid(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.splashid_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSplashidBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.splashid_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface SplashScreenOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getActionUrl();
    
    public abstract ByteString getActionUrlBytes();
    
    public abstract int getDuration();
    
    public abstract String getImageLandscapeUrl();
    
    public abstract ByteString getImageLandscapeUrlBytes();
    
    public abstract String getImagePortraitUrl();
    
    public abstract ByteString getImagePortraitUrlBytes();
    
    public abstract String getSplashid();
    
    public abstract ByteString getSplashidBytes();
    
    public abstract boolean hasActionUrl();
    
    public abstract boolean hasDuration();
    
    public abstract boolean hasImageLandscapeUrl();
    
    public abstract boolean hasImagePortraitUrl();
    
    public abstract boolean hasSplashid();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\xiaomi\gamecenter\milink\msg\SplashScreenProto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */