package org.xiaomi.gamecenter.milink.msg;

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

public final class NoticeConfigProtos
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(5);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_descriptor, new String[] { "DevAppId", "DeviceNo", "GamePackageName", "GameVersionCode", "GameVersionName", "Channel", "Fuid", "SdkType", "SdkVersion", "UnionId", "Model", "Ua", "StatInfo" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(6);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_descriptor, new String[] { "RetCode", "NoticeConfig" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_fieldAccessorTable;
  
  static
  {
    ah localah = new ah();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\030NoticeConfigProtos.proto\022 org.xiaomi.gamecenter.milink.msg\"K\n\fNoticeConfig\022\021\n\tnotice_id\030\001 \002(\t\022\030\n\020noticeConfigType\030\002 \001(\r\022\016\n\006config\030\003 \001(\f\"2\n\020NoticeTextConfig\022\r\n\005title\030\001 \001(\t\022\017\n\007content\030\002 \001(\t\"Ô\001\n\021NoticeImageConfig\022\030\n\020imagePortraitUrl\030\001 \001(\t\022\025\n\rportraitWidth\030\002 \001(\r\022\026\n\016portraitHeight\030\003 \001(\r\022\031\n\021imageLandscapeUrl\030\004 \001(\t\022\026\n\016landscapeWidth\030\005 \001(\r\022\027\n\017landscapeHeight\030\006 \001(\r\022\021\n\tactionUrl\030\007 \001(\t\022\027\n\017backupActionUrl\030\b", " \001(\t\"t\n\022NoticeSchemaConfig\022\r\n\005title\030\001 \001(\t\022\017\n\007content\030\002 \001(\t\022\022\n\nbuttonText\030\003 \001(\t\022\021\n\tactionUrl\030\004 \001(\t\022\027\n\017backupActionUrl\030\005 \001(\t\"¿\003\n\bStatInfo\022\017\n\007imeiMd5\030\001 \001(\t\022\020\n\bimeiSha1\030\002 \001(\t\022\020\n\bimeiSha2\030\003 \001(\t\022\016\n\006macMd5\030\004 \001(\t\022\n\n\002ua\030\005 \001(\t\022\017\n\007network\030\006 \001(\t\022\017\n\007android\030\007 \001(\t\022\n\n\002os\030\b \001(\t\022\016\n\006region\030\t \001(\t\022\f\n\004lang\030\n \001(\t\022\017\n\007carrier\030\013 \001(\t\022\020\n\btimezone\030\f \001(\t\022\f\n\004fuid\030\r \001(\004\022\025\n\rclientVersion\030\016 \001(\t\022\022\n\nserverTime\030\017 \001(\t\022\021\n\tlocalTime\030\020 ", "\001(\t\022\013\n\003cid\030\021 \001(\t\022\020\n\bdevAppId\030\022 \001(\004\022\017\n\007sdkType\030\023 \001(\r\022\025\n\rsdkJarVersion\030\024 \001(\t\022\031\n\021sdkServiceVersion\030\025 \001(\t\022\021\n\tsessionId\030\026 \001(\t\022\017\n\007unionId\030\027 \001(\t\022\r\n\005extra\030\030 \001(\t\022\022\n\nprotectCid\030\031 \001(\t\"±\002\n\022GetNoticeConfigReq\022\020\n\bdevAppId\030\001 \001(\004\022\020\n\bdeviceNo\030\002 \001(\t\022\027\n\017gamePackageName\030\003 \001(\t\022\027\n\017gameVersionCode\030\004 \001(\r\022\027\n\017gameVersionName\030\005 \001(\t\022\017\n\007channel\030\006 \001(\t\022\f\n\004fuid\030\007 \001(\004\022\017\n\007sdkType\030\b \001(\r\022\022\n\nsdkVersion\030\t \001(\t\022\017\n\007unionId\030\n \001(\t\022\r\n\005model", "\030\013 \001(\t\022\n\n\002ua\030\f \001(\t\022<\n\bstatInfo\030\r \001(\0132*.org.xiaomi.gamecenter.milink.msg.StatInfo\"l\n\023GetNoticeConfigResp\022\017\n\007retCode\030\001 \002(\r\022D\n\fnoticeConfig\030\002 \003(\0132..org.xiaomi.gamecenter.milink.msg.NoticeConfig*/\n\007SdkType\022\013\n\007OFFLINE\020\001\022\n\n\006MIGAME\020\002\022\013\n\007SERVICE\020\003*3\n\020NoticeConfigType\022\b\n\004TEXT\020\000\022\t\n\005IMAGE\020\001\022\n\n\006SCHEMA\020\002B\024B\022NoticeConfigProtos" }, new Descriptors.FileDescriptor[0], localah);
    internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor, new String[] { "NoticeId", "NoticeConfigType", "Config" });
    internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
    internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor, new String[] { "Title", "Content" });
    internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
    internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor, new String[] { "ImagePortraitUrl", "PortraitWidth", "PortraitHeight", "ImageLandscapeUrl", "LandscapeWidth", "LandscapeHeight", "ActionUrl", "BackupActionUrl" });
    internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
    internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor, new String[] { "Title", "Content", "ButtonText", "ActionUrl", "BackupActionUrl" });
    internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(4);
    internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor, new String[] { "ImeiMd5", "ImeiSha1", "ImeiSha2", "MacMd5", "Ua", "Network", "Android", "Os", "Region", "Lang", "Carrier", "Timezone", "Fuid", "ClientVersion", "ServerTime", "LocalTime", "Cid", "DevAppId", "SdkType", "SdkJarVersion", "SdkServiceVersion", "SessionId", "UnionId", "Extra", "ProtectCid" });
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class GetNoticeConfigReq
    extends GeneratedMessage
    implements NoticeConfigProtos.GetNoticeConfigReqOrBuilder
  {
    public static final int CHANNEL_FIELD_NUMBER = 6;
    public static final int DEVAPPID_FIELD_NUMBER = 1;
    public static final int DEVICENO_FIELD_NUMBER = 2;
    public static final int FUID_FIELD_NUMBER = 7;
    public static final int GAMEPACKAGENAME_FIELD_NUMBER = 3;
    public static final int GAMEVERSIONCODE_FIELD_NUMBER = 4;
    public static final int GAMEVERSIONNAME_FIELD_NUMBER = 5;
    public static final int MODEL_FIELD_NUMBER = 11;
    public static Parser<GetNoticeConfigReq> PARSER = new ai();
    public static final int SDKTYPE_FIELD_NUMBER = 8;
    public static final int SDKVERSION_FIELD_NUMBER = 9;
    public static final int STATINFO_FIELD_NUMBER = 13;
    public static final int UA_FIELD_NUMBER = 12;
    public static final int UNIONID_FIELD_NUMBER = 10;
    private static final GetNoticeConfigReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object channel_;
    private long devAppId_;
    private Object deviceNo_;
    private long fuid_;
    private Object gamePackageName_;
    private int gameVersionCode_;
    private Object gameVersionName_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object model_;
    private int sdkType_;
    private Object sdkVersion_;
    private NoticeConfigProtos.StatInfo statInfo_;
    private Object ua_;
    private Object unionId_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetNoticeConfigReq localGetNoticeConfigReq = new GetNoticeConfigReq(true);
      defaultInstance = localGetNoticeConfigReq;
      localGetNoticeConfigReq.initFields();
    }
    
    /* Error */
    private GetNoticeConfigReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 93	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 95	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 97	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 86	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:initFields	()V
      //   18: invokestatic 103	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 6
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +567 -> 593
      //   29: aload_1
      //   30: invokevirtual 109	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+576->613, 0:+579->616, 8:+141->178, 18:+185->222, 26:+227->264, 32:+252->289, 42:+274->311, 50:+300->337, 56:+326->363, 64:+348->385, 74:+371->408, 82:+398->435, 90:+425->462, 98:+452->489, 106:+479->516
      //   160: aload_0
      //   161: aload_1
      //   162: aload 6
      //   164: aload_2
      //   165: iload 4
      //   167: invokevirtual 113	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   170: ifne -145 -> 25
      //   173: iconst_1
      //   174: istore_3
      //   175: goto -150 -> 25
      //   178: aload_0
      //   179: aload_0
      //   180: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   183: iconst_1
      //   184: ior
      //   185: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   188: aload_0
      //   189: aload_1
      //   190: invokevirtual 119	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   193: putfield 121	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:devAppId_	J
      //   196: goto -171 -> 25
      //   199: astore_1
      //   200: aload_1
      //   201: aload_0
      //   202: invokevirtual 125	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   205: athrow
      //   206: astore_1
      //   207: aload_0
      //   208: aload 6
      //   210: invokevirtual 131	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   213: putfield 133	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   216: aload_0
      //   217: invokevirtual 136	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:makeExtensionsImmutable	()V
      //   220: aload_1
      //   221: athrow
      //   222: aload_1
      //   223: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   226: astore 5
      //   228: aload_0
      //   229: aload_0
      //   230: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   233: iconst_2
      //   234: ior
      //   235: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   238: aload_0
      //   239: aload 5
      //   241: putfield 142	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:deviceNo_	Ljava/lang/Object;
      //   244: goto -219 -> 25
      //   247: astore_1
      //   248: new 90	com/google/protobuf/InvalidProtocolBufferException
      //   251: dup
      //   252: aload_1
      //   253: invokevirtual 146	java/io/IOException:getMessage	()Ljava/lang/String;
      //   256: invokespecial 149	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   259: aload_0
      //   260: invokevirtual 125	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   263: athrow
      //   264: aload_1
      //   265: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   268: astore 5
      //   270: aload_0
      //   271: aload_0
      //   272: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   275: iconst_4
      //   276: ior
      //   277: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   280: aload_0
      //   281: aload 5
      //   283: putfield 151	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:gamePackageName_	Ljava/lang/Object;
      //   286: goto -261 -> 25
      //   289: aload_0
      //   290: aload_0
      //   291: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   294: bipush 8
      //   296: ior
      //   297: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   300: aload_0
      //   301: aload_1
      //   302: invokevirtual 154	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   305: putfield 156	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:gameVersionCode_	I
      //   308: goto -283 -> 25
      //   311: aload_1
      //   312: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   315: astore 5
      //   317: aload_0
      //   318: aload_0
      //   319: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   322: bipush 16
      //   324: ior
      //   325: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   328: aload_0
      //   329: aload 5
      //   331: putfield 158	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:gameVersionName_	Ljava/lang/Object;
      //   334: goto -309 -> 25
      //   337: aload_1
      //   338: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   341: astore 5
      //   343: aload_0
      //   344: aload_0
      //   345: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   348: bipush 32
      //   350: ior
      //   351: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   354: aload_0
      //   355: aload 5
      //   357: putfield 160	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:channel_	Ljava/lang/Object;
      //   360: goto -335 -> 25
      //   363: aload_0
      //   364: aload_0
      //   365: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   368: bipush 64
      //   370: ior
      //   371: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   374: aload_0
      //   375: aload_1
      //   376: invokevirtual 119	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   379: putfield 162	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:fuid_	J
      //   382: goto -357 -> 25
      //   385: aload_0
      //   386: aload_0
      //   387: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   390: sipush 128
      //   393: ior
      //   394: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   397: aload_0
      //   398: aload_1
      //   399: invokevirtual 154	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   402: putfield 164	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:sdkType_	I
      //   405: goto -380 -> 25
      //   408: aload_1
      //   409: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   412: astore 5
      //   414: aload_0
      //   415: aload_0
      //   416: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   419: sipush 256
      //   422: ior
      //   423: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   426: aload_0
      //   427: aload 5
      //   429: putfield 166	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:sdkVersion_	Ljava/lang/Object;
      //   432: goto -407 -> 25
      //   435: aload_1
      //   436: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   439: astore 5
      //   441: aload_0
      //   442: aload_0
      //   443: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   446: sipush 512
      //   449: ior
      //   450: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   453: aload_0
      //   454: aload 5
      //   456: putfield 168	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:unionId_	Ljava/lang/Object;
      //   459: goto -434 -> 25
      //   462: aload_1
      //   463: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   466: astore 5
      //   468: aload_0
      //   469: aload_0
      //   470: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   473: sipush 1024
      //   476: ior
      //   477: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   480: aload_0
      //   481: aload 5
      //   483: putfield 170	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:model_	Ljava/lang/Object;
      //   486: goto -461 -> 25
      //   489: aload_1
      //   490: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   493: astore 5
      //   495: aload_0
      //   496: aload_0
      //   497: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   500: sipush 2048
      //   503: ior
      //   504: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   507: aload_0
      //   508: aload 5
      //   510: putfield 172	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:ua_	Ljava/lang/Object;
      //   513: goto -488 -> 25
      //   516: aload_0
      //   517: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   520: sipush 4096
      //   523: iand
      //   524: sipush 4096
      //   527: if_icmpne +80 -> 607
      //   530: aload_0
      //   531: getfield 174	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:statInfo_	Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
      //   534: invokevirtual 180	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:toBuilder	()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
      //   537: astore 5
      //   539: aload_0
      //   540: aload_1
      //   541: getstatic 181	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:PARSER	Lcom/google/protobuf/Parser;
      //   544: aload_2
      //   545: invokevirtual 185	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   548: checkcast 176	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo
      //   551: putfield 174	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:statInfo_	Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
      //   554: aload 5
      //   556: ifnull +22 -> 578
      //   559: aload 5
      //   561: aload_0
      //   562: getfield 174	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:statInfo_	Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
      //   565: invokevirtual 191	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
      //   568: pop
      //   569: aload_0
      //   570: aload 5
      //   572: invokevirtual 195	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder:buildPartial	()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
      //   575: putfield 174	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:statInfo_	Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
      //   578: aload_0
      //   579: aload_0
      //   580: getfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   583: sipush 4096
      //   586: ior
      //   587: putfield 115	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:bitField0_	I
      //   590: goto -565 -> 25
      //   593: aload_0
      //   594: aload 6
      //   596: invokevirtual 131	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   599: putfield 133	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   602: aload_0
      //   603: invokevirtual 136	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:makeExtensionsImmutable	()V
      //   606: return
      //   607: aconst_null
      //   608: astore 5
      //   610: goto -71 -> 539
      //   613: goto -453 -> 160
      //   616: iconst_1
      //   617: istore_3
      //   618: goto -593 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	621	0	this	GetNoticeConfigReq
      //   0	621	1	paramCodedInputStream	CodedInputStream
      //   0	621	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	594	3	i	int
      //   33	133	4	j	int
      //   226	383	5	localObject	Object
      //   21	574	6	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	199	com/google/protobuf/InvalidProtocolBufferException
      //   160	173	199	com/google/protobuf/InvalidProtocolBufferException
      //   178	196	199	com/google/protobuf/InvalidProtocolBufferException
      //   222	244	199	com/google/protobuf/InvalidProtocolBufferException
      //   264	286	199	com/google/protobuf/InvalidProtocolBufferException
      //   289	308	199	com/google/protobuf/InvalidProtocolBufferException
      //   311	334	199	com/google/protobuf/InvalidProtocolBufferException
      //   337	360	199	com/google/protobuf/InvalidProtocolBufferException
      //   363	382	199	com/google/protobuf/InvalidProtocolBufferException
      //   385	405	199	com/google/protobuf/InvalidProtocolBufferException
      //   408	432	199	com/google/protobuf/InvalidProtocolBufferException
      //   435	459	199	com/google/protobuf/InvalidProtocolBufferException
      //   462	486	199	com/google/protobuf/InvalidProtocolBufferException
      //   489	513	199	com/google/protobuf/InvalidProtocolBufferException
      //   516	539	199	com/google/protobuf/InvalidProtocolBufferException
      //   539	554	199	com/google/protobuf/InvalidProtocolBufferException
      //   559	578	199	com/google/protobuf/InvalidProtocolBufferException
      //   578	590	199	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	206	finally
      //   160	173	206	finally
      //   178	196	206	finally
      //   200	206	206	finally
      //   222	244	206	finally
      //   248	264	206	finally
      //   264	286	206	finally
      //   289	308	206	finally
      //   311	334	206	finally
      //   337	360	206	finally
      //   363	382	206	finally
      //   385	405	206	finally
      //   408	432	206	finally
      //   435	459	206	finally
      //   462	486	206	finally
      //   489	513	206	finally
      //   516	539	206	finally
      //   539	554	206	finally
      //   559	578	206	finally
      //   578	590	206	finally
      //   29	35	247	java/io/IOException
      //   160	173	247	java/io/IOException
      //   178	196	247	java/io/IOException
      //   222	244	247	java/io/IOException
      //   264	286	247	java/io/IOException
      //   289	308	247	java/io/IOException
      //   311	334	247	java/io/IOException
      //   337	360	247	java/io/IOException
      //   363	382	247	java/io/IOException
      //   385	405	247	java/io/IOException
      //   408	432	247	java/io/IOException
      //   435	459	247	java/io/IOException
      //   462	486	247	java/io/IOException
      //   489	513	247	java/io/IOException
      //   516	539	247	java/io/IOException
      //   539	554	247	java/io/IOException
      //   559	578	247	java/io/IOException
      //   578	590	247	java/io/IOException
    }
    
    private GetNoticeConfigReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetNoticeConfigReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetNoticeConfigReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_descriptor;
    }
    
    private void initFields()
    {
      this.devAppId_ = 0L;
      this.deviceNo_ = "";
      this.gamePackageName_ = "";
      this.gameVersionCode_ = 0;
      this.gameVersionName_ = "";
      this.channel_ = "";
      this.fuid_ = 0L;
      this.sdkType_ = 0;
      this.sdkVersion_ = "";
      this.unionId_ = "";
      this.model_ = "";
      this.ua_ = "";
      this.statInfo_ = NoticeConfigProtos.StatInfo.getDefaultInstance();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$8600();
    }
    
    public static Builder newBuilder(GetNoticeConfigReq paramGetNoticeConfigReq)
    {
      return newBuilder().mergeFrom(paramGetNoticeConfigReq);
    }
    
    public static GetNoticeConfigReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetNoticeConfigReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetNoticeConfigReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetNoticeConfigReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetNoticeConfigReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetNoticeConfigReq)PARSER.parseFrom(paramByteString);
    }
    
    public static GetNoticeConfigReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetNoticeConfigReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetNoticeConfigReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetNoticeConfigReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetNoticeConfigReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetNoticeConfigReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetNoticeConfigReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetNoticeConfigReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetNoticeConfigReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetNoticeConfigReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetNoticeConfigReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetNoticeConfigReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetNoticeConfigReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetNoticeConfigReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
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
    
    public final GetNoticeConfigReq getDefaultInstanceForType()
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
    
    public final long getFuid()
    {
      return this.fuid_;
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
    
    public final Parser<GetNoticeConfigReq> getParserForType()
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
        j = i + CodedOutputStream.computeUInt64Size(7, this.fuid_);
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeUInt32Size(8, this.sdkType_);
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getSdkVersionBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getUnionIdBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getModelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x800) == 2048) {
        i = j + CodedOutputStream.computeBytesSize(12, getUaBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x1000) == 4096) {
        j = i + CodedOutputStream.computeMessageSize(13, this.statInfo_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final NoticeConfigProtos.StatInfo getStatInfo()
    {
      return this.statInfo_;
    }
    
    public final NoticeConfigProtos.StatInfoOrBuilder getStatInfoOrBuilder()
    {
      return this.statInfo_;
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
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x40) == 64;
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
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasSdkType()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasSdkVersion()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasStatInfo()
    {
      return (this.bitField0_ & 0x1000) == 4096;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x800) == 2048;
    }
    
    public final boolean hasUnionId()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_fieldAccessorTable.ensureFieldAccessorsInitialized(GetNoticeConfigReq.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(7, this.fuid_);
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeUInt32(8, this.sdkType_);
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getSdkVersionBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getUnionIdBytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getModelBytes());
      }
      if ((this.bitField0_ & 0x800) == 2048) {
        paramCodedOutputStream.writeBytes(12, getUaBytes());
      }
      if ((this.bitField0_ & 0x1000) == 4096) {
        paramCodedOutputStream.writeMessage(13, this.statInfo_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements NoticeConfigProtos.GetNoticeConfigReqOrBuilder
    {
      private int bitField0_;
      private Object channel_ = "";
      private long devAppId_;
      private Object deviceNo_ = "";
      private long fuid_;
      private Object gamePackageName_ = "";
      private int gameVersionCode_;
      private Object gameVersionName_ = "";
      private Object model_ = "";
      private int sdkType_;
      private Object sdkVersion_ = "";
      private SingleFieldBuilder<NoticeConfigProtos.StatInfo, NoticeConfigProtos.StatInfo.Builder, NoticeConfigProtos.StatInfoOrBuilder> statInfoBuilder_;
      private NoticeConfigProtos.StatInfo statInfo_ = NoticeConfigProtos.StatInfo.getDefaultInstance();
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
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_descriptor;
      }
      
      private SingleFieldBuilder<NoticeConfigProtos.StatInfo, NoticeConfigProtos.StatInfo.Builder, NoticeConfigProtos.StatInfoOrBuilder> getStatInfoFieldBuilder()
      {
        if (this.statInfoBuilder_ == null)
        {
          this.statInfoBuilder_ = new SingleFieldBuilder(getStatInfo(), getParentForChildren(), isClean());
          this.statInfo_ = null;
        }
        return this.statInfoBuilder_;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (NoticeConfigProtos.GetNoticeConfigReq.alwaysUseFieldBuilders) {
          getStatInfoFieldBuilder();
        }
      }
      
      public final NoticeConfigProtos.GetNoticeConfigReq build()
      {
        NoticeConfigProtos.GetNoticeConfigReq localGetNoticeConfigReq = buildPartial();
        if (!localGetNoticeConfigReq.isInitialized()) {
          throw newUninitializedMessageException(localGetNoticeConfigReq);
        }
        return localGetNoticeConfigReq;
      }
      
      public final NoticeConfigProtos.GetNoticeConfigReq buildPartial()
      {
        int j = 1;
        NoticeConfigProtos.GetNoticeConfigReq localGetNoticeConfigReq = new NoticeConfigProtos.GetNoticeConfigReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          NoticeConfigProtos.GetNoticeConfigReq.access$9002(localGetNoticeConfigReq, this.devAppId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$9102(localGetNoticeConfigReq, this.deviceNo_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$9202(localGetNoticeConfigReq, this.gamePackageName_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$9302(localGetNoticeConfigReq, this.gameVersionCode_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$9402(localGetNoticeConfigReq, this.gameVersionName_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$9502(localGetNoticeConfigReq, this.channel_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$9602(localGetNoticeConfigReq, this.fuid_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$9702(localGetNoticeConfigReq, this.sdkType_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$9802(localGetNoticeConfigReq, this.sdkVersion_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$9902(localGetNoticeConfigReq, this.unionId_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$10002(localGetNoticeConfigReq, this.model_);
          i = j;
          if ((k & 0x800) == 2048) {
            i = j | 0x800;
          }
          NoticeConfigProtos.GetNoticeConfigReq.access$10102(localGetNoticeConfigReq, this.ua_);
          if ((k & 0x1000) == 4096) {
            i |= 0x1000;
          }
          for (;;)
          {
            if (this.statInfoBuilder_ == null) {
              NoticeConfigProtos.GetNoticeConfigReq.access$10202(localGetNoticeConfigReq, this.statInfo_);
            }
            for (;;)
            {
              NoticeConfigProtos.GetNoticeConfigReq.access$10302(localGetNoticeConfigReq, i);
              onBuilt();
              return localGetNoticeConfigReq;
              NoticeConfigProtos.GetNoticeConfigReq.access$10202(localGetNoticeConfigReq, (NoticeConfigProtos.StatInfo)this.statInfoBuilder_.build());
            }
          }
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
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFBF;
        this.sdkType_ = 0;
        this.bitField0_ &= 0xFF7F;
        this.sdkVersion_ = "";
        this.bitField0_ &= 0xFEFF;
        this.unionId_ = "";
        this.bitField0_ &= 0xFDFF;
        this.model_ = "";
        this.bitField0_ &= 0xFBFF;
        this.ua_ = "";
        this.bitField0_ &= 0xF7FF;
        if (this.statInfoBuilder_ == null) {
          this.statInfo_ = NoticeConfigProtos.StatInfo.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xEFFF;
          return this;
          this.statInfoBuilder_.clear();
        }
      }
      
      public final Builder clearChannel()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.channel_ = NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance().getChannel();
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
        this.deviceNo_ = NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance().getDeviceNo();
        onChanged();
        return this;
      }
      
      public final Builder clearFuid()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.fuid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearGamePackageName()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.gamePackageName_ = NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance().getGamePackageName();
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
        this.gameVersionName_ = NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance().getGameVersionName();
        onChanged();
        return this;
      }
      
      public final Builder clearModel()
      {
        this.bitField0_ &= 0xFBFF;
        this.model_ = NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance().getModel();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkType()
      {
        this.bitField0_ &= 0xFF7F;
        this.sdkType_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearSdkVersion()
      {
        this.bitField0_ &= 0xFEFF;
        this.sdkVersion_ = NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance().getSdkVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearStatInfo()
      {
        if (this.statInfoBuilder_ == null)
        {
          this.statInfo_ = NoticeConfigProtos.StatInfo.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xEFFF;
          return this;
          this.statInfoBuilder_.clear();
        }
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xF7FF;
        this.ua_ = NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance().getUa();
        onChanged();
        return this;
      }
      
      public final Builder clearUnionId()
      {
        this.bitField0_ &= 0xFDFF;
        this.unionId_ = NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance().getUnionId();
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
      
      public final NoticeConfigProtos.GetNoticeConfigReq getDefaultInstanceForType()
      {
        return NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_descriptor;
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
      
      public final long getFuid()
      {
        return this.fuid_;
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
      
      public final NoticeConfigProtos.StatInfo getStatInfo()
      {
        if (this.statInfoBuilder_ == null) {
          return this.statInfo_;
        }
        return (NoticeConfigProtos.StatInfo)this.statInfoBuilder_.getMessage();
      }
      
      public final NoticeConfigProtos.StatInfo.Builder getStatInfoBuilder()
      {
        this.bitField0_ |= 0x1000;
        onChanged();
        return (NoticeConfigProtos.StatInfo.Builder)getStatInfoFieldBuilder().getBuilder();
      }
      
      public final NoticeConfigProtos.StatInfoOrBuilder getStatInfoOrBuilder()
      {
        if (this.statInfoBuilder_ != null) {
          return (NoticeConfigProtos.StatInfoOrBuilder)this.statInfoBuilder_.getMessageOrBuilder();
        }
        return this.statInfo_;
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
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x40) == 64;
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
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasSdkType()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasSdkVersion()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasStatInfo()
      {
        return (this.bitField0_ & 0x1000) == 4096;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x800) == 2048;
      }
      
      public final boolean hasUnionId()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeConfigProtos.GetNoticeConfigReq.class, Builder.class);
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
        //   2: getstatic 353	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 359 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 258	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 362	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 258	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;
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
        if ((paramMessage instanceof NoticeConfigProtos.GetNoticeConfigReq)) {
          return mergeFrom((NoticeConfigProtos.GetNoticeConfigReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(NoticeConfigProtos.GetNoticeConfigReq paramGetNoticeConfigReq)
      {
        if (paramGetNoticeConfigReq == NoticeConfigProtos.GetNoticeConfigReq.getDefaultInstance()) {
          return this;
        }
        if (paramGetNoticeConfigReq.hasDevAppId()) {
          setDevAppId(paramGetNoticeConfigReq.getDevAppId());
        }
        if (paramGetNoticeConfigReq.hasDeviceNo())
        {
          this.bitField0_ |= 0x2;
          this.deviceNo_ = paramGetNoticeConfigReq.deviceNo_;
          onChanged();
        }
        if (paramGetNoticeConfigReq.hasGamePackageName())
        {
          this.bitField0_ |= 0x4;
          this.gamePackageName_ = paramGetNoticeConfigReq.gamePackageName_;
          onChanged();
        }
        if (paramGetNoticeConfigReq.hasGameVersionCode()) {
          setGameVersionCode(paramGetNoticeConfigReq.getGameVersionCode());
        }
        if (paramGetNoticeConfigReq.hasGameVersionName())
        {
          this.bitField0_ |= 0x10;
          this.gameVersionName_ = paramGetNoticeConfigReq.gameVersionName_;
          onChanged();
        }
        if (paramGetNoticeConfigReq.hasChannel())
        {
          this.bitField0_ |= 0x20;
          this.channel_ = paramGetNoticeConfigReq.channel_;
          onChanged();
        }
        if (paramGetNoticeConfigReq.hasFuid()) {
          setFuid(paramGetNoticeConfigReq.getFuid());
        }
        if (paramGetNoticeConfigReq.hasSdkType()) {
          setSdkType(paramGetNoticeConfigReq.getSdkType());
        }
        if (paramGetNoticeConfigReq.hasSdkVersion())
        {
          this.bitField0_ |= 0x100;
          this.sdkVersion_ = paramGetNoticeConfigReq.sdkVersion_;
          onChanged();
        }
        if (paramGetNoticeConfigReq.hasUnionId())
        {
          this.bitField0_ |= 0x200;
          this.unionId_ = paramGetNoticeConfigReq.unionId_;
          onChanged();
        }
        if (paramGetNoticeConfigReq.hasModel())
        {
          this.bitField0_ |= 0x400;
          this.model_ = paramGetNoticeConfigReq.model_;
          onChanged();
        }
        if (paramGetNoticeConfigReq.hasUa())
        {
          this.bitField0_ |= 0x800;
          this.ua_ = paramGetNoticeConfigReq.ua_;
          onChanged();
        }
        if (paramGetNoticeConfigReq.hasStatInfo()) {
          mergeStatInfo(paramGetNoticeConfigReq.getStatInfo());
        }
        mergeUnknownFields(paramGetNoticeConfigReq.getUnknownFields());
        return this;
      }
      
      public final Builder mergeStatInfo(NoticeConfigProtos.StatInfo paramStatInfo)
      {
        if (this.statInfoBuilder_ == null) {
          if (((this.bitField0_ & 0x1000) == 4096) && (this.statInfo_ != NoticeConfigProtos.StatInfo.getDefaultInstance()))
          {
            this.statInfo_ = NoticeConfigProtos.StatInfo.newBuilder(this.statInfo_).mergeFrom(paramStatInfo).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x1000;
          return this;
          this.statInfo_ = paramStatInfo;
          break;
          this.statInfoBuilder_.mergeFrom(paramStatInfo);
        }
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
      
      public final Builder setFuid(long paramLong)
      {
        this.bitField0_ |= 0x40;
        this.fuid_ = paramLong;
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
        this.bitField0_ |= 0x400;
        this.model_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setModelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.model_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkType(int paramInt)
      {
        this.bitField0_ |= 0x80;
        this.sdkType_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.sdkVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.sdkVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setStatInfo(NoticeConfigProtos.StatInfo.Builder paramBuilder)
      {
        if (this.statInfoBuilder_ == null)
        {
          this.statInfo_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x1000;
          return this;
          this.statInfoBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setStatInfo(NoticeConfigProtos.StatInfo paramStatInfo)
      {
        if (this.statInfoBuilder_ == null)
        {
          if (paramStatInfo == null) {
            throw new NullPointerException();
          }
          this.statInfo_ = paramStatInfo;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x1000;
          return this;
          this.statInfoBuilder_.setMessage(paramStatInfo);
        }
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUnionId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.unionId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUnionIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.unionId_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface GetNoticeConfigReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getChannel();
    
    public abstract ByteString getChannelBytes();
    
    public abstract long getDevAppId();
    
    public abstract String getDeviceNo();
    
    public abstract ByteString getDeviceNoBytes();
    
    public abstract long getFuid();
    
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
    
    public abstract NoticeConfigProtos.StatInfo getStatInfo();
    
    public abstract NoticeConfigProtos.StatInfoOrBuilder getStatInfoOrBuilder();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract String getUnionId();
    
    public abstract ByteString getUnionIdBytes();
    
    public abstract boolean hasChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasDeviceNo();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasGamePackageName();
    
    public abstract boolean hasGameVersionCode();
    
    public abstract boolean hasGameVersionName();
    
    public abstract boolean hasModel();
    
    public abstract boolean hasSdkType();
    
    public abstract boolean hasSdkVersion();
    
    public abstract boolean hasStatInfo();
    
    public abstract boolean hasUa();
    
    public abstract boolean hasUnionId();
  }
  
  public static final class GetNoticeConfigResp
    extends GeneratedMessage
    implements NoticeConfigProtos.GetNoticeConfigRespOrBuilder
  {
    public static final int NOTICECONFIG_FIELD_NUMBER = 2;
    public static Parser<GetNoticeConfigResp> PARSER = new aj();
    public static final int RETCODE_FIELD_NUMBER = 1;
    private static final GetNoticeConfigResp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private List<NoticeConfigProtos.NoticeConfig> noticeConfig_;
    private int retCode_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetNoticeConfigResp localGetNoticeConfigResp = new GetNoticeConfigResp(true);
      defaultInstance = localGetNoticeConfigResp;
      localGetNoticeConfigResp.initFields();
    }
    
    /* Error */
    private GetNoticeConfigResp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 60	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 62	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 64	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 53	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:initFields	()V
      //   18: invokestatic 70	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 9
      //   23: iconst_0
      //   24: istore 6
      //   26: iconst_0
      //   27: istore_3
      //   28: iload 6
      //   30: ifne +259 -> 289
      //   33: iload_3
      //   34: istore 7
      //   36: iload_3
      //   37: istore 5
      //   39: iload_3
      //   40: istore 8
      //   42: aload_1
      //   43: invokevirtual 76	com/google/protobuf/CodedInputStream:readTag	()I
      //   46: istore 4
      //   48: iload 4
      //   50: lookupswitch	default:+271->321, 0:+274->324, 8:+62->112, 18:+147->197
      //   84: iload_3
      //   85: istore 7
      //   87: iload_3
      //   88: istore 5
      //   90: iload_3
      //   91: istore 8
      //   93: aload_0
      //   94: aload_1
      //   95: aload 9
      //   97: aload_2
      //   98: iload 4
      //   100: invokevirtual 80	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   103: ifne -75 -> 28
      //   106: iconst_1
      //   107: istore 6
      //   109: goto -81 -> 28
      //   112: iload_3
      //   113: istore 7
      //   115: iload_3
      //   116: istore 5
      //   118: iload_3
      //   119: istore 8
      //   121: aload_0
      //   122: aload_0
      //   123: getfield 82	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:bitField0_	I
      //   126: iconst_1
      //   127: ior
      //   128: putfield 82	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:bitField0_	I
      //   131: iload_3
      //   132: istore 7
      //   134: iload_3
      //   135: istore 5
      //   137: iload_3
      //   138: istore 8
      //   140: aload_0
      //   141: aload_1
      //   142: invokevirtual 85	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   145: putfield 87	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:retCode_	I
      //   148: goto -120 -> 28
      //   151: astore_1
      //   152: iload 7
      //   154: istore 5
      //   156: aload_1
      //   157: aload_0
      //   158: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   161: athrow
      //   162: astore_1
      //   163: iload 5
      //   165: iconst_2
      //   166: iand
      //   167: iconst_2
      //   168: if_icmpne +14 -> 182
      //   171: aload_0
      //   172: aload_0
      //   173: getfield 93	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:noticeConfig_	Ljava/util/List;
      //   176: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   179: putfield 93	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:noticeConfig_	Ljava/util/List;
      //   182: aload_0
      //   183: aload 9
      //   185: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   188: putfield 107	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   191: aload_0
      //   192: invokevirtual 110	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:makeExtensionsImmutable	()V
      //   195: aload_1
      //   196: athrow
      //   197: iload_3
      //   198: istore 4
      //   200: iload_3
      //   201: iconst_2
      //   202: iand
      //   203: iconst_2
      //   204: if_icmpeq +28 -> 232
      //   207: iload_3
      //   208: istore 7
      //   210: iload_3
      //   211: istore 5
      //   213: iload_3
      //   214: istore 8
      //   216: aload_0
      //   217: new 112	java/util/ArrayList
      //   220: dup
      //   221: invokespecial 113	java/util/ArrayList:<init>	()V
      //   224: putfield 93	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:noticeConfig_	Ljava/util/List;
      //   227: iload_3
      //   228: iconst_2
      //   229: ior
      //   230: istore 4
      //   232: iload 4
      //   234: istore 7
      //   236: iload 4
      //   238: istore 5
      //   240: iload 4
      //   242: istore 8
      //   244: aload_0
      //   245: getfield 93	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:noticeConfig_	Ljava/util/List;
      //   248: aload_1
      //   249: getstatic 116	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:PARSER	Lcom/google/protobuf/Parser;
      //   252: aload_2
      //   253: invokevirtual 120	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   256: invokeinterface 126 2 0
      //   261: pop
      //   262: iload 4
      //   264: istore_3
      //   265: goto -237 -> 28
      //   268: astore_1
      //   269: iload 8
      //   271: istore 5
      //   273: new 57	com/google/protobuf/InvalidProtocolBufferException
      //   276: dup
      //   277: aload_1
      //   278: invokevirtual 130	java/io/IOException:getMessage	()Ljava/lang/String;
      //   281: invokespecial 133	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   284: aload_0
      //   285: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   288: athrow
      //   289: iload_3
      //   290: iconst_2
      //   291: iand
      //   292: iconst_2
      //   293: if_icmpne +14 -> 307
      //   296: aload_0
      //   297: aload_0
      //   298: getfield 93	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:noticeConfig_	Ljava/util/List;
      //   301: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   304: putfield 93	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:noticeConfig_	Ljava/util/List;
      //   307: aload_0
      //   308: aload 9
      //   310: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   313: putfield 107	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   316: aload_0
      //   317: invokevirtual 110	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:makeExtensionsImmutable	()V
      //   320: return
      //   321: goto -237 -> 84
      //   324: iconst_1
      //   325: istore 6
      //   327: goto -299 -> 28
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	330	0	this	GetNoticeConfigResp
      //   0	330	1	paramCodedInputStream	CodedInputStream
      //   0	330	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   27	265	3	i	int
      //   46	217	4	j	int
      //   37	235	5	k	int
      //   24	302	6	m	int
      //   34	201	7	n	int
      //   40	230	8	i1	int
      //   21	288	9	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   42	48	151	com/google/protobuf/InvalidProtocolBufferException
      //   93	106	151	com/google/protobuf/InvalidProtocolBufferException
      //   121	131	151	com/google/protobuf/InvalidProtocolBufferException
      //   140	148	151	com/google/protobuf/InvalidProtocolBufferException
      //   216	227	151	com/google/protobuf/InvalidProtocolBufferException
      //   244	262	151	com/google/protobuf/InvalidProtocolBufferException
      //   42	48	162	finally
      //   93	106	162	finally
      //   121	131	162	finally
      //   140	148	162	finally
      //   156	162	162	finally
      //   216	227	162	finally
      //   244	262	162	finally
      //   273	289	162	finally
      //   42	48	268	java/io/IOException
      //   93	106	268	java/io/IOException
      //   121	131	268	java/io/IOException
      //   140	148	268	java/io/IOException
      //   216	227	268	java/io/IOException
      //   244	262	268	java/io/IOException
    }
    
    private GetNoticeConfigResp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetNoticeConfigResp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetNoticeConfigResp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.noticeConfig_ = Collections.emptyList();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$10700();
    }
    
    public static Builder newBuilder(GetNoticeConfigResp paramGetNoticeConfigResp)
    {
      return newBuilder().mergeFrom(paramGetNoticeConfigResp);
    }
    
    public static GetNoticeConfigResp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetNoticeConfigResp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetNoticeConfigResp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetNoticeConfigResp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetNoticeConfigResp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetNoticeConfigResp)PARSER.parseFrom(paramByteString);
    }
    
    public static GetNoticeConfigResp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetNoticeConfigResp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetNoticeConfigResp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetNoticeConfigResp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetNoticeConfigResp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetNoticeConfigResp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetNoticeConfigResp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetNoticeConfigResp)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetNoticeConfigResp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetNoticeConfigResp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetNoticeConfigResp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetNoticeConfigResp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetNoticeConfigResp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetNoticeConfigResp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final GetNoticeConfigResp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final NoticeConfigProtos.NoticeConfig getNoticeConfig(int paramInt)
    {
      return (NoticeConfigProtos.NoticeConfig)this.noticeConfig_.get(paramInt);
    }
    
    public final int getNoticeConfigCount()
    {
      return this.noticeConfig_.size();
    }
    
    public final List<NoticeConfigProtos.NoticeConfig> getNoticeConfigList()
    {
      return this.noticeConfig_;
    }
    
    public final NoticeConfigProtos.NoticeConfigOrBuilder getNoticeConfigOrBuilder(int paramInt)
    {
      return (NoticeConfigProtos.NoticeConfigOrBuilder)this.noticeConfig_.get(paramInt);
    }
    
    public final List<? extends NoticeConfigProtos.NoticeConfigOrBuilder> getNoticeConfigOrBuilderList()
    {
      return this.noticeConfig_;
    }
    
    public final Parser<GetNoticeConfigResp> getParserForType()
    {
      return PARSER;
    }
    
    public final int getRetCode()
    {
      return this.retCode_;
    }
    
    public final int getSerializedSize()
    {
      int j = 0;
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      if ((this.bitField0_ & 0x1) == 1) {
        i = CodedOutputStream.computeUInt32Size(1, this.retCode_) + 0;
      }
      for (;;)
      {
        if (j < this.noticeConfig_.size())
        {
          int k = CodedOutputStream.computeMessageSize(2, (MessageLite)this.noticeConfig_.get(j));
          j += 1;
          i = k + i;
        }
        else
        {
          i = getUnknownFields().getSerializedSize() + i;
          this.memoizedSerializedSize = i;
          return i;
          i = 0;
        }
      }
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_fieldAccessorTable.ensureFieldAccessorsInitialized(GetNoticeConfigResp.class, Builder.class);
    }
    
    public final boolean isInitialized()
    {
      boolean bool = false;
      int i = this.memoizedIsInitialized;
      if (i == 1) {
        bool = true;
      }
      while (i == 0) {
        return bool;
      }
      if (!hasRetCode())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      i = 0;
      while (i < getNoticeConfigCount())
      {
        if (!getNoticeConfig(i).isInitialized())
        {
          this.memoizedIsInitialized = 0;
          return false;
        }
        i += 1;
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
      int i = 0;
      while (i < this.noticeConfig_.size())
      {
        paramCodedOutputStream.writeMessage(2, (MessageLite)this.noticeConfig_.get(i));
        i += 1;
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements NoticeConfigProtos.GetNoticeConfigRespOrBuilder
    {
      private int bitField0_;
      private RepeatedFieldBuilder<NoticeConfigProtos.NoticeConfig, NoticeConfigProtos.NoticeConfig.Builder, NoticeConfigProtos.NoticeConfigOrBuilder> noticeConfigBuilder_;
      private List<NoticeConfigProtos.NoticeConfig> noticeConfig_ = Collections.emptyList();
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
      
      private void ensureNoticeConfigIsMutable()
      {
        if ((this.bitField0_ & 0x2) != 2)
        {
          this.noticeConfig_ = new ArrayList(this.noticeConfig_);
          this.bitField0_ |= 0x2;
        }
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_descriptor;
      }
      
      private RepeatedFieldBuilder<NoticeConfigProtos.NoticeConfig, NoticeConfigProtos.NoticeConfig.Builder, NoticeConfigProtos.NoticeConfigOrBuilder> getNoticeConfigFieldBuilder()
      {
        List localList;
        if (this.noticeConfigBuilder_ == null)
        {
          localList = this.noticeConfig_;
          if ((this.bitField0_ & 0x2) != 2) {
            break label55;
          }
        }
        label55:
        for (boolean bool = true;; bool = false)
        {
          this.noticeConfigBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
          this.noticeConfig_ = null;
          return this.noticeConfigBuilder_;
        }
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (NoticeConfigProtos.GetNoticeConfigResp.alwaysUseFieldBuilders) {
          getNoticeConfigFieldBuilder();
        }
      }
      
      public final Builder addAllNoticeConfig(Iterable<? extends NoticeConfigProtos.NoticeConfig> paramIterable)
      {
        if (this.noticeConfigBuilder_ == null)
        {
          ensureNoticeConfigIsMutable();
          AbstractMessageLite.Builder.addAll(paramIterable, this.noticeConfig_);
          onChanged();
          return this;
        }
        this.noticeConfigBuilder_.addAllMessages(paramIterable);
        return this;
      }
      
      public final Builder addNoticeConfig(int paramInt, NoticeConfigProtos.NoticeConfig.Builder paramBuilder)
      {
        if (this.noticeConfigBuilder_ == null)
        {
          ensureNoticeConfigIsMutable();
          this.noticeConfig_.add(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.noticeConfigBuilder_.addMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder addNoticeConfig(int paramInt, NoticeConfigProtos.NoticeConfig paramNoticeConfig)
      {
        if (this.noticeConfigBuilder_ == null)
        {
          if (paramNoticeConfig == null) {
            throw new NullPointerException();
          }
          ensureNoticeConfigIsMutable();
          this.noticeConfig_.add(paramInt, paramNoticeConfig);
          onChanged();
          return this;
        }
        this.noticeConfigBuilder_.addMessage(paramInt, paramNoticeConfig);
        return this;
      }
      
      public final Builder addNoticeConfig(NoticeConfigProtos.NoticeConfig.Builder paramBuilder)
      {
        if (this.noticeConfigBuilder_ == null)
        {
          ensureNoticeConfigIsMutable();
          this.noticeConfig_.add(paramBuilder.build());
          onChanged();
          return this;
        }
        this.noticeConfigBuilder_.addMessage(paramBuilder.build());
        return this;
      }
      
      public final Builder addNoticeConfig(NoticeConfigProtos.NoticeConfig paramNoticeConfig)
      {
        if (this.noticeConfigBuilder_ == null)
        {
          if (paramNoticeConfig == null) {
            throw new NullPointerException();
          }
          ensureNoticeConfigIsMutable();
          this.noticeConfig_.add(paramNoticeConfig);
          onChanged();
          return this;
        }
        this.noticeConfigBuilder_.addMessage(paramNoticeConfig);
        return this;
      }
      
      public final NoticeConfigProtos.NoticeConfig.Builder addNoticeConfigBuilder()
      {
        return (NoticeConfigProtos.NoticeConfig.Builder)getNoticeConfigFieldBuilder().addBuilder(NoticeConfigProtos.NoticeConfig.getDefaultInstance());
      }
      
      public final NoticeConfigProtos.NoticeConfig.Builder addNoticeConfigBuilder(int paramInt)
      {
        return (NoticeConfigProtos.NoticeConfig.Builder)getNoticeConfigFieldBuilder().addBuilder(paramInt, NoticeConfigProtos.NoticeConfig.getDefaultInstance());
      }
      
      public final NoticeConfigProtos.GetNoticeConfigResp build()
      {
        NoticeConfigProtos.GetNoticeConfigResp localGetNoticeConfigResp = buildPartial();
        if (!localGetNoticeConfigResp.isInitialized()) {
          throw newUninitializedMessageException(localGetNoticeConfigResp);
        }
        return localGetNoticeConfigResp;
      }
      
      public final NoticeConfigProtos.GetNoticeConfigResp buildPartial()
      {
        int i = 1;
        NoticeConfigProtos.GetNoticeConfigResp localGetNoticeConfigResp = new NoticeConfigProtos.GetNoticeConfigResp(this, null);
        if ((this.bitField0_ & 0x1) == 1) {}
        for (;;)
        {
          NoticeConfigProtos.GetNoticeConfigResp.access$11102(localGetNoticeConfigResp, this.retCode_);
          if (this.noticeConfigBuilder_ == null)
          {
            if ((this.bitField0_ & 0x2) == 2)
            {
              this.noticeConfig_ = Collections.unmodifiableList(this.noticeConfig_);
              this.bitField0_ &= 0xFFFFFFFD;
            }
            NoticeConfigProtos.GetNoticeConfigResp.access$11202(localGetNoticeConfigResp, this.noticeConfig_);
          }
          for (;;)
          {
            NoticeConfigProtos.GetNoticeConfigResp.access$11302(localGetNoticeConfigResp, i);
            onBuilt();
            return localGetNoticeConfigResp;
            NoticeConfigProtos.GetNoticeConfigResp.access$11202(localGetNoticeConfigResp, this.noticeConfigBuilder_.build());
          }
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        if (this.noticeConfigBuilder_ == null)
        {
          this.noticeConfig_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFD;
          return this;
        }
        this.noticeConfigBuilder_.clear();
        return this;
      }
      
      public final Builder clearNoticeConfig()
      {
        if (this.noticeConfigBuilder_ == null)
        {
          this.noticeConfig_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFD;
          onChanged();
          return this;
        }
        this.noticeConfigBuilder_.clear();
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
      
      public final NoticeConfigProtos.GetNoticeConfigResp getDefaultInstanceForType()
      {
        return NoticeConfigProtos.GetNoticeConfigResp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_descriptor;
      }
      
      public final NoticeConfigProtos.NoticeConfig getNoticeConfig(int paramInt)
      {
        if (this.noticeConfigBuilder_ == null) {
          return (NoticeConfigProtos.NoticeConfig)this.noticeConfig_.get(paramInt);
        }
        return (NoticeConfigProtos.NoticeConfig)this.noticeConfigBuilder_.getMessage(paramInt);
      }
      
      public final NoticeConfigProtos.NoticeConfig.Builder getNoticeConfigBuilder(int paramInt)
      {
        return (NoticeConfigProtos.NoticeConfig.Builder)getNoticeConfigFieldBuilder().getBuilder(paramInt);
      }
      
      public final List<NoticeConfigProtos.NoticeConfig.Builder> getNoticeConfigBuilderList()
      {
        return getNoticeConfigFieldBuilder().getBuilderList();
      }
      
      public final int getNoticeConfigCount()
      {
        if (this.noticeConfigBuilder_ == null) {
          return this.noticeConfig_.size();
        }
        return this.noticeConfigBuilder_.getCount();
      }
      
      public final List<NoticeConfigProtos.NoticeConfig> getNoticeConfigList()
      {
        if (this.noticeConfigBuilder_ == null) {
          return Collections.unmodifiableList(this.noticeConfig_);
        }
        return this.noticeConfigBuilder_.getMessageList();
      }
      
      public final NoticeConfigProtos.NoticeConfigOrBuilder getNoticeConfigOrBuilder(int paramInt)
      {
        if (this.noticeConfigBuilder_ == null) {
          return (NoticeConfigProtos.NoticeConfigOrBuilder)this.noticeConfig_.get(paramInt);
        }
        return (NoticeConfigProtos.NoticeConfigOrBuilder)this.noticeConfigBuilder_.getMessageOrBuilder(paramInt);
      }
      
      public final List<? extends NoticeConfigProtos.NoticeConfigOrBuilder> getNoticeConfigOrBuilderList()
      {
        if (this.noticeConfigBuilder_ != null) {
          return this.noticeConfigBuilder_.getMessageOrBuilderList();
        }
        return Collections.unmodifiableList(this.noticeConfig_);
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeConfigProtos.GetNoticeConfigResp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasRetCode()) {
          return false;
        }
        int i = 0;
        for (;;)
        {
          if (i >= getNoticeConfigCount()) {
            break label37;
          }
          if (!getNoticeConfig(i).isInitialized()) {
            break;
          }
          i += 1;
        }
        label37:
        return true;
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 306	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 312 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 214	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 315	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 214	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
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
        if ((paramMessage instanceof NoticeConfigProtos.GetNoticeConfigResp)) {
          return mergeFrom((NoticeConfigProtos.GetNoticeConfigResp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(NoticeConfigProtos.GetNoticeConfigResp paramGetNoticeConfigResp)
      {
        RepeatedFieldBuilder localRepeatedFieldBuilder = null;
        if (paramGetNoticeConfigResp == NoticeConfigProtos.GetNoticeConfigResp.getDefaultInstance()) {
          return this;
        }
        if (paramGetNoticeConfigResp.hasRetCode()) {
          setRetCode(paramGetNoticeConfigResp.getRetCode());
        }
        if (this.noticeConfigBuilder_ == null) {
          if (!paramGetNoticeConfigResp.noticeConfig_.isEmpty())
          {
            if (!this.noticeConfig_.isEmpty()) {
              break label92;
            }
            this.noticeConfig_ = paramGetNoticeConfigResp.noticeConfig_;
            this.bitField0_ &= 0xFFFFFFFD;
            onChanged();
          }
        }
        for (;;)
        {
          mergeUnknownFields(paramGetNoticeConfigResp.getUnknownFields());
          return this;
          label92:
          ensureNoticeConfigIsMutable();
          this.noticeConfig_.addAll(paramGetNoticeConfigResp.noticeConfig_);
          break;
          if (!paramGetNoticeConfigResp.noticeConfig_.isEmpty()) {
            if (this.noticeConfigBuilder_.isEmpty())
            {
              this.noticeConfigBuilder_.dispose();
              this.noticeConfigBuilder_ = null;
              this.noticeConfig_ = paramGetNoticeConfigResp.noticeConfig_;
              this.bitField0_ &= 0xFFFFFFFD;
              if (NoticeConfigProtos.GetNoticeConfigResp.alwaysUseFieldBuilders) {
                localRepeatedFieldBuilder = getNoticeConfigFieldBuilder();
              }
              this.noticeConfigBuilder_ = localRepeatedFieldBuilder;
            }
            else
            {
              this.noticeConfigBuilder_.addAllMessages(paramGetNoticeConfigResp.noticeConfig_);
            }
          }
        }
      }
      
      public final Builder removeNoticeConfig(int paramInt)
      {
        if (this.noticeConfigBuilder_ == null)
        {
          ensureNoticeConfigIsMutable();
          this.noticeConfig_.remove(paramInt);
          onChanged();
          return this;
        }
        this.noticeConfigBuilder_.remove(paramInt);
        return this;
      }
      
      public final Builder setNoticeConfig(int paramInt, NoticeConfigProtos.NoticeConfig.Builder paramBuilder)
      {
        if (this.noticeConfigBuilder_ == null)
        {
          ensureNoticeConfigIsMutable();
          this.noticeConfig_.set(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.noticeConfigBuilder_.setMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder setNoticeConfig(int paramInt, NoticeConfigProtos.NoticeConfig paramNoticeConfig)
      {
        if (this.noticeConfigBuilder_ == null)
        {
          if (paramNoticeConfig == null) {
            throw new NullPointerException();
          }
          ensureNoticeConfigIsMutable();
          this.noticeConfig_.set(paramInt, paramNoticeConfig);
          onChanged();
          return this;
        }
        this.noticeConfigBuilder_.setMessage(paramInt, paramNoticeConfig);
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
  
  public static abstract interface GetNoticeConfigRespOrBuilder
    extends MessageOrBuilder
  {
    public abstract NoticeConfigProtos.NoticeConfig getNoticeConfig(int paramInt);
    
    public abstract int getNoticeConfigCount();
    
    public abstract List<NoticeConfigProtos.NoticeConfig> getNoticeConfigList();
    
    public abstract NoticeConfigProtos.NoticeConfigOrBuilder getNoticeConfigOrBuilder(int paramInt);
    
    public abstract List<? extends NoticeConfigProtos.NoticeConfigOrBuilder> getNoticeConfigOrBuilderList();
    
    public abstract int getRetCode();
    
    public abstract boolean hasRetCode();
  }
  
  public static final class NoticeConfig
    extends GeneratedMessage
    implements NoticeConfigProtos.NoticeConfigOrBuilder
  {
    public static final int CONFIG_FIELD_NUMBER = 3;
    public static final int NOTICECONFIGTYPE_FIELD_NUMBER = 2;
    public static final int NOTICE_ID_FIELD_NUMBER = 1;
    public static Parser<NoticeConfig> PARSER = new ak();
    private static final NoticeConfig defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private ByteString config_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int noticeConfigType_;
    private Object noticeId_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      NoticeConfig localNoticeConfig = new NoticeConfig(true);
      defaultInstance = localNoticeConfig;
      localNoticeConfig.initFields();
    }
    
    /* Error */
    private NoticeConfig(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 63	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 65	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 67	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 56	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:initFields	()V
      //   18: invokestatic 73	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +179 -> 205
      //   29: aload_1
      //   30: invokevirtual 79	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+182->219, 0:+185->222, 10:+61->98, 16:+109->146, 26:+147->184
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 83	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_1
      //   99: invokevirtual 87	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   102: astore 6
      //   104: aload_0
      //   105: aload_0
      //   106: getfield 89	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:bitField0_	I
      //   109: iconst_1
      //   110: ior
      //   111: putfield 89	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:bitField0_	I
      //   114: aload_0
      //   115: aload 6
      //   117: putfield 91	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:noticeId_	Ljava/lang/Object;
      //   120: goto -95 -> 25
      //   123: astore_1
      //   124: aload_1
      //   125: aload_0
      //   126: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   129: athrow
      //   130: astore_1
      //   131: aload_0
      //   132: aload 5
      //   134: invokevirtual 101	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   137: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   140: aload_0
      //   141: invokevirtual 106	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:makeExtensionsImmutable	()V
      //   144: aload_1
      //   145: athrow
      //   146: aload_0
      //   147: aload_0
      //   148: getfield 89	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:bitField0_	I
      //   151: iconst_2
      //   152: ior
      //   153: putfield 89	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:bitField0_	I
      //   156: aload_0
      //   157: aload_1
      //   158: invokevirtual 109	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   161: putfield 111	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:noticeConfigType_	I
      //   164: goto -139 -> 25
      //   167: astore_1
      //   168: new 60	com/google/protobuf/InvalidProtocolBufferException
      //   171: dup
      //   172: aload_1
      //   173: invokevirtual 115	java/io/IOException:getMessage	()Ljava/lang/String;
      //   176: invokespecial 118	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   179: aload_0
      //   180: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   183: athrow
      //   184: aload_0
      //   185: aload_0
      //   186: getfield 89	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:bitField0_	I
      //   189: iconst_4
      //   190: ior
      //   191: putfield 89	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:bitField0_	I
      //   194: aload_0
      //   195: aload_1
      //   196: invokevirtual 87	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   199: putfield 120	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:config_	Lcom/google/protobuf/ByteString;
      //   202: goto -177 -> 25
      //   205: aload_0
      //   206: aload 5
      //   208: invokevirtual 101	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   211: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   214: aload_0
      //   215: invokevirtual 106	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:makeExtensionsImmutable	()V
      //   218: return
      //   219: goto -139 -> 80
      //   222: iconst_1
      //   223: istore_3
      //   224: goto -199 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	227	0	this	NoticeConfig
      //   0	227	1	paramCodedInputStream	CodedInputStream
      //   0	227	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	200	3	i	int
      //   33	53	4	j	int
      //   21	186	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   102	14	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	123	com/google/protobuf/InvalidProtocolBufferException
      //   80	93	123	com/google/protobuf/InvalidProtocolBufferException
      //   98	120	123	com/google/protobuf/InvalidProtocolBufferException
      //   146	164	123	com/google/protobuf/InvalidProtocolBufferException
      //   184	202	123	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	130	finally
      //   80	93	130	finally
      //   98	120	130	finally
      //   124	130	130	finally
      //   146	164	130	finally
      //   168	184	130	finally
      //   184	202	130	finally
      //   29	35	167	java/io/IOException
      //   80	93	167	java/io/IOException
      //   98	120	167	java/io/IOException
      //   146	164	167	java/io/IOException
      //   184	202	167	java/io/IOException
    }
    
    private NoticeConfig(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private NoticeConfig(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static NoticeConfig getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor;
    }
    
    private void initFields()
    {
      this.noticeId_ = "";
      this.noticeConfigType_ = 0;
      this.config_ = ByteString.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(NoticeConfig paramNoticeConfig)
    {
      return newBuilder().mergeFrom(paramNoticeConfig);
    }
    
    public static NoticeConfig parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NoticeConfig)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static NoticeConfig parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeConfig)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeConfig parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (NoticeConfig)PARSER.parseFrom(paramByteString);
    }
    
    public static NoticeConfig parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NoticeConfig)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static NoticeConfig parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (NoticeConfig)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static NoticeConfig parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeConfig)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeConfig parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NoticeConfig)PARSER.parseFrom(paramInputStream);
    }
    
    public static NoticeConfig parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeConfig)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeConfig parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (NoticeConfig)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static NoticeConfig parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NoticeConfig)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final ByteString getConfig()
    {
      return this.config_;
    }
    
    public final NoticeConfig getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getNoticeConfigType()
    {
      return this.noticeConfigType_;
    }
    
    public final String getNoticeId()
    {
      Object localObject = this.noticeId_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.noticeId_ = str;
      }
      return str;
    }
    
    public final ByteString getNoticeIdBytes()
    {
      Object localObject = this.noticeId_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.noticeId_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<NoticeConfig> getParserForType()
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
        j = CodedOutputStream.computeBytesSize(1, getNoticeIdBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt32Size(2, this.noticeConfigType_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, this.config_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasConfig()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasNoticeConfigType()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasNoticeId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeConfig.class, Builder.class);
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
      if (!hasNoticeId())
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
        paramCodedOutputStream.writeBytes(1, getNoticeIdBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.noticeConfigType_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, this.config_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements NoticeConfigProtos.NoticeConfigOrBuilder
    {
      private int bitField0_;
      private ByteString config_ = ByteString.EMPTY;
      private int noticeConfigType_;
      private Object noticeId_ = "";
      
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
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final NoticeConfigProtos.NoticeConfig build()
      {
        NoticeConfigProtos.NoticeConfig localNoticeConfig = buildPartial();
        if (!localNoticeConfig.isInitialized()) {
          throw newUninitializedMessageException(localNoticeConfig);
        }
        return localNoticeConfig;
      }
      
      public final NoticeConfigProtos.NoticeConfig buildPartial()
      {
        int j = 1;
        NoticeConfigProtos.NoticeConfig localNoticeConfig = new NoticeConfigProtos.NoticeConfig(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          NoticeConfigProtos.NoticeConfig.access$702(localNoticeConfig, this.noticeId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          NoticeConfigProtos.NoticeConfig.access$802(localNoticeConfig, this.noticeConfigType_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          NoticeConfigProtos.NoticeConfig.access$902(localNoticeConfig, this.config_);
          NoticeConfigProtos.NoticeConfig.access$1002(localNoticeConfig, j);
          onBuilt();
          return localNoticeConfig;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.noticeId_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.noticeConfigType_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.config_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearConfig()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.config_ = NoticeConfigProtos.NoticeConfig.getDefaultInstance().getConfig();
        onChanged();
        return this;
      }
      
      public final Builder clearNoticeConfigType()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.noticeConfigType_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearNoticeId()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.noticeId_ = NoticeConfigProtos.NoticeConfig.getDefaultInstance().getNoticeId();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final ByteString getConfig()
      {
        return this.config_;
      }
      
      public final NoticeConfigProtos.NoticeConfig getDefaultInstanceForType()
      {
        return NoticeConfigProtos.NoticeConfig.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor;
      }
      
      public final int getNoticeConfigType()
      {
        return this.noticeConfigType_;
      }
      
      public final String getNoticeId()
      {
        Object localObject = this.noticeId_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.noticeId_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNoticeIdBytes()
      {
        Object localObject = this.noticeId_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.noticeId_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasConfig()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasNoticeConfigType()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasNoticeId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeConfigProtos.NoticeConfig.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return hasNoticeId();
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 193	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 199 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 138	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 202	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 138	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;
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
        if ((paramMessage instanceof NoticeConfigProtos.NoticeConfig)) {
          return mergeFrom((NoticeConfigProtos.NoticeConfig)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(NoticeConfigProtos.NoticeConfig paramNoticeConfig)
      {
        if (paramNoticeConfig == NoticeConfigProtos.NoticeConfig.getDefaultInstance()) {
          return this;
        }
        if (paramNoticeConfig.hasNoticeId())
        {
          this.bitField0_ |= 0x1;
          this.noticeId_ = paramNoticeConfig.noticeId_;
          onChanged();
        }
        if (paramNoticeConfig.hasNoticeConfigType()) {
          setNoticeConfigType(paramNoticeConfig.getNoticeConfigType());
        }
        if (paramNoticeConfig.hasConfig()) {
          setConfig(paramNoticeConfig.getConfig());
        }
        mergeUnknownFields(paramNoticeConfig.getUnknownFields());
        return this;
      }
      
      public final Builder setConfig(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.config_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setNoticeConfigType(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.noticeConfigType_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setNoticeId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.noticeId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNoticeIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.noticeId_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface NoticeConfigOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getConfig();
    
    public abstract int getNoticeConfigType();
    
    public abstract String getNoticeId();
    
    public abstract ByteString getNoticeIdBytes();
    
    public abstract boolean hasConfig();
    
    public abstract boolean hasNoticeConfigType();
    
    public abstract boolean hasNoticeId();
  }
  
  public static enum NoticeConfigType
    implements ProtocolMessageEnum
  {
    public static final int IMAGE_VALUE = 1;
    public static final int SCHEMA_VALUE = 2;
    public static final int TEXT_VALUE = 0;
    private static final NoticeConfigType[] VALUES = values();
    private static Internal.EnumLiteMap<NoticeConfigType> internalValueMap;
    private final int index;
    private final int value;
    
    static
    {
      IMAGE = new NoticeConfigType("IMAGE", 1, 1, 1);
      SCHEMA = new NoticeConfigType("SCHEMA", 2, 2, 2);
      $VALUES = new NoticeConfigType[] { TEXT, IMAGE, SCHEMA };
      internalValueMap = new al();
    }
    
    private NoticeConfigType(int paramInt1, int paramInt2)
    {
      this.index = paramInt1;
      this.value = paramInt2;
    }
    
    public static final Descriptors.EnumDescriptor getDescriptor()
    {
      return (Descriptors.EnumDescriptor)NoticeConfigProtos.getDescriptor().getEnumTypes().get(1);
    }
    
    public static Internal.EnumLiteMap<NoticeConfigType> internalGetValueMap()
    {
      return internalValueMap;
    }
    
    public static NoticeConfigType valueOf(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return null;
      case 0: 
        return TEXT;
      case 1: 
        return IMAGE;
      }
      return SCHEMA;
    }
    
    public static NoticeConfigType valueOf(Descriptors.EnumValueDescriptor paramEnumValueDescriptor)
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
  
  public static final class NoticeImageConfig
    extends GeneratedMessage
    implements NoticeConfigProtos.NoticeImageConfigOrBuilder
  {
    public static final int ACTIONURL_FIELD_NUMBER = 7;
    public static final int BACKUPACTIONURL_FIELD_NUMBER = 8;
    public static final int IMAGELANDSCAPEURL_FIELD_NUMBER = 4;
    public static final int IMAGEPORTRAITURL_FIELD_NUMBER = 1;
    public static final int LANDSCAPEHEIGHT_FIELD_NUMBER = 6;
    public static final int LANDSCAPEWIDTH_FIELD_NUMBER = 5;
    public static Parser<NoticeImageConfig> PARSER = new am();
    public static final int PORTRAITHEIGHT_FIELD_NUMBER = 3;
    public static final int PORTRAITWIDTH_FIELD_NUMBER = 2;
    private static final NoticeImageConfig defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object actionUrl_;
    private Object backupActionUrl_;
    private int bitField0_;
    private Object imageLandscapeUrl_;
    private Object imagePortraitUrl_;
    private int landscapeHeight_;
    private int landscapeWidth_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int portraitHeight_;
    private int portraitWidth_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      NoticeImageConfig localNoticeImageConfig = new NoticeImageConfig(true);
      defaultInstance = localNoticeImageConfig;
      localNoticeImageConfig.initFields();
    }
    
    /* Error */
    private NoticeImageConfig(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 77	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 79	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 81	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 70	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:initFields	()V
      //   18: invokestatic 87	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +342 -> 368
      //   29: aload_1
      //   30: invokevirtual 93	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+345->382, 0:+348->385, 10:+101->138, 16:+149->186, 24:+187->224, 34:+208->245, 40:+234->271, 48:+256->293, 58:+278->315, 66:+304->341
      //   120: aload_0
      //   121: aload_1
      //   122: aload 5
      //   124: aload_2
      //   125: iload 4
      //   127: invokevirtual 97	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   130: ifne -105 -> 25
      //   133: iconst_1
      //   134: istore_3
      //   135: goto -110 -> 25
      //   138: aload_1
      //   139: invokevirtual 101	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   142: astore 6
      //   144: aload_0
      //   145: aload_0
      //   146: getfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   149: iconst_1
      //   150: ior
      //   151: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   154: aload_0
      //   155: aload 6
      //   157: putfield 105	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:imagePortraitUrl_	Ljava/lang/Object;
      //   160: goto -135 -> 25
      //   163: astore_1
      //   164: aload_1
      //   165: aload_0
      //   166: invokevirtual 109	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   169: athrow
      //   170: astore_1
      //   171: aload_0
      //   172: aload 5
      //   174: invokevirtual 115	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   177: putfield 117	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   180: aload_0
      //   181: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:makeExtensionsImmutable	()V
      //   184: aload_1
      //   185: athrow
      //   186: aload_0
      //   187: aload_0
      //   188: getfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   191: iconst_2
      //   192: ior
      //   193: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   196: aload_0
      //   197: aload_1
      //   198: invokevirtual 123	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   201: putfield 125	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:portraitWidth_	I
      //   204: goto -179 -> 25
      //   207: astore_1
      //   208: new 74	com/google/protobuf/InvalidProtocolBufferException
      //   211: dup
      //   212: aload_1
      //   213: invokevirtual 129	java/io/IOException:getMessage	()Ljava/lang/String;
      //   216: invokespecial 132	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   219: aload_0
      //   220: invokevirtual 109	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   223: athrow
      //   224: aload_0
      //   225: aload_0
      //   226: getfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   229: iconst_4
      //   230: ior
      //   231: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   234: aload_0
      //   235: aload_1
      //   236: invokevirtual 123	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   239: putfield 134	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:portraitHeight_	I
      //   242: goto -217 -> 25
      //   245: aload_1
      //   246: invokevirtual 101	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   249: astore 6
      //   251: aload_0
      //   252: aload_0
      //   253: getfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   256: bipush 8
      //   258: ior
      //   259: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   262: aload_0
      //   263: aload 6
      //   265: putfield 136	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:imageLandscapeUrl_	Ljava/lang/Object;
      //   268: goto -243 -> 25
      //   271: aload_0
      //   272: aload_0
      //   273: getfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   276: bipush 16
      //   278: ior
      //   279: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   282: aload_0
      //   283: aload_1
      //   284: invokevirtual 123	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   287: putfield 138	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:landscapeWidth_	I
      //   290: goto -265 -> 25
      //   293: aload_0
      //   294: aload_0
      //   295: getfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   298: bipush 32
      //   300: ior
      //   301: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   304: aload_0
      //   305: aload_1
      //   306: invokevirtual 123	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   309: putfield 140	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:landscapeHeight_	I
      //   312: goto -287 -> 25
      //   315: aload_1
      //   316: invokevirtual 101	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   319: astore 6
      //   321: aload_0
      //   322: aload_0
      //   323: getfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   326: bipush 64
      //   328: ior
      //   329: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   332: aload_0
      //   333: aload 6
      //   335: putfield 142	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:actionUrl_	Ljava/lang/Object;
      //   338: goto -313 -> 25
      //   341: aload_1
      //   342: invokevirtual 101	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   345: astore 6
      //   347: aload_0
      //   348: aload_0
      //   349: getfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   352: sipush 128
      //   355: ior
      //   356: putfield 103	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:bitField0_	I
      //   359: aload_0
      //   360: aload 6
      //   362: putfield 144	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:backupActionUrl_	Ljava/lang/Object;
      //   365: goto -340 -> 25
      //   368: aload_0
      //   369: aload 5
      //   371: invokevirtual 115	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   374: putfield 117	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   377: aload_0
      //   378: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:makeExtensionsImmutable	()V
      //   381: return
      //   382: goto -262 -> 120
      //   385: iconst_1
      //   386: istore_3
      //   387: goto -362 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	390	0	this	NoticeImageConfig
      //   0	390	1	paramCodedInputStream	CodedInputStream
      //   0	390	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	363	3	i	int
      //   33	93	4	j	int
      //   21	349	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   142	219	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	163	com/google/protobuf/InvalidProtocolBufferException
      //   120	133	163	com/google/protobuf/InvalidProtocolBufferException
      //   138	160	163	com/google/protobuf/InvalidProtocolBufferException
      //   186	204	163	com/google/protobuf/InvalidProtocolBufferException
      //   224	242	163	com/google/protobuf/InvalidProtocolBufferException
      //   245	268	163	com/google/protobuf/InvalidProtocolBufferException
      //   271	290	163	com/google/protobuf/InvalidProtocolBufferException
      //   293	312	163	com/google/protobuf/InvalidProtocolBufferException
      //   315	338	163	com/google/protobuf/InvalidProtocolBufferException
      //   341	365	163	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	170	finally
      //   120	133	170	finally
      //   138	160	170	finally
      //   164	170	170	finally
      //   186	204	170	finally
      //   208	224	170	finally
      //   224	242	170	finally
      //   245	268	170	finally
      //   271	290	170	finally
      //   293	312	170	finally
      //   315	338	170	finally
      //   341	365	170	finally
      //   29	35	207	java/io/IOException
      //   120	133	207	java/io/IOException
      //   138	160	207	java/io/IOException
      //   186	204	207	java/io/IOException
      //   224	242	207	java/io/IOException
      //   245	268	207	java/io/IOException
      //   271	290	207	java/io/IOException
      //   293	312	207	java/io/IOException
      //   315	338	207	java/io/IOException
      //   341	365	207	java/io/IOException
    }
    
    private NoticeImageConfig(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private NoticeImageConfig(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static NoticeImageConfig getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor;
    }
    
    private void initFields()
    {
      this.imagePortraitUrl_ = "";
      this.portraitWidth_ = 0;
      this.portraitHeight_ = 0;
      this.imageLandscapeUrl_ = "";
      this.landscapeWidth_ = 0;
      this.landscapeHeight_ = 0;
      this.actionUrl_ = "";
      this.backupActionUrl_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$2400();
    }
    
    public static Builder newBuilder(NoticeImageConfig paramNoticeImageConfig)
    {
      return newBuilder().mergeFrom(paramNoticeImageConfig);
    }
    
    public static NoticeImageConfig parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NoticeImageConfig)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static NoticeImageConfig parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeImageConfig)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeImageConfig parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (NoticeImageConfig)PARSER.parseFrom(paramByteString);
    }
    
    public static NoticeImageConfig parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NoticeImageConfig)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static NoticeImageConfig parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (NoticeImageConfig)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static NoticeImageConfig parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeImageConfig)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeImageConfig parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NoticeImageConfig)PARSER.parseFrom(paramInputStream);
    }
    
    public static NoticeImageConfig parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeImageConfig)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeImageConfig parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (NoticeImageConfig)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static NoticeImageConfig parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NoticeImageConfig)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
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
    
    public final String getBackupActionUrl()
    {
      Object localObject = this.backupActionUrl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.backupActionUrl_ = str;
      }
      return str;
    }
    
    public final ByteString getBackupActionUrlBytes()
    {
      Object localObject = this.backupActionUrl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.backupActionUrl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final NoticeImageConfig getDefaultInstanceForType()
    {
      return defaultInstance;
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
    
    public final int getLandscapeHeight()
    {
      return this.landscapeHeight_;
    }
    
    public final int getLandscapeWidth()
    {
      return this.landscapeWidth_;
    }
    
    public final Parser<NoticeImageConfig> getParserForType()
    {
      return PARSER;
    }
    
    public final int getPortraitHeight()
    {
      return this.portraitHeight_;
    }
    
    public final int getPortraitWidth()
    {
      return this.portraitWidth_;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeBytesSize(1, getImagePortraitUrlBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt32Size(2, this.portraitWidth_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt32Size(3, this.portraitHeight_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getImageLandscapeUrlBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeUInt32Size(5, this.landscapeWidth_);
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeUInt32Size(6, this.landscapeHeight_);
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getActionUrlBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getBackupActionUrlBytes());
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasActionUrl()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasBackupActionUrl()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasImageLandscapeUrl()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasImagePortraitUrl()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasLandscapeHeight()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasLandscapeWidth()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasPortraitHeight()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasPortraitWidth()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeImageConfig.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getImagePortraitUrlBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.portraitWidth_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt32(3, this.portraitHeight_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getImageLandscapeUrlBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeUInt32(5, this.landscapeWidth_);
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeUInt32(6, this.landscapeHeight_);
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getActionUrlBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getBackupActionUrlBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements NoticeConfigProtos.NoticeImageConfigOrBuilder
    {
      private Object actionUrl_ = "";
      private Object backupActionUrl_ = "";
      private int bitField0_;
      private Object imageLandscapeUrl_ = "";
      private Object imagePortraitUrl_ = "";
      private int landscapeHeight_;
      private int landscapeWidth_;
      private int portraitHeight_;
      private int portraitWidth_;
      
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
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final NoticeConfigProtos.NoticeImageConfig build()
      {
        NoticeConfigProtos.NoticeImageConfig localNoticeImageConfig = buildPartial();
        if (!localNoticeImageConfig.isInitialized()) {
          throw newUninitializedMessageException(localNoticeImageConfig);
        }
        return localNoticeImageConfig;
      }
      
      public final NoticeConfigProtos.NoticeImageConfig buildPartial()
      {
        int j = 1;
        NoticeConfigProtos.NoticeImageConfig localNoticeImageConfig = new NoticeConfigProtos.NoticeImageConfig(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          NoticeConfigProtos.NoticeImageConfig.access$2802(localNoticeImageConfig, this.imagePortraitUrl_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          NoticeConfigProtos.NoticeImageConfig.access$2902(localNoticeImageConfig, this.portraitWidth_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          NoticeConfigProtos.NoticeImageConfig.access$3002(localNoticeImageConfig, this.portraitHeight_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          NoticeConfigProtos.NoticeImageConfig.access$3102(localNoticeImageConfig, this.imageLandscapeUrl_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          NoticeConfigProtos.NoticeImageConfig.access$3202(localNoticeImageConfig, this.landscapeWidth_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          NoticeConfigProtos.NoticeImageConfig.access$3302(localNoticeImageConfig, this.landscapeHeight_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          NoticeConfigProtos.NoticeImageConfig.access$3402(localNoticeImageConfig, this.actionUrl_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          NoticeConfigProtos.NoticeImageConfig.access$3502(localNoticeImageConfig, this.backupActionUrl_);
          NoticeConfigProtos.NoticeImageConfig.access$3602(localNoticeImageConfig, i);
          onBuilt();
          return localNoticeImageConfig;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.imagePortraitUrl_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.portraitWidth_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.portraitHeight_ = 0;
        this.bitField0_ &= 0xFFFFFFFB;
        this.imageLandscapeUrl_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.landscapeWidth_ = 0;
        this.bitField0_ &= 0xFFFFFFEF;
        this.landscapeHeight_ = 0;
        this.bitField0_ &= 0xFFFFFFDF;
        this.actionUrl_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.backupActionUrl_ = "";
        this.bitField0_ &= 0xFF7F;
        return this;
      }
      
      public final Builder clearActionUrl()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.actionUrl_ = NoticeConfigProtos.NoticeImageConfig.getDefaultInstance().getActionUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearBackupActionUrl()
      {
        this.bitField0_ &= 0xFF7F;
        this.backupActionUrl_ = NoticeConfigProtos.NoticeImageConfig.getDefaultInstance().getBackupActionUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearImageLandscapeUrl()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.imageLandscapeUrl_ = NoticeConfigProtos.NoticeImageConfig.getDefaultInstance().getImageLandscapeUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearImagePortraitUrl()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.imagePortraitUrl_ = NoticeConfigProtos.NoticeImageConfig.getDefaultInstance().getImagePortraitUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearLandscapeHeight()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.landscapeHeight_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearLandscapeWidth()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.landscapeWidth_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearPortraitHeight()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.portraitHeight_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearPortraitWidth()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.portraitWidth_ = 0;
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
      
      public final String getBackupActionUrl()
      {
        Object localObject = this.backupActionUrl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.backupActionUrl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getBackupActionUrlBytes()
      {
        Object localObject = this.backupActionUrl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.backupActionUrl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final NoticeConfigProtos.NoticeImageConfig getDefaultInstanceForType()
      {
        return NoticeConfigProtos.NoticeImageConfig.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor;
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
      
      public final int getLandscapeHeight()
      {
        return this.landscapeHeight_;
      }
      
      public final int getLandscapeWidth()
      {
        return this.landscapeWidth_;
      }
      
      public final int getPortraitHeight()
      {
        return this.portraitHeight_;
      }
      
      public final int getPortraitWidth()
      {
        return this.portraitWidth_;
      }
      
      public final boolean hasActionUrl()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasBackupActionUrl()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasImageLandscapeUrl()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasImagePortraitUrl()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasLandscapeHeight()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasLandscapeWidth()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasPortraitHeight()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasPortraitWidth()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeConfigProtos.NoticeImageConfig.class, Builder.class);
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
        //   2: getstatic 238	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 244 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 171	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 247	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 171	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
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
        if ((paramMessage instanceof NoticeConfigProtos.NoticeImageConfig)) {
          return mergeFrom((NoticeConfigProtos.NoticeImageConfig)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(NoticeConfigProtos.NoticeImageConfig paramNoticeImageConfig)
      {
        if (paramNoticeImageConfig == NoticeConfigProtos.NoticeImageConfig.getDefaultInstance()) {
          return this;
        }
        if (paramNoticeImageConfig.hasImagePortraitUrl())
        {
          this.bitField0_ |= 0x1;
          this.imagePortraitUrl_ = paramNoticeImageConfig.imagePortraitUrl_;
          onChanged();
        }
        if (paramNoticeImageConfig.hasPortraitWidth()) {
          setPortraitWidth(paramNoticeImageConfig.getPortraitWidth());
        }
        if (paramNoticeImageConfig.hasPortraitHeight()) {
          setPortraitHeight(paramNoticeImageConfig.getPortraitHeight());
        }
        if (paramNoticeImageConfig.hasImageLandscapeUrl())
        {
          this.bitField0_ |= 0x8;
          this.imageLandscapeUrl_ = paramNoticeImageConfig.imageLandscapeUrl_;
          onChanged();
        }
        if (paramNoticeImageConfig.hasLandscapeWidth()) {
          setLandscapeWidth(paramNoticeImageConfig.getLandscapeWidth());
        }
        if (paramNoticeImageConfig.hasLandscapeHeight()) {
          setLandscapeHeight(paramNoticeImageConfig.getLandscapeHeight());
        }
        if (paramNoticeImageConfig.hasActionUrl())
        {
          this.bitField0_ |= 0x40;
          this.actionUrl_ = paramNoticeImageConfig.actionUrl_;
          onChanged();
        }
        if (paramNoticeImageConfig.hasBackupActionUrl())
        {
          this.bitField0_ |= 0x80;
          this.backupActionUrl_ = paramNoticeImageConfig.backupActionUrl_;
          onChanged();
        }
        mergeUnknownFields(paramNoticeImageConfig.getUnknownFields());
        return this;
      }
      
      public final Builder setActionUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.actionUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setActionUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.actionUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setBackupActionUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.backupActionUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setBackupActionUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.backupActionUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImageLandscapeUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imageLandscapeUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImageLandscapeUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imageLandscapeUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImagePortraitUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.imagePortraitUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImagePortraitUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.imagePortraitUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setLandscapeHeight(int paramInt)
      {
        this.bitField0_ |= 0x20;
        this.landscapeHeight_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setLandscapeWidth(int paramInt)
      {
        this.bitField0_ |= 0x10;
        this.landscapeWidth_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setPortraitHeight(int paramInt)
      {
        this.bitField0_ |= 0x4;
        this.portraitHeight_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setPortraitWidth(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.portraitWidth_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface NoticeImageConfigOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getActionUrl();
    
    public abstract ByteString getActionUrlBytes();
    
    public abstract String getBackupActionUrl();
    
    public abstract ByteString getBackupActionUrlBytes();
    
    public abstract String getImageLandscapeUrl();
    
    public abstract ByteString getImageLandscapeUrlBytes();
    
    public abstract String getImagePortraitUrl();
    
    public abstract ByteString getImagePortraitUrlBytes();
    
    public abstract int getLandscapeHeight();
    
    public abstract int getLandscapeWidth();
    
    public abstract int getPortraitHeight();
    
    public abstract int getPortraitWidth();
    
    public abstract boolean hasActionUrl();
    
    public abstract boolean hasBackupActionUrl();
    
    public abstract boolean hasImageLandscapeUrl();
    
    public abstract boolean hasImagePortraitUrl();
    
    public abstract boolean hasLandscapeHeight();
    
    public abstract boolean hasLandscapeWidth();
    
    public abstract boolean hasPortraitHeight();
    
    public abstract boolean hasPortraitWidth();
  }
  
  public static final class NoticeSchemaConfig
    extends GeneratedMessage
    implements NoticeConfigProtos.NoticeSchemaConfigOrBuilder
  {
    public static final int ACTIONURL_FIELD_NUMBER = 4;
    public static final int BACKUPACTIONURL_FIELD_NUMBER = 5;
    public static final int BUTTONTEXT_FIELD_NUMBER = 3;
    public static final int CONTENT_FIELD_NUMBER = 2;
    public static Parser<NoticeSchemaConfig> PARSER = new an();
    public static final int TITLE_FIELD_NUMBER = 1;
    private static final NoticeSchemaConfig defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object actionUrl_;
    private Object backupActionUrl_;
    private int bitField0_;
    private Object buttonText_;
    private Object content_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object title_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      NoticeSchemaConfig localNoticeSchemaConfig = new NoticeSchemaConfig(true);
      defaultInstance = localNoticeSchemaConfig;
      localNoticeSchemaConfig.initFields();
    }
    
    /* Error */
    private NoticeSchemaConfig(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 68	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 70	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 72	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 61	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:initFields	()V
      //   18: invokestatic 78	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +255 -> 281
      //   29: aload_1
      //   30: invokevirtual 84	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+258->295, 0:+261->298, 10:+77->114, 18:+125->162, 26:+167->204, 34:+192->229, 42:+218->255
      //   96: aload_0
      //   97: aload_1
      //   98: aload 5
      //   100: aload_2
      //   101: iload 4
      //   103: invokevirtual 88	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   106: ifne -81 -> 25
      //   109: iconst_1
      //   110: istore_3
      //   111: goto -86 -> 25
      //   114: aload_1
      //   115: invokevirtual 92	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   118: astore 6
      //   120: aload_0
      //   121: aload_0
      //   122: getfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   125: iconst_1
      //   126: ior
      //   127: putfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   130: aload_0
      //   131: aload 6
      //   133: putfield 96	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:title_	Ljava/lang/Object;
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
      //   153: putfield 108	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   156: aload_0
      //   157: invokevirtual 111	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:makeExtensionsImmutable	()V
      //   160: aload_1
      //   161: athrow
      //   162: aload_1
      //   163: invokevirtual 92	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   166: astore 6
      //   168: aload_0
      //   169: aload_0
      //   170: getfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   173: iconst_2
      //   174: ior
      //   175: putfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   178: aload_0
      //   179: aload 6
      //   181: putfield 113	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:content_	Ljava/lang/Object;
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
      //   212: getfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   215: iconst_4
      //   216: ior
      //   217: putfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   220: aload_0
      //   221: aload 6
      //   223: putfield 122	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:buttonText_	Ljava/lang/Object;
      //   226: goto -201 -> 25
      //   229: aload_1
      //   230: invokevirtual 92	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   233: astore 6
      //   235: aload_0
      //   236: aload_0
      //   237: getfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   240: bipush 8
      //   242: ior
      //   243: putfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   246: aload_0
      //   247: aload 6
      //   249: putfield 124	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:actionUrl_	Ljava/lang/Object;
      //   252: goto -227 -> 25
      //   255: aload_1
      //   256: invokevirtual 92	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   259: astore 6
      //   261: aload_0
      //   262: aload_0
      //   263: getfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   266: bipush 16
      //   268: ior
      //   269: putfield 94	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:bitField0_	I
      //   272: aload_0
      //   273: aload 6
      //   275: putfield 126	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:backupActionUrl_	Ljava/lang/Object;
      //   278: goto -253 -> 25
      //   281: aload_0
      //   282: aload 5
      //   284: invokevirtual 106	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   287: putfield 108	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   290: aload_0
      //   291: invokevirtual 111	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:makeExtensionsImmutable	()V
      //   294: return
      //   295: goto -199 -> 96
      //   298: iconst_1
      //   299: istore_3
      //   300: goto -275 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	303	0	this	NoticeSchemaConfig
      //   0	303	1	paramCodedInputStream	CodedInputStream
      //   0	303	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	276	3	i	int
      //   33	69	4	j	int
      //   21	262	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   118	156	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	139	com/google/protobuf/InvalidProtocolBufferException
      //   96	109	139	com/google/protobuf/InvalidProtocolBufferException
      //   114	136	139	com/google/protobuf/InvalidProtocolBufferException
      //   162	184	139	com/google/protobuf/InvalidProtocolBufferException
      //   204	226	139	com/google/protobuf/InvalidProtocolBufferException
      //   229	252	139	com/google/protobuf/InvalidProtocolBufferException
      //   255	278	139	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	146	finally
      //   96	109	146	finally
      //   114	136	146	finally
      //   140	146	146	finally
      //   162	184	146	finally
      //   188	204	146	finally
      //   204	226	146	finally
      //   229	252	146	finally
      //   255	278	146	finally
      //   29	35	187	java/io/IOException
      //   96	109	187	java/io/IOException
      //   114	136	187	java/io/IOException
      //   162	184	187	java/io/IOException
      //   204	226	187	java/io/IOException
      //   229	252	187	java/io/IOException
      //   255	278	187	java/io/IOException
    }
    
    private NoticeSchemaConfig(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private NoticeSchemaConfig(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static NoticeSchemaConfig getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor;
    }
    
    private void initFields()
    {
      this.title_ = "";
      this.content_ = "";
      this.buttonText_ = "";
      this.actionUrl_ = "";
      this.backupActionUrl_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$4000();
    }
    
    public static Builder newBuilder(NoticeSchemaConfig paramNoticeSchemaConfig)
    {
      return newBuilder().mergeFrom(paramNoticeSchemaConfig);
    }
    
    public static NoticeSchemaConfig parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NoticeSchemaConfig)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static NoticeSchemaConfig parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeSchemaConfig)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeSchemaConfig parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (NoticeSchemaConfig)PARSER.parseFrom(paramByteString);
    }
    
    public static NoticeSchemaConfig parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NoticeSchemaConfig)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static NoticeSchemaConfig parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (NoticeSchemaConfig)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static NoticeSchemaConfig parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeSchemaConfig)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeSchemaConfig parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NoticeSchemaConfig)PARSER.parseFrom(paramInputStream);
    }
    
    public static NoticeSchemaConfig parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeSchemaConfig)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeSchemaConfig parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (NoticeSchemaConfig)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static NoticeSchemaConfig parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NoticeSchemaConfig)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
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
    
    public final String getBackupActionUrl()
    {
      Object localObject = this.backupActionUrl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.backupActionUrl_ = str;
      }
      return str;
    }
    
    public final ByteString getBackupActionUrlBytes()
    {
      Object localObject = this.backupActionUrl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.backupActionUrl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getButtonText()
    {
      Object localObject = this.buttonText_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.buttonText_ = str;
      }
      return str;
    }
    
    public final ByteString getButtonTextBytes()
    {
      Object localObject = this.buttonText_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.buttonText_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getContent()
    {
      Object localObject = this.content_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.content_ = str;
      }
      return str;
    }
    
    public final ByteString getContentBytes()
    {
      Object localObject = this.content_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.content_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final NoticeSchemaConfig getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<NoticeSchemaConfig> getParserForType()
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
        j = CodedOutputStream.computeBytesSize(1, getTitleBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getContentBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getButtonTextBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getActionUrlBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getBackupActionUrlBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getTitle()
    {
      Object localObject = this.title_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.title_ = str;
      }
      return str;
    }
    
    public final ByteString getTitleBytes()
    {
      Object localObject = this.title_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.title_ = localObject;
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
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasBackupActionUrl()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasButtonText()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasContent()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasTitle()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeSchemaConfig.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getTitleBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getContentBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getButtonTextBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getActionUrlBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getBackupActionUrlBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements NoticeConfigProtos.NoticeSchemaConfigOrBuilder
    {
      private Object actionUrl_ = "";
      private Object backupActionUrl_ = "";
      private int bitField0_;
      private Object buttonText_ = "";
      private Object content_ = "";
      private Object title_ = "";
      
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
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final NoticeConfigProtos.NoticeSchemaConfig build()
      {
        NoticeConfigProtos.NoticeSchemaConfig localNoticeSchemaConfig = buildPartial();
        if (!localNoticeSchemaConfig.isInitialized()) {
          throw newUninitializedMessageException(localNoticeSchemaConfig);
        }
        return localNoticeSchemaConfig;
      }
      
      public final NoticeConfigProtos.NoticeSchemaConfig buildPartial()
      {
        int j = 1;
        NoticeConfigProtos.NoticeSchemaConfig localNoticeSchemaConfig = new NoticeConfigProtos.NoticeSchemaConfig(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          NoticeConfigProtos.NoticeSchemaConfig.access$4402(localNoticeSchemaConfig, this.title_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          NoticeConfigProtos.NoticeSchemaConfig.access$4502(localNoticeSchemaConfig, this.content_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          NoticeConfigProtos.NoticeSchemaConfig.access$4602(localNoticeSchemaConfig, this.buttonText_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          NoticeConfigProtos.NoticeSchemaConfig.access$4702(localNoticeSchemaConfig, this.actionUrl_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          NoticeConfigProtos.NoticeSchemaConfig.access$4802(localNoticeSchemaConfig, this.backupActionUrl_);
          NoticeConfigProtos.NoticeSchemaConfig.access$4902(localNoticeSchemaConfig, j);
          onBuilt();
          return localNoticeSchemaConfig;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.title_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.content_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.buttonText_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.actionUrl_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.backupActionUrl_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        return this;
      }
      
      public final Builder clearActionUrl()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.actionUrl_ = NoticeConfigProtos.NoticeSchemaConfig.getDefaultInstance().getActionUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearBackupActionUrl()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.backupActionUrl_ = NoticeConfigProtos.NoticeSchemaConfig.getDefaultInstance().getBackupActionUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearButtonText()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.buttonText_ = NoticeConfigProtos.NoticeSchemaConfig.getDefaultInstance().getButtonText();
        onChanged();
        return this;
      }
      
      public final Builder clearContent()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.content_ = NoticeConfigProtos.NoticeSchemaConfig.getDefaultInstance().getContent();
        onChanged();
        return this;
      }
      
      public final Builder clearTitle()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.title_ = NoticeConfigProtos.NoticeSchemaConfig.getDefaultInstance().getTitle();
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
      
      public final String getBackupActionUrl()
      {
        Object localObject = this.backupActionUrl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.backupActionUrl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getBackupActionUrlBytes()
      {
        Object localObject = this.backupActionUrl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.backupActionUrl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getButtonText()
      {
        Object localObject = this.buttonText_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.buttonText_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getButtonTextBytes()
      {
        Object localObject = this.buttonText_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.buttonText_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getContent()
      {
        Object localObject = this.content_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.content_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getContentBytes()
      {
        Object localObject = this.content_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.content_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final NoticeConfigProtos.NoticeSchemaConfig getDefaultInstanceForType()
      {
        return NoticeConfigProtos.NoticeSchemaConfig.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor;
      }
      
      public final String getTitle()
      {
        Object localObject = this.title_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.title_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTitleBytes()
      {
        Object localObject = this.title_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.title_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasActionUrl()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasBackupActionUrl()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasButtonText()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasContent()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasTitle()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeConfigProtos.NoticeSchemaConfig.class, Builder.class);
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
        //   2: getstatic 213	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 219 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 153	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 222	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 153	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig$Builder;
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
        if ((paramMessage instanceof NoticeConfigProtos.NoticeSchemaConfig)) {
          return mergeFrom((NoticeConfigProtos.NoticeSchemaConfig)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(NoticeConfigProtos.NoticeSchemaConfig paramNoticeSchemaConfig)
      {
        if (paramNoticeSchemaConfig == NoticeConfigProtos.NoticeSchemaConfig.getDefaultInstance()) {
          return this;
        }
        if (paramNoticeSchemaConfig.hasTitle())
        {
          this.bitField0_ |= 0x1;
          this.title_ = paramNoticeSchemaConfig.title_;
          onChanged();
        }
        if (paramNoticeSchemaConfig.hasContent())
        {
          this.bitField0_ |= 0x2;
          this.content_ = paramNoticeSchemaConfig.content_;
          onChanged();
        }
        if (paramNoticeSchemaConfig.hasButtonText())
        {
          this.bitField0_ |= 0x4;
          this.buttonText_ = paramNoticeSchemaConfig.buttonText_;
          onChanged();
        }
        if (paramNoticeSchemaConfig.hasActionUrl())
        {
          this.bitField0_ |= 0x8;
          this.actionUrl_ = paramNoticeSchemaConfig.actionUrl_;
          onChanged();
        }
        if (paramNoticeSchemaConfig.hasBackupActionUrl())
        {
          this.bitField0_ |= 0x10;
          this.backupActionUrl_ = paramNoticeSchemaConfig.backupActionUrl_;
          onChanged();
        }
        mergeUnknownFields(paramNoticeSchemaConfig.getUnknownFields());
        return this;
      }
      
      public final Builder setActionUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.actionUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setActionUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.actionUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setBackupActionUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.backupActionUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setBackupActionUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.backupActionUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setButtonText(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.buttonText_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setButtonTextBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.buttonText_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setContent(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.content_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setContentBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.content_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setTitle(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.title_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTitleBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.title_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface NoticeSchemaConfigOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getActionUrl();
    
    public abstract ByteString getActionUrlBytes();
    
    public abstract String getBackupActionUrl();
    
    public abstract ByteString getBackupActionUrlBytes();
    
    public abstract String getButtonText();
    
    public abstract ByteString getButtonTextBytes();
    
    public abstract String getContent();
    
    public abstract ByteString getContentBytes();
    
    public abstract String getTitle();
    
    public abstract ByteString getTitleBytes();
    
    public abstract boolean hasActionUrl();
    
    public abstract boolean hasBackupActionUrl();
    
    public abstract boolean hasButtonText();
    
    public abstract boolean hasContent();
    
    public abstract boolean hasTitle();
  }
  
  public static final class NoticeTextConfig
    extends GeneratedMessage
    implements NoticeConfigProtos.NoticeTextConfigOrBuilder
  {
    public static final int CONTENT_FIELD_NUMBER = 2;
    public static Parser<NoticeTextConfig> PARSER = new ao();
    public static final int TITLE_FIELD_NUMBER = 1;
    private static final NoticeTextConfig defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object content_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object title_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      NoticeTextConfig localNoticeTextConfig = new NoticeTextConfig(true);
      defaultInstance = localNoticeTextConfig;
      localNoticeTextConfig.initFields();
    }
    
    /* Error */
    private NoticeTextConfig(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:initFields	()V
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
      //   79: invokevirtual 79	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_1
      //   91: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   94: astore 6
      //   96: aload_0
      //   97: aload_0
      //   98: getfield 85	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:bitField0_	I
      //   101: iconst_1
      //   102: ior
      //   103: putfield 85	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:bitField0_	I
      //   106: aload_0
      //   107: aload 6
      //   109: putfield 87	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:title_	Ljava/lang/Object;
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
      //   129: putfield 99	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   132: aload_0
      //   133: invokevirtual 102	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:makeExtensionsImmutable	()V
      //   136: aload_1
      //   137: athrow
      //   138: aload_1
      //   139: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   142: astore 6
      //   144: aload_0
      //   145: aload_0
      //   146: getfield 85	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:bitField0_	I
      //   149: iconst_2
      //   150: ior
      //   151: putfield 85	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:bitField0_	I
      //   154: aload_0
      //   155: aload 6
      //   157: putfield 104	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:content_	Ljava/lang/Object;
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
      //   186: putfield 99	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   189: aload_0
      //   190: invokevirtual 102	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:makeExtensionsImmutable	()V
      //   193: return
      //   194: goto -122 -> 72
      //   197: iconst_1
      //   198: istore_3
      //   199: goto -174 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	202	0	this	NoticeTextConfig
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
    
    private NoticeTextConfig(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private NoticeTextConfig(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static NoticeTextConfig getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor;
    }
    
    private void initFields()
    {
      this.title_ = "";
      this.content_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1400();
    }
    
    public static Builder newBuilder(NoticeTextConfig paramNoticeTextConfig)
    {
      return newBuilder().mergeFrom(paramNoticeTextConfig);
    }
    
    public static NoticeTextConfig parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NoticeTextConfig)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static NoticeTextConfig parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeTextConfig)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeTextConfig parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (NoticeTextConfig)PARSER.parseFrom(paramByteString);
    }
    
    public static NoticeTextConfig parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NoticeTextConfig)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static NoticeTextConfig parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (NoticeTextConfig)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static NoticeTextConfig parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeTextConfig)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeTextConfig parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NoticeTextConfig)PARSER.parseFrom(paramInputStream);
    }
    
    public static NoticeTextConfig parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NoticeTextConfig)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NoticeTextConfig parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (NoticeTextConfig)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static NoticeTextConfig parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NoticeTextConfig)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getContent()
    {
      Object localObject = this.content_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.content_ = str;
      }
      return str;
    }
    
    public final ByteString getContentBytes()
    {
      Object localObject = this.content_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.content_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final NoticeTextConfig getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<NoticeTextConfig> getParserForType()
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
        i = CodedOutputStream.computeBytesSize(1, getTitleBytes()) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeBytesSize(2, getContentBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getTitle()
    {
      Object localObject = this.title_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.title_ = str;
      }
      return str;
    }
    
    public final ByteString getTitleBytes()
    {
      Object localObject = this.title_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.title_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasContent()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasTitle()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeTextConfig.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getTitleBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getContentBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements NoticeConfigProtos.NoticeTextConfigOrBuilder
    {
      private int bitField0_;
      private Object content_ = "";
      private Object title_ = "";
      
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
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final NoticeConfigProtos.NoticeTextConfig build()
      {
        NoticeConfigProtos.NoticeTextConfig localNoticeTextConfig = buildPartial();
        if (!localNoticeTextConfig.isInitialized()) {
          throw newUninitializedMessageException(localNoticeTextConfig);
        }
        return localNoticeTextConfig;
      }
      
      public final NoticeConfigProtos.NoticeTextConfig buildPartial()
      {
        int i = 1;
        NoticeConfigProtos.NoticeTextConfig localNoticeTextConfig = new NoticeConfigProtos.NoticeTextConfig(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          NoticeConfigProtos.NoticeTextConfig.access$1802(localNoticeTextConfig, this.title_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          NoticeConfigProtos.NoticeTextConfig.access$1902(localNoticeTextConfig, this.content_);
          NoticeConfigProtos.NoticeTextConfig.access$2002(localNoticeTextConfig, j);
          onBuilt();
          return localNoticeTextConfig;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.title_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.content_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearContent()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.content_ = NoticeConfigProtos.NoticeTextConfig.getDefaultInstance().getContent();
        onChanged();
        return this;
      }
      
      public final Builder clearTitle()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.title_ = NoticeConfigProtos.NoticeTextConfig.getDefaultInstance().getTitle();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getContent()
      {
        Object localObject = this.content_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.content_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getContentBytes()
      {
        Object localObject = this.content_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.content_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final NoticeConfigProtos.NoticeTextConfig getDefaultInstanceForType()
      {
        return NoticeConfigProtos.NoticeTextConfig.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor;
      }
      
      public final String getTitle()
      {
        Object localObject = this.title_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.title_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTitleBytes()
      {
        Object localObject = this.title_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.title_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasContent()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasTitle()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeConfigProtos.NoticeTextConfig.class, Builder.class);
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
        //   2: getstatic 177	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 183 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 123	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 186	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 123	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig$Builder;
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
        if ((paramMessage instanceof NoticeConfigProtos.NoticeTextConfig)) {
          return mergeFrom((NoticeConfigProtos.NoticeTextConfig)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(NoticeConfigProtos.NoticeTextConfig paramNoticeTextConfig)
      {
        if (paramNoticeTextConfig == NoticeConfigProtos.NoticeTextConfig.getDefaultInstance()) {
          return this;
        }
        if (paramNoticeTextConfig.hasTitle())
        {
          this.bitField0_ |= 0x1;
          this.title_ = paramNoticeTextConfig.title_;
          onChanged();
        }
        if (paramNoticeTextConfig.hasContent())
        {
          this.bitField0_ |= 0x2;
          this.content_ = paramNoticeTextConfig.content_;
          onChanged();
        }
        mergeUnknownFields(paramNoticeTextConfig.getUnknownFields());
        return this;
      }
      
      public final Builder setContent(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.content_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setContentBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.content_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setTitle(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.title_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTitleBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.title_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface NoticeTextConfigOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getContent();
    
    public abstract ByteString getContentBytes();
    
    public abstract String getTitle();
    
    public abstract ByteString getTitleBytes();
    
    public abstract boolean hasContent();
    
    public abstract boolean hasTitle();
  }
  
  public static enum SdkType
    implements ProtocolMessageEnum
  {
    public static final int MIGAME_VALUE = 2;
    public static final int OFFLINE_VALUE = 1;
    public static final int SERVICE_VALUE = 3;
    private static final SdkType[] VALUES = values();
    private static Internal.EnumLiteMap<SdkType> internalValueMap;
    private final int index;
    private final int value;
    
    static
    {
      MIGAME = new SdkType("MIGAME", 1, 1, 2);
      SERVICE = new SdkType("SERVICE", 2, 2, 3);
      $VALUES = new SdkType[] { OFFLINE, MIGAME, SERVICE };
      internalValueMap = new ap();
    }
    
    private SdkType(int paramInt1, int paramInt2)
    {
      this.index = paramInt1;
      this.value = paramInt2;
    }
    
    public static final Descriptors.EnumDescriptor getDescriptor()
    {
      return (Descriptors.EnumDescriptor)NoticeConfigProtos.getDescriptor().getEnumTypes().get(0);
    }
    
    public static Internal.EnumLiteMap<SdkType> internalGetValueMap()
    {
      return internalValueMap;
    }
    
    public static SdkType valueOf(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return null;
      case 1: 
        return OFFLINE;
      case 2: 
        return MIGAME;
      }
      return SERVICE;
    }
    
    public static SdkType valueOf(Descriptors.EnumValueDescriptor paramEnumValueDescriptor)
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
  
  public static final class StatInfo
    extends GeneratedMessage
    implements NoticeConfigProtos.StatInfoOrBuilder
  {
    public static final int ANDROID_FIELD_NUMBER = 7;
    public static final int CARRIER_FIELD_NUMBER = 11;
    public static final int CID_FIELD_NUMBER = 17;
    public static final int CLIENTVERSION_FIELD_NUMBER = 14;
    public static final int DEVAPPID_FIELD_NUMBER = 18;
    public static final int EXTRA_FIELD_NUMBER = 24;
    public static final int FUID_FIELD_NUMBER = 13;
    public static final int IMEIMD5_FIELD_NUMBER = 1;
    public static final int IMEISHA1_FIELD_NUMBER = 2;
    public static final int IMEISHA2_FIELD_NUMBER = 3;
    public static final int LANG_FIELD_NUMBER = 10;
    public static final int LOCALTIME_FIELD_NUMBER = 16;
    public static final int MACMD5_FIELD_NUMBER = 4;
    public static final int NETWORK_FIELD_NUMBER = 6;
    public static final int OS_FIELD_NUMBER = 8;
    public static Parser<StatInfo> PARSER = new aq();
    public static final int PROTECTCID_FIELD_NUMBER = 25;
    public static final int REGION_FIELD_NUMBER = 9;
    public static final int SDKJARVERSION_FIELD_NUMBER = 20;
    public static final int SDKSERVICEVERSION_FIELD_NUMBER = 21;
    public static final int SDKTYPE_FIELD_NUMBER = 19;
    public static final int SERVERTIME_FIELD_NUMBER = 15;
    public static final int SESSIONID_FIELD_NUMBER = 22;
    public static final int TIMEZONE_FIELD_NUMBER = 12;
    public static final int UA_FIELD_NUMBER = 5;
    public static final int UNIONID_FIELD_NUMBER = 23;
    private static final StatInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object android_;
    private int bitField0_;
    private Object carrier_;
    private Object cid_;
    private Object clientVersion_;
    private long devAppId_;
    private Object extra_;
    private long fuid_;
    private Object imeiMd5_;
    private Object imeiSha1_;
    private Object imeiSha2_;
    private Object lang_;
    private Object localTime_;
    private Object macMd5_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object network_;
    private Object os_;
    private Object protectCid_;
    private Object region_;
    private Object sdkJarVersion_;
    private Object sdkServiceVersion_;
    private int sdkType_;
    private Object serverTime_;
    private Object sessionId_;
    private Object timezone_;
    private Object ua_;
    private Object unionId_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      StatInfo localStatInfo = new StatInfo(true);
      defaultInstance = localStatInfo;
      localStatInfo.initFields();
    }
    
    /* Error */
    private StatInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 128	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 130	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 132	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 121	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:initFields	()V
      //   18: invokestatic 138	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +931 -> 957
      //   29: aload_1
      //   30: invokevirtual 144	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+934->971, 0:+937->974, 10:+237->274, 18:+285->322, 26:+327->364, 34:+352->389, 42:+378->415, 50:+404->441, 58:+430->467, 66:+456->493, 74:+483->520, 82:+510->547, 90:+537->574, 98:+564->601, 104:+591->628, 114:+614->651, 122:+641->678, 130:+668->705, 138:+694->731, 144:+720->757, 152:+742->779, 162:+764->801, 170:+790->827, 178:+816->853, 186:+842->879, 194:+868->905, 202:+894->931
      //   256: aload_0
      //   257: aload_1
      //   258: aload 5
      //   260: aload_2
      //   261: iload 4
      //   263: invokevirtual 148	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   266: ifne -241 -> 25
      //   269: iconst_1
      //   270: istore_3
      //   271: goto -246 -> 25
      //   274: aload_1
      //   275: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   278: astore 6
      //   280: aload_0
      //   281: aload_0
      //   282: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   285: iconst_1
      //   286: ior
      //   287: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   290: aload_0
      //   291: aload 6
      //   293: putfield 156	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:imeiMd5_	Ljava/lang/Object;
      //   296: goto -271 -> 25
      //   299: astore_1
      //   300: aload_1
      //   301: aload_0
      //   302: invokevirtual 160	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   305: athrow
      //   306: astore_1
      //   307: aload_0
      //   308: aload 5
      //   310: invokevirtual 166	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   313: putfield 168	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   316: aload_0
      //   317: invokevirtual 171	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:makeExtensionsImmutable	()V
      //   320: aload_1
      //   321: athrow
      //   322: aload_1
      //   323: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   326: astore 6
      //   328: aload_0
      //   329: aload_0
      //   330: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   333: iconst_2
      //   334: ior
      //   335: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   338: aload_0
      //   339: aload 6
      //   341: putfield 173	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:imeiSha1_	Ljava/lang/Object;
      //   344: goto -319 -> 25
      //   347: astore_1
      //   348: new 125	com/google/protobuf/InvalidProtocolBufferException
      //   351: dup
      //   352: aload_1
      //   353: invokevirtual 177	java/io/IOException:getMessage	()Ljava/lang/String;
      //   356: invokespecial 180	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   359: aload_0
      //   360: invokevirtual 160	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   363: athrow
      //   364: aload_1
      //   365: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   368: astore 6
      //   370: aload_0
      //   371: aload_0
      //   372: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   375: iconst_4
      //   376: ior
      //   377: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   380: aload_0
      //   381: aload 6
      //   383: putfield 182	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:imeiSha2_	Ljava/lang/Object;
      //   386: goto -361 -> 25
      //   389: aload_1
      //   390: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   393: astore 6
      //   395: aload_0
      //   396: aload_0
      //   397: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   400: bipush 8
      //   402: ior
      //   403: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   406: aload_0
      //   407: aload 6
      //   409: putfield 184	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:macMd5_	Ljava/lang/Object;
      //   412: goto -387 -> 25
      //   415: aload_1
      //   416: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   419: astore 6
      //   421: aload_0
      //   422: aload_0
      //   423: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   426: bipush 16
      //   428: ior
      //   429: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   432: aload_0
      //   433: aload 6
      //   435: putfield 186	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:ua_	Ljava/lang/Object;
      //   438: goto -413 -> 25
      //   441: aload_1
      //   442: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   445: astore 6
      //   447: aload_0
      //   448: aload_0
      //   449: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   452: bipush 32
      //   454: ior
      //   455: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   458: aload_0
      //   459: aload 6
      //   461: putfield 188	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:network_	Ljava/lang/Object;
      //   464: goto -439 -> 25
      //   467: aload_1
      //   468: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   471: astore 6
      //   473: aload_0
      //   474: aload_0
      //   475: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   478: bipush 64
      //   480: ior
      //   481: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   484: aload_0
      //   485: aload 6
      //   487: putfield 190	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:android_	Ljava/lang/Object;
      //   490: goto -465 -> 25
      //   493: aload_1
      //   494: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   497: astore 6
      //   499: aload_0
      //   500: aload_0
      //   501: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   504: sipush 128
      //   507: ior
      //   508: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   511: aload_0
      //   512: aload 6
      //   514: putfield 192	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:os_	Ljava/lang/Object;
      //   517: goto -492 -> 25
      //   520: aload_1
      //   521: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   524: astore 6
      //   526: aload_0
      //   527: aload_0
      //   528: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   531: sipush 256
      //   534: ior
      //   535: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   538: aload_0
      //   539: aload 6
      //   541: putfield 194	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:region_	Ljava/lang/Object;
      //   544: goto -519 -> 25
      //   547: aload_1
      //   548: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   551: astore 6
      //   553: aload_0
      //   554: aload_0
      //   555: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   558: sipush 512
      //   561: ior
      //   562: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   565: aload_0
      //   566: aload 6
      //   568: putfield 196	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:lang_	Ljava/lang/Object;
      //   571: goto -546 -> 25
      //   574: aload_1
      //   575: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   578: astore 6
      //   580: aload_0
      //   581: aload_0
      //   582: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   585: sipush 1024
      //   588: ior
      //   589: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   592: aload_0
      //   593: aload 6
      //   595: putfield 198	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:carrier_	Ljava/lang/Object;
      //   598: goto -573 -> 25
      //   601: aload_1
      //   602: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   605: astore 6
      //   607: aload_0
      //   608: aload_0
      //   609: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   612: sipush 2048
      //   615: ior
      //   616: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   619: aload_0
      //   620: aload 6
      //   622: putfield 200	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:timezone_	Ljava/lang/Object;
      //   625: goto -600 -> 25
      //   628: aload_0
      //   629: aload_0
      //   630: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   633: sipush 4096
      //   636: ior
      //   637: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   640: aload_0
      //   641: aload_1
      //   642: invokevirtual 204	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   645: putfield 206	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:fuid_	J
      //   648: goto -623 -> 25
      //   651: aload_1
      //   652: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   655: astore 6
      //   657: aload_0
      //   658: aload_0
      //   659: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   662: sipush 8192
      //   665: ior
      //   666: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   669: aload_0
      //   670: aload 6
      //   672: putfield 208	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:clientVersion_	Ljava/lang/Object;
      //   675: goto -650 -> 25
      //   678: aload_1
      //   679: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   682: astore 6
      //   684: aload_0
      //   685: aload_0
      //   686: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   689: sipush 16384
      //   692: ior
      //   693: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   696: aload_0
      //   697: aload 6
      //   699: putfield 210	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:serverTime_	Ljava/lang/Object;
      //   702: goto -677 -> 25
      //   705: aload_1
      //   706: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   709: astore 6
      //   711: aload_0
      //   712: aload_0
      //   713: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   716: ldc -45
      //   718: ior
      //   719: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   722: aload_0
      //   723: aload 6
      //   725: putfield 213	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:localTime_	Ljava/lang/Object;
      //   728: goto -703 -> 25
      //   731: aload_1
      //   732: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   735: astore 6
      //   737: aload_0
      //   738: aload_0
      //   739: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   742: ldc -42
      //   744: ior
      //   745: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   748: aload_0
      //   749: aload 6
      //   751: putfield 216	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:cid_	Ljava/lang/Object;
      //   754: goto -729 -> 25
      //   757: aload_0
      //   758: aload_0
      //   759: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   762: ldc -39
      //   764: ior
      //   765: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   768: aload_0
      //   769: aload_1
      //   770: invokevirtual 204	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   773: putfield 219	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:devAppId_	J
      //   776: goto -751 -> 25
      //   779: aload_0
      //   780: aload_0
      //   781: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   784: ldc -36
      //   786: ior
      //   787: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   790: aload_0
      //   791: aload_1
      //   792: invokevirtual 223	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   795: putfield 225	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:sdkType_	I
      //   798: goto -773 -> 25
      //   801: aload_1
      //   802: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   805: astore 6
      //   807: aload_0
      //   808: aload_0
      //   809: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   812: ldc -30
      //   814: ior
      //   815: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   818: aload_0
      //   819: aload 6
      //   821: putfield 228	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:sdkJarVersion_	Ljava/lang/Object;
      //   824: goto -799 -> 25
      //   827: aload_1
      //   828: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   831: astore 6
      //   833: aload_0
      //   834: aload_0
      //   835: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   838: ldc -27
      //   840: ior
      //   841: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   844: aload_0
      //   845: aload 6
      //   847: putfield 231	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:sdkServiceVersion_	Ljava/lang/Object;
      //   850: goto -825 -> 25
      //   853: aload_1
      //   854: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   857: astore 6
      //   859: aload_0
      //   860: aload_0
      //   861: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   864: ldc -24
      //   866: ior
      //   867: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   870: aload_0
      //   871: aload 6
      //   873: putfield 234	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:sessionId_	Ljava/lang/Object;
      //   876: goto -851 -> 25
      //   879: aload_1
      //   880: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   883: astore 6
      //   885: aload_0
      //   886: aload_0
      //   887: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   890: ldc -21
      //   892: ior
      //   893: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   896: aload_0
      //   897: aload 6
      //   899: putfield 237	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:unionId_	Ljava/lang/Object;
      //   902: goto -877 -> 25
      //   905: aload_1
      //   906: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   909: astore 6
      //   911: aload_0
      //   912: aload_0
      //   913: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   916: ldc -18
      //   918: ior
      //   919: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   922: aload_0
      //   923: aload 6
      //   925: putfield 240	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:extra_	Ljava/lang/Object;
      //   928: goto -903 -> 25
      //   931: aload_1
      //   932: invokevirtual 152	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   935: astore 6
      //   937: aload_0
      //   938: aload_0
      //   939: getfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   942: ldc -15
      //   944: ior
      //   945: putfield 154	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:bitField0_	I
      //   948: aload_0
      //   949: aload 6
      //   951: putfield 243	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:protectCid_	Ljava/lang/Object;
      //   954: goto -929 -> 25
      //   957: aload_0
      //   958: aload 5
      //   960: invokevirtual 166	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   963: putfield 168	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   966: aload_0
      //   967: invokevirtual 171	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:makeExtensionsImmutable	()V
      //   970: return
      //   971: goto -715 -> 256
      //   974: iconst_1
      //   975: istore_3
      //   976: goto -951 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	979	0	this	StatInfo
      //   0	979	1	paramCodedInputStream	CodedInputStream
      //   0	979	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	952	3	i	int
      //   33	229	4	j	int
      //   21	938	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   278	672	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	299	com/google/protobuf/InvalidProtocolBufferException
      //   256	269	299	com/google/protobuf/InvalidProtocolBufferException
      //   274	296	299	com/google/protobuf/InvalidProtocolBufferException
      //   322	344	299	com/google/protobuf/InvalidProtocolBufferException
      //   364	386	299	com/google/protobuf/InvalidProtocolBufferException
      //   389	412	299	com/google/protobuf/InvalidProtocolBufferException
      //   415	438	299	com/google/protobuf/InvalidProtocolBufferException
      //   441	464	299	com/google/protobuf/InvalidProtocolBufferException
      //   467	490	299	com/google/protobuf/InvalidProtocolBufferException
      //   493	517	299	com/google/protobuf/InvalidProtocolBufferException
      //   520	544	299	com/google/protobuf/InvalidProtocolBufferException
      //   547	571	299	com/google/protobuf/InvalidProtocolBufferException
      //   574	598	299	com/google/protobuf/InvalidProtocolBufferException
      //   601	625	299	com/google/protobuf/InvalidProtocolBufferException
      //   628	648	299	com/google/protobuf/InvalidProtocolBufferException
      //   651	675	299	com/google/protobuf/InvalidProtocolBufferException
      //   678	702	299	com/google/protobuf/InvalidProtocolBufferException
      //   705	728	299	com/google/protobuf/InvalidProtocolBufferException
      //   731	754	299	com/google/protobuf/InvalidProtocolBufferException
      //   757	776	299	com/google/protobuf/InvalidProtocolBufferException
      //   779	798	299	com/google/protobuf/InvalidProtocolBufferException
      //   801	824	299	com/google/protobuf/InvalidProtocolBufferException
      //   827	850	299	com/google/protobuf/InvalidProtocolBufferException
      //   853	876	299	com/google/protobuf/InvalidProtocolBufferException
      //   879	902	299	com/google/protobuf/InvalidProtocolBufferException
      //   905	928	299	com/google/protobuf/InvalidProtocolBufferException
      //   931	954	299	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	306	finally
      //   256	269	306	finally
      //   274	296	306	finally
      //   300	306	306	finally
      //   322	344	306	finally
      //   348	364	306	finally
      //   364	386	306	finally
      //   389	412	306	finally
      //   415	438	306	finally
      //   441	464	306	finally
      //   467	490	306	finally
      //   493	517	306	finally
      //   520	544	306	finally
      //   547	571	306	finally
      //   574	598	306	finally
      //   601	625	306	finally
      //   628	648	306	finally
      //   651	675	306	finally
      //   678	702	306	finally
      //   705	728	306	finally
      //   731	754	306	finally
      //   757	776	306	finally
      //   779	798	306	finally
      //   801	824	306	finally
      //   827	850	306	finally
      //   853	876	306	finally
      //   879	902	306	finally
      //   905	928	306	finally
      //   931	954	306	finally
      //   29	35	347	java/io/IOException
      //   256	269	347	java/io/IOException
      //   274	296	347	java/io/IOException
      //   322	344	347	java/io/IOException
      //   364	386	347	java/io/IOException
      //   389	412	347	java/io/IOException
      //   415	438	347	java/io/IOException
      //   441	464	347	java/io/IOException
      //   467	490	347	java/io/IOException
      //   493	517	347	java/io/IOException
      //   520	544	347	java/io/IOException
      //   547	571	347	java/io/IOException
      //   574	598	347	java/io/IOException
      //   601	625	347	java/io/IOException
      //   628	648	347	java/io/IOException
      //   651	675	347	java/io/IOException
      //   678	702	347	java/io/IOException
      //   705	728	347	java/io/IOException
      //   731	754	347	java/io/IOException
      //   757	776	347	java/io/IOException
      //   779	798	347	java/io/IOException
      //   801	824	347	java/io/IOException
      //   827	850	347	java/io/IOException
      //   853	876	347	java/io/IOException
      //   879	902	347	java/io/IOException
      //   905	928	347	java/io/IOException
      //   931	954	347	java/io/IOException
    }
    
    private StatInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private StatInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static StatInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor;
    }
    
    private void initFields()
    {
      this.imeiMd5_ = "";
      this.imeiSha1_ = "";
      this.imeiSha2_ = "";
      this.macMd5_ = "";
      this.ua_ = "";
      this.network_ = "";
      this.android_ = "";
      this.os_ = "";
      this.region_ = "";
      this.lang_ = "";
      this.carrier_ = "";
      this.timezone_ = "";
      this.fuid_ = 0L;
      this.clientVersion_ = "";
      this.serverTime_ = "";
      this.localTime_ = "";
      this.cid_ = "";
      this.devAppId_ = 0L;
      this.sdkType_ = 0;
      this.sdkJarVersion_ = "";
      this.sdkServiceVersion_ = "";
      this.sessionId_ = "";
      this.unionId_ = "";
      this.extra_ = "";
      this.protectCid_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$5300();
    }
    
    public static Builder newBuilder(StatInfo paramStatInfo)
    {
      return newBuilder().mergeFrom(paramStatInfo);
    }
    
    public static StatInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (StatInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static StatInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (StatInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static StatInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (StatInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static StatInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (StatInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static StatInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (StatInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static StatInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (StatInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static StatInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (StatInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static StatInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (StatInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static StatInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (StatInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static StatInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (StatInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getAndroid()
    {
      Object localObject = this.android_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.android_ = str;
      }
      return str;
    }
    
    public final ByteString getAndroidBytes()
    {
      Object localObject = this.android_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.android_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getCarrier()
    {
      Object localObject = this.carrier_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.carrier_ = str;
      }
      return str;
    }
    
    public final ByteString getCarrierBytes()
    {
      Object localObject = this.carrier_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.carrier_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getCid()
    {
      Object localObject = this.cid_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.cid_ = str;
      }
      return str;
    }
    
    public final ByteString getCidBytes()
    {
      Object localObject = this.cid_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.cid_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getClientVersion()
    {
      Object localObject = this.clientVersion_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.clientVersion_ = str;
      }
      return str;
    }
    
    public final ByteString getClientVersionBytes()
    {
      Object localObject = this.clientVersion_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.clientVersion_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final StatInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getDevAppId()
    {
      return this.devAppId_;
    }
    
    public final String getExtra()
    {
      Object localObject = this.extra_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.extra_ = str;
      }
      return str;
    }
    
    public final ByteString getExtraBytes()
    {
      Object localObject = this.extra_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.extra_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final String getImeiMd5()
    {
      Object localObject = this.imeiMd5_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imeiMd5_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiMd5Bytes()
    {
      Object localObject = this.imeiMd5_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imeiMd5_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getImeiSha1()
    {
      Object localObject = this.imeiSha1_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imeiSha1_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiSha1Bytes()
    {
      Object localObject = this.imeiSha1_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imeiSha1_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getImeiSha2()
    {
      Object localObject = this.imeiSha2_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imeiSha2_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiSha2Bytes()
    {
      Object localObject = this.imeiSha2_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imeiSha2_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getLang()
    {
      Object localObject = this.lang_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.lang_ = str;
      }
      return str;
    }
    
    public final ByteString getLangBytes()
    {
      Object localObject = this.lang_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.lang_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getLocalTime()
    {
      Object localObject = this.localTime_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.localTime_ = str;
      }
      return str;
    }
    
    public final ByteString getLocalTimeBytes()
    {
      Object localObject = this.localTime_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.localTime_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getMacMd5()
    {
      Object localObject = this.macMd5_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.macMd5_ = str;
      }
      return str;
    }
    
    public final ByteString getMacMd5Bytes()
    {
      Object localObject = this.macMd5_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.macMd5_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getNetwork()
    {
      Object localObject = this.network_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.network_ = str;
      }
      return str;
    }
    
    public final ByteString getNetworkBytes()
    {
      Object localObject = this.network_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.network_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getOs()
    {
      Object localObject = this.os_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.os_ = str;
      }
      return str;
    }
    
    public final ByteString getOsBytes()
    {
      Object localObject = this.os_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.os_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<StatInfo> getParserForType()
    {
      return PARSER;
    }
    
    public final String getProtectCid()
    {
      Object localObject = this.protectCid_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.protectCid_ = str;
      }
      return str;
    }
    
    public final ByteString getProtectCidBytes()
    {
      Object localObject = this.protectCid_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.protectCid_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getRegion()
    {
      Object localObject = this.region_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.region_ = str;
      }
      return str;
    }
    
    public final ByteString getRegionBytes()
    {
      Object localObject = this.region_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.region_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getSdkJarVersion()
    {
      Object localObject = this.sdkJarVersion_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sdkJarVersion_ = str;
      }
      return str;
    }
    
    public final ByteString getSdkJarVersionBytes()
    {
      Object localObject = this.sdkJarVersion_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sdkJarVersion_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getSdkServiceVersion()
    {
      Object localObject = this.sdkServiceVersion_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sdkServiceVersion_ = str;
      }
      return str;
    }
    
    public final ByteString getSdkServiceVersionBytes()
    {
      Object localObject = this.sdkServiceVersion_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sdkServiceVersion_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getSdkType()
    {
      return this.sdkType_;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeBytesSize(1, getImeiMd5Bytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getImeiSha1Bytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getImeiSha2Bytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getMacMd5Bytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getUaBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getNetworkBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getAndroidBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getOsBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getRegionBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getLangBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getCarrierBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x800) == 2048) {
        i = j + CodedOutputStream.computeBytesSize(12, getTimezoneBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x1000) == 4096) {
        j = i + CodedOutputStream.computeUInt64Size(13, this.fuid_);
      }
      i = j;
      if ((this.bitField0_ & 0x2000) == 8192) {
        i = j + CodedOutputStream.computeBytesSize(14, getClientVersionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4000) == 16384) {
        j = i + CodedOutputStream.computeBytesSize(15, getServerTimeBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8000) == 32768) {
        i = j + CodedOutputStream.computeBytesSize(16, getLocalTimeBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10000) == 65536) {
        j = i + CodedOutputStream.computeBytesSize(17, getCidBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20000) == 131072) {
        i = j + CodedOutputStream.computeUInt64Size(18, this.devAppId_);
      }
      j = i;
      if ((this.bitField0_ & 0x40000) == 262144) {
        j = i + CodedOutputStream.computeUInt32Size(19, this.sdkType_);
      }
      i = j;
      if ((this.bitField0_ & 0x80000) == 524288) {
        i = j + CodedOutputStream.computeBytesSize(20, getSdkJarVersionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100000) == 1048576) {
        j = i + CodedOutputStream.computeBytesSize(21, getSdkServiceVersionBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200000) == 2097152) {
        i = j + CodedOutputStream.computeBytesSize(22, getSessionIdBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400000) == 4194304) {
        j = i + CodedOutputStream.computeBytesSize(23, getUnionIdBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x800000) == 8388608) {
        i = j + CodedOutputStream.computeBytesSize(24, getExtraBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x1000000) == 16777216) {
        j = i + CodedOutputStream.computeBytesSize(25, getProtectCidBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getServerTime()
    {
      Object localObject = this.serverTime_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serverTime_ = str;
      }
      return str;
    }
    
    public final ByteString getServerTimeBytes()
    {
      Object localObject = this.serverTime_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serverTime_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getSessionId()
    {
      Object localObject = this.sessionId_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sessionId_ = str;
      }
      return str;
    }
    
    public final ByteString getSessionIdBytes()
    {
      Object localObject = this.sessionId_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sessionId_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getTimezone()
    {
      Object localObject = this.timezone_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.timezone_ = str;
      }
      return str;
    }
    
    public final ByteString getTimezoneBytes()
    {
      Object localObject = this.timezone_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.timezone_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
    
    public final boolean hasAndroid()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasCarrier()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasCid()
    {
      return (this.bitField0_ & 0x10000) == 65536;
    }
    
    public final boolean hasClientVersion()
    {
      return (this.bitField0_ & 0x2000) == 8192;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x20000) == 131072;
    }
    
    public final boolean hasExtra()
    {
      return (this.bitField0_ & 0x800000) == 8388608;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x1000) == 4096;
    }
    
    public final boolean hasImeiMd5()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasImeiSha1()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasImeiSha2()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasLang()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasLocalTime()
    {
      return (this.bitField0_ & 0x8000) == 32768;
    }
    
    public final boolean hasMacMd5()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasNetwork()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasOs()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasProtectCid()
    {
      return (this.bitField0_ & 0x1000000) == 16777216;
    }
    
    public final boolean hasRegion()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasSdkJarVersion()
    {
      return (this.bitField0_ & 0x80000) == 524288;
    }
    
    public final boolean hasSdkServiceVersion()
    {
      return (this.bitField0_ & 0x100000) == 1048576;
    }
    
    public final boolean hasSdkType()
    {
      return (this.bitField0_ & 0x40000) == 262144;
    }
    
    public final boolean hasServerTime()
    {
      return (this.bitField0_ & 0x4000) == 16384;
    }
    
    public final boolean hasSessionId()
    {
      return (this.bitField0_ & 0x200000) == 2097152;
    }
    
    public final boolean hasTimezone()
    {
      return (this.bitField0_ & 0x800) == 2048;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasUnionId()
    {
      return (this.bitField0_ & 0x400000) == 4194304;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(StatInfo.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getImeiMd5Bytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getImeiSha1Bytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getImeiSha2Bytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getMacMd5Bytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getUaBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getNetworkBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getAndroidBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getOsBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getRegionBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getLangBytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getCarrierBytes());
      }
      if ((this.bitField0_ & 0x800) == 2048) {
        paramCodedOutputStream.writeBytes(12, getTimezoneBytes());
      }
      if ((this.bitField0_ & 0x1000) == 4096) {
        paramCodedOutputStream.writeUInt64(13, this.fuid_);
      }
      if ((this.bitField0_ & 0x2000) == 8192) {
        paramCodedOutputStream.writeBytes(14, getClientVersionBytes());
      }
      if ((this.bitField0_ & 0x4000) == 16384) {
        paramCodedOutputStream.writeBytes(15, getServerTimeBytes());
      }
      if ((this.bitField0_ & 0x8000) == 32768) {
        paramCodedOutputStream.writeBytes(16, getLocalTimeBytes());
      }
      if ((this.bitField0_ & 0x10000) == 65536) {
        paramCodedOutputStream.writeBytes(17, getCidBytes());
      }
      if ((this.bitField0_ & 0x20000) == 131072) {
        paramCodedOutputStream.writeUInt64(18, this.devAppId_);
      }
      if ((this.bitField0_ & 0x40000) == 262144) {
        paramCodedOutputStream.writeUInt32(19, this.sdkType_);
      }
      if ((this.bitField0_ & 0x80000) == 524288) {
        paramCodedOutputStream.writeBytes(20, getSdkJarVersionBytes());
      }
      if ((this.bitField0_ & 0x100000) == 1048576) {
        paramCodedOutputStream.writeBytes(21, getSdkServiceVersionBytes());
      }
      if ((this.bitField0_ & 0x200000) == 2097152) {
        paramCodedOutputStream.writeBytes(22, getSessionIdBytes());
      }
      if ((this.bitField0_ & 0x400000) == 4194304) {
        paramCodedOutputStream.writeBytes(23, getUnionIdBytes());
      }
      if ((this.bitField0_ & 0x800000) == 8388608) {
        paramCodedOutputStream.writeBytes(24, getExtraBytes());
      }
      if ((this.bitField0_ & 0x1000000) == 16777216) {
        paramCodedOutputStream.writeBytes(25, getProtectCidBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements NoticeConfigProtos.StatInfoOrBuilder
    {
      private Object android_ = "";
      private int bitField0_;
      private Object carrier_ = "";
      private Object cid_ = "";
      private Object clientVersion_ = "";
      private long devAppId_;
      private Object extra_ = "";
      private long fuid_;
      private Object imeiMd5_ = "";
      private Object imeiSha1_ = "";
      private Object imeiSha2_ = "";
      private Object lang_ = "";
      private Object localTime_ = "";
      private Object macMd5_ = "";
      private Object network_ = "";
      private Object os_ = "";
      private Object protectCid_ = "";
      private Object region_ = "";
      private Object sdkJarVersion_ = "";
      private Object sdkServiceVersion_ = "";
      private int sdkType_;
      private Object serverTime_ = "";
      private Object sessionId_ = "";
      private Object timezone_ = "";
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
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final NoticeConfigProtos.StatInfo build()
      {
        NoticeConfigProtos.StatInfo localStatInfo = buildPartial();
        if (!localStatInfo.isInitialized()) {
          throw newUninitializedMessageException(localStatInfo);
        }
        return localStatInfo;
      }
      
      public final NoticeConfigProtos.StatInfo buildPartial()
      {
        NoticeConfigProtos.StatInfo localStatInfo = new NoticeConfigProtos.StatInfo(this, null);
        int k = this.bitField0_;
        int j = 0;
        if ((k & 0x1) == 1) {
          j = 1;
        }
        NoticeConfigProtos.StatInfo.access$5702(localStatInfo, this.imeiMd5_);
        int i = j;
        if ((k & 0x2) == 2) {
          i = j | 0x2;
        }
        NoticeConfigProtos.StatInfo.access$5802(localStatInfo, this.imeiSha1_);
        j = i;
        if ((k & 0x4) == 4) {
          j = i | 0x4;
        }
        NoticeConfigProtos.StatInfo.access$5902(localStatInfo, this.imeiSha2_);
        i = j;
        if ((k & 0x8) == 8) {
          i = j | 0x8;
        }
        NoticeConfigProtos.StatInfo.access$6002(localStatInfo, this.macMd5_);
        j = i;
        if ((k & 0x10) == 16) {
          j = i | 0x10;
        }
        NoticeConfigProtos.StatInfo.access$6102(localStatInfo, this.ua_);
        i = j;
        if ((k & 0x20) == 32) {
          i = j | 0x20;
        }
        NoticeConfigProtos.StatInfo.access$6202(localStatInfo, this.network_);
        j = i;
        if ((k & 0x40) == 64) {
          j = i | 0x40;
        }
        NoticeConfigProtos.StatInfo.access$6302(localStatInfo, this.android_);
        i = j;
        if ((k & 0x80) == 128) {
          i = j | 0x80;
        }
        NoticeConfigProtos.StatInfo.access$6402(localStatInfo, this.os_);
        j = i;
        if ((k & 0x100) == 256) {
          j = i | 0x100;
        }
        NoticeConfigProtos.StatInfo.access$6502(localStatInfo, this.region_);
        i = j;
        if ((k & 0x200) == 512) {
          i = j | 0x200;
        }
        NoticeConfigProtos.StatInfo.access$6602(localStatInfo, this.lang_);
        j = i;
        if ((k & 0x400) == 1024) {
          j = i | 0x400;
        }
        NoticeConfigProtos.StatInfo.access$6702(localStatInfo, this.carrier_);
        i = j;
        if ((k & 0x800) == 2048) {
          i = j | 0x800;
        }
        NoticeConfigProtos.StatInfo.access$6802(localStatInfo, this.timezone_);
        j = i;
        if ((k & 0x1000) == 4096) {
          j = i | 0x1000;
        }
        NoticeConfigProtos.StatInfo.access$6902(localStatInfo, this.fuid_);
        i = j;
        if ((k & 0x2000) == 8192) {
          i = j | 0x2000;
        }
        NoticeConfigProtos.StatInfo.access$7002(localStatInfo, this.clientVersion_);
        j = i;
        if ((k & 0x4000) == 16384) {
          j = i | 0x4000;
        }
        NoticeConfigProtos.StatInfo.access$7102(localStatInfo, this.serverTime_);
        i = j;
        if ((k & 0x8000) == 32768) {
          i = j | 0x8000;
        }
        NoticeConfigProtos.StatInfo.access$7202(localStatInfo, this.localTime_);
        j = i;
        if ((k & 0x10000) == 65536) {
          j = i | 0x10000;
        }
        NoticeConfigProtos.StatInfo.access$7302(localStatInfo, this.cid_);
        i = j;
        if ((k & 0x20000) == 131072) {
          i = j | 0x20000;
        }
        NoticeConfigProtos.StatInfo.access$7402(localStatInfo, this.devAppId_);
        j = i;
        if ((k & 0x40000) == 262144) {
          j = i | 0x40000;
        }
        NoticeConfigProtos.StatInfo.access$7502(localStatInfo, this.sdkType_);
        i = j;
        if ((k & 0x80000) == 524288) {
          i = j | 0x80000;
        }
        NoticeConfigProtos.StatInfo.access$7602(localStatInfo, this.sdkJarVersion_);
        j = i;
        if ((0x100000 & k) == 1048576) {
          j = i | 0x100000;
        }
        NoticeConfigProtos.StatInfo.access$7702(localStatInfo, this.sdkServiceVersion_);
        i = j;
        if ((0x200000 & k) == 2097152) {
          i = j | 0x200000;
        }
        NoticeConfigProtos.StatInfo.access$7802(localStatInfo, this.sessionId_);
        j = i;
        if ((0x400000 & k) == 4194304) {
          j = i | 0x400000;
        }
        NoticeConfigProtos.StatInfo.access$7902(localStatInfo, this.unionId_);
        i = j;
        if ((0x800000 & k) == 8388608) {
          i = j | 0x800000;
        }
        NoticeConfigProtos.StatInfo.access$8002(localStatInfo, this.extra_);
        j = i;
        if ((k & 0x1000000) == 16777216) {
          j = i | 0x1000000;
        }
        NoticeConfigProtos.StatInfo.access$8102(localStatInfo, this.protectCid_);
        NoticeConfigProtos.StatInfo.access$8202(localStatInfo, j);
        onBuilt();
        return localStatInfo;
      }
      
      public final Builder clear()
      {
        super.clear();
        this.imeiMd5_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.imeiSha1_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.imeiSha2_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.macMd5_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.ua_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.network_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.android_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.os_ = "";
        this.bitField0_ &= 0xFF7F;
        this.region_ = "";
        this.bitField0_ &= 0xFEFF;
        this.lang_ = "";
        this.bitField0_ &= 0xFDFF;
        this.carrier_ = "";
        this.bitField0_ &= 0xFBFF;
        this.timezone_ = "";
        this.bitField0_ &= 0xF7FF;
        this.fuid_ = 0L;
        this.bitField0_ &= 0xEFFF;
        this.clientVersion_ = "";
        this.bitField0_ &= 0xDFFF;
        this.serverTime_ = "";
        this.bitField0_ &= 0xBFFF;
        this.localTime_ = "";
        this.bitField0_ &= 0xFFFF7FFF;
        this.cid_ = "";
        this.bitField0_ &= 0xFFFEFFFF;
        this.devAppId_ = 0L;
        this.bitField0_ &= 0xFFFDFFFF;
        this.sdkType_ = 0;
        this.bitField0_ &= 0xFFFBFFFF;
        this.sdkJarVersion_ = "";
        this.bitField0_ &= 0xFFF7FFFF;
        this.sdkServiceVersion_ = "";
        this.bitField0_ &= 0xFFEFFFFF;
        this.sessionId_ = "";
        this.bitField0_ &= 0xFFDFFFFF;
        this.unionId_ = "";
        this.bitField0_ &= 0xFFBFFFFF;
        this.extra_ = "";
        this.bitField0_ &= 0xFF7FFFFF;
        this.protectCid_ = "";
        this.bitField0_ &= 0xFEFFFFFF;
        return this;
      }
      
      public final Builder clearAndroid()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.android_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getAndroid();
        onChanged();
        return this;
      }
      
      public final Builder clearCarrier()
      {
        this.bitField0_ &= 0xFBFF;
        this.carrier_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getCarrier();
        onChanged();
        return this;
      }
      
      public final Builder clearCid()
      {
        this.bitField0_ &= 0xFFFEFFFF;
        this.cid_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getCid();
        onChanged();
        return this;
      }
      
      public final Builder clearClientVersion()
      {
        this.bitField0_ &= 0xDFFF;
        this.clientVersion_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getClientVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFFFDFFFF;
        this.devAppId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearExtra()
      {
        this.bitField0_ &= 0xFF7FFFFF;
        this.extra_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getExtra();
        onChanged();
        return this;
      }
      
      public final Builder clearFuid()
      {
        this.bitField0_ &= 0xEFFF;
        this.fuid_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearImeiMd5()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.imeiMd5_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getImeiMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearImeiSha1()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.imeiSha1_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getImeiSha1();
        onChanged();
        return this;
      }
      
      public final Builder clearImeiSha2()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.imeiSha2_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getImeiSha2();
        onChanged();
        return this;
      }
      
      public final Builder clearLang()
      {
        this.bitField0_ &= 0xFDFF;
        this.lang_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getLang();
        onChanged();
        return this;
      }
      
      public final Builder clearLocalTime()
      {
        this.bitField0_ &= 0xFFFF7FFF;
        this.localTime_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getLocalTime();
        onChanged();
        return this;
      }
      
      public final Builder clearMacMd5()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.macMd5_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getMacMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearNetwork()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.network_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getNetwork();
        onChanged();
        return this;
      }
      
      public final Builder clearOs()
      {
        this.bitField0_ &= 0xFF7F;
        this.os_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getOs();
        onChanged();
        return this;
      }
      
      public final Builder clearProtectCid()
      {
        this.bitField0_ &= 0xFEFFFFFF;
        this.protectCid_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getProtectCid();
        onChanged();
        return this;
      }
      
      public final Builder clearRegion()
      {
        this.bitField0_ &= 0xFEFF;
        this.region_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getRegion();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkJarVersion()
      {
        this.bitField0_ &= 0xFFF7FFFF;
        this.sdkJarVersion_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getSdkJarVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkServiceVersion()
      {
        this.bitField0_ &= 0xFFEFFFFF;
        this.sdkServiceVersion_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getSdkServiceVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkType()
      {
        this.bitField0_ &= 0xFFFBFFFF;
        this.sdkType_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearServerTime()
      {
        this.bitField0_ &= 0xBFFF;
        this.serverTime_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getServerTime();
        onChanged();
        return this;
      }
      
      public final Builder clearSessionId()
      {
        this.bitField0_ &= 0xFFDFFFFF;
        this.sessionId_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getSessionId();
        onChanged();
        return this;
      }
      
      public final Builder clearTimezone()
      {
        this.bitField0_ &= 0xF7FF;
        this.timezone_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getTimezone();
        onChanged();
        return this;
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.ua_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getUa();
        onChanged();
        return this;
      }
      
      public final Builder clearUnionId()
      {
        this.bitField0_ &= 0xFFBFFFFF;
        this.unionId_ = NoticeConfigProtos.StatInfo.getDefaultInstance().getUnionId();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getAndroid()
      {
        Object localObject = this.android_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.android_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getAndroidBytes()
      {
        Object localObject = this.android_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.android_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getCarrier()
      {
        Object localObject = this.carrier_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.carrier_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCarrierBytes()
      {
        Object localObject = this.carrier_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.carrier_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getCid()
      {
        Object localObject = this.cid_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.cid_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCidBytes()
      {
        Object localObject = this.cid_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.cid_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getClientVersion()
      {
        Object localObject = this.clientVersion_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.clientVersion_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getClientVersionBytes()
      {
        Object localObject = this.clientVersion_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.clientVersion_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final NoticeConfigProtos.StatInfo getDefaultInstanceForType()
      {
        return NoticeConfigProtos.StatInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor;
      }
      
      public final long getDevAppId()
      {
        return this.devAppId_;
      }
      
      public final String getExtra()
      {
        Object localObject = this.extra_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.extra_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getExtraBytes()
      {
        Object localObject = this.extra_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.extra_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getImeiMd5()
      {
        Object localObject = this.imeiMd5_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imeiMd5_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiMd5Bytes()
      {
        Object localObject = this.imeiMd5_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imeiMd5_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getImeiSha1()
      {
        Object localObject = this.imeiSha1_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imeiSha1_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiSha1Bytes()
      {
        Object localObject = this.imeiSha1_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imeiSha1_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getImeiSha2()
      {
        Object localObject = this.imeiSha2_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imeiSha2_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiSha2Bytes()
      {
        Object localObject = this.imeiSha2_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imeiSha2_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getLang()
      {
        Object localObject = this.lang_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.lang_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getLangBytes()
      {
        Object localObject = this.lang_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.lang_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getLocalTime()
      {
        Object localObject = this.localTime_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.localTime_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getLocalTimeBytes()
      {
        Object localObject = this.localTime_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.localTime_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getMacMd5()
      {
        Object localObject = this.macMd5_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.macMd5_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getMacMd5Bytes()
      {
        Object localObject = this.macMd5_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.macMd5_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getNetwork()
      {
        Object localObject = this.network_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.network_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNetworkBytes()
      {
        Object localObject = this.network_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.network_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getOs()
      {
        Object localObject = this.os_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.os_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getOsBytes()
      {
        Object localObject = this.os_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.os_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getProtectCid()
      {
        Object localObject = this.protectCid_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.protectCid_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getProtectCidBytes()
      {
        Object localObject = this.protectCid_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.protectCid_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getRegion()
      {
        Object localObject = this.region_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.region_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getRegionBytes()
      {
        Object localObject = this.region_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.region_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getSdkJarVersion()
      {
        Object localObject = this.sdkJarVersion_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sdkJarVersion_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSdkJarVersionBytes()
      {
        Object localObject = this.sdkJarVersion_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sdkJarVersion_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getSdkServiceVersion()
      {
        Object localObject = this.sdkServiceVersion_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sdkServiceVersion_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSdkServiceVersionBytes()
      {
        Object localObject = this.sdkServiceVersion_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sdkServiceVersion_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getSdkType()
      {
        return this.sdkType_;
      }
      
      public final String getServerTime()
      {
        Object localObject = this.serverTime_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serverTime_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServerTimeBytes()
      {
        Object localObject = this.serverTime_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serverTime_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getSessionId()
      {
        Object localObject = this.sessionId_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sessionId_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSessionIdBytes()
      {
        Object localObject = this.sessionId_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sessionId_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getTimezone()
      {
        Object localObject = this.timezone_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.timezone_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTimezoneBytes()
      {
        Object localObject = this.timezone_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.timezone_ = localObject;
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
      
      public final boolean hasAndroid()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasCarrier()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasCid()
      {
        return (this.bitField0_ & 0x10000) == 65536;
      }
      
      public final boolean hasClientVersion()
      {
        return (this.bitField0_ & 0x2000) == 8192;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x20000) == 131072;
      }
      
      public final boolean hasExtra()
      {
        return (this.bitField0_ & 0x800000) == 8388608;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x1000) == 4096;
      }
      
      public final boolean hasImeiMd5()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasImeiSha1()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasImeiSha2()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasLang()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasLocalTime()
      {
        return (this.bitField0_ & 0x8000) == 32768;
      }
      
      public final boolean hasMacMd5()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasNetwork()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasOs()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasProtectCid()
      {
        return (this.bitField0_ & 0x1000000) == 16777216;
      }
      
      public final boolean hasRegion()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasSdkJarVersion()
      {
        return (this.bitField0_ & 0x80000) == 524288;
      }
      
      public final boolean hasSdkServiceVersion()
      {
        return (this.bitField0_ & 0x100000) == 1048576;
      }
      
      public final boolean hasSdkType()
      {
        return (this.bitField0_ & 0x40000) == 262144;
      }
      
      public final boolean hasServerTime()
      {
        return (this.bitField0_ & 0x4000) == 16384;
      }
      
      public final boolean hasSessionId()
      {
        return (this.bitField0_ & 0x200000) == 2097152;
      }
      
      public final boolean hasTimezone()
      {
        return (this.bitField0_ & 0x800) == 2048;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasUnionId()
      {
        return (this.bitField0_ & 0x400000) == 4194304;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return NoticeConfigProtos.internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(NoticeConfigProtos.StatInfo.class, Builder.class);
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
        //   2: getstatic 468	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 474 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 366	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 477	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 366	org/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
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
        if ((paramMessage instanceof NoticeConfigProtos.StatInfo)) {
          return mergeFrom((NoticeConfigProtos.StatInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(NoticeConfigProtos.StatInfo paramStatInfo)
      {
        if (paramStatInfo == NoticeConfigProtos.StatInfo.getDefaultInstance()) {
          return this;
        }
        if (paramStatInfo.hasImeiMd5())
        {
          this.bitField0_ |= 0x1;
          this.imeiMd5_ = paramStatInfo.imeiMd5_;
          onChanged();
        }
        if (paramStatInfo.hasImeiSha1())
        {
          this.bitField0_ |= 0x2;
          this.imeiSha1_ = paramStatInfo.imeiSha1_;
          onChanged();
        }
        if (paramStatInfo.hasImeiSha2())
        {
          this.bitField0_ |= 0x4;
          this.imeiSha2_ = paramStatInfo.imeiSha2_;
          onChanged();
        }
        if (paramStatInfo.hasMacMd5())
        {
          this.bitField0_ |= 0x8;
          this.macMd5_ = paramStatInfo.macMd5_;
          onChanged();
        }
        if (paramStatInfo.hasUa())
        {
          this.bitField0_ |= 0x10;
          this.ua_ = paramStatInfo.ua_;
          onChanged();
        }
        if (paramStatInfo.hasNetwork())
        {
          this.bitField0_ |= 0x20;
          this.network_ = paramStatInfo.network_;
          onChanged();
        }
        if (paramStatInfo.hasAndroid())
        {
          this.bitField0_ |= 0x40;
          this.android_ = paramStatInfo.android_;
          onChanged();
        }
        if (paramStatInfo.hasOs())
        {
          this.bitField0_ |= 0x80;
          this.os_ = paramStatInfo.os_;
          onChanged();
        }
        if (paramStatInfo.hasRegion())
        {
          this.bitField0_ |= 0x100;
          this.region_ = paramStatInfo.region_;
          onChanged();
        }
        if (paramStatInfo.hasLang())
        {
          this.bitField0_ |= 0x200;
          this.lang_ = paramStatInfo.lang_;
          onChanged();
        }
        if (paramStatInfo.hasCarrier())
        {
          this.bitField0_ |= 0x400;
          this.carrier_ = paramStatInfo.carrier_;
          onChanged();
        }
        if (paramStatInfo.hasTimezone())
        {
          this.bitField0_ |= 0x800;
          this.timezone_ = paramStatInfo.timezone_;
          onChanged();
        }
        if (paramStatInfo.hasFuid()) {
          setFuid(paramStatInfo.getFuid());
        }
        if (paramStatInfo.hasClientVersion())
        {
          this.bitField0_ |= 0x2000;
          this.clientVersion_ = paramStatInfo.clientVersion_;
          onChanged();
        }
        if (paramStatInfo.hasServerTime())
        {
          this.bitField0_ |= 0x4000;
          this.serverTime_ = paramStatInfo.serverTime_;
          onChanged();
        }
        if (paramStatInfo.hasLocalTime())
        {
          this.bitField0_ |= 0x8000;
          this.localTime_ = paramStatInfo.localTime_;
          onChanged();
        }
        if (paramStatInfo.hasCid())
        {
          this.bitField0_ |= 0x10000;
          this.cid_ = paramStatInfo.cid_;
          onChanged();
        }
        if (paramStatInfo.hasDevAppId()) {
          setDevAppId(paramStatInfo.getDevAppId());
        }
        if (paramStatInfo.hasSdkType()) {
          setSdkType(paramStatInfo.getSdkType());
        }
        if (paramStatInfo.hasSdkJarVersion())
        {
          this.bitField0_ |= 0x80000;
          this.sdkJarVersion_ = paramStatInfo.sdkJarVersion_;
          onChanged();
        }
        if (paramStatInfo.hasSdkServiceVersion())
        {
          this.bitField0_ |= 0x100000;
          this.sdkServiceVersion_ = paramStatInfo.sdkServiceVersion_;
          onChanged();
        }
        if (paramStatInfo.hasSessionId())
        {
          this.bitField0_ |= 0x200000;
          this.sessionId_ = paramStatInfo.sessionId_;
          onChanged();
        }
        if (paramStatInfo.hasUnionId())
        {
          this.bitField0_ |= 0x400000;
          this.unionId_ = paramStatInfo.unionId_;
          onChanged();
        }
        if (paramStatInfo.hasExtra())
        {
          this.bitField0_ |= 0x800000;
          this.extra_ = paramStatInfo.extra_;
          onChanged();
        }
        if (paramStatInfo.hasProtectCid())
        {
          this.bitField0_ |= 0x1000000;
          this.protectCid_ = paramStatInfo.protectCid_;
          onChanged();
        }
        mergeUnknownFields(paramStatInfo.getUnknownFields());
        return this;
      }
      
      public final Builder setAndroid(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.android_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setAndroidBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.android_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCarrier(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.carrier_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCarrierBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.carrier_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCid(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10000;
        this.cid_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCidBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10000;
        this.cid_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setClientVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2000;
        this.clientVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setClientVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2000;
        this.clientVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppId(long paramLong)
      {
        this.bitField0_ |= 0x20000;
        this.devAppId_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setExtra(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800000;
        this.extra_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setExtraBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800000;
        this.extra_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFuid(long paramLong)
      {
        this.bitField0_ |= 0x1000;
        this.fuid_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.imeiMd5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.imeiMd5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiSha1(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.imeiSha1_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiSha1Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.imeiSha1_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiSha2(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.imeiSha2_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiSha2Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.imeiSha2_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setLang(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.lang_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setLangBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.lang_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setLocalTime(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8000;
        this.localTime_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setLocalTimeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8000;
        this.localTime_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setMacMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.macMd5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setMacMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.macMd5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setNetwork(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.network_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNetworkBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.network_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setOs(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.os_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setOsBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.os_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setProtectCid(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1000000;
        this.protectCid_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setProtectCidBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1000000;
        this.protectCid_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setRegion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.region_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setRegionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.region_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkJarVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80000;
        this.sdkJarVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkJarVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80000;
        this.sdkJarVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkServiceVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100000;
        this.sdkServiceVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkServiceVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100000;
        this.sdkServiceVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkType(int paramInt)
      {
        this.bitField0_ |= 0x40000;
        this.sdkType_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setServerTime(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4000;
        this.serverTime_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServerTimeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4000;
        this.serverTime_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSessionId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200000;
        this.sessionId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSessionIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200000;
        this.sessionId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setTimezone(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.timezone_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTimezoneBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.timezone_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUnionId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400000;
        this.unionId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUnionIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400000;
        this.unionId_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface StatInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getAndroid();
    
    public abstract ByteString getAndroidBytes();
    
    public abstract String getCarrier();
    
    public abstract ByteString getCarrierBytes();
    
    public abstract String getCid();
    
    public abstract ByteString getCidBytes();
    
    public abstract String getClientVersion();
    
    public abstract ByteString getClientVersionBytes();
    
    public abstract long getDevAppId();
    
    public abstract String getExtra();
    
    public abstract ByteString getExtraBytes();
    
    public abstract long getFuid();
    
    public abstract String getImeiMd5();
    
    public abstract ByteString getImeiMd5Bytes();
    
    public abstract String getImeiSha1();
    
    public abstract ByteString getImeiSha1Bytes();
    
    public abstract String getImeiSha2();
    
    public abstract ByteString getImeiSha2Bytes();
    
    public abstract String getLang();
    
    public abstract ByteString getLangBytes();
    
    public abstract String getLocalTime();
    
    public abstract ByteString getLocalTimeBytes();
    
    public abstract String getMacMd5();
    
    public abstract ByteString getMacMd5Bytes();
    
    public abstract String getNetwork();
    
    public abstract ByteString getNetworkBytes();
    
    public abstract String getOs();
    
    public abstract ByteString getOsBytes();
    
    public abstract String getProtectCid();
    
    public abstract ByteString getProtectCidBytes();
    
    public abstract String getRegion();
    
    public abstract ByteString getRegionBytes();
    
    public abstract String getSdkJarVersion();
    
    public abstract ByteString getSdkJarVersionBytes();
    
    public abstract String getSdkServiceVersion();
    
    public abstract ByteString getSdkServiceVersionBytes();
    
    public abstract int getSdkType();
    
    public abstract String getServerTime();
    
    public abstract ByteString getServerTimeBytes();
    
    public abstract String getSessionId();
    
    public abstract ByteString getSessionIdBytes();
    
    public abstract String getTimezone();
    
    public abstract ByteString getTimezoneBytes();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract String getUnionId();
    
    public abstract ByteString getUnionIdBytes();
    
    public abstract boolean hasAndroid();
    
    public abstract boolean hasCarrier();
    
    public abstract boolean hasCid();
    
    public abstract boolean hasClientVersion();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasExtra();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasImeiMd5();
    
    public abstract boolean hasImeiSha1();
    
    public abstract boolean hasImeiSha2();
    
    public abstract boolean hasLang();
    
    public abstract boolean hasLocalTime();
    
    public abstract boolean hasMacMd5();
    
    public abstract boolean hasNetwork();
    
    public abstract boolean hasOs();
    
    public abstract boolean hasProtectCid();
    
    public abstract boolean hasRegion();
    
    public abstract boolean hasSdkJarVersion();
    
    public abstract boolean hasSdkServiceVersion();
    
    public abstract boolean hasSdkType();
    
    public abstract boolean hasServerTime();
    
    public abstract boolean hasSessionId();
    
    public abstract boolean hasTimezone();
    
    public abstract boolean hasUa();
    
    public abstract boolean hasUnionId();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\xiaomi\gamecenter\milink\msg\NoticeConfigProtos.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */