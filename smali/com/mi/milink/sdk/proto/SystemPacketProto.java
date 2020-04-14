package com.mi.milink.sdk.proto;

import com.google.protobuf.AbstractMessageLite.Builder;
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
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SystemPacketProto
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MiLinkConfig_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MiLinkConfig_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsAccInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsAccInfo_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdChannelNewPubKeyRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(22);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdChannelNewPubKeyRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdChannelNewPubKeyRsp_descriptor, new String[] { "PubInfo" });
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_MnsIpInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_MnsIpInfo_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_fieldAccessorTable;
  
  static
  {
    SystemPacketProto.1 local1 = new SystemPacketProto.1();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\030mns_service_define.proto\022\027com.mi.milink.sdk.proto\",\n\016MnsCmdLoginReq\022\f\n\004flag\030\001 \001(\r\022\f\n\004sUID\030\002 \001(\t\"<\n\016MnsCmdLoginRsp\022\020\n\bGTKEY_B2\030\001 \001(\f\022\n\n\002B2\030\002 \001(\f\022\f\n\004sUID\030\003 \001(\t\"H\n\016SdkConnMgrInfo\022\024\n\fip_principle\030\001 \001(\005\022\020\n\bapn_type\030\002 \001(\005\022\016\n\006is_bgd\030\003 \001(\b\"¥\001\n\017MnsCmdHeartBeat\022\r\n\005ptime\030\001 \001(\r\0229\n\bmgr_info\030\002 \001(\0132'.com.mi.milink.sdk.proto.SdkConnMgrInfo\022\f\n\004sUID\030\003 \001(\t\022\022\n\nis_fake_hb\030\004 \001(\b\022\021\n\ttimeStamp\030\005 \001(\004\022\023\n\013devicetoken\030\006 \001(", "\f\"\001\n\022MnsCmdHeartBeatRsp\022\021\n\ttimeStamp\030\001 \001(\004\0225\n\006config\030\002 \001(\0132%.com.mi.milink.sdk.proto.MiLinkConfig\022\023\n\013engineratio\030\003 \001(\002\022\022\n\njsonconfig\030\004 \001(\t\"D\n\fMiLinkConfig\022\031\n\021heartBeatInterval\030\001 \001(\004\022\031\n\021b2TokenExpireTime\030\002 \001(\r\"\036\n\016MnsCmdLoginOff\022\f\n\004sUID\030\001 \001(\t\"`\n\025MnsCmdPushRegisterReq\022\023\n\013devicetoken\030\001 \001(\f\022\r\n\005onoff\030\002 \001(\b\022\f\n\004sUID\030\003 \001(\t\022\025\n\rpassportlogin\030\004 \001(\b\"%\n\025MnsCmdPushRegisterRsp\022\f\n\004sUID\030\001 \001(\t\"L\n\nMnsAccInfo\022\r\n\005AccI", "d\030\001 \002(\004\022\r\n\005AccIp\030\002 \002(\r\022\017\n\007AccPort\030\003 \002(\r\022\017\n\007AccFlag\030\004 \001(\005\"'\n\022MiLinkGetConfigReq\022\021\n\ttimeStamp\030\001 \001(\004\"r\n\022MiLinkGetConfigRsp\022\021\n\ttimeStamp\030\001 \001(\004\0225\n\006config\030\002 \001(\0132%.com.mi.milink.sdk.proto.MiLinkConfig\022\022\n\njsonConfig\030\003 \001(\t\"]\n\022MnsCmdHandShakeReq\022\f\n\004type\030\001 \002(\005\0229\n\bmgr_info\030\002 \001(\0132'.com.mi.milink.sdk.proto.SdkConnMgrInfo\"\001\n\022MnsCmdHandShakeRsp\022\f\n\004type\030\001 \002(\005\0224\n\bredirect\030\002 \003(\0132\".com.mi.milink.sdk.proto.MnsIpInfo\022", "\022\n\nuprinciple\030\003 \001(\005\022\022\n\nclientinfo\030\004 \001(\t\022\024\n\tcross_opr\030\005 \001(\005:\0010\"P\n\tMnsIpInfo\022\n\n\002ip\030\001 \001(\r\022\f\n\004port\030\002 \001(\r\022\013\n\003apn\030\003 \001(\005\022\016\n\006remark\030\004 \001(\t\022\f\n\004ipv6\030\005 \001(\t\"l\n\022MnsCmdFastloginReq\022\f\n\004sUID\030\001 \001(\t\022\023\n\013devicetoken\030\002 \001(\f\022\r\n\005onoff\030\003 \001(\b\022\r\n\005extra\030\004 \001(\f\022\025\n\rpassportlogin\030\005 \001(\b\"@\n\022MnsCmdFastloginRsp\022\020\n\bGTKEY_B2\030\001 \001(\f\022\n\n\002B2\030\002 \001(\f\022\f\n\004sUID\030\003 \001(\t\"n\n\022MnsCmdAnonymousReq\022\022\n\nprivacyKey\030\001 \002(\t\022\022\n\ndeviceinfo\030\002 \002(\t\022\f\n\004sUID\030\003 \001(\t\022\023\n\013d", "evicetoken\030\004 \001(\f\022\r\n\005onoff\030\005 \001(\b\"M\n\022MnsCmdAnonymousRsp\022\013\n\003wid\030\001 \002(\004\022\n\n\002B2\030\002 \002(\f\022\020\n\bGTKEY_B2\030\003 \002(\f\022\f\n\004sUID\030\004 \001(\t\":\n\020MnsCmdChannelReq\022\022\n\nprivacyKey\030\001 \002(\t\022\022\n\ndeviceinfo\030\002 \002(\t\"=\n\020MnsCmdChannelRsp\022\013\n\003wid\030\001 \002(\004\022\n\n\002B2\030\002 \002(\f\022\020\n\bGTKEY_B2\030\003 \002(\f\"D\n\rPublicKeyInfo\022\r\n\005keyId\030\001 \001(\r\022\021\n\tsignature\030\002 \001(\t\022\021\n\tpublicKey\030\003 \001(\f\"T\n\031MnsCmdChannelNewPubKeyRsp\0227\n\007pubInfo\030\001 \003(\0132&.com.mi.milink.sdk.proto.PublicKeyInfoB,\n\027com.mi.", "milink.sdk.protoB\021SystemPacketProto" }, new Descriptors.FileDescriptor[0], local1);
    internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_descriptor, new String[] { "Flag", "SUID" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
    internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_descriptor, new String[] { "GTKEYB2", "B2", "SUID" });
    internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
    internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_descriptor, new String[] { "IpPrinciple", "ApnType", "IsBgd" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
    internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_descriptor, new String[] { "Ptime", "MgrInfo", "SUID", "IsFakeHb", "TimeStamp", "Devicetoken" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(4);
    internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_descriptor, new String[] { "TimeStamp", "Config", "Engineratio", "Jsonconfig" });
    internal_static_com_mi_milink_sdk_proto_MiLinkConfig_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(5);
    internal_static_com_mi_milink_sdk_proto_MiLinkConfig_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MiLinkConfig_descriptor, new String[] { "HeartBeatInterval", "B2TokenExpireTime" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(6);
    internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_descriptor, new String[] { "SUID" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(7);
    internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_descriptor, new String[] { "Devicetoken", "Onoff", "SUID", "Passportlogin" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(8);
    internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_descriptor, new String[] { "SUID" });
    internal_static_com_mi_milink_sdk_proto_MnsAccInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(9);
    internal_static_com_mi_milink_sdk_proto_MnsAccInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsAccInfo_descriptor, new String[] { "AccId", "AccIp", "AccPort", "AccFlag" });
    internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(10);
    internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_descriptor, new String[] { "TimeStamp" });
    internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(11);
    internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_descriptor, new String[] { "TimeStamp", "Config", "JsonConfig" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(12);
    internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_descriptor, new String[] { "Type", "MgrInfo" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(13);
    internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_descriptor, new String[] { "Type", "Redirect", "Uprinciple", "Clientinfo", "CrossOpr" });
    internal_static_com_mi_milink_sdk_proto_MnsIpInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(14);
    internal_static_com_mi_milink_sdk_proto_MnsIpInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsIpInfo_descriptor, new String[] { "Ip", "Port", "Apn", "Remark", "Ipv6" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(15);
    internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_descriptor, new String[] { "SUID", "Devicetoken", "Onoff", "Extra", "Passportlogin" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(16);
    internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_descriptor, new String[] { "GTKEYB2", "B2", "SUID" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(17);
    internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_descriptor, new String[] { "PrivacyKey", "Deviceinfo", "SUID", "Devicetoken", "Onoff" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(18);
    internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_descriptor, new String[] { "Wid", "B2", "GTKEYB2", "SUID" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(19);
    internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_descriptor, new String[] { "PrivacyKey", "Deviceinfo" });
    internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(20);
    internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_descriptor, new String[] { "Wid", "B2", "GTKEYB2" });
    internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(21);
    internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_descriptor, new String[] { "KeyId", "Signature", "PublicKey" });
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class MiLinkConfig
    extends GeneratedMessage
    implements SystemPacketProto.MiLinkConfigOrBuilder
  {
    public static final int B2TOKENEXPIRETIME_FIELD_NUMBER = 2;
    public static final int HEARTBEATINTERVAL_FIELD_NUMBER = 1;
    public static Parser<MiLinkConfig> PARSER = new SystemPacketProto.MiLinkConfig.1();
    private static final MiLinkConfig defaultInstance;
    private static final long serialVersionUID = 0L;
    private int b2TokenExpireTime_;
    private int bitField0_;
    private long heartBeatInterval_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MiLinkConfig localMiLinkConfig = new MiLinkConfig(true);
      defaultInstance = localMiLinkConfig;
      localMiLinkConfig.initFields();
    }
    
    /* Error */
    private MiLinkConfig(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 58	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 60	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 62	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 51	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:initFields	()V
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
      //   79: invokevirtual 78	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 80	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 80	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 84	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   105: putfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:heartBeatInterval_	J
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
      //   125: putfield 98	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 101	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_0
      //   135: aload_0
      //   136: getfield 80	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:bitField0_	I
      //   139: iconst_2
      //   140: ior
      //   141: putfield 80	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:bitField0_	I
      //   144: aload_0
      //   145: aload_1
      //   146: invokevirtual 104	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   149: putfield 106	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:b2TokenExpireTime_	I
      //   152: goto -127 -> 25
      //   155: astore_1
      //   156: new 55	com/google/protobuf/InvalidProtocolBufferException
      //   159: dup
      //   160: aload_1
      //   161: invokevirtual 110	java/io/IOException:getMessage	()Ljava/lang/String;
      //   164: invokespecial 113	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   167: aload_0
      //   168: invokevirtual 90	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   171: athrow
      //   172: aload_0
      //   173: aload 5
      //   175: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   178: putfield 98	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   181: aload_0
      //   182: invokevirtual 101	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:makeExtensionsImmutable	()V
      //   185: return
      //   186: goto -114 -> 72
      //   189: iconst_1
      //   190: istore_3
      //   191: goto -166 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	194	0	this	MiLinkConfig
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
    
    private MiLinkConfig(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MiLinkConfig(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MiLinkConfig getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkConfig_descriptor;
    }
    
    private void initFields()
    {
      this.heartBeatInterval_ = 0L;
      this.b2TokenExpireTime_ = 0;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$6100();
    }
    
    public static Builder newBuilder(MiLinkConfig paramMiLinkConfig)
    {
      return newBuilder().mergeFrom(paramMiLinkConfig);
    }
    
    public static MiLinkConfig parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiLinkConfig)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MiLinkConfig parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiLinkConfig)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiLinkConfig parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MiLinkConfig)PARSER.parseFrom(paramByteString);
    }
    
    public static MiLinkConfig parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiLinkConfig)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MiLinkConfig parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MiLinkConfig)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MiLinkConfig parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiLinkConfig)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MiLinkConfig parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiLinkConfig)PARSER.parseFrom(paramInputStream);
    }
    
    public static MiLinkConfig parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiLinkConfig)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiLinkConfig parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MiLinkConfig)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MiLinkConfig parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiLinkConfig)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getB2TokenExpireTime()
    {
      return this.b2TokenExpireTime_;
    }
    
    public final MiLinkConfig getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getHeartBeatInterval()
    {
      return this.heartBeatInterval_;
    }
    
    public final Parser<MiLinkConfig> getParserForType()
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
        i = CodedOutputStream.computeUInt64Size(1, this.heartBeatInterval_) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeUInt32Size(2, this.b2TokenExpireTime_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasB2TokenExpireTime()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasHeartBeatInterval()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(MiLinkConfig.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(1, this.heartBeatInterval_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.b2TokenExpireTime_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MiLinkConfigOrBuilder
    {
      private int b2TokenExpireTime_;
      private int bitField0_;
      private long heartBeatInterval_;
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkConfig_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MiLinkConfig build()
      {
        SystemPacketProto.MiLinkConfig localMiLinkConfig = buildPartial();
        if (!localMiLinkConfig.isInitialized()) {
          throw newUninitializedMessageException(localMiLinkConfig);
        }
        return localMiLinkConfig;
      }
      
      public final SystemPacketProto.MiLinkConfig buildPartial()
      {
        int i = 1;
        SystemPacketProto.MiLinkConfig localMiLinkConfig = new SystemPacketProto.MiLinkConfig(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MiLinkConfig.access$6502(localMiLinkConfig, this.heartBeatInterval_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          SystemPacketProto.MiLinkConfig.access$6602(localMiLinkConfig, this.b2TokenExpireTime_);
          SystemPacketProto.MiLinkConfig.access$6702(localMiLinkConfig, j);
          onBuilt();
          return localMiLinkConfig;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.heartBeatInterval_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.b2TokenExpireTime_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearB2TokenExpireTime()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.b2TokenExpireTime_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearHeartBeatInterval()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.heartBeatInterval_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getB2TokenExpireTime()
      {
        return this.b2TokenExpireTime_;
      }
      
      public final SystemPacketProto.MiLinkConfig getDefaultInstanceForType()
      {
        return SystemPacketProto.MiLinkConfig.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkConfig_descriptor;
      }
      
      public final long getHeartBeatInterval()
      {
        return this.heartBeatInterval_;
      }
      
      public final boolean hasB2TokenExpireTime()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasHeartBeatInterval()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkConfig_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MiLinkConfig.class, Builder.class);
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
        //   2: getstatic 155	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 161 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 107	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 164	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 107	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MiLinkConfig)) {
          return mergeFrom((SystemPacketProto.MiLinkConfig)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MiLinkConfig paramMiLinkConfig)
      {
        if (paramMiLinkConfig == SystemPacketProto.MiLinkConfig.getDefaultInstance()) {
          return this;
        }
        if (paramMiLinkConfig.hasHeartBeatInterval()) {
          setHeartBeatInterval(paramMiLinkConfig.getHeartBeatInterval());
        }
        if (paramMiLinkConfig.hasB2TokenExpireTime()) {
          setB2TokenExpireTime(paramMiLinkConfig.getB2TokenExpireTime());
        }
        mergeUnknownFields(paramMiLinkConfig.getUnknownFields());
        return this;
      }
      
      public final Builder setB2TokenExpireTime(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.b2TokenExpireTime_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setHeartBeatInterval(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.heartBeatInterval_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MiLinkConfigOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getB2TokenExpireTime();
    
    public abstract long getHeartBeatInterval();
    
    public abstract boolean hasB2TokenExpireTime();
    
    public abstract boolean hasHeartBeatInterval();
  }
  
  public static final class MiLinkGetConfigReq
    extends GeneratedMessage
    implements SystemPacketProto.MiLinkGetConfigReqOrBuilder
  {
    public static Parser<MiLinkGetConfigReq> PARSER = new SystemPacketProto.MiLinkGetConfigReq.1();
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private static final MiLinkGetConfigReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private long timeStamp_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MiLinkGetConfigReq localMiLinkGetConfigReq = new MiLinkGetConfigReq(true);
      defaultInstance = localMiLinkGetConfigReq;
      localMiLinkGetConfigReq.initFields();
    }
    
    /* Error */
    private MiLinkGetConfigReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 57	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 59	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 48	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:initFields	()V
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
      //   71: invokevirtual 75	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   74: ifne -49 -> 25
      //   77: iconst_1
      //   78: istore_3
      //   79: goto -54 -> 25
      //   82: aload_0
      //   83: aload_0
      //   84: getfield 77	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:bitField0_	I
      //   87: iconst_1
      //   88: ior
      //   89: putfield 77	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:bitField0_	I
      //   92: aload_0
      //   93: aload_1
      //   94: invokevirtual 81	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   97: putfield 83	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:timeStamp_	J
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
      //   117: putfield 95	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   120: aload_0
      //   121: invokevirtual 98	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:makeExtensionsImmutable	()V
      //   124: aload_1
      //   125: athrow
      //   126: aload_0
      //   127: aload 5
      //   129: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   132: putfield 95	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   135: aload_0
      //   136: invokevirtual 98	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:makeExtensionsImmutable	()V
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
      //   0	165	0	this	MiLinkGetConfigReq
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
    
    private MiLinkGetConfigReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MiLinkGetConfigReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MiLinkGetConfigReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_descriptor;
    }
    
    private void initFields()
    {
      this.timeStamp_ = 0L;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$11300();
    }
    
    public static Builder newBuilder(MiLinkGetConfigReq paramMiLinkGetConfigReq)
    {
      return newBuilder().mergeFrom(paramMiLinkGetConfigReq);
    }
    
    public static MiLinkGetConfigReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiLinkGetConfigReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MiLinkGetConfigReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiLinkGetConfigReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiLinkGetConfigReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MiLinkGetConfigReq)PARSER.parseFrom(paramByteString);
    }
    
    public static MiLinkGetConfigReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiLinkGetConfigReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MiLinkGetConfigReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MiLinkGetConfigReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MiLinkGetConfigReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiLinkGetConfigReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MiLinkGetConfigReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiLinkGetConfigReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static MiLinkGetConfigReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiLinkGetConfigReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiLinkGetConfigReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MiLinkGetConfigReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MiLinkGetConfigReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiLinkGetConfigReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MiLinkGetConfigReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<MiLinkGetConfigReq> getParserForType()
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
        i = CodedOutputStream.computeUInt64Size(1, this.timeStamp_) + 0;
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final long getTimeStamp()
    {
      return this.timeStamp_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasTimeStamp()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MiLinkGetConfigReq.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(1, this.timeStamp_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MiLinkGetConfigReqOrBuilder
    {
      private int bitField0_;
      private long timeStamp_;
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MiLinkGetConfigReq build()
      {
        SystemPacketProto.MiLinkGetConfigReq localMiLinkGetConfigReq = buildPartial();
        if (!localMiLinkGetConfigReq.isInitialized()) {
          throw newUninitializedMessageException(localMiLinkGetConfigReq);
        }
        return localMiLinkGetConfigReq;
      }
      
      public final SystemPacketProto.MiLinkGetConfigReq buildPartial()
      {
        int i = 1;
        SystemPacketProto.MiLinkGetConfigReq localMiLinkGetConfigReq = new SystemPacketProto.MiLinkGetConfigReq(this, null);
        if ((this.bitField0_ & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MiLinkGetConfigReq.access$11702(localMiLinkGetConfigReq, this.timeStamp_);
          SystemPacketProto.MiLinkGetConfigReq.access$11802(localMiLinkGetConfigReq, i);
          onBuilt();
          return localMiLinkGetConfigReq;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.timeStamp_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        return this;
      }
      
      public final Builder clearTimeStamp()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.timeStamp_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MiLinkGetConfigReq getDefaultInstanceForType()
      {
        return SystemPacketProto.MiLinkGetConfigReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_descriptor;
      }
      
      public final long getTimeStamp()
      {
        return this.timeStamp_;
      }
      
      public final boolean hasTimeStamp()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MiLinkGetConfigReq.class, Builder.class);
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
        //   2: getstatic 145	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 151 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 100	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 154	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 100	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigReq$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MiLinkGetConfigReq)) {
          return mergeFrom((SystemPacketProto.MiLinkGetConfigReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MiLinkGetConfigReq paramMiLinkGetConfigReq)
      {
        if (paramMiLinkGetConfigReq == SystemPacketProto.MiLinkGetConfigReq.getDefaultInstance()) {
          return this;
        }
        if (paramMiLinkGetConfigReq.hasTimeStamp()) {
          setTimeStamp(paramMiLinkGetConfigReq.getTimeStamp());
        }
        mergeUnknownFields(paramMiLinkGetConfigReq.getUnknownFields());
        return this;
      }
      
      public final Builder setTimeStamp(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.timeStamp_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MiLinkGetConfigReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract long getTimeStamp();
    
    public abstract boolean hasTimeStamp();
  }
  
  public static final class MiLinkGetConfigRsp
    extends GeneratedMessage
    implements SystemPacketProto.MiLinkGetConfigRspOrBuilder
  {
    public static final int CONFIG_FIELD_NUMBER = 2;
    public static final int JSONCONFIG_FIELD_NUMBER = 3;
    public static Parser<MiLinkGetConfigRsp> PARSER = new SystemPacketProto.MiLinkGetConfigRsp.1();
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private static final MiLinkGetConfigRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private SystemPacketProto.MiLinkConfig config_;
    private Object jsonConfig_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private long timeStamp_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MiLinkGetConfigRsp localMiLinkGetConfigRsp = new MiLinkGetConfigRsp(true);
      defaultInstance = localMiLinkGetConfigRsp;
      localMiLinkGetConfigRsp.initFields();
    }
    
    /* Error */
    private MiLinkGetConfigRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 63	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 65	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 67	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 56	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:initFields	()V
      //   18: invokestatic 73	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 6
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +229 -> 255
      //   29: aload_1
      //   30: invokevirtual 79	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+238->275, 0:+241->278, 8:+61->98, 18:+105->142, 26:+193->230
      //   80: aload_0
      //   81: aload_1
      //   82: aload 6
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 83	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 89	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   113: putfield 91	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:timeStamp_	J
      //   116: goto -91 -> 25
      //   119: astore_1
      //   120: aload_1
      //   121: aload_0
      //   122: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   125: athrow
      //   126: astore_1
      //   127: aload_0
      //   128: aload 6
      //   130: invokevirtual 101	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   133: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 106	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:bitField0_	I
      //   146: iconst_2
      //   147: iand
      //   148: iconst_2
      //   149: if_icmpne +120 -> 269
      //   152: aload_0
      //   153: getfield 108	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:config_	Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   156: invokevirtual 114	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:toBuilder	()Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;
      //   159: astore 5
      //   161: aload_0
      //   162: aload_1
      //   163: getstatic 115	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:PARSER	Lcom/google/protobuf/Parser;
      //   166: aload_2
      //   167: invokevirtual 119	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   170: checkcast 110	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig
      //   173: putfield 108	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:config_	Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   176: aload 5
      //   178: ifnull +22 -> 200
      //   181: aload 5
      //   183: aload_0
      //   184: getfield 108	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:config_	Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   187: invokevirtual 125	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;
      //   190: pop
      //   191: aload_0
      //   192: aload 5
      //   194: invokevirtual 129	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   197: putfield 108	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:config_	Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   200: aload_0
      //   201: aload_0
      //   202: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:bitField0_	I
      //   205: iconst_2
      //   206: ior
      //   207: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:bitField0_	I
      //   210: goto -185 -> 25
      //   213: astore_1
      //   214: new 60	com/google/protobuf/InvalidProtocolBufferException
      //   217: dup
      //   218: aload_1
      //   219: invokevirtual 133	java/io/IOException:getMessage	()Ljava/lang/String;
      //   222: invokespecial 136	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   225: aload_0
      //   226: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   229: athrow
      //   230: aload_1
      //   231: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   234: astore 5
      //   236: aload_0
      //   237: aload_0
      //   238: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:bitField0_	I
      //   241: iconst_4
      //   242: ior
      //   243: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:bitField0_	I
      //   246: aload_0
      //   247: aload 5
      //   249: putfield 142	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:jsonConfig_	Ljava/lang/Object;
      //   252: goto -227 -> 25
      //   255: aload_0
      //   256: aload 6
      //   258: invokevirtual 101	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   261: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   264: aload_0
      //   265: invokevirtual 106	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:makeExtensionsImmutable	()V
      //   268: return
      //   269: aconst_null
      //   270: astore 5
      //   272: goto -111 -> 161
      //   275: goto -195 -> 80
      //   278: iconst_1
      //   279: istore_3
      //   280: goto -255 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	283	0	this	MiLinkGetConfigRsp
      //   0	283	1	paramCodedInputStream	CodedInputStream
      //   0	283	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	256	3	i	int
      //   33	53	4	j	int
      //   159	112	5	localObject	Object
      //   21	236	6	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	119	com/google/protobuf/InvalidProtocolBufferException
      //   80	93	119	com/google/protobuf/InvalidProtocolBufferException
      //   98	116	119	com/google/protobuf/InvalidProtocolBufferException
      //   142	161	119	com/google/protobuf/InvalidProtocolBufferException
      //   161	176	119	com/google/protobuf/InvalidProtocolBufferException
      //   181	200	119	com/google/protobuf/InvalidProtocolBufferException
      //   200	210	119	com/google/protobuf/InvalidProtocolBufferException
      //   230	252	119	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	126	finally
      //   80	93	126	finally
      //   98	116	126	finally
      //   120	126	126	finally
      //   142	161	126	finally
      //   161	176	126	finally
      //   181	200	126	finally
      //   200	210	126	finally
      //   214	230	126	finally
      //   230	252	126	finally
      //   29	35	213	java/io/IOException
      //   80	93	213	java/io/IOException
      //   98	116	213	java/io/IOException
      //   142	161	213	java/io/IOException
      //   161	176	213	java/io/IOException
      //   181	200	213	java/io/IOException
      //   200	210	213	java/io/IOException
      //   230	252	213	java/io/IOException
    }
    
    private MiLinkGetConfigRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MiLinkGetConfigRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MiLinkGetConfigRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_descriptor;
    }
    
    private void initFields()
    {
      this.timeStamp_ = 0L;
      this.config_ = SystemPacketProto.MiLinkConfig.getDefaultInstance();
      this.jsonConfig_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$12200();
    }
    
    public static Builder newBuilder(MiLinkGetConfigRsp paramMiLinkGetConfigRsp)
    {
      return newBuilder().mergeFrom(paramMiLinkGetConfigRsp);
    }
    
    public static MiLinkGetConfigRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiLinkGetConfigRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MiLinkGetConfigRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiLinkGetConfigRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiLinkGetConfigRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MiLinkGetConfigRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MiLinkGetConfigRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiLinkGetConfigRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MiLinkGetConfigRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MiLinkGetConfigRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MiLinkGetConfigRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiLinkGetConfigRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MiLinkGetConfigRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MiLinkGetConfigRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MiLinkGetConfigRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MiLinkGetConfigRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MiLinkGetConfigRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MiLinkGetConfigRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MiLinkGetConfigRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MiLinkGetConfigRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final SystemPacketProto.MiLinkConfig getConfig()
    {
      return this.config_;
    }
    
    public final SystemPacketProto.MiLinkConfigOrBuilder getConfigOrBuilder()
    {
      return this.config_;
    }
    
    public final MiLinkGetConfigRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getJsonConfig()
    {
      Object localObject = this.jsonConfig_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.jsonConfig_ = str;
      }
      return str;
    }
    
    public final ByteString getJsonConfigBytes()
    {
      Object localObject = this.jsonConfig_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.jsonConfig_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<MiLinkGetConfigRsp> getParserForType()
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
        j = CodedOutputStream.computeUInt64Size(1, this.timeStamp_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeMessageSize(2, this.config_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getJsonConfigBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final long getTimeStamp()
    {
      return this.timeStamp_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasConfig()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasJsonConfig()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasTimeStamp()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MiLinkGetConfigRsp.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(1, this.timeStamp_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeMessage(2, this.config_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getJsonConfigBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MiLinkGetConfigRspOrBuilder
    {
      private int bitField0_;
      private SingleFieldBuilder<SystemPacketProto.MiLinkConfig, SystemPacketProto.MiLinkConfig.Builder, SystemPacketProto.MiLinkConfigOrBuilder> configBuilder_;
      private SystemPacketProto.MiLinkConfig config_ = SystemPacketProto.MiLinkConfig.getDefaultInstance();
      private Object jsonConfig_ = "";
      private long timeStamp_;
      
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
      
      private SingleFieldBuilder<SystemPacketProto.MiLinkConfig, SystemPacketProto.MiLinkConfig.Builder, SystemPacketProto.MiLinkConfigOrBuilder> getConfigFieldBuilder()
      {
        if (this.configBuilder_ == null)
        {
          this.configBuilder_ = new SingleFieldBuilder(getConfig(), getParentForChildren(), isClean());
          this.config_ = null;
        }
        return this.configBuilder_;
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (SystemPacketProto.MiLinkGetConfigRsp.alwaysUseFieldBuilders) {
          getConfigFieldBuilder();
        }
      }
      
      public final SystemPacketProto.MiLinkGetConfigRsp build()
      {
        SystemPacketProto.MiLinkGetConfigRsp localMiLinkGetConfigRsp = buildPartial();
        if (!localMiLinkGetConfigRsp.isInitialized()) {
          throw newUninitializedMessageException(localMiLinkGetConfigRsp);
        }
        return localMiLinkGetConfigRsp;
      }
      
      public final SystemPacketProto.MiLinkGetConfigRsp buildPartial()
      {
        int i = 1;
        SystemPacketProto.MiLinkGetConfigRsp localMiLinkGetConfigRsp = new SystemPacketProto.MiLinkGetConfigRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MiLinkGetConfigRsp.access$12602(localMiLinkGetConfigRsp, this.timeStamp_);
          if ((k & 0x2) == 2) {
            i |= 0x2;
          }
          for (;;)
          {
            if (this.configBuilder_ == null) {
              SystemPacketProto.MiLinkGetConfigRsp.access$12702(localMiLinkGetConfigRsp, this.config_);
            }
            for (;;)
            {
              int j = i;
              if ((k & 0x4) == 4) {
                j = i | 0x4;
              }
              SystemPacketProto.MiLinkGetConfigRsp.access$12802(localMiLinkGetConfigRsp, this.jsonConfig_);
              SystemPacketProto.MiLinkGetConfigRsp.access$12902(localMiLinkGetConfigRsp, j);
              onBuilt();
              return localMiLinkGetConfigRsp;
              SystemPacketProto.MiLinkGetConfigRsp.access$12702(localMiLinkGetConfigRsp, (SystemPacketProto.MiLinkConfig)this.configBuilder_.build());
            }
          }
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.timeStamp_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        if (this.configBuilder_ == null) {
          this.config_ = SystemPacketProto.MiLinkConfig.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          this.jsonConfig_ = "";
          this.bitField0_ &= 0xFFFFFFFB;
          return this;
          this.configBuilder_.clear();
        }
      }
      
      public final Builder clearConfig()
      {
        if (this.configBuilder_ == null)
        {
          this.config_ = SystemPacketProto.MiLinkConfig.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          return this;
          this.configBuilder_.clear();
        }
      }
      
      public final Builder clearJsonConfig()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.jsonConfig_ = SystemPacketProto.MiLinkGetConfigRsp.getDefaultInstance().getJsonConfig();
        onChanged();
        return this;
      }
      
      public final Builder clearTimeStamp()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.timeStamp_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MiLinkConfig getConfig()
      {
        if (this.configBuilder_ == null) {
          return this.config_;
        }
        return (SystemPacketProto.MiLinkConfig)this.configBuilder_.getMessage();
      }
      
      public final SystemPacketProto.MiLinkConfig.Builder getConfigBuilder()
      {
        this.bitField0_ |= 0x2;
        onChanged();
        return (SystemPacketProto.MiLinkConfig.Builder)getConfigFieldBuilder().getBuilder();
      }
      
      public final SystemPacketProto.MiLinkConfigOrBuilder getConfigOrBuilder()
      {
        if (this.configBuilder_ != null) {
          return (SystemPacketProto.MiLinkConfigOrBuilder)this.configBuilder_.getMessageOrBuilder();
        }
        return this.config_;
      }
      
      public final SystemPacketProto.MiLinkGetConfigRsp getDefaultInstanceForType()
      {
        return SystemPacketProto.MiLinkGetConfigRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_descriptor;
      }
      
      public final String getJsonConfig()
      {
        Object localObject = this.jsonConfig_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.jsonConfig_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getJsonConfigBytes()
      {
        Object localObject = this.jsonConfig_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.jsonConfig_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getTimeStamp()
      {
        return this.timeStamp_;
      }
      
      public final boolean hasConfig()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasJsonConfig()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasTimeStamp()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MiLinkGetConfigRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MiLinkGetConfigRsp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return true;
      }
      
      public final Builder mergeConfig(SystemPacketProto.MiLinkConfig paramMiLinkConfig)
      {
        if (this.configBuilder_ == null) {
          if (((this.bitField0_ & 0x2) == 2) && (this.config_ != SystemPacketProto.MiLinkConfig.getDefaultInstance()))
          {
            this.config_ = SystemPacketProto.MiLinkConfig.newBuilder(this.config_).mergeFrom(paramMiLinkConfig).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.config_ = paramMiLinkConfig;
          break;
          this.configBuilder_.mergeFrom(paramMiLinkConfig);
        }
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 254	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 260 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 163	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 263	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 163	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MiLinkGetConfigRsp)) {
          return mergeFrom((SystemPacketProto.MiLinkGetConfigRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MiLinkGetConfigRsp paramMiLinkGetConfigRsp)
      {
        if (paramMiLinkGetConfigRsp == SystemPacketProto.MiLinkGetConfigRsp.getDefaultInstance()) {
          return this;
        }
        if (paramMiLinkGetConfigRsp.hasTimeStamp()) {
          setTimeStamp(paramMiLinkGetConfigRsp.getTimeStamp());
        }
        if (paramMiLinkGetConfigRsp.hasConfig()) {
          mergeConfig(paramMiLinkGetConfigRsp.getConfig());
        }
        if (paramMiLinkGetConfigRsp.hasJsonConfig())
        {
          this.bitField0_ |= 0x4;
          this.jsonConfig_ = paramMiLinkGetConfigRsp.jsonConfig_;
          onChanged();
        }
        mergeUnknownFields(paramMiLinkGetConfigRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setConfig(SystemPacketProto.MiLinkConfig.Builder paramBuilder)
      {
        if (this.configBuilder_ == null)
        {
          this.config_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.configBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setConfig(SystemPacketProto.MiLinkConfig paramMiLinkConfig)
      {
        if (this.configBuilder_ == null)
        {
          if (paramMiLinkConfig == null) {
            throw new NullPointerException();
          }
          this.config_ = paramMiLinkConfig;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.configBuilder_.setMessage(paramMiLinkConfig);
        }
      }
      
      public final Builder setJsonConfig(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.jsonConfig_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setJsonConfigBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.jsonConfig_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setTimeStamp(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.timeStamp_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MiLinkGetConfigRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract SystemPacketProto.MiLinkConfig getConfig();
    
    public abstract SystemPacketProto.MiLinkConfigOrBuilder getConfigOrBuilder();
    
    public abstract String getJsonConfig();
    
    public abstract ByteString getJsonConfigBytes();
    
    public abstract long getTimeStamp();
    
    public abstract boolean hasConfig();
    
    public abstract boolean hasJsonConfig();
    
    public abstract boolean hasTimeStamp();
  }
  
  public static final class MnsAccInfo
    extends GeneratedMessage
    implements SystemPacketProto.MnsAccInfoOrBuilder
  {
    public static final int ACCFLAG_FIELD_NUMBER = 4;
    public static final int ACCID_FIELD_NUMBER = 1;
    public static final int ACCIP_FIELD_NUMBER = 2;
    public static final int ACCPORT_FIELD_NUMBER = 3;
    public static Parser<MnsAccInfo> PARSER = new SystemPacketProto.MnsAccInfo.1();
    private static final MnsAccInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int accFlag_;
    private long accId_;
    private int accIp_;
    private int accPort_;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsAccInfo localMnsAccInfo = new MnsAccInfo(true);
      defaultInstance = localMnsAccInfo;
      localMnsAccInfo.initFields();
    }
    
    /* Error */
    private MnsAccInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 64	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 66	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 68	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 57	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:initFields	()V
      //   18: invokestatic 74	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +205 -> 231
      //   29: aload_1
      //   30: invokevirtual 80	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+208->245, 0:+211->248, 8:+69->106, 16:+113->150, 24:+151->188, 32:+172->209
      //   88: aload_0
      //   89: aload_1
      //   90: aload 5
      //   92: aload_2
      //   93: iload 4
      //   95: invokevirtual 84	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   98: ifne -73 -> 25
      //   101: iconst_1
      //   102: istore_3
      //   103: goto -78 -> 25
      //   106: aload_0
      //   107: aload_0
      //   108: getfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:bitField0_	I
      //   111: iconst_1
      //   112: ior
      //   113: putfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:bitField0_	I
      //   116: aload_0
      //   117: aload_1
      //   118: invokevirtual 90	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   121: putfield 92	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:accId_	J
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
      //   141: putfield 104	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   144: aload_0
      //   145: invokevirtual 107	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:makeExtensionsImmutable	()V
      //   148: aload_1
      //   149: athrow
      //   150: aload_0
      //   151: aload_0
      //   152: getfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:bitField0_	I
      //   155: iconst_2
      //   156: ior
      //   157: putfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:bitField0_	I
      //   160: aload_0
      //   161: aload_1
      //   162: invokevirtual 110	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   165: putfield 112	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:accIp_	I
      //   168: goto -143 -> 25
      //   171: astore_1
      //   172: new 61	com/google/protobuf/InvalidProtocolBufferException
      //   175: dup
      //   176: aload_1
      //   177: invokevirtual 116	java/io/IOException:getMessage	()Ljava/lang/String;
      //   180: invokespecial 119	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   183: aload_0
      //   184: invokevirtual 96	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   187: athrow
      //   188: aload_0
      //   189: aload_0
      //   190: getfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:bitField0_	I
      //   193: iconst_4
      //   194: ior
      //   195: putfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:bitField0_	I
      //   198: aload_0
      //   199: aload_1
      //   200: invokevirtual 110	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   203: putfield 121	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:accPort_	I
      //   206: goto -181 -> 25
      //   209: aload_0
      //   210: aload_0
      //   211: getfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:bitField0_	I
      //   214: bipush 8
      //   216: ior
      //   217: putfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:bitField0_	I
      //   220: aload_0
      //   221: aload_1
      //   222: invokevirtual 124	com/google/protobuf/CodedInputStream:readInt32	()I
      //   225: putfield 126	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:accFlag_	I
      //   228: goto -203 -> 25
      //   231: aload_0
      //   232: aload 5
      //   234: invokevirtual 102	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   237: putfield 104	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   240: aload_0
      //   241: invokevirtual 107	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:makeExtensionsImmutable	()V
      //   244: return
      //   245: goto -157 -> 88
      //   248: iconst_1
      //   249: istore_3
      //   250: goto -225 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	253	0	this	MnsAccInfo
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
    
    private MnsAccInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsAccInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsAccInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsAccInfo_descriptor;
    }
    
    private void initFields()
    {
      this.accId_ = 0L;
      this.accIp_ = 0;
      this.accPort_ = 0;
      this.accFlag_ = 0;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$10100();
    }
    
    public static Builder newBuilder(MnsAccInfo paramMnsAccInfo)
    {
      return newBuilder().mergeFrom(paramMnsAccInfo);
    }
    
    public static MnsAccInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsAccInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsAccInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsAccInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsAccInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsAccInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsAccInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsAccInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsAccInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsAccInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsAccInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsAccInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsAccInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsAccInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsAccInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsAccInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsAccInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsAccInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsAccInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsAccInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getAccFlag()
    {
      return this.accFlag_;
    }
    
    public final long getAccId()
    {
      return this.accId_;
    }
    
    public final int getAccIp()
    {
      return this.accIp_;
    }
    
    public final int getAccPort()
    {
      return this.accPort_;
    }
    
    public final MnsAccInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<MnsAccInfo> getParserForType()
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
        j = CodedOutputStream.computeUInt64Size(1, this.accId_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt32Size(2, this.accIp_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt32Size(3, this.accPort_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeInt32Size(4, this.accFlag_);
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAccFlag()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasAccId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasAccIp()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasAccPort()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsAccInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsAccInfo.class, Builder.class);
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
      if (!hasAccId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasAccIp())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasAccPort())
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
        paramCodedOutputStream.writeUInt64(1, this.accId_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.accIp_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt32(3, this.accPort_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeInt32(4, this.accFlag_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsAccInfoOrBuilder
    {
      private int accFlag_;
      private long accId_;
      private int accIp_;
      private int accPort_;
      private int bitField0_;
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsAccInfo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsAccInfo build()
      {
        SystemPacketProto.MnsAccInfo localMnsAccInfo = buildPartial();
        if (!localMnsAccInfo.isInitialized()) {
          throw newUninitializedMessageException(localMnsAccInfo);
        }
        return localMnsAccInfo;
      }
      
      public final SystemPacketProto.MnsAccInfo buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsAccInfo localMnsAccInfo = new SystemPacketProto.MnsAccInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsAccInfo.access$10502(localMnsAccInfo, this.accId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.MnsAccInfo.access$10602(localMnsAccInfo, this.accIp_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.MnsAccInfo.access$10702(localMnsAccInfo, this.accPort_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          SystemPacketProto.MnsAccInfo.access$10802(localMnsAccInfo, this.accFlag_);
          SystemPacketProto.MnsAccInfo.access$10902(localMnsAccInfo, i);
          onBuilt();
          return localMnsAccInfo;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.accId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.accIp_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.accPort_ = 0;
        this.bitField0_ &= 0xFFFFFFFB;
        this.accFlag_ = 0;
        this.bitField0_ &= 0xFFFFFFF7;
        return this;
      }
      
      public final Builder clearAccFlag()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.accFlag_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearAccId()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.accId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearAccIp()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.accIp_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearAccPort()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.accPort_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getAccFlag()
      {
        return this.accFlag_;
      }
      
      public final long getAccId()
      {
        return this.accId_;
      }
      
      public final int getAccIp()
      {
        return this.accIp_;
      }
      
      public final int getAccPort()
      {
        return this.accPort_;
      }
      
      public final SystemPacketProto.MnsAccInfo getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsAccInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsAccInfo_descriptor;
      }
      
      public final boolean hasAccFlag()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasAccId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasAccIp()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasAccPort()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsAccInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsAccInfo.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasAccId()) {}
        while ((!hasAccIp()) || (!hasAccPort())) {
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
        //   2: getstatic 179	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 185 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 121	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 188	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 121	com/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsAccInfo)) {
          return mergeFrom((SystemPacketProto.MnsAccInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsAccInfo paramMnsAccInfo)
      {
        if (paramMnsAccInfo == SystemPacketProto.MnsAccInfo.getDefaultInstance()) {
          return this;
        }
        if (paramMnsAccInfo.hasAccId()) {
          setAccId(paramMnsAccInfo.getAccId());
        }
        if (paramMnsAccInfo.hasAccIp()) {
          setAccIp(paramMnsAccInfo.getAccIp());
        }
        if (paramMnsAccInfo.hasAccPort()) {
          setAccPort(paramMnsAccInfo.getAccPort());
        }
        if (paramMnsAccInfo.hasAccFlag()) {
          setAccFlag(paramMnsAccInfo.getAccFlag());
        }
        mergeUnknownFields(paramMnsAccInfo.getUnknownFields());
        return this;
      }
      
      public final Builder setAccFlag(int paramInt)
      {
        this.bitField0_ |= 0x8;
        this.accFlag_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setAccId(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.accId_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setAccIp(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.accIp_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setAccPort(int paramInt)
      {
        this.bitField0_ |= 0x4;
        this.accPort_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsAccInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getAccFlag();
    
    public abstract long getAccId();
    
    public abstract int getAccIp();
    
    public abstract int getAccPort();
    
    public abstract boolean hasAccFlag();
    
    public abstract boolean hasAccId();
    
    public abstract boolean hasAccIp();
    
    public abstract boolean hasAccPort();
  }
  
  public static final class MnsCmdAnonymousReq
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdAnonymousReqOrBuilder
  {
    public static final int DEVICEINFO_FIELD_NUMBER = 2;
    public static final int DEVICETOKEN_FIELD_NUMBER = 4;
    public static final int ONOFF_FIELD_NUMBER = 5;
    public static Parser<MnsCmdAnonymousReq> PARSER = new SystemPacketProto.MnsCmdAnonymousReq.1();
    public static final int PRIVACYKEY_FIELD_NUMBER = 1;
    public static final int SUID_FIELD_NUMBER = 3;
    private static final MnsCmdAnonymousReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object deviceinfo_;
    private ByteString devicetoken_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private boolean onoff_;
    private Object privacyKey_;
    private Object sUID_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdAnonymousReq localMnsCmdAnonymousReq = new MnsCmdAnonymousReq(true);
      defaultInstance = localMnsCmdAnonymousReq;
      localMnsCmdAnonymousReq.initFields();
    }
    
    /* Error */
    private MnsCmdAnonymousReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 70	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 72	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 74	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 63	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:initFields	()V
      //   18: invokestatic 80	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +247 -> 273
      //   29: aload_1
      //   30: invokevirtual 86	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+250->287, 0:+253->290, 10:+77->114, 18:+125->162, 26:+167->204, 34:+192->229, 40:+214->251
      //   96: aload_0
      //   97: aload_1
      //   98: aload 5
      //   100: aload_2
      //   101: iload 4
      //   103: invokevirtual 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   106: ifne -81 -> 25
      //   109: iconst_1
      //   110: istore_3
      //   111: goto -86 -> 25
      //   114: aload_1
      //   115: invokevirtual 94	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   118: astore 6
      //   120: aload_0
      //   121: aload_0
      //   122: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   125: iconst_1
      //   126: ior
      //   127: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   130: aload_0
      //   131: aload 6
      //   133: putfield 98	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:privacyKey_	Ljava/lang/Object;
      //   136: goto -111 -> 25
      //   139: astore_1
      //   140: aload_1
      //   141: aload_0
      //   142: invokevirtual 102	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   145: athrow
      //   146: astore_1
      //   147: aload_0
      //   148: aload 5
      //   150: invokevirtual 108	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   153: putfield 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   156: aload_0
      //   157: invokevirtual 113	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:makeExtensionsImmutable	()V
      //   160: aload_1
      //   161: athrow
      //   162: aload_1
      //   163: invokevirtual 94	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   166: astore 6
      //   168: aload_0
      //   169: aload_0
      //   170: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   173: iconst_2
      //   174: ior
      //   175: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   178: aload_0
      //   179: aload 6
      //   181: putfield 115	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:deviceinfo_	Ljava/lang/Object;
      //   184: goto -159 -> 25
      //   187: astore_1
      //   188: new 67	com/google/protobuf/InvalidProtocolBufferException
      //   191: dup
      //   192: aload_1
      //   193: invokevirtual 119	java/io/IOException:getMessage	()Ljava/lang/String;
      //   196: invokespecial 122	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   199: aload_0
      //   200: invokevirtual 102	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   203: athrow
      //   204: aload_1
      //   205: invokevirtual 94	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   208: astore 6
      //   210: aload_0
      //   211: aload_0
      //   212: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   215: iconst_4
      //   216: ior
      //   217: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   220: aload_0
      //   221: aload 6
      //   223: putfield 124	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:sUID_	Ljava/lang/Object;
      //   226: goto -201 -> 25
      //   229: aload_0
      //   230: aload_0
      //   231: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   234: bipush 8
      //   236: ior
      //   237: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   240: aload_0
      //   241: aload_1
      //   242: invokevirtual 94	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   245: putfield 126	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:devicetoken_	Lcom/google/protobuf/ByteString;
      //   248: goto -223 -> 25
      //   251: aload_0
      //   252: aload_0
      //   253: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   256: bipush 16
      //   258: ior
      //   259: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:bitField0_	I
      //   262: aload_0
      //   263: aload_1
      //   264: invokevirtual 130	com/google/protobuf/CodedInputStream:readBool	()Z
      //   267: putfield 132	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:onoff_	Z
      //   270: goto -245 -> 25
      //   273: aload_0
      //   274: aload 5
      //   276: invokevirtual 108	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   279: putfield 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   282: aload_0
      //   283: invokevirtual 113	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:makeExtensionsImmutable	()V
      //   286: return
      //   287: goto -191 -> 96
      //   290: iconst_1
      //   291: istore_3
      //   292: goto -267 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	295	0	this	MnsCmdAnonymousReq
      //   0	295	1	paramCodedInputStream	CodedInputStream
      //   0	295	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	268	3	i	int
      //   33	69	4	j	int
      //   21	254	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   118	104	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	139	com/google/protobuf/InvalidProtocolBufferException
      //   96	109	139	com/google/protobuf/InvalidProtocolBufferException
      //   114	136	139	com/google/protobuf/InvalidProtocolBufferException
      //   162	184	139	com/google/protobuf/InvalidProtocolBufferException
      //   204	226	139	com/google/protobuf/InvalidProtocolBufferException
      //   229	248	139	com/google/protobuf/InvalidProtocolBufferException
      //   251	270	139	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	146	finally
      //   96	109	146	finally
      //   114	136	146	finally
      //   140	146	146	finally
      //   162	184	146	finally
      //   188	204	146	finally
      //   204	226	146	finally
      //   229	248	146	finally
      //   251	270	146	finally
      //   29	35	187	java/io/IOException
      //   96	109	187	java/io/IOException
      //   114	136	187	java/io/IOException
      //   162	184	187	java/io/IOException
      //   204	226	187	java/io/IOException
      //   229	248	187	java/io/IOException
      //   251	270	187	java/io/IOException
    }
    
    private MnsCmdAnonymousReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdAnonymousReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdAnonymousReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_descriptor;
    }
    
    private void initFields()
    {
      this.privacyKey_ = "";
      this.deviceinfo_ = "";
      this.sUID_ = "";
      this.devicetoken_ = ByteString.EMPTY;
      this.onoff_ = false;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$19400();
    }
    
    public static Builder newBuilder(MnsCmdAnonymousReq paramMnsCmdAnonymousReq)
    {
      return newBuilder().mergeFrom(paramMnsCmdAnonymousReq);
    }
    
    public static MnsCmdAnonymousReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdAnonymousReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdAnonymousReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdAnonymousReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdAnonymousReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdAnonymousReq)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdAnonymousReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdAnonymousReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdAnonymousReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdAnonymousReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdAnonymousReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdAnonymousReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdAnonymousReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdAnonymousReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdAnonymousReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdAnonymousReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdAnonymousReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdAnonymousReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdAnonymousReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdAnonymousReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdAnonymousReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getDeviceinfo()
    {
      Object localObject = this.deviceinfo_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.deviceinfo_ = str;
      }
      return str;
    }
    
    public final ByteString getDeviceinfoBytes()
    {
      Object localObject = this.deviceinfo_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.deviceinfo_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final ByteString getDevicetoken()
    {
      return this.devicetoken_;
    }
    
    public final boolean getOnoff()
    {
      return this.onoff_;
    }
    
    public final Parser<MnsCmdAnonymousReq> getParserForType()
    {
      return PARSER;
    }
    
    public final String getPrivacyKey()
    {
      Object localObject = this.privacyKey_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.privacyKey_ = str;
      }
      return str;
    }
    
    public final ByteString getPrivacyKeyBytes()
    {
      Object localObject = this.privacyKey_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.privacyKey_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
        j = CodedOutputStream.computeBytesSize(1, getPrivacyKeyBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getDeviceinfoBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getSUIDBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, this.devicetoken_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBoolSize(5, this.onoff_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasDeviceinfo()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasDevicetoken()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasOnoff()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasPrivacyKey()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdAnonymousReq.class, Builder.class);
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
      if (!hasPrivacyKey())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasDeviceinfo())
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
        paramCodedOutputStream.writeBytes(1, getPrivacyKeyBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getDeviceinfoBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getSUIDBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, this.devicetoken_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBool(5, this.onoff_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdAnonymousReqOrBuilder
    {
      private int bitField0_;
      private Object deviceinfo_ = "";
      private ByteString devicetoken_ = ByteString.EMPTY;
      private boolean onoff_;
      private Object privacyKey_ = "";
      private Object sUID_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdAnonymousReq build()
      {
        SystemPacketProto.MnsCmdAnonymousReq localMnsCmdAnonymousReq = buildPartial();
        if (!localMnsCmdAnonymousReq.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdAnonymousReq);
        }
        return localMnsCmdAnonymousReq;
      }
      
      public final SystemPacketProto.MnsCmdAnonymousReq buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsCmdAnonymousReq localMnsCmdAnonymousReq = new SystemPacketProto.MnsCmdAnonymousReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdAnonymousReq.access$19802(localMnsCmdAnonymousReq, this.privacyKey_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.MnsCmdAnonymousReq.access$19902(localMnsCmdAnonymousReq, this.deviceinfo_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.MnsCmdAnonymousReq.access$20002(localMnsCmdAnonymousReq, this.sUID_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          SystemPacketProto.MnsCmdAnonymousReq.access$20102(localMnsCmdAnonymousReq, this.devicetoken_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          SystemPacketProto.MnsCmdAnonymousReq.access$20202(localMnsCmdAnonymousReq, this.onoff_);
          SystemPacketProto.MnsCmdAnonymousReq.access$20302(localMnsCmdAnonymousReq, j);
          onBuilt();
          return localMnsCmdAnonymousReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.privacyKey_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.deviceinfo_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.sUID_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.devicetoken_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFF7;
        this.onoff_ = false;
        this.bitField0_ &= 0xFFFFFFEF;
        return this;
      }
      
      public final Builder clearDeviceinfo()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.deviceinfo_ = SystemPacketProto.MnsCmdAnonymousReq.getDefaultInstance().getDeviceinfo();
        onChanged();
        return this;
      }
      
      public final Builder clearDevicetoken()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.devicetoken_ = SystemPacketProto.MnsCmdAnonymousReq.getDefaultInstance().getDevicetoken();
        onChanged();
        return this;
      }
      
      public final Builder clearOnoff()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.onoff_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearPrivacyKey()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.privacyKey_ = SystemPacketProto.MnsCmdAnonymousReq.getDefaultInstance().getPrivacyKey();
        onChanged();
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.sUID_ = SystemPacketProto.MnsCmdAnonymousReq.getDefaultInstance().getSUID();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MnsCmdAnonymousReq getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdAnonymousReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_descriptor;
      }
      
      public final String getDeviceinfo()
      {
        Object localObject = this.deviceinfo_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.deviceinfo_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getDeviceinfoBytes()
      {
        Object localObject = this.deviceinfo_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.deviceinfo_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final ByteString getDevicetoken()
      {
        return this.devicetoken_;
      }
      
      public final boolean getOnoff()
      {
        return this.onoff_;
      }
      
      public final String getPrivacyKey()
      {
        Object localObject = this.privacyKey_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.privacyKey_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getPrivacyKeyBytes()
      {
        Object localObject = this.privacyKey_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.privacyKey_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasDeviceinfo()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasDevicetoken()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasOnoff()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasPrivacyKey()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdAnonymousReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasPrivacyKey()) {}
        while (!hasDeviceinfo()) {
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
        //   2: getstatic 220	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 226 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 156	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 229	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 156	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdAnonymousReq)) {
          return mergeFrom((SystemPacketProto.MnsCmdAnonymousReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdAnonymousReq paramMnsCmdAnonymousReq)
      {
        if (paramMnsCmdAnonymousReq == SystemPacketProto.MnsCmdAnonymousReq.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdAnonymousReq.hasPrivacyKey())
        {
          this.bitField0_ |= 0x1;
          this.privacyKey_ = paramMnsCmdAnonymousReq.privacyKey_;
          onChanged();
        }
        if (paramMnsCmdAnonymousReq.hasDeviceinfo())
        {
          this.bitField0_ |= 0x2;
          this.deviceinfo_ = paramMnsCmdAnonymousReq.deviceinfo_;
          onChanged();
        }
        if (paramMnsCmdAnonymousReq.hasSUID())
        {
          this.bitField0_ |= 0x4;
          this.sUID_ = paramMnsCmdAnonymousReq.sUID_;
          onChanged();
        }
        if (paramMnsCmdAnonymousReq.hasDevicetoken()) {
          setDevicetoken(paramMnsCmdAnonymousReq.getDevicetoken());
        }
        if (paramMnsCmdAnonymousReq.hasOnoff()) {
          setOnoff(paramMnsCmdAnonymousReq.getOnoff());
        }
        mergeUnknownFields(paramMnsCmdAnonymousReq.getUnknownFields());
        return this;
      }
      
      public final Builder setDeviceinfo(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.deviceinfo_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDeviceinfoBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.deviceinfo_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDevicetoken(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.devicetoken_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setOnoff(boolean paramBoolean)
      {
        this.bitField0_ |= 0x10;
        this.onoff_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setPrivacyKey(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.privacyKey_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setPrivacyKeyBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.privacyKey_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdAnonymousReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getDeviceinfo();
    
    public abstract ByteString getDeviceinfoBytes();
    
    public abstract ByteString getDevicetoken();
    
    public abstract boolean getOnoff();
    
    public abstract String getPrivacyKey();
    
    public abstract ByteString getPrivacyKeyBytes();
    
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract boolean hasDeviceinfo();
    
    public abstract boolean hasDevicetoken();
    
    public abstract boolean hasOnoff();
    
    public abstract boolean hasPrivacyKey();
    
    public abstract boolean hasSUID();
  }
  
  public static final class MnsCmdAnonymousRsp
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdAnonymousRspOrBuilder
  {
    public static final int B2_FIELD_NUMBER = 2;
    public static final int GTKEY_B2_FIELD_NUMBER = 3;
    public static Parser<MnsCmdAnonymousRsp> PARSER = new SystemPacketProto.MnsCmdAnonymousRsp.1();
    public static final int SUID_FIELD_NUMBER = 4;
    public static final int WID_FIELD_NUMBER = 1;
    private static final MnsCmdAnonymousRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private ByteString b2_;
    private int bitField0_;
    private ByteString gTKEYB2_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sUID_;
    private final UnknownFieldSet unknownFields;
    private long wid_;
    
    static
    {
      MnsCmdAnonymousRsp localMnsCmdAnonymousRsp = new MnsCmdAnonymousRsp(true);
      defaultInstance = localMnsCmdAnonymousRsp;
      localMnsCmdAnonymousRsp.initFields();
    }
    
    /* Error */
    private MnsCmdAnonymousRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 66	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 68	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 70	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 59	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:initFields	()V
      //   18: invokestatic 76	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +209 -> 235
      //   29: aload_1
      //   30: invokevirtual 82	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+212->249, 0:+215->252, 8:+69->106, 18:+113->150, 26:+151->188, 34:+172->209
      //   88: aload_0
      //   89: aload_1
      //   90: aload 5
      //   92: aload_2
      //   93: iload 4
      //   95: invokevirtual 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   98: ifne -73 -> 25
      //   101: iconst_1
      //   102: istore_3
      //   103: goto -78 -> 25
      //   106: aload_0
      //   107: aload_0
      //   108: getfield 88	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:bitField0_	I
      //   111: iconst_1
      //   112: ior
      //   113: putfield 88	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:bitField0_	I
      //   116: aload_0
      //   117: aload_1
      //   118: invokevirtual 92	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   121: putfield 94	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:wid_	J
      //   124: goto -99 -> 25
      //   127: astore_1
      //   128: aload_1
      //   129: aload_0
      //   130: invokevirtual 98	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   133: athrow
      //   134: astore_1
      //   135: aload_0
      //   136: aload 5
      //   138: invokevirtual 104	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   141: putfield 106	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   144: aload_0
      //   145: invokevirtual 109	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:makeExtensionsImmutable	()V
      //   148: aload_1
      //   149: athrow
      //   150: aload_0
      //   151: aload_0
      //   152: getfield 88	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:bitField0_	I
      //   155: iconst_2
      //   156: ior
      //   157: putfield 88	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:bitField0_	I
      //   160: aload_0
      //   161: aload_1
      //   162: invokevirtual 113	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   165: putfield 115	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:b2_	Lcom/google/protobuf/ByteString;
      //   168: goto -143 -> 25
      //   171: astore_1
      //   172: new 63	com/google/protobuf/InvalidProtocolBufferException
      //   175: dup
      //   176: aload_1
      //   177: invokevirtual 119	java/io/IOException:getMessage	()Ljava/lang/String;
      //   180: invokespecial 122	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   183: aload_0
      //   184: invokevirtual 98	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   187: athrow
      //   188: aload_0
      //   189: aload_0
      //   190: getfield 88	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:bitField0_	I
      //   193: iconst_4
      //   194: ior
      //   195: putfield 88	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:bitField0_	I
      //   198: aload_0
      //   199: aload_1
      //   200: invokevirtual 113	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   203: putfield 124	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:gTKEYB2_	Lcom/google/protobuf/ByteString;
      //   206: goto -181 -> 25
      //   209: aload_1
      //   210: invokevirtual 113	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   213: astore 6
      //   215: aload_0
      //   216: aload_0
      //   217: getfield 88	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:bitField0_	I
      //   220: bipush 8
      //   222: ior
      //   223: putfield 88	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:bitField0_	I
      //   226: aload_0
      //   227: aload 6
      //   229: putfield 126	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:sUID_	Ljava/lang/Object;
      //   232: goto -207 -> 25
      //   235: aload_0
      //   236: aload 5
      //   238: invokevirtual 104	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   241: putfield 106	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   244: aload_0
      //   245: invokevirtual 109	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:makeExtensionsImmutable	()V
      //   248: return
      //   249: goto -161 -> 88
      //   252: iconst_1
      //   253: istore_3
      //   254: goto -229 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	257	0	this	MnsCmdAnonymousRsp
      //   0	257	1	paramCodedInputStream	CodedInputStream
      //   0	257	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	230	3	i	int
      //   33	61	4	j	int
      //   21	216	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   213	15	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	127	com/google/protobuf/InvalidProtocolBufferException
      //   88	101	127	com/google/protobuf/InvalidProtocolBufferException
      //   106	124	127	com/google/protobuf/InvalidProtocolBufferException
      //   150	168	127	com/google/protobuf/InvalidProtocolBufferException
      //   188	206	127	com/google/protobuf/InvalidProtocolBufferException
      //   209	232	127	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	134	finally
      //   88	101	134	finally
      //   106	124	134	finally
      //   128	134	134	finally
      //   150	168	134	finally
      //   172	188	134	finally
      //   188	206	134	finally
      //   209	232	134	finally
      //   29	35	171	java/io/IOException
      //   88	101	171	java/io/IOException
      //   106	124	171	java/io/IOException
      //   150	168	171	java/io/IOException
      //   188	206	171	java/io/IOException
      //   209	232	171	java/io/IOException
    }
    
    private MnsCmdAnonymousRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdAnonymousRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdAnonymousRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_descriptor;
    }
    
    private void initFields()
    {
      this.wid_ = 0L;
      this.b2_ = ByteString.EMPTY;
      this.gTKEYB2_ = ByteString.EMPTY;
      this.sUID_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$20700();
    }
    
    public static Builder newBuilder(MnsCmdAnonymousRsp paramMnsCmdAnonymousRsp)
    {
      return newBuilder().mergeFrom(paramMnsCmdAnonymousRsp);
    }
    
    public static MnsCmdAnonymousRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdAnonymousRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdAnonymousRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdAnonymousRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdAnonymousRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdAnonymousRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdAnonymousRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdAnonymousRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdAnonymousRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdAnonymousRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdAnonymousRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final ByteString getB2()
    {
      return this.b2_;
    }
    
    public final MnsCmdAnonymousRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final ByteString getGTKEYB2()
    {
      return this.gTKEYB2_;
    }
    
    public final Parser<MnsCmdAnonymousRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
        j = CodedOutputStream.computeUInt64Size(1, this.wid_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, this.b2_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, this.gTKEYB2_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getSUIDBytes());
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
    
    public final boolean hasB2()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasGTKEYB2()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasWid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdAnonymousRsp.class, Builder.class);
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
      if (!hasWid())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasB2())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasGTKEYB2())
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
        paramCodedOutputStream.writeUInt64(1, this.wid_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, this.b2_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, this.gTKEYB2_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getSUIDBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdAnonymousRspOrBuilder
    {
      private ByteString b2_ = ByteString.EMPTY;
      private int bitField0_;
      private ByteString gTKEYB2_ = ByteString.EMPTY;
      private Object sUID_ = "";
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdAnonymousRsp build()
      {
        SystemPacketProto.MnsCmdAnonymousRsp localMnsCmdAnonymousRsp = buildPartial();
        if (!localMnsCmdAnonymousRsp.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdAnonymousRsp);
        }
        return localMnsCmdAnonymousRsp;
      }
      
      public final SystemPacketProto.MnsCmdAnonymousRsp buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsCmdAnonymousRsp localMnsCmdAnonymousRsp = new SystemPacketProto.MnsCmdAnonymousRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdAnonymousRsp.access$21102(localMnsCmdAnonymousRsp, this.wid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.MnsCmdAnonymousRsp.access$21202(localMnsCmdAnonymousRsp, this.b2_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.MnsCmdAnonymousRsp.access$21302(localMnsCmdAnonymousRsp, this.gTKEYB2_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          SystemPacketProto.MnsCmdAnonymousRsp.access$21402(localMnsCmdAnonymousRsp, this.sUID_);
          SystemPacketProto.MnsCmdAnonymousRsp.access$21502(localMnsCmdAnonymousRsp, i);
          onBuilt();
          return localMnsCmdAnonymousRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.wid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.b2_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFD;
        this.gTKEYB2_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFB;
        this.sUID_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        return this;
      }
      
      public final Builder clearB2()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.b2_ = SystemPacketProto.MnsCmdAnonymousRsp.getDefaultInstance().getB2();
        onChanged();
        return this;
      }
      
      public final Builder clearGTKEYB2()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.gTKEYB2_ = SystemPacketProto.MnsCmdAnonymousRsp.getDefaultInstance().getGTKEYB2();
        onChanged();
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.sUID_ = SystemPacketProto.MnsCmdAnonymousRsp.getDefaultInstance().getSUID();
        onChanged();
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
      
      public final ByteString getB2()
      {
        return this.b2_;
      }
      
      public final SystemPacketProto.MnsCmdAnonymousRsp getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdAnonymousRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_descriptor;
      }
      
      public final ByteString getGTKEYB2()
      {
        return this.gTKEYB2_;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getWid()
      {
        return this.wid_;
      }
      
      public final boolean hasB2()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasGTKEYB2()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasWid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdAnonymousRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdAnonymousRsp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasWid()) {}
        while ((!hasB2()) || (!hasGTKEYB2())) {
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
        //   2: getstatic 210	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 216 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 146	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 219	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 146	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdAnonymousRsp)) {
          return mergeFrom((SystemPacketProto.MnsCmdAnonymousRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdAnonymousRsp paramMnsCmdAnonymousRsp)
      {
        if (paramMnsCmdAnonymousRsp == SystemPacketProto.MnsCmdAnonymousRsp.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdAnonymousRsp.hasWid()) {
          setWid(paramMnsCmdAnonymousRsp.getWid());
        }
        if (paramMnsCmdAnonymousRsp.hasB2()) {
          setB2(paramMnsCmdAnonymousRsp.getB2());
        }
        if (paramMnsCmdAnonymousRsp.hasGTKEYB2()) {
          setGTKEYB2(paramMnsCmdAnonymousRsp.getGTKEYB2());
        }
        if (paramMnsCmdAnonymousRsp.hasSUID())
        {
          this.bitField0_ |= 0x8;
          this.sUID_ = paramMnsCmdAnonymousRsp.sUID_;
          onChanged();
        }
        mergeUnknownFields(paramMnsCmdAnonymousRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setB2(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.b2_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setGTKEYB2(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.gTKEYB2_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.sUID_ = paramByteString;
        onChanged();
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
  
  public static abstract interface MnsCmdAnonymousRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getB2();
    
    public abstract ByteString getGTKEYB2();
    
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract long getWid();
    
    public abstract boolean hasB2();
    
    public abstract boolean hasGTKEYB2();
    
    public abstract boolean hasSUID();
    
    public abstract boolean hasWid();
  }
  
  public static final class MnsCmdChannelNewPubKeyRsp
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdChannelNewPubKeyRspOrBuilder
  {
    public static Parser<MnsCmdChannelNewPubKeyRsp> PARSER = new SystemPacketProto.MnsCmdChannelNewPubKeyRsp.1();
    public static final int PUBINFO_FIELD_NUMBER = 1;
    private static final MnsCmdChannelNewPubKeyRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private List<SystemPacketProto.PublicKeyInfo> pubInfo_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdChannelNewPubKeyRsp localMnsCmdChannelNewPubKeyRsp = new MnsCmdChannelNewPubKeyRsp(true);
      defaultInstance = localMnsCmdChannelNewPubKeyRsp;
      localMnsCmdChannelNewPubKeyRsp.initFields();
    }
    
    /* Error */
    private MnsCmdChannelNewPubKeyRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 56	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 58	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 60	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 49	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:initFields	()V
      //   18: invokestatic 66	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 9
      //   23: iconst_0
      //   24: istore 6
      //   26: iconst_0
      //   27: istore_3
      //   28: iload 6
      //   30: ifne +191 -> 221
      //   33: iload_3
      //   34: istore 7
      //   36: iload_3
      //   37: istore 5
      //   39: iload_3
      //   40: istore 8
      //   42: aload_1
      //   43: invokevirtual 72	com/google/protobuf/CodedInputStream:readTag	()I
      //   46: istore 4
      //   48: iload 4
      //   50: lookupswitch	default:+224->274, 0:+227->277, 10:+54->104
      //   76: iload_3
      //   77: istore 7
      //   79: iload_3
      //   80: istore 5
      //   82: iload_3
      //   83: istore 8
      //   85: aload_0
      //   86: aload_1
      //   87: aload 9
      //   89: aload_2
      //   90: iload 4
      //   92: invokevirtual 76	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   95: ifne -67 -> 28
      //   98: iconst_1
      //   99: istore 6
      //   101: goto -73 -> 28
      //   104: iload_3
      //   105: istore 4
      //   107: iload_3
      //   108: iconst_1
      //   109: iand
      //   110: iconst_1
      //   111: if_icmpeq +28 -> 139
      //   114: iload_3
      //   115: istore 7
      //   117: iload_3
      //   118: istore 5
      //   120: iload_3
      //   121: istore 8
      //   123: aload_0
      //   124: new 78	java/util/ArrayList
      //   127: dup
      //   128: invokespecial 79	java/util/ArrayList:<init>	()V
      //   131: putfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:pubInfo_	Ljava/util/List;
      //   134: iload_3
      //   135: iconst_1
      //   136: ior
      //   137: istore 4
      //   139: iload 4
      //   141: istore 7
      //   143: iload 4
      //   145: istore 5
      //   147: iload 4
      //   149: istore 8
      //   151: aload_0
      //   152: getfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:pubInfo_	Ljava/util/List;
      //   155: aload_1
      //   156: getstatic 84	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:PARSER	Lcom/google/protobuf/Parser;
      //   159: aload_2
      //   160: invokevirtual 88	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   163: invokeinterface 94 2 0
      //   168: pop
      //   169: iload 4
      //   171: istore_3
      //   172: goto -144 -> 28
      //   175: astore_1
      //   176: iload 7
      //   178: istore 5
      //   180: aload_1
      //   181: aload_0
      //   182: invokevirtual 98	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   185: athrow
      //   186: astore_1
      //   187: iload 5
      //   189: iconst_1
      //   190: iand
      //   191: iconst_1
      //   192: if_icmpne +14 -> 206
      //   195: aload_0
      //   196: aload_0
      //   197: getfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:pubInfo_	Ljava/util/List;
      //   200: invokestatic 104	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   203: putfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:pubInfo_	Ljava/util/List;
      //   206: aload_0
      //   207: aload 9
      //   209: invokevirtual 110	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   212: putfield 112	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   215: aload_0
      //   216: invokevirtual 115	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:makeExtensionsImmutable	()V
      //   219: aload_1
      //   220: athrow
      //   221: iload_3
      //   222: iconst_1
      //   223: iand
      //   224: iconst_1
      //   225: if_icmpne +14 -> 239
      //   228: aload_0
      //   229: aload_0
      //   230: getfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:pubInfo_	Ljava/util/List;
      //   233: invokestatic 104	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   236: putfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:pubInfo_	Ljava/util/List;
      //   239: aload_0
      //   240: aload 9
      //   242: invokevirtual 110	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   245: putfield 112	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   248: aload_0
      //   249: invokevirtual 115	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:makeExtensionsImmutable	()V
      //   252: return
      //   253: astore_1
      //   254: iload 8
      //   256: istore 5
      //   258: new 53	com/google/protobuf/InvalidProtocolBufferException
      //   261: dup
      //   262: aload_1
      //   263: invokevirtual 119	java/io/IOException:getMessage	()Ljava/lang/String;
      //   266: invokespecial 122	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   269: aload_0
      //   270: invokevirtual 98	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   273: athrow
      //   274: goto -198 -> 76
      //   277: iconst_1
      //   278: istore 6
      //   280: goto -252 -> 28
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	283	0	this	MnsCmdChannelNewPubKeyRsp
      //   0	283	1	paramCodedInputStream	CodedInputStream
      //   0	283	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   27	197	3	i	int
      //   46	124	4	j	int
      //   37	220	5	k	int
      //   24	255	6	m	int
      //   34	143	7	n	int
      //   40	215	8	i1	int
      //   21	220	9	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   42	48	175	com/google/protobuf/InvalidProtocolBufferException
      //   85	98	175	com/google/protobuf/InvalidProtocolBufferException
      //   123	134	175	com/google/protobuf/InvalidProtocolBufferException
      //   151	169	175	com/google/protobuf/InvalidProtocolBufferException
      //   42	48	186	finally
      //   85	98	186	finally
      //   123	134	186	finally
      //   151	169	186	finally
      //   180	186	186	finally
      //   258	274	186	finally
      //   42	48	253	java/io/IOException
      //   85	98	253	java/io/IOException
      //   123	134	253	java/io/IOException
      //   151	169	253	java/io/IOException
    }
    
    private MnsCmdChannelNewPubKeyRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdChannelNewPubKeyRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdChannelNewPubKeyRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelNewPubKeyRsp_descriptor;
    }
    
    private void initFields()
    {
      this.pubInfo_ = Collections.emptyList();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$25100();
    }
    
    public static Builder newBuilder(MnsCmdChannelNewPubKeyRsp paramMnsCmdChannelNewPubKeyRsp)
    {
      return newBuilder().mergeFrom(paramMnsCmdChannelNewPubKeyRsp);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdChannelNewPubKeyRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelNewPubKeyRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdChannelNewPubKeyRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<MnsCmdChannelNewPubKeyRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final SystemPacketProto.PublicKeyInfo getPubInfo(int paramInt)
    {
      return (SystemPacketProto.PublicKeyInfo)this.pubInfo_.get(paramInt);
    }
    
    public final int getPubInfoCount()
    {
      return this.pubInfo_.size();
    }
    
    public final List<SystemPacketProto.PublicKeyInfo> getPubInfoList()
    {
      return this.pubInfo_;
    }
    
    public final SystemPacketProto.PublicKeyInfoOrBuilder getPubInfoOrBuilder(int paramInt)
    {
      return (SystemPacketProto.PublicKeyInfoOrBuilder)this.pubInfo_.get(paramInt);
    }
    
    public final List<? extends SystemPacketProto.PublicKeyInfoOrBuilder> getPubInfoOrBuilderList()
    {
      return this.pubInfo_;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      i = 0;
      int j = 0;
      while (i < this.pubInfo_.size())
      {
        j += CodedOutputStream.computeMessageSize(1, (MessageLite)this.pubInfo_.get(i));
        i += 1;
      }
      i = getUnknownFields().getSerializedSize() + j;
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelNewPubKeyRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdChannelNewPubKeyRsp.class, Builder.class);
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
      int i = 0;
      while (i < this.pubInfo_.size())
      {
        paramCodedOutputStream.writeMessage(1, (MessageLite)this.pubInfo_.get(i));
        i += 1;
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdChannelNewPubKeyRspOrBuilder
    {
      private int bitField0_;
      private RepeatedFieldBuilder<SystemPacketProto.PublicKeyInfo, SystemPacketProto.PublicKeyInfo.Builder, SystemPacketProto.PublicKeyInfoOrBuilder> pubInfoBuilder_;
      private List<SystemPacketProto.PublicKeyInfo> pubInfo_ = Collections.emptyList();
      
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
      
      private void ensurePubInfoIsMutable()
      {
        if ((this.bitField0_ & 0x1) != 1)
        {
          this.pubInfo_ = new ArrayList(this.pubInfo_);
          this.bitField0_ |= 0x1;
        }
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelNewPubKeyRsp_descriptor;
      }
      
      private RepeatedFieldBuilder<SystemPacketProto.PublicKeyInfo, SystemPacketProto.PublicKeyInfo.Builder, SystemPacketProto.PublicKeyInfoOrBuilder> getPubInfoFieldBuilder()
      {
        boolean bool = true;
        List localList;
        if (this.pubInfoBuilder_ == null)
        {
          localList = this.pubInfo_;
          if ((this.bitField0_ & 0x1) != 1) {
            break label55;
          }
        }
        for (;;)
        {
          this.pubInfoBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
          this.pubInfo_ = null;
          return this.pubInfoBuilder_;
          label55:
          bool = false;
        }
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (SystemPacketProto.MnsCmdChannelNewPubKeyRsp.alwaysUseFieldBuilders) {
          getPubInfoFieldBuilder();
        }
      }
      
      public final Builder addAllPubInfo(Iterable<? extends SystemPacketProto.PublicKeyInfo> paramIterable)
      {
        if (this.pubInfoBuilder_ == null)
        {
          ensurePubInfoIsMutable();
          AbstractMessageLite.Builder.addAll(paramIterable, this.pubInfo_);
          onChanged();
          return this;
        }
        this.pubInfoBuilder_.addAllMessages(paramIterable);
        return this;
      }
      
      public final Builder addPubInfo(int paramInt, SystemPacketProto.PublicKeyInfo.Builder paramBuilder)
      {
        if (this.pubInfoBuilder_ == null)
        {
          ensurePubInfoIsMutable();
          this.pubInfo_.add(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.pubInfoBuilder_.addMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder addPubInfo(int paramInt, SystemPacketProto.PublicKeyInfo paramPublicKeyInfo)
      {
        if (this.pubInfoBuilder_ == null)
        {
          if (paramPublicKeyInfo == null) {
            throw new NullPointerException();
          }
          ensurePubInfoIsMutable();
          this.pubInfo_.add(paramInt, paramPublicKeyInfo);
          onChanged();
          return this;
        }
        this.pubInfoBuilder_.addMessage(paramInt, paramPublicKeyInfo);
        return this;
      }
      
      public final Builder addPubInfo(SystemPacketProto.PublicKeyInfo.Builder paramBuilder)
      {
        if (this.pubInfoBuilder_ == null)
        {
          ensurePubInfoIsMutable();
          this.pubInfo_.add(paramBuilder.build());
          onChanged();
          return this;
        }
        this.pubInfoBuilder_.addMessage(paramBuilder.build());
        return this;
      }
      
      public final Builder addPubInfo(SystemPacketProto.PublicKeyInfo paramPublicKeyInfo)
      {
        if (this.pubInfoBuilder_ == null)
        {
          if (paramPublicKeyInfo == null) {
            throw new NullPointerException();
          }
          ensurePubInfoIsMutable();
          this.pubInfo_.add(paramPublicKeyInfo);
          onChanged();
          return this;
        }
        this.pubInfoBuilder_.addMessage(paramPublicKeyInfo);
        return this;
      }
      
      public final SystemPacketProto.PublicKeyInfo.Builder addPubInfoBuilder()
      {
        return (SystemPacketProto.PublicKeyInfo.Builder)getPubInfoFieldBuilder().addBuilder(SystemPacketProto.PublicKeyInfo.getDefaultInstance());
      }
      
      public final SystemPacketProto.PublicKeyInfo.Builder addPubInfoBuilder(int paramInt)
      {
        return (SystemPacketProto.PublicKeyInfo.Builder)getPubInfoFieldBuilder().addBuilder(paramInt, SystemPacketProto.PublicKeyInfo.getDefaultInstance());
      }
      
      public final SystemPacketProto.MnsCmdChannelNewPubKeyRsp build()
      {
        SystemPacketProto.MnsCmdChannelNewPubKeyRsp localMnsCmdChannelNewPubKeyRsp = buildPartial();
        if (!localMnsCmdChannelNewPubKeyRsp.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdChannelNewPubKeyRsp);
        }
        return localMnsCmdChannelNewPubKeyRsp;
      }
      
      public final SystemPacketProto.MnsCmdChannelNewPubKeyRsp buildPartial()
      {
        SystemPacketProto.MnsCmdChannelNewPubKeyRsp localMnsCmdChannelNewPubKeyRsp = new SystemPacketProto.MnsCmdChannelNewPubKeyRsp(this, null);
        if (this.pubInfoBuilder_ == null)
        {
          if ((this.bitField0_ & 0x1) == 1)
          {
            this.pubInfo_ = Collections.unmodifiableList(this.pubInfo_);
            this.bitField0_ &= 0xFFFFFFFE;
          }
          SystemPacketProto.MnsCmdChannelNewPubKeyRsp.access$25502(localMnsCmdChannelNewPubKeyRsp, this.pubInfo_);
        }
        for (;;)
        {
          onBuilt();
          return localMnsCmdChannelNewPubKeyRsp;
          SystemPacketProto.MnsCmdChannelNewPubKeyRsp.access$25502(localMnsCmdChannelNewPubKeyRsp, this.pubInfoBuilder_.build());
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        if (this.pubInfoBuilder_ == null)
        {
          this.pubInfo_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFE;
          return this;
        }
        this.pubInfoBuilder_.clear();
        return this;
      }
      
      public final Builder clearPubInfo()
      {
        if (this.pubInfoBuilder_ == null)
        {
          this.pubInfo_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFE;
          onChanged();
          return this;
        }
        this.pubInfoBuilder_.clear();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MnsCmdChannelNewPubKeyRsp getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdChannelNewPubKeyRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelNewPubKeyRsp_descriptor;
      }
      
      public final SystemPacketProto.PublicKeyInfo getPubInfo(int paramInt)
      {
        if (this.pubInfoBuilder_ == null) {
          return (SystemPacketProto.PublicKeyInfo)this.pubInfo_.get(paramInt);
        }
        return (SystemPacketProto.PublicKeyInfo)this.pubInfoBuilder_.getMessage(paramInt);
      }
      
      public final SystemPacketProto.PublicKeyInfo.Builder getPubInfoBuilder(int paramInt)
      {
        return (SystemPacketProto.PublicKeyInfo.Builder)getPubInfoFieldBuilder().getBuilder(paramInt);
      }
      
      public final List<SystemPacketProto.PublicKeyInfo.Builder> getPubInfoBuilderList()
      {
        return getPubInfoFieldBuilder().getBuilderList();
      }
      
      public final int getPubInfoCount()
      {
        if (this.pubInfoBuilder_ == null) {
          return this.pubInfo_.size();
        }
        return this.pubInfoBuilder_.getCount();
      }
      
      public final List<SystemPacketProto.PublicKeyInfo> getPubInfoList()
      {
        if (this.pubInfoBuilder_ == null) {
          return Collections.unmodifiableList(this.pubInfo_);
        }
        return this.pubInfoBuilder_.getMessageList();
      }
      
      public final SystemPacketProto.PublicKeyInfoOrBuilder getPubInfoOrBuilder(int paramInt)
      {
        if (this.pubInfoBuilder_ == null) {
          return (SystemPacketProto.PublicKeyInfoOrBuilder)this.pubInfo_.get(paramInt);
        }
        return (SystemPacketProto.PublicKeyInfoOrBuilder)this.pubInfoBuilder_.getMessageOrBuilder(paramInt);
      }
      
      public final List<? extends SystemPacketProto.PublicKeyInfoOrBuilder> getPubInfoOrBuilderList()
      {
        if (this.pubInfoBuilder_ != null) {
          return this.pubInfoBuilder_.getMessageOrBuilderList();
        }
        return Collections.unmodifiableList(this.pubInfo_);
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelNewPubKeyRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdChannelNewPubKeyRsp.class, Builder.class);
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
        //   2: getstatic 286	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 292 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 199	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 295	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 199	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdChannelNewPubKeyRsp)) {
          return mergeFrom((SystemPacketProto.MnsCmdChannelNewPubKeyRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdChannelNewPubKeyRsp paramMnsCmdChannelNewPubKeyRsp)
      {
        RepeatedFieldBuilder localRepeatedFieldBuilder = null;
        if (paramMnsCmdChannelNewPubKeyRsp == SystemPacketProto.MnsCmdChannelNewPubKeyRsp.getDefaultInstance()) {
          return this;
        }
        if (this.pubInfoBuilder_ == null) {
          if (!paramMnsCmdChannelNewPubKeyRsp.pubInfo_.isEmpty())
          {
            if (!this.pubInfo_.isEmpty()) {
              break label76;
            }
            this.pubInfo_ = paramMnsCmdChannelNewPubKeyRsp.pubInfo_;
            this.bitField0_ &= 0xFFFFFFFE;
            onChanged();
          }
        }
        for (;;)
        {
          mergeUnknownFields(paramMnsCmdChannelNewPubKeyRsp.getUnknownFields());
          return this;
          label76:
          ensurePubInfoIsMutable();
          this.pubInfo_.addAll(paramMnsCmdChannelNewPubKeyRsp.pubInfo_);
          break;
          if (!paramMnsCmdChannelNewPubKeyRsp.pubInfo_.isEmpty()) {
            if (this.pubInfoBuilder_.isEmpty())
            {
              this.pubInfoBuilder_.dispose();
              this.pubInfoBuilder_ = null;
              this.pubInfo_ = paramMnsCmdChannelNewPubKeyRsp.pubInfo_;
              this.bitField0_ &= 0xFFFFFFFE;
              if (SystemPacketProto.MnsCmdChannelNewPubKeyRsp.alwaysUseFieldBuilders) {
                localRepeatedFieldBuilder = getPubInfoFieldBuilder();
              }
              this.pubInfoBuilder_ = localRepeatedFieldBuilder;
            }
            else
            {
              this.pubInfoBuilder_.addAllMessages(paramMnsCmdChannelNewPubKeyRsp.pubInfo_);
            }
          }
        }
      }
      
      public final Builder removePubInfo(int paramInt)
      {
        if (this.pubInfoBuilder_ == null)
        {
          ensurePubInfoIsMutable();
          this.pubInfo_.remove(paramInt);
          onChanged();
          return this;
        }
        this.pubInfoBuilder_.remove(paramInt);
        return this;
      }
      
      public final Builder setPubInfo(int paramInt, SystemPacketProto.PublicKeyInfo.Builder paramBuilder)
      {
        if (this.pubInfoBuilder_ == null)
        {
          ensurePubInfoIsMutable();
          this.pubInfo_.set(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.pubInfoBuilder_.setMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder setPubInfo(int paramInt, SystemPacketProto.PublicKeyInfo paramPublicKeyInfo)
      {
        if (this.pubInfoBuilder_ == null)
        {
          if (paramPublicKeyInfo == null) {
            throw new NullPointerException();
          }
          ensurePubInfoIsMutable();
          this.pubInfo_.set(paramInt, paramPublicKeyInfo);
          onChanged();
          return this;
        }
        this.pubInfoBuilder_.setMessage(paramInt, paramPublicKeyInfo);
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdChannelNewPubKeyRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract SystemPacketProto.PublicKeyInfo getPubInfo(int paramInt);
    
    public abstract int getPubInfoCount();
    
    public abstract List<SystemPacketProto.PublicKeyInfo> getPubInfoList();
    
    public abstract SystemPacketProto.PublicKeyInfoOrBuilder getPubInfoOrBuilder(int paramInt);
    
    public abstract List<? extends SystemPacketProto.PublicKeyInfoOrBuilder> getPubInfoOrBuilderList();
  }
  
  public static final class MnsCmdChannelReq
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdChannelReqOrBuilder
  {
    public static final int DEVICEINFO_FIELD_NUMBER = 2;
    public static Parser<MnsCmdChannelReq> PARSER = new SystemPacketProto.MnsCmdChannelReq.1();
    public static final int PRIVACYKEY_FIELD_NUMBER = 1;
    private static final MnsCmdChannelReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object deviceinfo_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object privacyKey_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdChannelReq localMnsCmdChannelReq = new MnsCmdChannelReq(true);
      defaultInstance = localMnsCmdChannelReq;
      localMnsCmdChannelReq.initFields();
    }
    
    /* Error */
    private MnsCmdChannelReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:initFields	()V
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
      //   79: invokevirtual 79	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_1
      //   91: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   94: astore 6
      //   96: aload_0
      //   97: aload_0
      //   98: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:bitField0_	I
      //   101: iconst_1
      //   102: ior
      //   103: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:bitField0_	I
      //   106: aload_0
      //   107: aload 6
      //   109: putfield 87	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:privacyKey_	Ljava/lang/Object;
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
      //   129: putfield 99	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   132: aload_0
      //   133: invokevirtual 102	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:makeExtensionsImmutable	()V
      //   136: aload_1
      //   137: athrow
      //   138: aload_1
      //   139: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   142: astore 6
      //   144: aload_0
      //   145: aload_0
      //   146: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:bitField0_	I
      //   149: iconst_2
      //   150: ior
      //   151: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:bitField0_	I
      //   154: aload_0
      //   155: aload 6
      //   157: putfield 104	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:deviceinfo_	Ljava/lang/Object;
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
      //   186: putfield 99	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   189: aload_0
      //   190: invokevirtual 102	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:makeExtensionsImmutable	()V
      //   193: return
      //   194: goto -122 -> 72
      //   197: iconst_1
      //   198: istore_3
      //   199: goto -174 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	202	0	this	MnsCmdChannelReq
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
    
    private MnsCmdChannelReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdChannelReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdChannelReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_descriptor;
    }
    
    private void initFields()
    {
      this.privacyKey_ = "";
      this.deviceinfo_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$21900();
    }
    
    public static Builder newBuilder(MnsCmdChannelReq paramMnsCmdChannelReq)
    {
      return newBuilder().mergeFrom(paramMnsCmdChannelReq);
    }
    
    public static MnsCmdChannelReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdChannelReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdChannelReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdChannelReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelReq)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdChannelReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdChannelReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdChannelReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdChannelReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdChannelReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdChannelReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdChannelReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdChannelReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdChannelReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getDeviceinfo()
    {
      Object localObject = this.deviceinfo_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.deviceinfo_ = str;
      }
      return str;
    }
    
    public final ByteString getDeviceinfoBytes()
    {
      Object localObject = this.deviceinfo_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.deviceinfo_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<MnsCmdChannelReq> getParserForType()
    {
      return PARSER;
    }
    
    public final String getPrivacyKey()
    {
      Object localObject = this.privacyKey_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.privacyKey_ = str;
      }
      return str;
    }
    
    public final ByteString getPrivacyKeyBytes()
    {
      Object localObject = this.privacyKey_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.privacyKey_ = localObject;
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
      i = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        i = CodedOutputStream.computeBytesSize(1, getPrivacyKeyBytes()) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeBytesSize(2, getDeviceinfoBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasDeviceinfo()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasPrivacyKey()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdChannelReq.class, Builder.class);
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
      if (!hasPrivacyKey())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasDeviceinfo())
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
        paramCodedOutputStream.writeBytes(1, getPrivacyKeyBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getDeviceinfoBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdChannelReqOrBuilder
    {
      private int bitField0_;
      private Object deviceinfo_ = "";
      private Object privacyKey_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdChannelReq build()
      {
        SystemPacketProto.MnsCmdChannelReq localMnsCmdChannelReq = buildPartial();
        if (!localMnsCmdChannelReq.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdChannelReq);
        }
        return localMnsCmdChannelReq;
      }
      
      public final SystemPacketProto.MnsCmdChannelReq buildPartial()
      {
        int i = 1;
        SystemPacketProto.MnsCmdChannelReq localMnsCmdChannelReq = new SystemPacketProto.MnsCmdChannelReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdChannelReq.access$22302(localMnsCmdChannelReq, this.privacyKey_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          SystemPacketProto.MnsCmdChannelReq.access$22402(localMnsCmdChannelReq, this.deviceinfo_);
          SystemPacketProto.MnsCmdChannelReq.access$22502(localMnsCmdChannelReq, j);
          onBuilt();
          return localMnsCmdChannelReq;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.privacyKey_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.deviceinfo_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearDeviceinfo()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.deviceinfo_ = SystemPacketProto.MnsCmdChannelReq.getDefaultInstance().getDeviceinfo();
        onChanged();
        return this;
      }
      
      public final Builder clearPrivacyKey()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.privacyKey_ = SystemPacketProto.MnsCmdChannelReq.getDefaultInstance().getPrivacyKey();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MnsCmdChannelReq getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdChannelReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_descriptor;
      }
      
      public final String getDeviceinfo()
      {
        Object localObject = this.deviceinfo_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.deviceinfo_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getDeviceinfoBytes()
      {
        Object localObject = this.deviceinfo_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.deviceinfo_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getPrivacyKey()
      {
        Object localObject = this.privacyKey_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.privacyKey_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getPrivacyKeyBytes()
      {
        Object localObject = this.privacyKey_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.privacyKey_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasDeviceinfo()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasPrivacyKey()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdChannelReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasPrivacyKey()) {}
        while (!hasDeviceinfo()) {
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
        //   2: getstatic 181	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 187 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 119	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 190	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 119	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdChannelReq)) {
          return mergeFrom((SystemPacketProto.MnsCmdChannelReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdChannelReq paramMnsCmdChannelReq)
      {
        if (paramMnsCmdChannelReq == SystemPacketProto.MnsCmdChannelReq.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdChannelReq.hasPrivacyKey())
        {
          this.bitField0_ |= 0x1;
          this.privacyKey_ = paramMnsCmdChannelReq.privacyKey_;
          onChanged();
        }
        if (paramMnsCmdChannelReq.hasDeviceinfo())
        {
          this.bitField0_ |= 0x2;
          this.deviceinfo_ = paramMnsCmdChannelReq.deviceinfo_;
          onChanged();
        }
        mergeUnknownFields(paramMnsCmdChannelReq.getUnknownFields());
        return this;
      }
      
      public final Builder setDeviceinfo(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.deviceinfo_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDeviceinfoBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.deviceinfo_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setPrivacyKey(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.privacyKey_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setPrivacyKeyBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.privacyKey_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdChannelReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getDeviceinfo();
    
    public abstract ByteString getDeviceinfoBytes();
    
    public abstract String getPrivacyKey();
    
    public abstract ByteString getPrivacyKeyBytes();
    
    public abstract boolean hasDeviceinfo();
    
    public abstract boolean hasPrivacyKey();
  }
  
  public static final class MnsCmdChannelRsp
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdChannelRspOrBuilder
  {
    public static final int B2_FIELD_NUMBER = 2;
    public static final int GTKEY_B2_FIELD_NUMBER = 3;
    public static Parser<MnsCmdChannelRsp> PARSER = new SystemPacketProto.MnsCmdChannelRsp.1();
    public static final int WID_FIELD_NUMBER = 1;
    private static final MnsCmdChannelRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private ByteString b2_;
    private int bitField0_;
    private ByteString gTKEYB2_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    private long wid_;
    
    static
    {
      MnsCmdChannelRsp localMnsCmdChannelRsp = new MnsCmdChannelRsp(true);
      defaultInstance = localMnsCmdChannelRsp;
      localMnsCmdChannelRsp.initFields();
    }
    
    /* Error */
    private MnsCmdChannelRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 62	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 64	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 66	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 55	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:initFields	()V
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
      //   37: lookupswitch	default:+178->215, 0:+181->218, 8:+61->98, 18:+105->142, 26:+143->180
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 82	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 84	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 84	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 88	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   113: putfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:wid_	J
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
      //   133: putfield 102	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 105	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: aload_0
      //   144: getfield 84	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:bitField0_	I
      //   147: iconst_2
      //   148: ior
      //   149: putfield 84	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:bitField0_	I
      //   152: aload_0
      //   153: aload_1
      //   154: invokevirtual 109	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   157: putfield 111	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:b2_	Lcom/google/protobuf/ByteString;
      //   160: goto -135 -> 25
      //   163: astore_1
      //   164: new 59	com/google/protobuf/InvalidProtocolBufferException
      //   167: dup
      //   168: aload_1
      //   169: invokevirtual 115	java/io/IOException:getMessage	()Ljava/lang/String;
      //   172: invokespecial 118	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   175: aload_0
      //   176: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   179: athrow
      //   180: aload_0
      //   181: aload_0
      //   182: getfield 84	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:bitField0_	I
      //   185: iconst_4
      //   186: ior
      //   187: putfield 84	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:bitField0_	I
      //   190: aload_0
      //   191: aload_1
      //   192: invokevirtual 109	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   195: putfield 120	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:gTKEYB2_	Lcom/google/protobuf/ByteString;
      //   198: goto -173 -> 25
      //   201: aload_0
      //   202: aload 5
      //   204: invokevirtual 100	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   207: putfield 102	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   210: aload_0
      //   211: invokevirtual 105	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:makeExtensionsImmutable	()V
      //   214: return
      //   215: goto -135 -> 80
      //   218: iconst_1
      //   219: istore_3
      //   220: goto -195 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	223	0	this	MnsCmdChannelRsp
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
    
    private MnsCmdChannelRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdChannelRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdChannelRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_descriptor;
    }
    
    private void initFields()
    {
      this.wid_ = 0L;
      this.b2_ = ByteString.EMPTY;
      this.gTKEYB2_ = ByteString.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$22900();
    }
    
    public static Builder newBuilder(MnsCmdChannelRsp paramMnsCmdChannelRsp)
    {
      return newBuilder().mergeFrom(paramMnsCmdChannelRsp);
    }
    
    public static MnsCmdChannelRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdChannelRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdChannelRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdChannelRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdChannelRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdChannelRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdChannelRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdChannelRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdChannelRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdChannelRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdChannelRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdChannelRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdChannelRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdChannelRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final ByteString getB2()
    {
      return this.b2_;
    }
    
    public final MnsCmdChannelRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final ByteString getGTKEYB2()
    {
      return this.gTKEYB2_;
    }
    
    public final Parser<MnsCmdChannelRsp> getParserForType()
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
        j = CodedOutputStream.computeUInt64Size(1, this.wid_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, this.b2_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, this.gTKEYB2_);
      }
      i = j + getUnknownFields().getSerializedSize();
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
    
    public final boolean hasB2()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasGTKEYB2()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasWid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdChannelRsp.class, Builder.class);
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
      if (!hasWid())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasB2())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasGTKEYB2())
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
        paramCodedOutputStream.writeUInt64(1, this.wid_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, this.b2_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, this.gTKEYB2_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdChannelRspOrBuilder
    {
      private ByteString b2_ = ByteString.EMPTY;
      private int bitField0_;
      private ByteString gTKEYB2_ = ByteString.EMPTY;
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdChannelRsp build()
      {
        SystemPacketProto.MnsCmdChannelRsp localMnsCmdChannelRsp = buildPartial();
        if (!localMnsCmdChannelRsp.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdChannelRsp);
        }
        return localMnsCmdChannelRsp;
      }
      
      public final SystemPacketProto.MnsCmdChannelRsp buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsCmdChannelRsp localMnsCmdChannelRsp = new SystemPacketProto.MnsCmdChannelRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdChannelRsp.access$23302(localMnsCmdChannelRsp, this.wid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.MnsCmdChannelRsp.access$23402(localMnsCmdChannelRsp, this.b2_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.MnsCmdChannelRsp.access$23502(localMnsCmdChannelRsp, this.gTKEYB2_);
          SystemPacketProto.MnsCmdChannelRsp.access$23602(localMnsCmdChannelRsp, j);
          onBuilt();
          return localMnsCmdChannelRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.wid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.b2_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFD;
        this.gTKEYB2_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearB2()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.b2_ = SystemPacketProto.MnsCmdChannelRsp.getDefaultInstance().getB2();
        onChanged();
        return this;
      }
      
      public final Builder clearGTKEYB2()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.gTKEYB2_ = SystemPacketProto.MnsCmdChannelRsp.getDefaultInstance().getGTKEYB2();
        onChanged();
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
      
      public final ByteString getB2()
      {
        return this.b2_;
      }
      
      public final SystemPacketProto.MnsCmdChannelRsp getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdChannelRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_descriptor;
      }
      
      public final ByteString getGTKEYB2()
      {
        return this.gTKEYB2_;
      }
      
      public final long getWid()
      {
        return this.wid_;
      }
      
      public final boolean hasB2()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasGTKEYB2()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasWid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdChannelRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdChannelRsp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasWid()) {}
        while ((!hasB2()) || (!hasGTKEYB2())) {
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
        //   2: getstatic 181	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 187 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 131	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 190	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 131	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdChannelRsp)) {
          return mergeFrom((SystemPacketProto.MnsCmdChannelRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdChannelRsp paramMnsCmdChannelRsp)
      {
        if (paramMnsCmdChannelRsp == SystemPacketProto.MnsCmdChannelRsp.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdChannelRsp.hasWid()) {
          setWid(paramMnsCmdChannelRsp.getWid());
        }
        if (paramMnsCmdChannelRsp.hasB2()) {
          setB2(paramMnsCmdChannelRsp.getB2());
        }
        if (paramMnsCmdChannelRsp.hasGTKEYB2()) {
          setGTKEYB2(paramMnsCmdChannelRsp.getGTKEYB2());
        }
        mergeUnknownFields(paramMnsCmdChannelRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setB2(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.b2_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setGTKEYB2(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.gTKEYB2_ = paramByteString;
        onChanged();
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
  
  public static abstract interface MnsCmdChannelRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getB2();
    
    public abstract ByteString getGTKEYB2();
    
    public abstract long getWid();
    
    public abstract boolean hasB2();
    
    public abstract boolean hasGTKEYB2();
    
    public abstract boolean hasWid();
  }
  
  public static final class MnsCmdFastloginReq
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdFastloginReqOrBuilder
  {
    public static final int DEVICETOKEN_FIELD_NUMBER = 2;
    public static final int EXTRA_FIELD_NUMBER = 4;
    public static final int ONOFF_FIELD_NUMBER = 3;
    public static Parser<MnsCmdFastloginReq> PARSER = new SystemPacketProto.MnsCmdFastloginReq.1();
    public static final int PASSPORTLOGIN_FIELD_NUMBER = 5;
    public static final int SUID_FIELD_NUMBER = 1;
    private static final MnsCmdFastloginReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private ByteString devicetoken_;
    private ByteString extra_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private boolean onoff_;
    private boolean passportlogin_;
    private Object sUID_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdFastloginReq localMnsCmdFastloginReq = new MnsCmdFastloginReq(true);
      defaultInstance = localMnsCmdFastloginReq;
      localMnsCmdFastloginReq.initFields();
    }
    
    /* Error */
    private MnsCmdFastloginReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 70	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 72	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 74	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 63	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:initFields	()V
      //   18: invokestatic 80	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +239 -> 265
      //   29: aload_1
      //   30: invokevirtual 86	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+242->279, 0:+245->282, 10:+77->114, 18:+125->162, 24:+163->200, 34:+184->221, 40:+206->243
      //   96: aload_0
      //   97: aload_1
      //   98: aload 5
      //   100: aload_2
      //   101: iload 4
      //   103: invokevirtual 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   106: ifne -81 -> 25
      //   109: iconst_1
      //   110: istore_3
      //   111: goto -86 -> 25
      //   114: aload_1
      //   115: invokevirtual 94	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   118: astore 6
      //   120: aload_0
      //   121: aload_0
      //   122: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   125: iconst_1
      //   126: ior
      //   127: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   130: aload_0
      //   131: aload 6
      //   133: putfield 98	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:sUID_	Ljava/lang/Object;
      //   136: goto -111 -> 25
      //   139: astore_1
      //   140: aload_1
      //   141: aload_0
      //   142: invokevirtual 102	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   145: athrow
      //   146: astore_1
      //   147: aload_0
      //   148: aload 5
      //   150: invokevirtual 108	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   153: putfield 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   156: aload_0
      //   157: invokevirtual 113	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:makeExtensionsImmutable	()V
      //   160: aload_1
      //   161: athrow
      //   162: aload_0
      //   163: aload_0
      //   164: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   167: iconst_2
      //   168: ior
      //   169: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   172: aload_0
      //   173: aload_1
      //   174: invokevirtual 94	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   177: putfield 115	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:devicetoken_	Lcom/google/protobuf/ByteString;
      //   180: goto -155 -> 25
      //   183: astore_1
      //   184: new 67	com/google/protobuf/InvalidProtocolBufferException
      //   187: dup
      //   188: aload_1
      //   189: invokevirtual 119	java/io/IOException:getMessage	()Ljava/lang/String;
      //   192: invokespecial 122	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   195: aload_0
      //   196: invokevirtual 102	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   199: athrow
      //   200: aload_0
      //   201: aload_0
      //   202: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   205: iconst_4
      //   206: ior
      //   207: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   210: aload_0
      //   211: aload_1
      //   212: invokevirtual 126	com/google/protobuf/CodedInputStream:readBool	()Z
      //   215: putfield 128	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:onoff_	Z
      //   218: goto -193 -> 25
      //   221: aload_0
      //   222: aload_0
      //   223: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   226: bipush 8
      //   228: ior
      //   229: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   232: aload_0
      //   233: aload_1
      //   234: invokevirtual 94	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   237: putfield 130	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:extra_	Lcom/google/protobuf/ByteString;
      //   240: goto -215 -> 25
      //   243: aload_0
      //   244: aload_0
      //   245: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   248: bipush 16
      //   250: ior
      //   251: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:bitField0_	I
      //   254: aload_0
      //   255: aload_1
      //   256: invokevirtual 126	com/google/protobuf/CodedInputStream:readBool	()Z
      //   259: putfield 132	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:passportlogin_	Z
      //   262: goto -237 -> 25
      //   265: aload_0
      //   266: aload 5
      //   268: invokevirtual 108	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   271: putfield 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   274: aload_0
      //   275: invokevirtual 113	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:makeExtensionsImmutable	()V
      //   278: return
      //   279: goto -183 -> 96
      //   282: iconst_1
      //   283: istore_3
      //   284: goto -259 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	287	0	this	MnsCmdFastloginReq
      //   0	287	1	paramCodedInputStream	CodedInputStream
      //   0	287	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	260	3	i	int
      //   33	69	4	j	int
      //   21	246	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   118	14	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	139	com/google/protobuf/InvalidProtocolBufferException
      //   96	109	139	com/google/protobuf/InvalidProtocolBufferException
      //   114	136	139	com/google/protobuf/InvalidProtocolBufferException
      //   162	180	139	com/google/protobuf/InvalidProtocolBufferException
      //   200	218	139	com/google/protobuf/InvalidProtocolBufferException
      //   221	240	139	com/google/protobuf/InvalidProtocolBufferException
      //   243	262	139	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	146	finally
      //   96	109	146	finally
      //   114	136	146	finally
      //   140	146	146	finally
      //   162	180	146	finally
      //   184	200	146	finally
      //   200	218	146	finally
      //   221	240	146	finally
      //   243	262	146	finally
      //   29	35	183	java/io/IOException
      //   96	109	183	java/io/IOException
      //   114	136	183	java/io/IOException
      //   162	180	183	java/io/IOException
      //   200	218	183	java/io/IOException
      //   221	240	183	java/io/IOException
      //   243	262	183	java/io/IOException
    }
    
    private MnsCmdFastloginReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdFastloginReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdFastloginReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_descriptor;
    }
    
    private void initFields()
    {
      this.sUID_ = "";
      this.devicetoken_ = ByteString.EMPTY;
      this.onoff_ = false;
      this.extra_ = ByteString.EMPTY;
      this.passportlogin_ = false;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$17000();
    }
    
    public static Builder newBuilder(MnsCmdFastloginReq paramMnsCmdFastloginReq)
    {
      return newBuilder().mergeFrom(paramMnsCmdFastloginReq);
    }
    
    public static MnsCmdFastloginReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdFastloginReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdFastloginReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdFastloginReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdFastloginReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdFastloginReq)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdFastloginReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdFastloginReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdFastloginReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdFastloginReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdFastloginReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdFastloginReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdFastloginReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdFastloginReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdFastloginReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdFastloginReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdFastloginReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdFastloginReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdFastloginReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdFastloginReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdFastloginReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final ByteString getDevicetoken()
    {
      return this.devicetoken_;
    }
    
    public final ByteString getExtra()
    {
      return this.extra_;
    }
    
    public final boolean getOnoff()
    {
      return this.onoff_;
    }
    
    public final Parser<MnsCmdFastloginReq> getParserForType()
    {
      return PARSER;
    }
    
    public final boolean getPassportlogin()
    {
      return this.passportlogin_;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
        j = CodedOutputStream.computeBytesSize(1, getSUIDBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, this.devicetoken_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBoolSize(3, this.onoff_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, this.extra_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBoolSize(5, this.passportlogin_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasDevicetoken()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasExtra()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasOnoff()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasPassportlogin()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdFastloginReq.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getSUIDBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, this.devicetoken_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBool(3, this.onoff_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, this.extra_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBool(5, this.passportlogin_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdFastloginReqOrBuilder
    {
      private int bitField0_;
      private ByteString devicetoken_ = ByteString.EMPTY;
      private ByteString extra_ = ByteString.EMPTY;
      private boolean onoff_;
      private boolean passportlogin_;
      private Object sUID_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdFastloginReq build()
      {
        SystemPacketProto.MnsCmdFastloginReq localMnsCmdFastloginReq = buildPartial();
        if (!localMnsCmdFastloginReq.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdFastloginReq);
        }
        return localMnsCmdFastloginReq;
      }
      
      public final SystemPacketProto.MnsCmdFastloginReq buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsCmdFastloginReq localMnsCmdFastloginReq = new SystemPacketProto.MnsCmdFastloginReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdFastloginReq.access$17402(localMnsCmdFastloginReq, this.sUID_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.MnsCmdFastloginReq.access$17502(localMnsCmdFastloginReq, this.devicetoken_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.MnsCmdFastloginReq.access$17602(localMnsCmdFastloginReq, this.onoff_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          SystemPacketProto.MnsCmdFastloginReq.access$17702(localMnsCmdFastloginReq, this.extra_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          SystemPacketProto.MnsCmdFastloginReq.access$17802(localMnsCmdFastloginReq, this.passportlogin_);
          SystemPacketProto.MnsCmdFastloginReq.access$17902(localMnsCmdFastloginReq, j);
          onBuilt();
          return localMnsCmdFastloginReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.sUID_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.devicetoken_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFD;
        this.onoff_ = false;
        this.bitField0_ &= 0xFFFFFFFB;
        this.extra_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFF7;
        this.passportlogin_ = false;
        this.bitField0_ &= 0xFFFFFFEF;
        return this;
      }
      
      public final Builder clearDevicetoken()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.devicetoken_ = SystemPacketProto.MnsCmdFastloginReq.getDefaultInstance().getDevicetoken();
        onChanged();
        return this;
      }
      
      public final Builder clearExtra()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.extra_ = SystemPacketProto.MnsCmdFastloginReq.getDefaultInstance().getExtra();
        onChanged();
        return this;
      }
      
      public final Builder clearOnoff()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.onoff_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearPassportlogin()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.passportlogin_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.sUID_ = SystemPacketProto.MnsCmdFastloginReq.getDefaultInstance().getSUID();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MnsCmdFastloginReq getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdFastloginReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_descriptor;
      }
      
      public final ByteString getDevicetoken()
      {
        return this.devicetoken_;
      }
      
      public final ByteString getExtra()
      {
        return this.extra_;
      }
      
      public final boolean getOnoff()
      {
        return this.onoff_;
      }
      
      public final boolean getPassportlogin()
      {
        return this.passportlogin_;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasDevicetoken()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasExtra()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasOnoff()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasPassportlogin()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdFastloginReq.class, Builder.class);
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
        //   2: getstatic 212	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 218 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 153	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 221	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 153	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdFastloginReq)) {
          return mergeFrom((SystemPacketProto.MnsCmdFastloginReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdFastloginReq paramMnsCmdFastloginReq)
      {
        if (paramMnsCmdFastloginReq == SystemPacketProto.MnsCmdFastloginReq.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdFastloginReq.hasSUID())
        {
          this.bitField0_ |= 0x1;
          this.sUID_ = paramMnsCmdFastloginReq.sUID_;
          onChanged();
        }
        if (paramMnsCmdFastloginReq.hasDevicetoken()) {
          setDevicetoken(paramMnsCmdFastloginReq.getDevicetoken());
        }
        if (paramMnsCmdFastloginReq.hasOnoff()) {
          setOnoff(paramMnsCmdFastloginReq.getOnoff());
        }
        if (paramMnsCmdFastloginReq.hasExtra()) {
          setExtra(paramMnsCmdFastloginReq.getExtra());
        }
        if (paramMnsCmdFastloginReq.hasPassportlogin()) {
          setPassportlogin(paramMnsCmdFastloginReq.getPassportlogin());
        }
        mergeUnknownFields(paramMnsCmdFastloginReq.getUnknownFields());
        return this;
      }
      
      public final Builder setDevicetoken(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.devicetoken_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setExtra(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.extra_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setOnoff(boolean paramBoolean)
      {
        this.bitField0_ |= 0x4;
        this.onoff_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setPassportlogin(boolean paramBoolean)
      {
        this.bitField0_ |= 0x10;
        this.passportlogin_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.sUID_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdFastloginReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getDevicetoken();
    
    public abstract ByteString getExtra();
    
    public abstract boolean getOnoff();
    
    public abstract boolean getPassportlogin();
    
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract boolean hasDevicetoken();
    
    public abstract boolean hasExtra();
    
    public abstract boolean hasOnoff();
    
    public abstract boolean hasPassportlogin();
    
    public abstract boolean hasSUID();
  }
  
  public static final class MnsCmdFastloginRsp
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdFastloginRspOrBuilder
  {
    public static final int B2_FIELD_NUMBER = 2;
    public static final int GTKEY_B2_FIELD_NUMBER = 1;
    public static Parser<MnsCmdFastloginRsp> PARSER = new SystemPacketProto.MnsCmdFastloginRsp.1();
    public static final int SUID_FIELD_NUMBER = 3;
    private static final MnsCmdFastloginRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private ByteString b2_;
    private int bitField0_;
    private ByteString gTKEYB2_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sUID_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdFastloginRsp localMnsCmdFastloginRsp = new MnsCmdFastloginRsp(true);
      defaultInstance = localMnsCmdFastloginRsp;
      localMnsCmdFastloginRsp.initFields();
    }
    
    /* Error */
    private MnsCmdFastloginRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 63	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 65	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 67	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 56	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:initFields	()V
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
      //   37: lookupswitch	default:+182->219, 0:+185->222, 10:+61->98, 18:+105->142, 26:+143->180
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 83	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 89	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   113: putfield 91	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:gTKEYB2_	Lcom/google/protobuf/ByteString;
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
      //   133: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 106	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: aload_0
      //   144: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:bitField0_	I
      //   147: iconst_2
      //   148: ior
      //   149: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:bitField0_	I
      //   152: aload_0
      //   153: aload_1
      //   154: invokevirtual 89	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   157: putfield 108	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:b2_	Lcom/google/protobuf/ByteString;
      //   160: goto -135 -> 25
      //   163: astore_1
      //   164: new 60	com/google/protobuf/InvalidProtocolBufferException
      //   167: dup
      //   168: aload_1
      //   169: invokevirtual 112	java/io/IOException:getMessage	()Ljava/lang/String;
      //   172: invokespecial 115	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   175: aload_0
      //   176: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   179: athrow
      //   180: aload_1
      //   181: invokevirtual 89	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   184: astore 6
      //   186: aload_0
      //   187: aload_0
      //   188: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:bitField0_	I
      //   191: iconst_4
      //   192: ior
      //   193: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:bitField0_	I
      //   196: aload_0
      //   197: aload 6
      //   199: putfield 117	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:sUID_	Ljava/lang/Object;
      //   202: goto -177 -> 25
      //   205: aload_0
      //   206: aload 5
      //   208: invokevirtual 101	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   211: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   214: aload_0
      //   215: invokevirtual 106	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:makeExtensionsImmutable	()V
      //   218: return
      //   219: goto -139 -> 80
      //   222: iconst_1
      //   223: istore_3
      //   224: goto -199 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	227	0	this	MnsCmdFastloginRsp
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
    
    private MnsCmdFastloginRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdFastloginRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdFastloginRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_descriptor;
    }
    
    private void initFields()
    {
      this.gTKEYB2_ = ByteString.EMPTY;
      this.b2_ = ByteString.EMPTY;
      this.sUID_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$18300();
    }
    
    public static Builder newBuilder(MnsCmdFastloginRsp paramMnsCmdFastloginRsp)
    {
      return newBuilder().mergeFrom(paramMnsCmdFastloginRsp);
    }
    
    public static MnsCmdFastloginRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdFastloginRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdFastloginRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdFastloginRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdFastloginRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdFastloginRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdFastloginRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdFastloginRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdFastloginRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdFastloginRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdFastloginRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdFastloginRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdFastloginRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdFastloginRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdFastloginRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdFastloginRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdFastloginRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdFastloginRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdFastloginRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdFastloginRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final ByteString getB2()
    {
      return this.b2_;
    }
    
    public final MnsCmdFastloginRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final ByteString getGTKEYB2()
    {
      return this.gTKEYB2_;
    }
    
    public final Parser<MnsCmdFastloginRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
        j = CodedOutputStream.computeBytesSize(1, this.gTKEYB2_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, this.b2_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getSUIDBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasB2()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasGTKEYB2()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdFastloginRsp.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, this.gTKEYB2_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, this.b2_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getSUIDBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdFastloginRspOrBuilder
    {
      private ByteString b2_ = ByteString.EMPTY;
      private int bitField0_;
      private ByteString gTKEYB2_ = ByteString.EMPTY;
      private Object sUID_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdFastloginRsp build()
      {
        SystemPacketProto.MnsCmdFastloginRsp localMnsCmdFastloginRsp = buildPartial();
        if (!localMnsCmdFastloginRsp.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdFastloginRsp);
        }
        return localMnsCmdFastloginRsp;
      }
      
      public final SystemPacketProto.MnsCmdFastloginRsp buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsCmdFastloginRsp localMnsCmdFastloginRsp = new SystemPacketProto.MnsCmdFastloginRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdFastloginRsp.access$18702(localMnsCmdFastloginRsp, this.gTKEYB2_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.MnsCmdFastloginRsp.access$18802(localMnsCmdFastloginRsp, this.b2_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.MnsCmdFastloginRsp.access$18902(localMnsCmdFastloginRsp, this.sUID_);
          SystemPacketProto.MnsCmdFastloginRsp.access$19002(localMnsCmdFastloginRsp, j);
          onBuilt();
          return localMnsCmdFastloginRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.gTKEYB2_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFE;
        this.b2_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFD;
        this.sUID_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearB2()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.b2_ = SystemPacketProto.MnsCmdFastloginRsp.getDefaultInstance().getB2();
        onChanged();
        return this;
      }
      
      public final Builder clearGTKEYB2()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.gTKEYB2_ = SystemPacketProto.MnsCmdFastloginRsp.getDefaultInstance().getGTKEYB2();
        onChanged();
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.sUID_ = SystemPacketProto.MnsCmdFastloginRsp.getDefaultInstance().getSUID();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final ByteString getB2()
      {
        return this.b2_;
      }
      
      public final SystemPacketProto.MnsCmdFastloginRsp getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdFastloginRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_descriptor;
      }
      
      public final ByteString getGTKEYB2()
      {
        return this.gTKEYB2_;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasB2()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasGTKEYB2()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdFastloginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdFastloginRsp.class, Builder.class);
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
        //   2: getstatic 192	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 198 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 137	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 201	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 137	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginRsp$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdFastloginRsp)) {
          return mergeFrom((SystemPacketProto.MnsCmdFastloginRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdFastloginRsp paramMnsCmdFastloginRsp)
      {
        if (paramMnsCmdFastloginRsp == SystemPacketProto.MnsCmdFastloginRsp.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdFastloginRsp.hasGTKEYB2()) {
          setGTKEYB2(paramMnsCmdFastloginRsp.getGTKEYB2());
        }
        if (paramMnsCmdFastloginRsp.hasB2()) {
          setB2(paramMnsCmdFastloginRsp.getB2());
        }
        if (paramMnsCmdFastloginRsp.hasSUID())
        {
          this.bitField0_ |= 0x4;
          this.sUID_ = paramMnsCmdFastloginRsp.sUID_;
          onChanged();
        }
        mergeUnknownFields(paramMnsCmdFastloginRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setB2(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.b2_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setGTKEYB2(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.gTKEYB2_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdFastloginRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getB2();
    
    public abstract ByteString getGTKEYB2();
    
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract boolean hasB2();
    
    public abstract boolean hasGTKEYB2();
    
    public abstract boolean hasSUID();
  }
  
  public static final class MnsCmdHandShakeReq
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdHandShakeReqOrBuilder
  {
    public static final int MGR_INFO_FIELD_NUMBER = 2;
    public static Parser<MnsCmdHandShakeReq> PARSER = new SystemPacketProto.MnsCmdHandShakeReq.1();
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final MnsCmdHandShakeReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private SystemPacketProto.SdkConnMgrInfo mgrInfo_;
    private int type_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdHandShakeReq localMnsCmdHandShakeReq = new MnsCmdHandShakeReq(true);
      defaultInstance = localMnsCmdHandShakeReq;
      localMnsCmdHandShakeReq.initFields();
    }
    
    /* Error */
    private MnsCmdHandShakeReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:initFields	()V
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
      //   79: invokevirtual 79	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 84	com/google/protobuf/CodedInputStream:readInt32	()I
      //   105: putfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:type_	I
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
      //   125: putfield 98	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 101	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_0
      //   135: getfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:bitField0_	I
      //   138: iconst_2
      //   139: iand
      //   140: iconst_2
      //   141: if_icmpne +95 -> 236
      //   144: aload_0
      //   145: getfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:mgrInfo_	Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   148: invokevirtual 109	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:toBuilder	()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;
      //   151: astore 5
      //   153: aload_0
      //   154: aload_1
      //   155: getstatic 110	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:PARSER	Lcom/google/protobuf/Parser;
      //   158: aload_2
      //   159: invokevirtual 114	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   162: checkcast 105	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo
      //   165: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:mgrInfo_	Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   168: aload 5
      //   170: ifnull +22 -> 192
      //   173: aload 5
      //   175: aload_0
      //   176: getfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:mgrInfo_	Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   179: invokevirtual 120	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;
      //   182: pop
      //   183: aload_0
      //   184: aload 5
      //   186: invokevirtual 124	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   189: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:mgrInfo_	Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   192: aload_0
      //   193: aload_0
      //   194: getfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:bitField0_	I
      //   197: iconst_2
      //   198: ior
      //   199: putfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:bitField0_	I
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
      //   228: putfield 98	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   231: aload_0
      //   232: invokevirtual 101	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:makeExtensionsImmutable	()V
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
      //   0	250	0	this	MnsCmdHandShakeReq
      //   0	250	1	paramCodedInputStream	CodedInputStream
      //   0	250	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	223	3	i	int
      //   33	45	4	j	int
      //   151	87	5	localBuilder	SystemPacketProto.SdkConnMgrInfo.Builder
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
    
    private MnsCmdHandShakeReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdHandShakeReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdHandShakeReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_descriptor;
    }
    
    private void initFields()
    {
      this.type_ = 0;
      this.mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.getDefaultInstance();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$13300();
    }
    
    public static Builder newBuilder(MnsCmdHandShakeReq paramMnsCmdHandShakeReq)
    {
      return newBuilder().mergeFrom(paramMnsCmdHandShakeReq);
    }
    
    public static MnsCmdHandShakeReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdHandShakeReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdHandShakeReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHandShakeReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHandShakeReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHandShakeReq)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdHandShakeReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHandShakeReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHandShakeReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdHandShakeReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdHandShakeReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHandShakeReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHandShakeReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdHandShakeReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdHandShakeReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHandShakeReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHandShakeReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHandShakeReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdHandShakeReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHandShakeReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdHandShakeReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final SystemPacketProto.SdkConnMgrInfo getMgrInfo()
    {
      return this.mgrInfo_;
    }
    
    public final SystemPacketProto.SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder()
    {
      return this.mgrInfo_;
    }
    
    public final Parser<MnsCmdHandShakeReq> getParserForType()
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
        i = CodedOutputStream.computeInt32Size(1, this.type_) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeMessageSize(2, this.mgrInfo_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final int getType()
    {
      return this.type_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasMgrInfo()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasType()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHandShakeReq.class, Builder.class);
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
      if (!hasType())
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
        paramCodedOutputStream.writeInt32(1, this.type_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeMessage(2, this.mgrInfo_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdHandShakeReqOrBuilder
    {
      private int bitField0_;
      private SingleFieldBuilder<SystemPacketProto.SdkConnMgrInfo, SystemPacketProto.SdkConnMgrInfo.Builder, SystemPacketProto.SdkConnMgrInfoOrBuilder> mgrInfoBuilder_;
      private SystemPacketProto.SdkConnMgrInfo mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.getDefaultInstance();
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_descriptor;
      }
      
      private SingleFieldBuilder<SystemPacketProto.SdkConnMgrInfo, SystemPacketProto.SdkConnMgrInfo.Builder, SystemPacketProto.SdkConnMgrInfoOrBuilder> getMgrInfoFieldBuilder()
      {
        if (this.mgrInfoBuilder_ == null)
        {
          this.mgrInfoBuilder_ = new SingleFieldBuilder(getMgrInfo(), getParentForChildren(), isClean());
          this.mgrInfo_ = null;
        }
        return this.mgrInfoBuilder_;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (SystemPacketProto.MnsCmdHandShakeReq.alwaysUseFieldBuilders) {
          getMgrInfoFieldBuilder();
        }
      }
      
      public final SystemPacketProto.MnsCmdHandShakeReq build()
      {
        SystemPacketProto.MnsCmdHandShakeReq localMnsCmdHandShakeReq = buildPartial();
        if (!localMnsCmdHandShakeReq.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdHandShakeReq);
        }
        return localMnsCmdHandShakeReq;
      }
      
      public final SystemPacketProto.MnsCmdHandShakeReq buildPartial()
      {
        int i = 1;
        SystemPacketProto.MnsCmdHandShakeReq localMnsCmdHandShakeReq = new SystemPacketProto.MnsCmdHandShakeReq(this, null);
        int j = this.bitField0_;
        if ((j & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdHandShakeReq.access$13702(localMnsCmdHandShakeReq, this.type_);
          if ((j & 0x2) == 2) {
            i |= 0x2;
          }
          for (;;)
          {
            if (this.mgrInfoBuilder_ == null) {
              SystemPacketProto.MnsCmdHandShakeReq.access$13802(localMnsCmdHandShakeReq, this.mgrInfo_);
            }
            for (;;)
            {
              SystemPacketProto.MnsCmdHandShakeReq.access$13902(localMnsCmdHandShakeReq, i);
              onBuilt();
              return localMnsCmdHandShakeReq;
              SystemPacketProto.MnsCmdHandShakeReq.access$13802(localMnsCmdHandShakeReq, (SystemPacketProto.SdkConnMgrInfo)this.mgrInfoBuilder_.build());
            }
          }
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.type_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        if (this.mgrInfoBuilder_ == null) {
          this.mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          return this;
          this.mgrInfoBuilder_.clear();
        }
      }
      
      public final Builder clearMgrInfo()
      {
        if (this.mgrInfoBuilder_ == null)
        {
          this.mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          return this;
          this.mgrInfoBuilder_.clear();
        }
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
      
      public final SystemPacketProto.MnsCmdHandShakeReq getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdHandShakeReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_descriptor;
      }
      
      public final SystemPacketProto.SdkConnMgrInfo getMgrInfo()
      {
        if (this.mgrInfoBuilder_ == null) {
          return this.mgrInfo_;
        }
        return (SystemPacketProto.SdkConnMgrInfo)this.mgrInfoBuilder_.getMessage();
      }
      
      public final SystemPacketProto.SdkConnMgrInfo.Builder getMgrInfoBuilder()
      {
        this.bitField0_ |= 0x2;
        onChanged();
        return (SystemPacketProto.SdkConnMgrInfo.Builder)getMgrInfoFieldBuilder().getBuilder();
      }
      
      public final SystemPacketProto.SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder()
      {
        if (this.mgrInfoBuilder_ != null) {
          return (SystemPacketProto.SdkConnMgrInfoOrBuilder)this.mgrInfoBuilder_.getMessageOrBuilder();
        }
        return this.mgrInfo_;
      }
      
      public final int getType()
      {
        return this.type_;
      }
      
      public final boolean hasMgrInfo()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasType()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdHandShakeReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return hasType();
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 209	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 215 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 144	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 218	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 144	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdHandShakeReq)) {
          return mergeFrom((SystemPacketProto.MnsCmdHandShakeReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdHandShakeReq paramMnsCmdHandShakeReq)
      {
        if (paramMnsCmdHandShakeReq == SystemPacketProto.MnsCmdHandShakeReq.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdHandShakeReq.hasType()) {
          setType(paramMnsCmdHandShakeReq.getType());
        }
        if (paramMnsCmdHandShakeReq.hasMgrInfo()) {
          mergeMgrInfo(paramMnsCmdHandShakeReq.getMgrInfo());
        }
        mergeUnknownFields(paramMnsCmdHandShakeReq.getUnknownFields());
        return this;
      }
      
      public final Builder mergeMgrInfo(SystemPacketProto.SdkConnMgrInfo paramSdkConnMgrInfo)
      {
        if (this.mgrInfoBuilder_ == null) {
          if (((this.bitField0_ & 0x2) == 2) && (this.mgrInfo_ != SystemPacketProto.SdkConnMgrInfo.getDefaultInstance()))
          {
            this.mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.newBuilder(this.mgrInfo_).mergeFrom(paramSdkConnMgrInfo).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.mgrInfo_ = paramSdkConnMgrInfo;
          break;
          this.mgrInfoBuilder_.mergeFrom(paramSdkConnMgrInfo);
        }
      }
      
      public final Builder setMgrInfo(SystemPacketProto.SdkConnMgrInfo.Builder paramBuilder)
      {
        if (this.mgrInfoBuilder_ == null)
        {
          this.mgrInfo_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.mgrInfoBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setMgrInfo(SystemPacketProto.SdkConnMgrInfo paramSdkConnMgrInfo)
      {
        if (this.mgrInfoBuilder_ == null)
        {
          if (paramSdkConnMgrInfo == null) {
            throw new NullPointerException();
          }
          this.mgrInfo_ = paramSdkConnMgrInfo;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.mgrInfoBuilder_.setMessage(paramSdkConnMgrInfo);
        }
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
  
  public static abstract interface MnsCmdHandShakeReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract SystemPacketProto.SdkConnMgrInfo getMgrInfo();
    
    public abstract SystemPacketProto.SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder();
    
    public abstract int getType();
    
    public abstract boolean hasMgrInfo();
    
    public abstract boolean hasType();
  }
  
  public static final class MnsCmdHandShakeRsp
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdHandShakeRspOrBuilder
  {
    public static final int CLIENTINFO_FIELD_NUMBER = 4;
    public static final int CROSS_OPR_FIELD_NUMBER = 5;
    public static Parser<MnsCmdHandShakeRsp> PARSER = new SystemPacketProto.MnsCmdHandShakeRsp.1();
    public static final int REDIRECT_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    public static final int UPRINCIPLE_FIELD_NUMBER = 3;
    private static final MnsCmdHandShakeRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object clientinfo_;
    private int crossOpr_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private List<SystemPacketProto.MnsIpInfo> redirect_;
    private int type_;
    private final UnknownFieldSet unknownFields;
    private int uprinciple_;
    
    static
    {
      MnsCmdHandShakeRsp localMnsCmdHandShakeRsp = new MnsCmdHandShakeRsp(true);
      defaultInstance = localMnsCmdHandShakeRsp;
      localMnsCmdHandShakeRsp.initFields();
    }
    
    /* Error */
    private MnsCmdHandShakeRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 70	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 72	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 74	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 63	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:initFields	()V
      //   18: invokestatic 80	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 9
      //   23: iconst_0
      //   24: istore 6
      //   26: iconst_0
      //   27: istore_3
      //   28: iload 6
      //   30: ifne +414 -> 444
      //   33: iload_3
      //   34: istore 7
      //   36: iload_3
      //   37: istore 5
      //   39: iload_3
      //   40: istore 8
      //   42: aload_1
      //   43: invokevirtual 86	com/google/protobuf/CodedInputStream:readTag	()I
      //   46: istore 4
      //   48: iload 4
      //   50: lookupswitch	default:+426->476, 0:+429->479, 8:+86->136, 18:+171->221, 24:+263->313, 34:+302->352, 40:+354->404
      //   108: iload_3
      //   109: istore 7
      //   111: iload_3
      //   112: istore 5
      //   114: iload_3
      //   115: istore 8
      //   117: aload_0
      //   118: aload_1
      //   119: aload 9
      //   121: aload_2
      //   122: iload 4
      //   124: invokevirtual 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   127: ifne -99 -> 28
      //   130: iconst_1
      //   131: istore 6
      //   133: goto -105 -> 28
      //   136: iload_3
      //   137: istore 7
      //   139: iload_3
      //   140: istore 5
      //   142: iload_3
      //   143: istore 8
      //   145: aload_0
      //   146: aload_0
      //   147: getfield 92	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:bitField0_	I
      //   150: iconst_1
      //   151: ior
      //   152: putfield 92	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:bitField0_	I
      //   155: iload_3
      //   156: istore 7
      //   158: iload_3
      //   159: istore 5
      //   161: iload_3
      //   162: istore 8
      //   164: aload_0
      //   165: aload_1
      //   166: invokevirtual 95	com/google/protobuf/CodedInputStream:readInt32	()I
      //   169: putfield 97	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:type_	I
      //   172: goto -144 -> 28
      //   175: astore_1
      //   176: iload 7
      //   178: istore 5
      //   180: aload_1
      //   181: aload_0
      //   182: invokevirtual 101	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   185: athrow
      //   186: astore_1
      //   187: iload 5
      //   189: iconst_2
      //   190: iand
      //   191: iconst_2
      //   192: if_icmpne +14 -> 206
      //   195: aload_0
      //   196: aload_0
      //   197: getfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:redirect_	Ljava/util/List;
      //   200: invokestatic 109	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   203: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:redirect_	Ljava/util/List;
      //   206: aload_0
      //   207: aload 9
      //   209: invokevirtual 115	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   212: putfield 117	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   215: aload_0
      //   216: invokevirtual 120	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:makeExtensionsImmutable	()V
      //   219: aload_1
      //   220: athrow
      //   221: iload_3
      //   222: istore 4
      //   224: iload_3
      //   225: iconst_2
      //   226: iand
      //   227: iconst_2
      //   228: if_icmpeq +28 -> 256
      //   231: iload_3
      //   232: istore 7
      //   234: iload_3
      //   235: istore 5
      //   237: iload_3
      //   238: istore 8
      //   240: aload_0
      //   241: new 122	java/util/ArrayList
      //   244: dup
      //   245: invokespecial 123	java/util/ArrayList:<init>	()V
      //   248: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:redirect_	Ljava/util/List;
      //   251: iload_3
      //   252: iconst_2
      //   253: ior
      //   254: istore 4
      //   256: iload 4
      //   258: istore 7
      //   260: iload 4
      //   262: istore 5
      //   264: iload 4
      //   266: istore 8
      //   268: aload_0
      //   269: getfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:redirect_	Ljava/util/List;
      //   272: aload_1
      //   273: getstatic 126	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:PARSER	Lcom/google/protobuf/Parser;
      //   276: aload_2
      //   277: invokevirtual 130	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   280: invokeinterface 136 2 0
      //   285: pop
      //   286: iload 4
      //   288: istore_3
      //   289: goto -261 -> 28
      //   292: astore_1
      //   293: iload 8
      //   295: istore 5
      //   297: new 67	com/google/protobuf/InvalidProtocolBufferException
      //   300: dup
      //   301: aload_1
      //   302: invokevirtual 140	java/io/IOException:getMessage	()Ljava/lang/String;
      //   305: invokespecial 143	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   308: aload_0
      //   309: invokevirtual 101	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   312: athrow
      //   313: iload_3
      //   314: istore 7
      //   316: iload_3
      //   317: istore 5
      //   319: iload_3
      //   320: istore 8
      //   322: aload_0
      //   323: aload_0
      //   324: getfield 92	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:bitField0_	I
      //   327: iconst_2
      //   328: ior
      //   329: putfield 92	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:bitField0_	I
      //   332: iload_3
      //   333: istore 7
      //   335: iload_3
      //   336: istore 5
      //   338: iload_3
      //   339: istore 8
      //   341: aload_0
      //   342: aload_1
      //   343: invokevirtual 95	com/google/protobuf/CodedInputStream:readInt32	()I
      //   346: putfield 145	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:uprinciple_	I
      //   349: goto -321 -> 28
      //   352: iload_3
      //   353: istore 7
      //   355: iload_3
      //   356: istore 5
      //   358: iload_3
      //   359: istore 8
      //   361: aload_1
      //   362: invokevirtual 149	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   365: astore 10
      //   367: iload_3
      //   368: istore 7
      //   370: iload_3
      //   371: istore 5
      //   373: iload_3
      //   374: istore 8
      //   376: aload_0
      //   377: aload_0
      //   378: getfield 92	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:bitField0_	I
      //   381: iconst_4
      //   382: ior
      //   383: putfield 92	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:bitField0_	I
      //   386: iload_3
      //   387: istore 7
      //   389: iload_3
      //   390: istore 5
      //   392: iload_3
      //   393: istore 8
      //   395: aload_0
      //   396: aload 10
      //   398: putfield 151	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:clientinfo_	Ljava/lang/Object;
      //   401: goto -373 -> 28
      //   404: iload_3
      //   405: istore 7
      //   407: iload_3
      //   408: istore 5
      //   410: iload_3
      //   411: istore 8
      //   413: aload_0
      //   414: aload_0
      //   415: getfield 92	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:bitField0_	I
      //   418: bipush 8
      //   420: ior
      //   421: putfield 92	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:bitField0_	I
      //   424: iload_3
      //   425: istore 7
      //   427: iload_3
      //   428: istore 5
      //   430: iload_3
      //   431: istore 8
      //   433: aload_0
      //   434: aload_1
      //   435: invokevirtual 95	com/google/protobuf/CodedInputStream:readInt32	()I
      //   438: putfield 153	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:crossOpr_	I
      //   441: goto -413 -> 28
      //   444: iload_3
      //   445: iconst_2
      //   446: iand
      //   447: iconst_2
      //   448: if_icmpne +14 -> 462
      //   451: aload_0
      //   452: aload_0
      //   453: getfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:redirect_	Ljava/util/List;
      //   456: invokestatic 109	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   459: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:redirect_	Ljava/util/List;
      //   462: aload_0
      //   463: aload 9
      //   465: invokevirtual 115	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   468: putfield 117	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   471: aload_0
      //   472: invokevirtual 120	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:makeExtensionsImmutable	()V
      //   475: return
      //   476: goto -368 -> 108
      //   479: iconst_1
      //   480: istore 6
      //   482: goto -454 -> 28
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	485	0	this	MnsCmdHandShakeRsp
      //   0	485	1	paramCodedInputStream	CodedInputStream
      //   0	485	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   27	420	3	i	int
      //   46	241	4	j	int
      //   37	392	5	k	int
      //   24	457	6	m	int
      //   34	392	7	n	int
      //   40	392	8	i1	int
      //   21	443	9	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   365	32	10	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   42	48	175	com/google/protobuf/InvalidProtocolBufferException
      //   117	130	175	com/google/protobuf/InvalidProtocolBufferException
      //   145	155	175	com/google/protobuf/InvalidProtocolBufferException
      //   164	172	175	com/google/protobuf/InvalidProtocolBufferException
      //   240	251	175	com/google/protobuf/InvalidProtocolBufferException
      //   268	286	175	com/google/protobuf/InvalidProtocolBufferException
      //   322	332	175	com/google/protobuf/InvalidProtocolBufferException
      //   341	349	175	com/google/protobuf/InvalidProtocolBufferException
      //   361	367	175	com/google/protobuf/InvalidProtocolBufferException
      //   376	386	175	com/google/protobuf/InvalidProtocolBufferException
      //   395	401	175	com/google/protobuf/InvalidProtocolBufferException
      //   413	424	175	com/google/protobuf/InvalidProtocolBufferException
      //   433	441	175	com/google/protobuf/InvalidProtocolBufferException
      //   42	48	186	finally
      //   117	130	186	finally
      //   145	155	186	finally
      //   164	172	186	finally
      //   180	186	186	finally
      //   240	251	186	finally
      //   268	286	186	finally
      //   297	313	186	finally
      //   322	332	186	finally
      //   341	349	186	finally
      //   361	367	186	finally
      //   376	386	186	finally
      //   395	401	186	finally
      //   413	424	186	finally
      //   433	441	186	finally
      //   42	48	292	java/io/IOException
      //   117	130	292	java/io/IOException
      //   145	155	292	java/io/IOException
      //   164	172	292	java/io/IOException
      //   240	251	292	java/io/IOException
      //   268	286	292	java/io/IOException
      //   322	332	292	java/io/IOException
      //   341	349	292	java/io/IOException
      //   361	367	292	java/io/IOException
      //   376	386	292	java/io/IOException
      //   395	401	292	java/io/IOException
      //   413	424	292	java/io/IOException
      //   433	441	292	java/io/IOException
    }
    
    private MnsCmdHandShakeRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdHandShakeRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdHandShakeRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_descriptor;
    }
    
    private void initFields()
    {
      this.type_ = 0;
      this.redirect_ = Collections.emptyList();
      this.uprinciple_ = 0;
      this.clientinfo_ = "";
      this.crossOpr_ = 0;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$14300();
    }
    
    public static Builder newBuilder(MnsCmdHandShakeRsp paramMnsCmdHandShakeRsp)
    {
      return newBuilder().mergeFrom(paramMnsCmdHandShakeRsp);
    }
    
    public static MnsCmdHandShakeRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdHandShakeRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHandShakeRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdHandShakeRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHandShakeRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdHandShakeRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHandShakeRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdHandShakeRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHandShakeRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdHandShakeRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHandShakeRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getClientinfo()
    {
      Object localObject = this.clientinfo_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.clientinfo_ = str;
      }
      return str;
    }
    
    public final ByteString getClientinfoBytes()
    {
      Object localObject = this.clientinfo_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.clientinfo_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getCrossOpr()
    {
      return this.crossOpr_;
    }
    
    public final MnsCmdHandShakeRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<MnsCmdHandShakeRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final SystemPacketProto.MnsIpInfo getRedirect(int paramInt)
    {
      return (SystemPacketProto.MnsIpInfo)this.redirect_.get(paramInt);
    }
    
    public final int getRedirectCount()
    {
      return this.redirect_.size();
    }
    
    public final List<SystemPacketProto.MnsIpInfo> getRedirectList()
    {
      return this.redirect_;
    }
    
    public final SystemPacketProto.MnsIpInfoOrBuilder getRedirectOrBuilder(int paramInt)
    {
      return (SystemPacketProto.MnsIpInfoOrBuilder)this.redirect_.get(paramInt);
    }
    
    public final List<? extends SystemPacketProto.MnsIpInfoOrBuilder> getRedirectOrBuilderList()
    {
      return this.redirect_;
    }
    
    public final int getSerializedSize()
    {
      int j = 0;
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      if ((this.bitField0_ & 0x1) == 1) {
        i = CodedOutputStream.computeInt32Size(1, this.type_) + 0;
      }
      for (;;)
      {
        if (j < this.redirect_.size())
        {
          int k = CodedOutputStream.computeMessageSize(2, (MessageLite)this.redirect_.get(j));
          j += 1;
          i = k + i;
        }
        else
        {
          j = i;
          if ((this.bitField0_ & 0x2) == 2) {
            j = i + CodedOutputStream.computeInt32Size(3, this.uprinciple_);
          }
          i = j;
          if ((this.bitField0_ & 0x4) == 4) {
            i = j + CodedOutputStream.computeBytesSize(4, getClientinfoBytes());
          }
          j = i;
          if ((this.bitField0_ & 0x8) == 8) {
            j = i + CodedOutputStream.computeInt32Size(5, this.crossOpr_);
          }
          i = getUnknownFields().getSerializedSize() + j;
          this.memoizedSerializedSize = i;
          return i;
          i = 0;
        }
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
    
    public final int getUprinciple()
    {
      return this.uprinciple_;
    }
    
    public final boolean hasClientinfo()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasCrossOpr()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasType()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasUprinciple()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHandShakeRsp.class, Builder.class);
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
      if (!hasType())
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
        paramCodedOutputStream.writeInt32(1, this.type_);
      }
      int i = 0;
      while (i < this.redirect_.size())
      {
        paramCodedOutputStream.writeMessage(2, (MessageLite)this.redirect_.get(i));
        i += 1;
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeInt32(3, this.uprinciple_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(4, getClientinfoBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeInt32(5, this.crossOpr_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdHandShakeRspOrBuilder
    {
      private int bitField0_;
      private Object clientinfo_ = "";
      private int crossOpr_;
      private RepeatedFieldBuilder<SystemPacketProto.MnsIpInfo, SystemPacketProto.MnsIpInfo.Builder, SystemPacketProto.MnsIpInfoOrBuilder> redirectBuilder_;
      private List<SystemPacketProto.MnsIpInfo> redirect_ = Collections.emptyList();
      private int type_;
      private int uprinciple_;
      
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
      
      private void ensureRedirectIsMutable()
      {
        if ((this.bitField0_ & 0x2) != 2)
        {
          this.redirect_ = new ArrayList(this.redirect_);
          this.bitField0_ |= 0x2;
        }
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_descriptor;
      }
      
      private RepeatedFieldBuilder<SystemPacketProto.MnsIpInfo, SystemPacketProto.MnsIpInfo.Builder, SystemPacketProto.MnsIpInfoOrBuilder> getRedirectFieldBuilder()
      {
        List localList;
        if (this.redirectBuilder_ == null)
        {
          localList = this.redirect_;
          if ((this.bitField0_ & 0x2) != 2) {
            break label55;
          }
        }
        label55:
        for (boolean bool = true;; bool = false)
        {
          this.redirectBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
          this.redirect_ = null;
          return this.redirectBuilder_;
        }
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (SystemPacketProto.MnsCmdHandShakeRsp.alwaysUseFieldBuilders) {
          getRedirectFieldBuilder();
        }
      }
      
      public final Builder addAllRedirect(Iterable<? extends SystemPacketProto.MnsIpInfo> paramIterable)
      {
        if (this.redirectBuilder_ == null)
        {
          ensureRedirectIsMutable();
          AbstractMessageLite.Builder.addAll(paramIterable, this.redirect_);
          onChanged();
          return this;
        }
        this.redirectBuilder_.addAllMessages(paramIterable);
        return this;
      }
      
      public final Builder addRedirect(int paramInt, SystemPacketProto.MnsIpInfo.Builder paramBuilder)
      {
        if (this.redirectBuilder_ == null)
        {
          ensureRedirectIsMutable();
          this.redirect_.add(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.redirectBuilder_.addMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder addRedirect(int paramInt, SystemPacketProto.MnsIpInfo paramMnsIpInfo)
      {
        if (this.redirectBuilder_ == null)
        {
          if (paramMnsIpInfo == null) {
            throw new NullPointerException();
          }
          ensureRedirectIsMutable();
          this.redirect_.add(paramInt, paramMnsIpInfo);
          onChanged();
          return this;
        }
        this.redirectBuilder_.addMessage(paramInt, paramMnsIpInfo);
        return this;
      }
      
      public final Builder addRedirect(SystemPacketProto.MnsIpInfo.Builder paramBuilder)
      {
        if (this.redirectBuilder_ == null)
        {
          ensureRedirectIsMutable();
          this.redirect_.add(paramBuilder.build());
          onChanged();
          return this;
        }
        this.redirectBuilder_.addMessage(paramBuilder.build());
        return this;
      }
      
      public final Builder addRedirect(SystemPacketProto.MnsIpInfo paramMnsIpInfo)
      {
        if (this.redirectBuilder_ == null)
        {
          if (paramMnsIpInfo == null) {
            throw new NullPointerException();
          }
          ensureRedirectIsMutable();
          this.redirect_.add(paramMnsIpInfo);
          onChanged();
          return this;
        }
        this.redirectBuilder_.addMessage(paramMnsIpInfo);
        return this;
      }
      
      public final SystemPacketProto.MnsIpInfo.Builder addRedirectBuilder()
      {
        return (SystemPacketProto.MnsIpInfo.Builder)getRedirectFieldBuilder().addBuilder(SystemPacketProto.MnsIpInfo.getDefaultInstance());
      }
      
      public final SystemPacketProto.MnsIpInfo.Builder addRedirectBuilder(int paramInt)
      {
        return (SystemPacketProto.MnsIpInfo.Builder)getRedirectFieldBuilder().addBuilder(paramInt, SystemPacketProto.MnsIpInfo.getDefaultInstance());
      }
      
      public final SystemPacketProto.MnsCmdHandShakeRsp build()
      {
        SystemPacketProto.MnsCmdHandShakeRsp localMnsCmdHandShakeRsp = buildPartial();
        if (!localMnsCmdHandShakeRsp.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdHandShakeRsp);
        }
        return localMnsCmdHandShakeRsp;
      }
      
      public final SystemPacketProto.MnsCmdHandShakeRsp buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsCmdHandShakeRsp localMnsCmdHandShakeRsp = new SystemPacketProto.MnsCmdHandShakeRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdHandShakeRsp.access$14702(localMnsCmdHandShakeRsp, this.type_);
          if (this.redirectBuilder_ == null)
          {
            if ((this.bitField0_ & 0x2) == 2)
            {
              this.redirect_ = Collections.unmodifiableList(this.redirect_);
              this.bitField0_ &= 0xFFFFFFFD;
            }
            SystemPacketProto.MnsCmdHandShakeRsp.access$14802(localMnsCmdHandShakeRsp, this.redirect_);
          }
          for (;;)
          {
            int i = j;
            if ((k & 0x4) == 4) {
              i = j | 0x2;
            }
            SystemPacketProto.MnsCmdHandShakeRsp.access$14902(localMnsCmdHandShakeRsp, this.uprinciple_);
            j = i;
            if ((k & 0x8) == 8) {
              j = i | 0x4;
            }
            SystemPacketProto.MnsCmdHandShakeRsp.access$15002(localMnsCmdHandShakeRsp, this.clientinfo_);
            i = j;
            if ((k & 0x10) == 16) {
              i = j | 0x8;
            }
            SystemPacketProto.MnsCmdHandShakeRsp.access$15102(localMnsCmdHandShakeRsp, this.crossOpr_);
            SystemPacketProto.MnsCmdHandShakeRsp.access$15202(localMnsCmdHandShakeRsp, i);
            onBuilt();
            return localMnsCmdHandShakeRsp;
            SystemPacketProto.MnsCmdHandShakeRsp.access$14802(localMnsCmdHandShakeRsp, this.redirectBuilder_.build());
          }
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.type_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        if (this.redirectBuilder_ == null)
        {
          this.redirect_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFD;
        }
        for (;;)
        {
          this.uprinciple_ = 0;
          this.bitField0_ &= 0xFFFFFFFB;
          this.clientinfo_ = "";
          this.bitField0_ &= 0xFFFFFFF7;
          this.crossOpr_ = 0;
          this.bitField0_ &= 0xFFFFFFEF;
          return this;
          this.redirectBuilder_.clear();
        }
      }
      
      public final Builder clearClientinfo()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.clientinfo_ = SystemPacketProto.MnsCmdHandShakeRsp.getDefaultInstance().getClientinfo();
        onChanged();
        return this;
      }
      
      public final Builder clearCrossOpr()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.crossOpr_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearRedirect()
      {
        if (this.redirectBuilder_ == null)
        {
          this.redirect_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFD;
          onChanged();
          return this;
        }
        this.redirectBuilder_.clear();
        return this;
      }
      
      public final Builder clearType()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.type_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearUprinciple()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.uprinciple_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getClientinfo()
      {
        Object localObject = this.clientinfo_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.clientinfo_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getClientinfoBytes()
      {
        Object localObject = this.clientinfo_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.clientinfo_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getCrossOpr()
      {
        return this.crossOpr_;
      }
      
      public final SystemPacketProto.MnsCmdHandShakeRsp getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdHandShakeRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_descriptor;
      }
      
      public final SystemPacketProto.MnsIpInfo getRedirect(int paramInt)
      {
        if (this.redirectBuilder_ == null) {
          return (SystemPacketProto.MnsIpInfo)this.redirect_.get(paramInt);
        }
        return (SystemPacketProto.MnsIpInfo)this.redirectBuilder_.getMessage(paramInt);
      }
      
      public final SystemPacketProto.MnsIpInfo.Builder getRedirectBuilder(int paramInt)
      {
        return (SystemPacketProto.MnsIpInfo.Builder)getRedirectFieldBuilder().getBuilder(paramInt);
      }
      
      public final List<SystemPacketProto.MnsIpInfo.Builder> getRedirectBuilderList()
      {
        return getRedirectFieldBuilder().getBuilderList();
      }
      
      public final int getRedirectCount()
      {
        if (this.redirectBuilder_ == null) {
          return this.redirect_.size();
        }
        return this.redirectBuilder_.getCount();
      }
      
      public final List<SystemPacketProto.MnsIpInfo> getRedirectList()
      {
        if (this.redirectBuilder_ == null) {
          return Collections.unmodifiableList(this.redirect_);
        }
        return this.redirectBuilder_.getMessageList();
      }
      
      public final SystemPacketProto.MnsIpInfoOrBuilder getRedirectOrBuilder(int paramInt)
      {
        if (this.redirectBuilder_ == null) {
          return (SystemPacketProto.MnsIpInfoOrBuilder)this.redirect_.get(paramInt);
        }
        return (SystemPacketProto.MnsIpInfoOrBuilder)this.redirectBuilder_.getMessageOrBuilder(paramInt);
      }
      
      public final List<? extends SystemPacketProto.MnsIpInfoOrBuilder> getRedirectOrBuilderList()
      {
        if (this.redirectBuilder_ != null) {
          return this.redirectBuilder_.getMessageOrBuilderList();
        }
        return Collections.unmodifiableList(this.redirect_);
      }
      
      public final int getType()
      {
        return this.type_;
      }
      
      public final int getUprinciple()
      {
        return this.uprinciple_;
      }
      
      public final boolean hasClientinfo()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasCrossOpr()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasType()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasUprinciple()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHandShakeRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdHandShakeRsp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return hasType();
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 351	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 357 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 241	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 360	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 241	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdHandShakeRsp)) {
          return mergeFrom((SystemPacketProto.MnsCmdHandShakeRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdHandShakeRsp paramMnsCmdHandShakeRsp)
      {
        RepeatedFieldBuilder localRepeatedFieldBuilder = null;
        if (paramMnsCmdHandShakeRsp == SystemPacketProto.MnsCmdHandShakeRsp.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdHandShakeRsp.hasType()) {
          setType(paramMnsCmdHandShakeRsp.getType());
        }
        if (this.redirectBuilder_ == null) {
          if (!paramMnsCmdHandShakeRsp.redirect_.isEmpty())
          {
            if (!this.redirect_.isEmpty()) {
              break label154;
            }
            this.redirect_ = paramMnsCmdHandShakeRsp.redirect_;
            this.bitField0_ &= 0xFFFFFFFD;
            onChanged();
          }
        }
        for (;;)
        {
          if (paramMnsCmdHandShakeRsp.hasUprinciple()) {
            setUprinciple(paramMnsCmdHandShakeRsp.getUprinciple());
          }
          if (paramMnsCmdHandShakeRsp.hasClientinfo())
          {
            this.bitField0_ |= 0x8;
            this.clientinfo_ = paramMnsCmdHandShakeRsp.clientinfo_;
            onChanged();
          }
          if (paramMnsCmdHandShakeRsp.hasCrossOpr()) {
            setCrossOpr(paramMnsCmdHandShakeRsp.getCrossOpr());
          }
          mergeUnknownFields(paramMnsCmdHandShakeRsp.getUnknownFields());
          return this;
          label154:
          ensureRedirectIsMutable();
          this.redirect_.addAll(paramMnsCmdHandShakeRsp.redirect_);
          break;
          if (!paramMnsCmdHandShakeRsp.redirect_.isEmpty()) {
            if (this.redirectBuilder_.isEmpty())
            {
              this.redirectBuilder_.dispose();
              this.redirectBuilder_ = null;
              this.redirect_ = paramMnsCmdHandShakeRsp.redirect_;
              this.bitField0_ &= 0xFFFFFFFD;
              if (SystemPacketProto.MnsCmdHandShakeRsp.alwaysUseFieldBuilders) {
                localRepeatedFieldBuilder = getRedirectFieldBuilder();
              }
              this.redirectBuilder_ = localRepeatedFieldBuilder;
            }
            else
            {
              this.redirectBuilder_.addAllMessages(paramMnsCmdHandShakeRsp.redirect_);
            }
          }
        }
      }
      
      public final Builder removeRedirect(int paramInt)
      {
        if (this.redirectBuilder_ == null)
        {
          ensureRedirectIsMutable();
          this.redirect_.remove(paramInt);
          onChanged();
          return this;
        }
        this.redirectBuilder_.remove(paramInt);
        return this;
      }
      
      public final Builder setClientinfo(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.clientinfo_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setClientinfoBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.clientinfo_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCrossOpr(int paramInt)
      {
        this.bitField0_ |= 0x10;
        this.crossOpr_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setRedirect(int paramInt, SystemPacketProto.MnsIpInfo.Builder paramBuilder)
      {
        if (this.redirectBuilder_ == null)
        {
          ensureRedirectIsMutable();
          this.redirect_.set(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.redirectBuilder_.setMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder setRedirect(int paramInt, SystemPacketProto.MnsIpInfo paramMnsIpInfo)
      {
        if (this.redirectBuilder_ == null)
        {
          if (paramMnsIpInfo == null) {
            throw new NullPointerException();
          }
          ensureRedirectIsMutable();
          this.redirect_.set(paramInt, paramMnsIpInfo);
          onChanged();
          return this;
        }
        this.redirectBuilder_.setMessage(paramInt, paramMnsIpInfo);
        return this;
      }
      
      public final Builder setType(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.type_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setUprinciple(int paramInt)
      {
        this.bitField0_ |= 0x4;
        this.uprinciple_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdHandShakeRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getClientinfo();
    
    public abstract ByteString getClientinfoBytes();
    
    public abstract int getCrossOpr();
    
    public abstract SystemPacketProto.MnsIpInfo getRedirect(int paramInt);
    
    public abstract int getRedirectCount();
    
    public abstract List<SystemPacketProto.MnsIpInfo> getRedirectList();
    
    public abstract SystemPacketProto.MnsIpInfoOrBuilder getRedirectOrBuilder(int paramInt);
    
    public abstract List<? extends SystemPacketProto.MnsIpInfoOrBuilder> getRedirectOrBuilderList();
    
    public abstract int getType();
    
    public abstract int getUprinciple();
    
    public abstract boolean hasClientinfo();
    
    public abstract boolean hasCrossOpr();
    
    public abstract boolean hasType();
    
    public abstract boolean hasUprinciple();
  }
  
  public static final class MnsCmdHeartBeat
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdHeartBeatOrBuilder
  {
    public static final int DEVICETOKEN_FIELD_NUMBER = 6;
    public static final int IS_FAKE_HB_FIELD_NUMBER = 4;
    public static final int MGR_INFO_FIELD_NUMBER = 2;
    public static Parser<MnsCmdHeartBeat> PARSER = new SystemPacketProto.MnsCmdHeartBeat.1();
    public static final int PTIME_FIELD_NUMBER = 1;
    public static final int SUID_FIELD_NUMBER = 3;
    public static final int TIMESTAMP_FIELD_NUMBER = 5;
    private static final MnsCmdHeartBeat defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private ByteString devicetoken_;
    private boolean isFakeHb_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private SystemPacketProto.SdkConnMgrInfo mgrInfo_;
    private int ptime_;
    private Object sUID_;
    private long timeStamp_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdHeartBeat localMnsCmdHeartBeat = new MnsCmdHeartBeat(true);
      defaultInstance = localMnsCmdHeartBeat;
      localMnsCmdHeartBeat.initFields();
    }
    
    /* Error */
    private MnsCmdHeartBeat(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 74	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 76	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 78	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 67	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:initFields	()V
      //   18: invokestatic 84	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 6
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +319 -> 345
      //   29: aload_1
      //   30: invokevirtual 90	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+328->365, 0:+331->368, 8:+85->122, 18:+129->166, 26:+217->254, 32:+242->279, 40:+264->301, 50:+286->323
      //   104: aload_0
      //   105: aload_1
      //   106: aload 6
      //   108: aload_2
      //   109: iload 4
      //   111: invokevirtual 94	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   114: ifne -89 -> 25
      //   117: iconst_1
      //   118: istore_3
      //   119: goto -94 -> 25
      //   122: aload_0
      //   123: aload_0
      //   124: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   127: iconst_1
      //   128: ior
      //   129: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   132: aload_0
      //   133: aload_1
      //   134: invokevirtual 99	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   137: putfield 101	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:ptime_	I
      //   140: goto -115 -> 25
      //   143: astore_1
      //   144: aload_1
      //   145: aload_0
      //   146: invokevirtual 105	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   149: athrow
      //   150: astore_1
      //   151: aload_0
      //   152: aload 6
      //   154: invokevirtual 111	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   157: putfield 113	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   160: aload_0
      //   161: invokevirtual 116	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:makeExtensionsImmutable	()V
      //   164: aload_1
      //   165: athrow
      //   166: aload_0
      //   167: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   170: iconst_2
      //   171: iand
      //   172: iconst_2
      //   173: if_icmpne +186 -> 359
      //   176: aload_0
      //   177: getfield 118	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:mgrInfo_	Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   180: invokevirtual 124	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:toBuilder	()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;
      //   183: astore 5
      //   185: aload_0
      //   186: aload_1
      //   187: getstatic 125	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:PARSER	Lcom/google/protobuf/Parser;
      //   190: aload_2
      //   191: invokevirtual 129	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   194: checkcast 120	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo
      //   197: putfield 118	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:mgrInfo_	Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   200: aload 5
      //   202: ifnull +22 -> 224
      //   205: aload 5
      //   207: aload_0
      //   208: getfield 118	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:mgrInfo_	Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   211: invokevirtual 135	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;
      //   214: pop
      //   215: aload_0
      //   216: aload 5
      //   218: invokevirtual 139	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   221: putfield 118	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:mgrInfo_	Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
      //   224: aload_0
      //   225: aload_0
      //   226: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   229: iconst_2
      //   230: ior
      //   231: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   234: goto -209 -> 25
      //   237: astore_1
      //   238: new 71	com/google/protobuf/InvalidProtocolBufferException
      //   241: dup
      //   242: aload_1
      //   243: invokevirtual 143	java/io/IOException:getMessage	()Ljava/lang/String;
      //   246: invokespecial 146	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   249: aload_0
      //   250: invokevirtual 105	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   253: athrow
      //   254: aload_1
      //   255: invokevirtual 150	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   258: astore 5
      //   260: aload_0
      //   261: aload_0
      //   262: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   265: iconst_4
      //   266: ior
      //   267: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   270: aload_0
      //   271: aload 5
      //   273: putfield 152	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:sUID_	Ljava/lang/Object;
      //   276: goto -251 -> 25
      //   279: aload_0
      //   280: aload_0
      //   281: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   284: bipush 8
      //   286: ior
      //   287: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   290: aload_0
      //   291: aload_1
      //   292: invokevirtual 156	com/google/protobuf/CodedInputStream:readBool	()Z
      //   295: putfield 158	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:isFakeHb_	Z
      //   298: goto -273 -> 25
      //   301: aload_0
      //   302: aload_0
      //   303: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   306: bipush 16
      //   308: ior
      //   309: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   312: aload_0
      //   313: aload_1
      //   314: invokevirtual 162	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   317: putfield 164	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:timeStamp_	J
      //   320: goto -295 -> 25
      //   323: aload_0
      //   324: aload_0
      //   325: getfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   328: bipush 32
      //   330: ior
      //   331: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:bitField0_	I
      //   334: aload_0
      //   335: aload_1
      //   336: invokevirtual 150	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   339: putfield 166	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:devicetoken_	Lcom/google/protobuf/ByteString;
      //   342: goto -317 -> 25
      //   345: aload_0
      //   346: aload 6
      //   348: invokevirtual 111	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   351: putfield 113	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   354: aload_0
      //   355: invokevirtual 116	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:makeExtensionsImmutable	()V
      //   358: return
      //   359: aconst_null
      //   360: astore 5
      //   362: goto -177 -> 185
      //   365: goto -261 -> 104
      //   368: iconst_1
      //   369: istore_3
      //   370: goto -345 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	373	0	this	MnsCmdHeartBeat
      //   0	373	1	paramCodedInputStream	CodedInputStream
      //   0	373	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	346	3	i	int
      //   33	77	4	j	int
      //   183	178	5	localObject	Object
      //   21	326	6	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	143	com/google/protobuf/InvalidProtocolBufferException
      //   104	117	143	com/google/protobuf/InvalidProtocolBufferException
      //   122	140	143	com/google/protobuf/InvalidProtocolBufferException
      //   166	185	143	com/google/protobuf/InvalidProtocolBufferException
      //   185	200	143	com/google/protobuf/InvalidProtocolBufferException
      //   205	224	143	com/google/protobuf/InvalidProtocolBufferException
      //   224	234	143	com/google/protobuf/InvalidProtocolBufferException
      //   254	276	143	com/google/protobuf/InvalidProtocolBufferException
      //   279	298	143	com/google/protobuf/InvalidProtocolBufferException
      //   301	320	143	com/google/protobuf/InvalidProtocolBufferException
      //   323	342	143	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	150	finally
      //   104	117	150	finally
      //   122	140	150	finally
      //   144	150	150	finally
      //   166	185	150	finally
      //   185	200	150	finally
      //   205	224	150	finally
      //   224	234	150	finally
      //   238	254	150	finally
      //   254	276	150	finally
      //   279	298	150	finally
      //   301	320	150	finally
      //   323	342	150	finally
      //   29	35	237	java/io/IOException
      //   104	117	237	java/io/IOException
      //   122	140	237	java/io/IOException
      //   166	185	237	java/io/IOException
      //   185	200	237	java/io/IOException
      //   205	224	237	java/io/IOException
      //   224	234	237	java/io/IOException
      //   254	276	237	java/io/IOException
      //   279	298	237	java/io/IOException
      //   301	320	237	java/io/IOException
      //   323	342	237	java/io/IOException
    }
    
    private MnsCmdHeartBeat(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdHeartBeat(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdHeartBeat getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_descriptor;
    }
    
    private void initFields()
    {
      this.ptime_ = 0;
      this.mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.getDefaultInstance();
      this.sUID_ = "";
      this.isFakeHb_ = false;
      this.timeStamp_ = 0L;
      this.devicetoken_ = ByteString.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$3500();
    }
    
    public static Builder newBuilder(MnsCmdHeartBeat paramMnsCmdHeartBeat)
    {
      return newBuilder().mergeFrom(paramMnsCmdHeartBeat);
    }
    
    public static MnsCmdHeartBeat parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdHeartBeat)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdHeartBeat parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHeartBeat)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHeartBeat parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHeartBeat)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdHeartBeat parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHeartBeat)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHeartBeat parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdHeartBeat)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdHeartBeat parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHeartBeat)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHeartBeat parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdHeartBeat)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdHeartBeat parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHeartBeat)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHeartBeat parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHeartBeat)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdHeartBeat parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHeartBeat)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdHeartBeat getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final ByteString getDevicetoken()
    {
      return this.devicetoken_;
    }
    
    public final boolean getIsFakeHb()
    {
      return this.isFakeHb_;
    }
    
    public final SystemPacketProto.SdkConnMgrInfo getMgrInfo()
    {
      return this.mgrInfo_;
    }
    
    public final SystemPacketProto.SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder()
    {
      return this.mgrInfo_;
    }
    
    public final Parser<MnsCmdHeartBeat> getParserForType()
    {
      return PARSER;
    }
    
    public final int getPtime()
    {
      return this.ptime_;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
        j = CodedOutputStream.computeUInt32Size(1, this.ptime_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeMessageSize(2, this.mgrInfo_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getSUIDBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBoolSize(4, this.isFakeHb_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeUInt64Size(5, this.timeStamp_);
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, this.devicetoken_);
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final long getTimeStamp()
    {
      return this.timeStamp_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasDevicetoken()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasIsFakeHb()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasMgrInfo()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasPtime()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasTimeStamp()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHeartBeat.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.ptime_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeMessage(2, this.mgrInfo_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getSUIDBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBool(4, this.isFakeHb_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeUInt64(5, this.timeStamp_);
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, this.devicetoken_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdHeartBeatOrBuilder
    {
      private int bitField0_;
      private ByteString devicetoken_ = ByteString.EMPTY;
      private boolean isFakeHb_;
      private SingleFieldBuilder<SystemPacketProto.SdkConnMgrInfo, SystemPacketProto.SdkConnMgrInfo.Builder, SystemPacketProto.SdkConnMgrInfoOrBuilder> mgrInfoBuilder_;
      private SystemPacketProto.SdkConnMgrInfo mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.getDefaultInstance();
      private int ptime_;
      private Object sUID_ = "";
      private long timeStamp_;
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_descriptor;
      }
      
      private SingleFieldBuilder<SystemPacketProto.SdkConnMgrInfo, SystemPacketProto.SdkConnMgrInfo.Builder, SystemPacketProto.SdkConnMgrInfoOrBuilder> getMgrInfoFieldBuilder()
      {
        if (this.mgrInfoBuilder_ == null)
        {
          this.mgrInfoBuilder_ = new SingleFieldBuilder(getMgrInfo(), getParentForChildren(), isClean());
          this.mgrInfo_ = null;
        }
        return this.mgrInfoBuilder_;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (SystemPacketProto.MnsCmdHeartBeat.alwaysUseFieldBuilders) {
          getMgrInfoFieldBuilder();
        }
      }
      
      public final SystemPacketProto.MnsCmdHeartBeat build()
      {
        SystemPacketProto.MnsCmdHeartBeat localMnsCmdHeartBeat = buildPartial();
        if (!localMnsCmdHeartBeat.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdHeartBeat);
        }
        return localMnsCmdHeartBeat;
      }
      
      public final SystemPacketProto.MnsCmdHeartBeat buildPartial()
      {
        int i = 1;
        SystemPacketProto.MnsCmdHeartBeat localMnsCmdHeartBeat = new SystemPacketProto.MnsCmdHeartBeat(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdHeartBeat.access$3902(localMnsCmdHeartBeat, this.ptime_);
          if ((k & 0x2) == 2) {}
          for (int j = i | 0x2;; j = i)
          {
            if (this.mgrInfoBuilder_ == null) {
              SystemPacketProto.MnsCmdHeartBeat.access$4002(localMnsCmdHeartBeat, this.mgrInfo_);
            }
            for (;;)
            {
              i = j;
              if ((k & 0x4) == 4) {
                i = j | 0x4;
              }
              SystemPacketProto.MnsCmdHeartBeat.access$4102(localMnsCmdHeartBeat, this.sUID_);
              j = i;
              if ((k & 0x8) == 8) {
                j = i | 0x8;
              }
              SystemPacketProto.MnsCmdHeartBeat.access$4202(localMnsCmdHeartBeat, this.isFakeHb_);
              i = j;
              if ((k & 0x10) == 16) {
                i = j | 0x10;
              }
              SystemPacketProto.MnsCmdHeartBeat.access$4302(localMnsCmdHeartBeat, this.timeStamp_);
              j = i;
              if ((k & 0x20) == 32) {
                j = i | 0x20;
              }
              SystemPacketProto.MnsCmdHeartBeat.access$4402(localMnsCmdHeartBeat, this.devicetoken_);
              SystemPacketProto.MnsCmdHeartBeat.access$4502(localMnsCmdHeartBeat, j);
              onBuilt();
              return localMnsCmdHeartBeat;
              SystemPacketProto.MnsCmdHeartBeat.access$4002(localMnsCmdHeartBeat, (SystemPacketProto.SdkConnMgrInfo)this.mgrInfoBuilder_.build());
            }
          }
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.ptime_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        if (this.mgrInfoBuilder_ == null) {
          this.mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          this.sUID_ = "";
          this.bitField0_ &= 0xFFFFFFFB;
          this.isFakeHb_ = false;
          this.bitField0_ &= 0xFFFFFFF7;
          this.timeStamp_ = 0L;
          this.bitField0_ &= 0xFFFFFFEF;
          this.devicetoken_ = ByteString.EMPTY;
          this.bitField0_ &= 0xFFFFFFDF;
          return this;
          this.mgrInfoBuilder_.clear();
        }
      }
      
      public final Builder clearDevicetoken()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.devicetoken_ = SystemPacketProto.MnsCmdHeartBeat.getDefaultInstance().getDevicetoken();
        onChanged();
        return this;
      }
      
      public final Builder clearIsFakeHb()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.isFakeHb_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearMgrInfo()
      {
        if (this.mgrInfoBuilder_ == null)
        {
          this.mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          return this;
          this.mgrInfoBuilder_.clear();
        }
      }
      
      public final Builder clearPtime()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.ptime_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.sUID_ = SystemPacketProto.MnsCmdHeartBeat.getDefaultInstance().getSUID();
        onChanged();
        return this;
      }
      
      public final Builder clearTimeStamp()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.timeStamp_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MnsCmdHeartBeat getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdHeartBeat.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_descriptor;
      }
      
      public final ByteString getDevicetoken()
      {
        return this.devicetoken_;
      }
      
      public final boolean getIsFakeHb()
      {
        return this.isFakeHb_;
      }
      
      public final SystemPacketProto.SdkConnMgrInfo getMgrInfo()
      {
        if (this.mgrInfoBuilder_ == null) {
          return this.mgrInfo_;
        }
        return (SystemPacketProto.SdkConnMgrInfo)this.mgrInfoBuilder_.getMessage();
      }
      
      public final SystemPacketProto.SdkConnMgrInfo.Builder getMgrInfoBuilder()
      {
        this.bitField0_ |= 0x2;
        onChanged();
        return (SystemPacketProto.SdkConnMgrInfo.Builder)getMgrInfoFieldBuilder().getBuilder();
      }
      
      public final SystemPacketProto.SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder()
      {
        if (this.mgrInfoBuilder_ != null) {
          return (SystemPacketProto.SdkConnMgrInfoOrBuilder)this.mgrInfoBuilder_.getMessageOrBuilder();
        }
        return this.mgrInfo_;
      }
      
      public final int getPtime()
      {
        return this.ptime_;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getTimeStamp()
      {
        return this.timeStamp_;
      }
      
      public final boolean hasDevicetoken()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasIsFakeHb()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasMgrInfo()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasPtime()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasTimeStamp()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeat_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdHeartBeat.class, Builder.class);
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
        //   2: getstatic 278	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 284 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 197	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 287	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 197	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdHeartBeat)) {
          return mergeFrom((SystemPacketProto.MnsCmdHeartBeat)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdHeartBeat paramMnsCmdHeartBeat)
      {
        if (paramMnsCmdHeartBeat == SystemPacketProto.MnsCmdHeartBeat.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdHeartBeat.hasPtime()) {
          setPtime(paramMnsCmdHeartBeat.getPtime());
        }
        if (paramMnsCmdHeartBeat.hasMgrInfo()) {
          mergeMgrInfo(paramMnsCmdHeartBeat.getMgrInfo());
        }
        if (paramMnsCmdHeartBeat.hasSUID())
        {
          this.bitField0_ |= 0x4;
          this.sUID_ = paramMnsCmdHeartBeat.sUID_;
          onChanged();
        }
        if (paramMnsCmdHeartBeat.hasIsFakeHb()) {
          setIsFakeHb(paramMnsCmdHeartBeat.getIsFakeHb());
        }
        if (paramMnsCmdHeartBeat.hasTimeStamp()) {
          setTimeStamp(paramMnsCmdHeartBeat.getTimeStamp());
        }
        if (paramMnsCmdHeartBeat.hasDevicetoken()) {
          setDevicetoken(paramMnsCmdHeartBeat.getDevicetoken());
        }
        mergeUnknownFields(paramMnsCmdHeartBeat.getUnknownFields());
        return this;
      }
      
      public final Builder mergeMgrInfo(SystemPacketProto.SdkConnMgrInfo paramSdkConnMgrInfo)
      {
        if (this.mgrInfoBuilder_ == null) {
          if (((this.bitField0_ & 0x2) == 2) && (this.mgrInfo_ != SystemPacketProto.SdkConnMgrInfo.getDefaultInstance()))
          {
            this.mgrInfo_ = SystemPacketProto.SdkConnMgrInfo.newBuilder(this.mgrInfo_).mergeFrom(paramSdkConnMgrInfo).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.mgrInfo_ = paramSdkConnMgrInfo;
          break;
          this.mgrInfoBuilder_.mergeFrom(paramSdkConnMgrInfo);
        }
      }
      
      public final Builder setDevicetoken(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.devicetoken_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setIsFakeHb(boolean paramBoolean)
      {
        this.bitField0_ |= 0x8;
        this.isFakeHb_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setMgrInfo(SystemPacketProto.SdkConnMgrInfo.Builder paramBuilder)
      {
        if (this.mgrInfoBuilder_ == null)
        {
          this.mgrInfo_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.mgrInfoBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setMgrInfo(SystemPacketProto.SdkConnMgrInfo paramSdkConnMgrInfo)
      {
        if (this.mgrInfoBuilder_ == null)
        {
          if (paramSdkConnMgrInfo == null) {
            throw new NullPointerException();
          }
          this.mgrInfo_ = paramSdkConnMgrInfo;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.mgrInfoBuilder_.setMessage(paramSdkConnMgrInfo);
        }
      }
      
      public final Builder setPtime(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.ptime_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setTimeStamp(long paramLong)
      {
        this.bitField0_ |= 0x10;
        this.timeStamp_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdHeartBeatOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getDevicetoken();
    
    public abstract boolean getIsFakeHb();
    
    public abstract SystemPacketProto.SdkConnMgrInfo getMgrInfo();
    
    public abstract SystemPacketProto.SdkConnMgrInfoOrBuilder getMgrInfoOrBuilder();
    
    public abstract int getPtime();
    
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract long getTimeStamp();
    
    public abstract boolean hasDevicetoken();
    
    public abstract boolean hasIsFakeHb();
    
    public abstract boolean hasMgrInfo();
    
    public abstract boolean hasPtime();
    
    public abstract boolean hasSUID();
    
    public abstract boolean hasTimeStamp();
  }
  
  public static final class MnsCmdHeartBeatRsp
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdHeartBeatRspOrBuilder
  {
    public static final int CONFIG_FIELD_NUMBER = 2;
    public static final int ENGINERATIO_FIELD_NUMBER = 3;
    public static final int JSONCONFIG_FIELD_NUMBER = 4;
    public static Parser<MnsCmdHeartBeatRsp> PARSER = new SystemPacketProto.MnsCmdHeartBeatRsp.1();
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private static final MnsCmdHeartBeatRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private SystemPacketProto.MiLinkConfig config_;
    private float engineratio_;
    private Object jsonconfig_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private long timeStamp_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdHeartBeatRsp localMnsCmdHeartBeatRsp = new MnsCmdHeartBeatRsp(true);
      defaultInstance = localMnsCmdHeartBeatRsp;
      localMnsCmdHeartBeatRsp.initFields();
    }
    
    /* Error */
    private MnsCmdHeartBeatRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 67	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 69	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 71	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 60	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:initFields	()V
      //   18: invokestatic 77	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 6
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +259 -> 285
      //   29: aload_1
      //   30: invokevirtual 83	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+268->305, 0:+271->308, 8:+69->106, 18:+113->150, 29:+201->238, 34:+222->259
      //   88: aload_0
      //   89: aload_1
      //   90: aload 6
      //   92: aload_2
      //   93: iload 4
      //   95: invokevirtual 87	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   98: ifne -73 -> 25
      //   101: iconst_1
      //   102: istore_3
      //   103: goto -78 -> 25
      //   106: aload_0
      //   107: aload_0
      //   108: getfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:bitField0_	I
      //   111: iconst_1
      //   112: ior
      //   113: putfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:bitField0_	I
      //   116: aload_0
      //   117: aload_1
      //   118: invokevirtual 93	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   121: putfield 95	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:timeStamp_	J
      //   124: goto -99 -> 25
      //   127: astore_1
      //   128: aload_1
      //   129: aload_0
      //   130: invokevirtual 99	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   133: athrow
      //   134: astore_1
      //   135: aload_0
      //   136: aload 6
      //   138: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   141: putfield 107	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   144: aload_0
      //   145: invokevirtual 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:makeExtensionsImmutable	()V
      //   148: aload_1
      //   149: athrow
      //   150: aload_0
      //   151: getfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:bitField0_	I
      //   154: iconst_2
      //   155: iand
      //   156: iconst_2
      //   157: if_icmpne +142 -> 299
      //   160: aload_0
      //   161: getfield 112	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:config_	Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   164: invokevirtual 118	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:toBuilder	()Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;
      //   167: astore 5
      //   169: aload_0
      //   170: aload_1
      //   171: getstatic 119	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig:PARSER	Lcom/google/protobuf/Parser;
      //   174: aload_2
      //   175: invokevirtual 123	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   178: checkcast 114	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig
      //   181: putfield 112	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:config_	Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   184: aload 5
      //   186: ifnull +22 -> 208
      //   189: aload 5
      //   191: aload_0
      //   192: getfield 112	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:config_	Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   195: invokevirtual 129	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;
      //   198: pop
      //   199: aload_0
      //   200: aload 5
      //   202: invokevirtual 133	com/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig$Builder:buildPartial	()Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   205: putfield 112	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:config_	Lcom/mi/milink/sdk/proto/SystemPacketProto$MiLinkConfig;
      //   208: aload_0
      //   209: aload_0
      //   210: getfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:bitField0_	I
      //   213: iconst_2
      //   214: ior
      //   215: putfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:bitField0_	I
      //   218: goto -193 -> 25
      //   221: astore_1
      //   222: new 64	com/google/protobuf/InvalidProtocolBufferException
      //   225: dup
      //   226: aload_1
      //   227: invokevirtual 137	java/io/IOException:getMessage	()Ljava/lang/String;
      //   230: invokespecial 140	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   233: aload_0
      //   234: invokevirtual 99	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   237: athrow
      //   238: aload_0
      //   239: aload_0
      //   240: getfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:bitField0_	I
      //   243: iconst_4
      //   244: ior
      //   245: putfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:bitField0_	I
      //   248: aload_0
      //   249: aload_1
      //   250: invokevirtual 144	com/google/protobuf/CodedInputStream:readFloat	()F
      //   253: putfield 146	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:engineratio_	F
      //   256: goto -231 -> 25
      //   259: aload_1
      //   260: invokevirtual 150	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   263: astore 5
      //   265: aload_0
      //   266: aload_0
      //   267: getfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:bitField0_	I
      //   270: bipush 8
      //   272: ior
      //   273: putfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:bitField0_	I
      //   276: aload_0
      //   277: aload 5
      //   279: putfield 152	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:jsonconfig_	Ljava/lang/Object;
      //   282: goto -257 -> 25
      //   285: aload_0
      //   286: aload 6
      //   288: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   291: putfield 107	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   294: aload_0
      //   295: invokevirtual 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:makeExtensionsImmutable	()V
      //   298: return
      //   299: aconst_null
      //   300: astore 5
      //   302: goto -133 -> 169
      //   305: goto -217 -> 88
      //   308: iconst_1
      //   309: istore_3
      //   310: goto -285 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	313	0	this	MnsCmdHeartBeatRsp
      //   0	313	1	paramCodedInputStream	CodedInputStream
      //   0	313	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	286	3	i	int
      //   33	61	4	j	int
      //   167	134	5	localObject	Object
      //   21	266	6	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	127	com/google/protobuf/InvalidProtocolBufferException
      //   88	101	127	com/google/protobuf/InvalidProtocolBufferException
      //   106	124	127	com/google/protobuf/InvalidProtocolBufferException
      //   150	169	127	com/google/protobuf/InvalidProtocolBufferException
      //   169	184	127	com/google/protobuf/InvalidProtocolBufferException
      //   189	208	127	com/google/protobuf/InvalidProtocolBufferException
      //   208	218	127	com/google/protobuf/InvalidProtocolBufferException
      //   238	256	127	com/google/protobuf/InvalidProtocolBufferException
      //   259	282	127	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	134	finally
      //   88	101	134	finally
      //   106	124	134	finally
      //   128	134	134	finally
      //   150	169	134	finally
      //   169	184	134	finally
      //   189	208	134	finally
      //   208	218	134	finally
      //   222	238	134	finally
      //   238	256	134	finally
      //   259	282	134	finally
      //   29	35	221	java/io/IOException
      //   88	101	221	java/io/IOException
      //   106	124	221	java/io/IOException
      //   150	169	221	java/io/IOException
      //   169	184	221	java/io/IOException
      //   189	208	221	java/io/IOException
      //   208	218	221	java/io/IOException
      //   238	256	221	java/io/IOException
      //   259	282	221	java/io/IOException
    }
    
    private MnsCmdHeartBeatRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdHeartBeatRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdHeartBeatRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_descriptor;
    }
    
    private void initFields()
    {
      this.timeStamp_ = 0L;
      this.config_ = SystemPacketProto.MiLinkConfig.getDefaultInstance();
      this.engineratio_ = 0.0F;
      this.jsonconfig_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$4900();
    }
    
    public static Builder newBuilder(MnsCmdHeartBeatRsp paramMnsCmdHeartBeatRsp)
    {
      return newBuilder().mergeFrom(paramMnsCmdHeartBeatRsp);
    }
    
    public static MnsCmdHeartBeatRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdHeartBeatRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHeartBeatRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdHeartBeatRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHeartBeatRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdHeartBeatRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHeartBeatRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdHeartBeatRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdHeartBeatRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdHeartBeatRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdHeartBeatRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final SystemPacketProto.MiLinkConfig getConfig()
    {
      return this.config_;
    }
    
    public final SystemPacketProto.MiLinkConfigOrBuilder getConfigOrBuilder()
    {
      return this.config_;
    }
    
    public final MnsCmdHeartBeatRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final float getEngineratio()
    {
      return this.engineratio_;
    }
    
    public final String getJsonconfig()
    {
      Object localObject = this.jsonconfig_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.jsonconfig_ = str;
      }
      return str;
    }
    
    public final ByteString getJsonconfigBytes()
    {
      Object localObject = this.jsonconfig_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.jsonconfig_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<MnsCmdHeartBeatRsp> getParserForType()
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
        j = CodedOutputStream.computeUInt64Size(1, this.timeStamp_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeMessageSize(2, this.config_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeFloatSize(3, this.engineratio_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getJsonconfigBytes());
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final long getTimeStamp()
    {
      return this.timeStamp_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasConfig()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasEngineratio()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasJsonconfig()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasTimeStamp()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdHeartBeatRsp.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(1, this.timeStamp_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeMessage(2, this.config_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeFloat(3, this.engineratio_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getJsonconfigBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdHeartBeatRspOrBuilder
    {
      private int bitField0_;
      private SingleFieldBuilder<SystemPacketProto.MiLinkConfig, SystemPacketProto.MiLinkConfig.Builder, SystemPacketProto.MiLinkConfigOrBuilder> configBuilder_;
      private SystemPacketProto.MiLinkConfig config_ = SystemPacketProto.MiLinkConfig.getDefaultInstance();
      private float engineratio_;
      private Object jsonconfig_ = "";
      private long timeStamp_;
      
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
      
      private SingleFieldBuilder<SystemPacketProto.MiLinkConfig, SystemPacketProto.MiLinkConfig.Builder, SystemPacketProto.MiLinkConfigOrBuilder> getConfigFieldBuilder()
      {
        if (this.configBuilder_ == null)
        {
          this.configBuilder_ = new SingleFieldBuilder(getConfig(), getParentForChildren(), isClean());
          this.config_ = null;
        }
        return this.configBuilder_;
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (SystemPacketProto.MnsCmdHeartBeatRsp.alwaysUseFieldBuilders) {
          getConfigFieldBuilder();
        }
      }
      
      public final SystemPacketProto.MnsCmdHeartBeatRsp build()
      {
        SystemPacketProto.MnsCmdHeartBeatRsp localMnsCmdHeartBeatRsp = buildPartial();
        if (!localMnsCmdHeartBeatRsp.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdHeartBeatRsp);
        }
        return localMnsCmdHeartBeatRsp;
      }
      
      public final SystemPacketProto.MnsCmdHeartBeatRsp buildPartial()
      {
        int i = 1;
        SystemPacketProto.MnsCmdHeartBeatRsp localMnsCmdHeartBeatRsp = new SystemPacketProto.MnsCmdHeartBeatRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdHeartBeatRsp.access$5302(localMnsCmdHeartBeatRsp, this.timeStamp_);
          if ((k & 0x2) == 2) {}
          for (int j = i | 0x2;; j = i)
          {
            if (this.configBuilder_ == null) {
              SystemPacketProto.MnsCmdHeartBeatRsp.access$5402(localMnsCmdHeartBeatRsp, this.config_);
            }
            for (;;)
            {
              i = j;
              if ((k & 0x4) == 4) {
                i = j | 0x4;
              }
              SystemPacketProto.MnsCmdHeartBeatRsp.access$5502(localMnsCmdHeartBeatRsp, this.engineratio_);
              j = i;
              if ((k & 0x8) == 8) {
                j = i | 0x8;
              }
              SystemPacketProto.MnsCmdHeartBeatRsp.access$5602(localMnsCmdHeartBeatRsp, this.jsonconfig_);
              SystemPacketProto.MnsCmdHeartBeatRsp.access$5702(localMnsCmdHeartBeatRsp, j);
              onBuilt();
              return localMnsCmdHeartBeatRsp;
              SystemPacketProto.MnsCmdHeartBeatRsp.access$5402(localMnsCmdHeartBeatRsp, (SystemPacketProto.MiLinkConfig)this.configBuilder_.build());
            }
          }
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.timeStamp_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        if (this.configBuilder_ == null) {
          this.config_ = SystemPacketProto.MiLinkConfig.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          this.engineratio_ = 0.0F;
          this.bitField0_ &= 0xFFFFFFFB;
          this.jsonconfig_ = "";
          this.bitField0_ &= 0xFFFFFFF7;
          return this;
          this.configBuilder_.clear();
        }
      }
      
      public final Builder clearConfig()
      {
        if (this.configBuilder_ == null)
        {
          this.config_ = SystemPacketProto.MiLinkConfig.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFFD;
          return this;
          this.configBuilder_.clear();
        }
      }
      
      public final Builder clearEngineratio()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.engineratio_ = 0.0F;
        onChanged();
        return this;
      }
      
      public final Builder clearJsonconfig()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.jsonconfig_ = SystemPacketProto.MnsCmdHeartBeatRsp.getDefaultInstance().getJsonconfig();
        onChanged();
        return this;
      }
      
      public final Builder clearTimeStamp()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.timeStamp_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MiLinkConfig getConfig()
      {
        if (this.configBuilder_ == null) {
          return this.config_;
        }
        return (SystemPacketProto.MiLinkConfig)this.configBuilder_.getMessage();
      }
      
      public final SystemPacketProto.MiLinkConfig.Builder getConfigBuilder()
      {
        this.bitField0_ |= 0x2;
        onChanged();
        return (SystemPacketProto.MiLinkConfig.Builder)getConfigFieldBuilder().getBuilder();
      }
      
      public final SystemPacketProto.MiLinkConfigOrBuilder getConfigOrBuilder()
      {
        if (this.configBuilder_ != null) {
          return (SystemPacketProto.MiLinkConfigOrBuilder)this.configBuilder_.getMessageOrBuilder();
        }
        return this.config_;
      }
      
      public final SystemPacketProto.MnsCmdHeartBeatRsp getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdHeartBeatRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_descriptor;
      }
      
      public final float getEngineratio()
      {
        return this.engineratio_;
      }
      
      public final String getJsonconfig()
      {
        Object localObject = this.jsonconfig_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.jsonconfig_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getJsonconfigBytes()
      {
        Object localObject = this.jsonconfig_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.jsonconfig_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getTimeStamp()
      {
        return this.timeStamp_;
      }
      
      public final boolean hasConfig()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasEngineratio()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasJsonconfig()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasTimeStamp()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdHeartBeatRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdHeartBeatRsp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return true;
      }
      
      public final Builder mergeConfig(SystemPacketProto.MiLinkConfig paramMiLinkConfig)
      {
        if (this.configBuilder_ == null) {
          if (((this.bitField0_ & 0x2) == 2) && (this.config_ != SystemPacketProto.MiLinkConfig.getDefaultInstance()))
          {
            this.config_ = SystemPacketProto.MiLinkConfig.newBuilder(this.config_).mergeFrom(paramMiLinkConfig).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.config_ = paramMiLinkConfig;
          break;
          this.configBuilder_.mergeFrom(paramMiLinkConfig);
        }
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 266	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 272 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 172	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 275	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 172	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdHeartBeatRsp)) {
          return mergeFrom((SystemPacketProto.MnsCmdHeartBeatRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdHeartBeatRsp paramMnsCmdHeartBeatRsp)
      {
        if (paramMnsCmdHeartBeatRsp == SystemPacketProto.MnsCmdHeartBeatRsp.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdHeartBeatRsp.hasTimeStamp()) {
          setTimeStamp(paramMnsCmdHeartBeatRsp.getTimeStamp());
        }
        if (paramMnsCmdHeartBeatRsp.hasConfig()) {
          mergeConfig(paramMnsCmdHeartBeatRsp.getConfig());
        }
        if (paramMnsCmdHeartBeatRsp.hasEngineratio()) {
          setEngineratio(paramMnsCmdHeartBeatRsp.getEngineratio());
        }
        if (paramMnsCmdHeartBeatRsp.hasJsonconfig())
        {
          this.bitField0_ |= 0x8;
          this.jsonconfig_ = paramMnsCmdHeartBeatRsp.jsonconfig_;
          onChanged();
        }
        mergeUnknownFields(paramMnsCmdHeartBeatRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setConfig(SystemPacketProto.MiLinkConfig.Builder paramBuilder)
      {
        if (this.configBuilder_ == null)
        {
          this.config_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.configBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setConfig(SystemPacketProto.MiLinkConfig paramMiLinkConfig)
      {
        if (this.configBuilder_ == null)
        {
          if (paramMiLinkConfig == null) {
            throw new NullPointerException();
          }
          this.config_ = paramMiLinkConfig;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x2;
          return this;
          this.configBuilder_.setMessage(paramMiLinkConfig);
        }
      }
      
      public final Builder setEngineratio(float paramFloat)
      {
        this.bitField0_ |= 0x4;
        this.engineratio_ = paramFloat;
        onChanged();
        return this;
      }
      
      public final Builder setJsonconfig(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.jsonconfig_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setJsonconfigBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.jsonconfig_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setTimeStamp(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.timeStamp_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdHeartBeatRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract SystemPacketProto.MiLinkConfig getConfig();
    
    public abstract SystemPacketProto.MiLinkConfigOrBuilder getConfigOrBuilder();
    
    public abstract float getEngineratio();
    
    public abstract String getJsonconfig();
    
    public abstract ByteString getJsonconfigBytes();
    
    public abstract long getTimeStamp();
    
    public abstract boolean hasConfig();
    
    public abstract boolean hasEngineratio();
    
    public abstract boolean hasJsonconfig();
    
    public abstract boolean hasTimeStamp();
  }
  
  public static final class MnsCmdLoginOff
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdLoginOffOrBuilder
  {
    public static Parser<MnsCmdLoginOff> PARSER = new SystemPacketProto.MnsCmdLoginOff.1();
    public static final int SUID_FIELD_NUMBER = 1;
    private static final MnsCmdLoginOff defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sUID_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdLoginOff localMnsCmdLoginOff = new MnsCmdLoginOff(true);
      defaultInstance = localMnsCmdLoginOff;
      localMnsCmdLoginOff.initFields();
    }
    
    /* Error */
    private MnsCmdLoginOff(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 56	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 58	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 60	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 49	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:initFields	()V
      //   18: invokestatic 66	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +104 -> 130
      //   29: aload_1
      //   30: invokevirtual 72	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+124->161, 0:+127->164, 10:+45->82
      //   64: aload_0
      //   65: aload_1
      //   66: aload 5
      //   68: aload_2
      //   69: iload 4
      //   71: invokevirtual 76	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   74: ifne -49 -> 25
      //   77: iconst_1
      //   78: istore_3
      //   79: goto -54 -> 25
      //   82: aload_1
      //   83: invokevirtual 80	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   86: astore 6
      //   88: aload_0
      //   89: aload_0
      //   90: getfield 82	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:bitField0_	I
      //   93: iconst_1
      //   94: ior
      //   95: putfield 82	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:bitField0_	I
      //   98: aload_0
      //   99: aload 6
      //   101: putfield 84	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:sUID_	Ljava/lang/Object;
      //   104: goto -79 -> 25
      //   107: astore_1
      //   108: aload_1
      //   109: aload_0
      //   110: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   113: athrow
      //   114: astore_1
      //   115: aload_0
      //   116: aload 5
      //   118: invokevirtual 94	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   121: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   124: aload_0
      //   125: invokevirtual 99	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:makeExtensionsImmutable	()V
      //   128: aload_1
      //   129: athrow
      //   130: aload_0
      //   131: aload 5
      //   133: invokevirtual 94	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   136: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   139: aload_0
      //   140: invokevirtual 99	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:makeExtensionsImmutable	()V
      //   143: return
      //   144: astore_1
      //   145: new 53	com/google/protobuf/InvalidProtocolBufferException
      //   148: dup
      //   149: aload_1
      //   150: invokevirtual 103	java/io/IOException:getMessage	()Ljava/lang/String;
      //   153: invokespecial 106	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   156: aload_0
      //   157: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   160: athrow
      //   161: goto -97 -> 64
      //   164: iconst_1
      //   165: istore_3
      //   166: goto -141 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	169	0	this	MnsCmdLoginOff
      //   0	169	1	paramCodedInputStream	CodedInputStream
      //   0	169	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	142	3	i	int
      //   33	37	4	j	int
      //   21	111	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   86	14	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	107	com/google/protobuf/InvalidProtocolBufferException
      //   64	77	107	com/google/protobuf/InvalidProtocolBufferException
      //   82	104	107	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	114	finally
      //   64	77	114	finally
      //   82	104	114	finally
      //   108	114	114	finally
      //   145	161	114	finally
      //   29	35	144	java/io/IOException
      //   64	77	144	java/io/IOException
      //   82	104	144	java/io/IOException
    }
    
    private MnsCmdLoginOff(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdLoginOff(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdLoginOff getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_descriptor;
    }
    
    private void initFields()
    {
      this.sUID_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$7100();
    }
    
    public static Builder newBuilder(MnsCmdLoginOff paramMnsCmdLoginOff)
    {
      return newBuilder().mergeFrom(paramMnsCmdLoginOff);
    }
    
    public static MnsCmdLoginOff parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdLoginOff)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdLoginOff parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdLoginOff)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginOff parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginOff)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdLoginOff parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginOff)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginOff parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdLoginOff)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdLoginOff parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdLoginOff)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginOff parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdLoginOff)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdLoginOff parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdLoginOff)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginOff parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginOff)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdLoginOff parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginOff)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdLoginOff getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<MnsCmdLoginOff> getParserForType()
    {
      return PARSER;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
      i = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        i = CodedOutputStream.computeBytesSize(1, getSUIDBytes()) + 0;
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdLoginOff.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getSUIDBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdLoginOffOrBuilder
    {
      private int bitField0_;
      private Object sUID_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdLoginOff build()
      {
        SystemPacketProto.MnsCmdLoginOff localMnsCmdLoginOff = buildPartial();
        if (!localMnsCmdLoginOff.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdLoginOff);
        }
        return localMnsCmdLoginOff;
      }
      
      public final SystemPacketProto.MnsCmdLoginOff buildPartial()
      {
        int i = 1;
        SystemPacketProto.MnsCmdLoginOff localMnsCmdLoginOff = new SystemPacketProto.MnsCmdLoginOff(this, null);
        if ((this.bitField0_ & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdLoginOff.access$7502(localMnsCmdLoginOff, this.sUID_);
          SystemPacketProto.MnsCmdLoginOff.access$7602(localMnsCmdLoginOff, i);
          onBuilt();
          return localMnsCmdLoginOff;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.sUID_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.sUID_ = SystemPacketProto.MnsCmdLoginOff.getDefaultInstance().getSUID();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MnsCmdLoginOff getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdLoginOff.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_descriptor;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginOff_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdLoginOff.class, Builder.class);
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
        //   2: getstatic 165	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 171 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 109	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 174	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 109	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdLoginOff)) {
          return mergeFrom((SystemPacketProto.MnsCmdLoginOff)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdLoginOff paramMnsCmdLoginOff)
      {
        if (paramMnsCmdLoginOff == SystemPacketProto.MnsCmdLoginOff.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdLoginOff.hasSUID())
        {
          this.bitField0_ |= 0x1;
          this.sUID_ = paramMnsCmdLoginOff.sUID_;
          onChanged();
        }
        mergeUnknownFields(paramMnsCmdLoginOff.getUnknownFields());
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.sUID_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdLoginOffOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract boolean hasSUID();
  }
  
  public static final class MnsCmdLoginReq
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdLoginReqOrBuilder
  {
    public static final int FLAG_FIELD_NUMBER = 1;
    public static Parser<MnsCmdLoginReq> PARSER = new SystemPacketProto.MnsCmdLoginReq.1();
    public static final int SUID_FIELD_NUMBER = 2;
    private static final MnsCmdLoginReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int flag_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sUID_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdLoginReq localMnsCmdLoginReq = new MnsCmdLoginReq(true);
      defaultInstance = localMnsCmdLoginReq;
      localMnsCmdLoginReq.initFields();
    }
    
    /* Error */
    private MnsCmdLoginReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:initFields	()V
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
      //   79: invokevirtual 79	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 84	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   105: putfield 86	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:flag_	I
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
      //   125: putfield 98	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 101	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_1
      //   135: invokevirtual 105	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   138: astore 6
      //   140: aload_0
      //   141: aload_0
      //   142: getfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:bitField0_	I
      //   145: iconst_2
      //   146: ior
      //   147: putfield 81	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:bitField0_	I
      //   150: aload_0
      //   151: aload 6
      //   153: putfield 107	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:sUID_	Ljava/lang/Object;
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
      //   182: putfield 98	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   185: aload_0
      //   186: invokevirtual 101	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:makeExtensionsImmutable	()V
      //   189: return
      //   190: goto -118 -> 72
      //   193: iconst_1
      //   194: istore_3
      //   195: goto -170 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	198	0	this	MnsCmdLoginReq
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
    
    private MnsCmdLoginReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdLoginReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdLoginReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_descriptor;
    }
    
    private void initFields()
    {
      this.flag_ = 0;
      this.sUID_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(MnsCmdLoginReq paramMnsCmdLoginReq)
    {
      return newBuilder().mergeFrom(paramMnsCmdLoginReq);
    }
    
    public static MnsCmdLoginReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdLoginReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdLoginReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdLoginReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginReq)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdLoginReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdLoginReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdLoginReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdLoginReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdLoginReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdLoginReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdLoginReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdLoginReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdLoginReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getFlag()
    {
      return this.flag_;
    }
    
    public final Parser<MnsCmdLoginReq> getParserForType()
    {
      return PARSER;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
      i = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        i = CodedOutputStream.computeUInt32Size(1, this.flag_) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeBytesSize(2, getSUIDBytes());
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
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdLoginReq.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(2, getSUIDBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdLoginReqOrBuilder
    {
      private int bitField0_;
      private int flag_;
      private Object sUID_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdLoginReq build()
      {
        SystemPacketProto.MnsCmdLoginReq localMnsCmdLoginReq = buildPartial();
        if (!localMnsCmdLoginReq.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdLoginReq);
        }
        return localMnsCmdLoginReq;
      }
      
      public final SystemPacketProto.MnsCmdLoginReq buildPartial()
      {
        int i = 1;
        SystemPacketProto.MnsCmdLoginReq localMnsCmdLoginReq = new SystemPacketProto.MnsCmdLoginReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdLoginReq.access$702(localMnsCmdLoginReq, this.flag_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          SystemPacketProto.MnsCmdLoginReq.access$802(localMnsCmdLoginReq, this.sUID_);
          SystemPacketProto.MnsCmdLoginReq.access$902(localMnsCmdLoginReq, j);
          onBuilt();
          return localMnsCmdLoginReq;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.flag_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.sUID_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearFlag()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.flag_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.sUID_ = SystemPacketProto.MnsCmdLoginReq.getDefaultInstance().getSUID();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MnsCmdLoginReq getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdLoginReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_descriptor;
      }
      
      public final int getFlag()
      {
        return this.flag_;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasFlag()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdLoginReq.class, Builder.class);
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
        //   2: getstatic 175	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 181 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 116	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 184	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 116	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginReq$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdLoginReq)) {
          return mergeFrom((SystemPacketProto.MnsCmdLoginReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdLoginReq paramMnsCmdLoginReq)
      {
        if (paramMnsCmdLoginReq == SystemPacketProto.MnsCmdLoginReq.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdLoginReq.hasFlag()) {
          setFlag(paramMnsCmdLoginReq.getFlag());
        }
        if (paramMnsCmdLoginReq.hasSUID())
        {
          this.bitField0_ |= 0x2;
          this.sUID_ = paramMnsCmdLoginReq.sUID_;
          onChanged();
        }
        mergeUnknownFields(paramMnsCmdLoginReq.getUnknownFields());
        return this;
      }
      
      public final Builder setFlag(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.flag_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.sUID_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdLoginReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getFlag();
    
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract boolean hasFlag();
    
    public abstract boolean hasSUID();
  }
  
  public static final class MnsCmdLoginRsp
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdLoginRspOrBuilder
  {
    public static final int B2_FIELD_NUMBER = 2;
    public static final int GTKEY_B2_FIELD_NUMBER = 1;
    public static Parser<MnsCmdLoginRsp> PARSER = new SystemPacketProto.MnsCmdLoginRsp.1();
    public static final int SUID_FIELD_NUMBER = 3;
    private static final MnsCmdLoginRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private ByteString b2_;
    private int bitField0_;
    private ByteString gTKEYB2_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sUID_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdLoginRsp localMnsCmdLoginRsp = new MnsCmdLoginRsp(true);
      defaultInstance = localMnsCmdLoginRsp;
      localMnsCmdLoginRsp.initFields();
    }
    
    /* Error */
    private MnsCmdLoginRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 63	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 65	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 67	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 56	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:initFields	()V
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
      //   37: lookupswitch	default:+182->219, 0:+185->222, 10:+61->98, 18:+105->142, 26:+143->180
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 83	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 89	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   113: putfield 91	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:gTKEYB2_	Lcom/google/protobuf/ByteString;
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
      //   133: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 106	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: aload_0
      //   144: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:bitField0_	I
      //   147: iconst_2
      //   148: ior
      //   149: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:bitField0_	I
      //   152: aload_0
      //   153: aload_1
      //   154: invokevirtual 89	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   157: putfield 108	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:b2_	Lcom/google/protobuf/ByteString;
      //   160: goto -135 -> 25
      //   163: astore_1
      //   164: new 60	com/google/protobuf/InvalidProtocolBufferException
      //   167: dup
      //   168: aload_1
      //   169: invokevirtual 112	java/io/IOException:getMessage	()Ljava/lang/String;
      //   172: invokespecial 115	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   175: aload_0
      //   176: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   179: athrow
      //   180: aload_1
      //   181: invokevirtual 89	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   184: astore 6
      //   186: aload_0
      //   187: aload_0
      //   188: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:bitField0_	I
      //   191: iconst_4
      //   192: ior
      //   193: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:bitField0_	I
      //   196: aload_0
      //   197: aload 6
      //   199: putfield 117	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:sUID_	Ljava/lang/Object;
      //   202: goto -177 -> 25
      //   205: aload_0
      //   206: aload 5
      //   208: invokevirtual 101	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   211: putfield 103	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   214: aload_0
      //   215: invokevirtual 106	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:makeExtensionsImmutable	()V
      //   218: return
      //   219: goto -139 -> 80
      //   222: iconst_1
      //   223: istore_3
      //   224: goto -199 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	227	0	this	MnsCmdLoginRsp
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
    
    private MnsCmdLoginRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdLoginRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdLoginRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_descriptor;
    }
    
    private void initFields()
    {
      this.gTKEYB2_ = ByteString.EMPTY;
      this.b2_ = ByteString.EMPTY;
      this.sUID_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1300();
    }
    
    public static Builder newBuilder(MnsCmdLoginRsp paramMnsCmdLoginRsp)
    {
      return newBuilder().mergeFrom(paramMnsCmdLoginRsp);
    }
    
    public static MnsCmdLoginRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdLoginRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdLoginRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdLoginRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdLoginRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdLoginRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdLoginRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdLoginRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdLoginRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdLoginRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdLoginRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdLoginRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdLoginRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdLoginRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final ByteString getB2()
    {
      return this.b2_;
    }
    
    public final MnsCmdLoginRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final ByteString getGTKEYB2()
    {
      return this.gTKEYB2_;
    }
    
    public final Parser<MnsCmdLoginRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
        j = CodedOutputStream.computeBytesSize(1, this.gTKEYB2_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, this.b2_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getSUIDBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasB2()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasGTKEYB2()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdLoginRsp.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, this.gTKEYB2_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, this.b2_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getSUIDBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdLoginRspOrBuilder
    {
      private ByteString b2_ = ByteString.EMPTY;
      private int bitField0_;
      private ByteString gTKEYB2_ = ByteString.EMPTY;
      private Object sUID_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdLoginRsp build()
      {
        SystemPacketProto.MnsCmdLoginRsp localMnsCmdLoginRsp = buildPartial();
        if (!localMnsCmdLoginRsp.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdLoginRsp);
        }
        return localMnsCmdLoginRsp;
      }
      
      public final SystemPacketProto.MnsCmdLoginRsp buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsCmdLoginRsp localMnsCmdLoginRsp = new SystemPacketProto.MnsCmdLoginRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdLoginRsp.access$1702(localMnsCmdLoginRsp, this.gTKEYB2_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.MnsCmdLoginRsp.access$1802(localMnsCmdLoginRsp, this.b2_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.MnsCmdLoginRsp.access$1902(localMnsCmdLoginRsp, this.sUID_);
          SystemPacketProto.MnsCmdLoginRsp.access$2002(localMnsCmdLoginRsp, j);
          onBuilt();
          return localMnsCmdLoginRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.gTKEYB2_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFE;
        this.b2_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFD;
        this.sUID_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearB2()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.b2_ = SystemPacketProto.MnsCmdLoginRsp.getDefaultInstance().getB2();
        onChanged();
        return this;
      }
      
      public final Builder clearGTKEYB2()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.gTKEYB2_ = SystemPacketProto.MnsCmdLoginRsp.getDefaultInstance().getGTKEYB2();
        onChanged();
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.sUID_ = SystemPacketProto.MnsCmdLoginRsp.getDefaultInstance().getSUID();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final ByteString getB2()
      {
        return this.b2_;
      }
      
      public final SystemPacketProto.MnsCmdLoginRsp getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdLoginRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_descriptor;
      }
      
      public final ByteString getGTKEYB2()
      {
        return this.gTKEYB2_;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasB2()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasGTKEYB2()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdLoginRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdLoginRsp.class, Builder.class);
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
        //   2: getstatic 192	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 198 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 137	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 201	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 137	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginRsp$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdLoginRsp)) {
          return mergeFrom((SystemPacketProto.MnsCmdLoginRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdLoginRsp paramMnsCmdLoginRsp)
      {
        if (paramMnsCmdLoginRsp == SystemPacketProto.MnsCmdLoginRsp.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdLoginRsp.hasGTKEYB2()) {
          setGTKEYB2(paramMnsCmdLoginRsp.getGTKEYB2());
        }
        if (paramMnsCmdLoginRsp.hasB2()) {
          setB2(paramMnsCmdLoginRsp.getB2());
        }
        if (paramMnsCmdLoginRsp.hasSUID())
        {
          this.bitField0_ |= 0x4;
          this.sUID_ = paramMnsCmdLoginRsp.sUID_;
          onChanged();
        }
        mergeUnknownFields(paramMnsCmdLoginRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setB2(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.b2_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setGTKEYB2(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.gTKEYB2_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdLoginRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getB2();
    
    public abstract ByteString getGTKEYB2();
    
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract boolean hasB2();
    
    public abstract boolean hasGTKEYB2();
    
    public abstract boolean hasSUID();
  }
  
  public static final class MnsCmdPushRegisterReq
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdPushRegisterReqOrBuilder
  {
    public static final int DEVICETOKEN_FIELD_NUMBER = 1;
    public static final int ONOFF_FIELD_NUMBER = 2;
    public static Parser<MnsCmdPushRegisterReq> PARSER = new SystemPacketProto.MnsCmdPushRegisterReq.1();
    public static final int PASSPORTLOGIN_FIELD_NUMBER = 4;
    public static final int SUID_FIELD_NUMBER = 3;
    private static final MnsCmdPushRegisterReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private ByteString devicetoken_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private boolean onoff_;
    private boolean passportlogin_;
    private Object sUID_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdPushRegisterReq localMnsCmdPushRegisterReq = new MnsCmdPushRegisterReq(true);
      defaultInstance = localMnsCmdPushRegisterReq;
      localMnsCmdPushRegisterReq.initFields();
    }
    
    /* Error */
    private MnsCmdPushRegisterReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 67	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 69	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 71	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 60	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:initFields	()V
      //   18: invokestatic 77	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +209 -> 235
      //   29: aload_1
      //   30: invokevirtual 83	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+212->249, 0:+215->252, 10:+69->106, 16:+113->150, 26:+151->188, 32:+176->213
      //   88: aload_0
      //   89: aload_1
      //   90: aload 5
      //   92: aload_2
      //   93: iload 4
      //   95: invokevirtual 87	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   98: ifne -73 -> 25
      //   101: iconst_1
      //   102: istore_3
      //   103: goto -78 -> 25
      //   106: aload_0
      //   107: aload_0
      //   108: getfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:bitField0_	I
      //   111: iconst_1
      //   112: ior
      //   113: putfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:bitField0_	I
      //   116: aload_0
      //   117: aload_1
      //   118: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   121: putfield 95	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:devicetoken_	Lcom/google/protobuf/ByteString;
      //   124: goto -99 -> 25
      //   127: astore_1
      //   128: aload_1
      //   129: aload_0
      //   130: invokevirtual 99	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   133: athrow
      //   134: astore_1
      //   135: aload_0
      //   136: aload 5
      //   138: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   141: putfield 107	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   144: aload_0
      //   145: invokevirtual 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:makeExtensionsImmutable	()V
      //   148: aload_1
      //   149: athrow
      //   150: aload_0
      //   151: aload_0
      //   152: getfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:bitField0_	I
      //   155: iconst_2
      //   156: ior
      //   157: putfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:bitField0_	I
      //   160: aload_0
      //   161: aload_1
      //   162: invokevirtual 114	com/google/protobuf/CodedInputStream:readBool	()Z
      //   165: putfield 116	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:onoff_	Z
      //   168: goto -143 -> 25
      //   171: astore_1
      //   172: new 64	com/google/protobuf/InvalidProtocolBufferException
      //   175: dup
      //   176: aload_1
      //   177: invokevirtual 120	java/io/IOException:getMessage	()Ljava/lang/String;
      //   180: invokespecial 123	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   183: aload_0
      //   184: invokevirtual 99	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   187: athrow
      //   188: aload_1
      //   189: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   192: astore 6
      //   194: aload_0
      //   195: aload_0
      //   196: getfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:bitField0_	I
      //   199: iconst_4
      //   200: ior
      //   201: putfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:bitField0_	I
      //   204: aload_0
      //   205: aload 6
      //   207: putfield 125	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:sUID_	Ljava/lang/Object;
      //   210: goto -185 -> 25
      //   213: aload_0
      //   214: aload_0
      //   215: getfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:bitField0_	I
      //   218: bipush 8
      //   220: ior
      //   221: putfield 89	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:bitField0_	I
      //   224: aload_0
      //   225: aload_1
      //   226: invokevirtual 114	com/google/protobuf/CodedInputStream:readBool	()Z
      //   229: putfield 127	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:passportlogin_	Z
      //   232: goto -207 -> 25
      //   235: aload_0
      //   236: aload 5
      //   238: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   241: putfield 107	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   244: aload_0
      //   245: invokevirtual 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:makeExtensionsImmutable	()V
      //   248: return
      //   249: goto -161 -> 88
      //   252: iconst_1
      //   253: istore_3
      //   254: goto -229 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	257	0	this	MnsCmdPushRegisterReq
      //   0	257	1	paramCodedInputStream	CodedInputStream
      //   0	257	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	230	3	i	int
      //   33	61	4	j	int
      //   21	216	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   192	14	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	127	com/google/protobuf/InvalidProtocolBufferException
      //   88	101	127	com/google/protobuf/InvalidProtocolBufferException
      //   106	124	127	com/google/protobuf/InvalidProtocolBufferException
      //   150	168	127	com/google/protobuf/InvalidProtocolBufferException
      //   188	210	127	com/google/protobuf/InvalidProtocolBufferException
      //   213	232	127	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	134	finally
      //   88	101	134	finally
      //   106	124	134	finally
      //   128	134	134	finally
      //   150	168	134	finally
      //   172	188	134	finally
      //   188	210	134	finally
      //   213	232	134	finally
      //   29	35	171	java/io/IOException
      //   88	101	171	java/io/IOException
      //   106	124	171	java/io/IOException
      //   150	168	171	java/io/IOException
      //   188	210	171	java/io/IOException
      //   213	232	171	java/io/IOException
    }
    
    private MnsCmdPushRegisterReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdPushRegisterReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdPushRegisterReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_descriptor;
    }
    
    private void initFields()
    {
      this.devicetoken_ = ByteString.EMPTY;
      this.onoff_ = false;
      this.sUID_ = "";
      this.passportlogin_ = false;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$8000();
    }
    
    public static Builder newBuilder(MnsCmdPushRegisterReq paramMnsCmdPushRegisterReq)
    {
      return newBuilder().mergeFrom(paramMnsCmdPushRegisterReq);
    }
    
    public static MnsCmdPushRegisterReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdPushRegisterReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdPushRegisterReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdPushRegisterReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdPushRegisterReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdPushRegisterReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdPushRegisterReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdPushRegisterReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdPushRegisterReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdPushRegisterReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdPushRegisterReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdPushRegisterReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final ByteString getDevicetoken()
    {
      return this.devicetoken_;
    }
    
    public final boolean getOnoff()
    {
      return this.onoff_;
    }
    
    public final Parser<MnsCmdPushRegisterReq> getParserForType()
    {
      return PARSER;
    }
    
    public final boolean getPassportlogin()
    {
      return this.passportlogin_;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
        j = CodedOutputStream.computeBytesSize(1, this.devicetoken_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBoolSize(2, this.onoff_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getSUIDBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBoolSize(4, this.passportlogin_);
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasDevicetoken()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasOnoff()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasPassportlogin()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdPushRegisterReq.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, this.devicetoken_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBool(2, this.onoff_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getSUIDBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBool(4, this.passportlogin_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdPushRegisterReqOrBuilder
    {
      private int bitField0_;
      private ByteString devicetoken_ = ByteString.EMPTY;
      private boolean onoff_;
      private boolean passportlogin_;
      private Object sUID_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdPushRegisterReq build()
      {
        SystemPacketProto.MnsCmdPushRegisterReq localMnsCmdPushRegisterReq = buildPartial();
        if (!localMnsCmdPushRegisterReq.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdPushRegisterReq);
        }
        return localMnsCmdPushRegisterReq;
      }
      
      public final SystemPacketProto.MnsCmdPushRegisterReq buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsCmdPushRegisterReq localMnsCmdPushRegisterReq = new SystemPacketProto.MnsCmdPushRegisterReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdPushRegisterReq.access$8402(localMnsCmdPushRegisterReq, this.devicetoken_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.MnsCmdPushRegisterReq.access$8502(localMnsCmdPushRegisterReq, this.onoff_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.MnsCmdPushRegisterReq.access$8602(localMnsCmdPushRegisterReq, this.sUID_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          SystemPacketProto.MnsCmdPushRegisterReq.access$8702(localMnsCmdPushRegisterReq, this.passportlogin_);
          SystemPacketProto.MnsCmdPushRegisterReq.access$8802(localMnsCmdPushRegisterReq, i);
          onBuilt();
          return localMnsCmdPushRegisterReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.devicetoken_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFE;
        this.onoff_ = false;
        this.bitField0_ &= 0xFFFFFFFD;
        this.sUID_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.passportlogin_ = false;
        this.bitField0_ &= 0xFFFFFFF7;
        return this;
      }
      
      public final Builder clearDevicetoken()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.devicetoken_ = SystemPacketProto.MnsCmdPushRegisterReq.getDefaultInstance().getDevicetoken();
        onChanged();
        return this;
      }
      
      public final Builder clearOnoff()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.onoff_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearPassportlogin()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.passportlogin_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.sUID_ = SystemPacketProto.MnsCmdPushRegisterReq.getDefaultInstance().getSUID();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MnsCmdPushRegisterReq getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdPushRegisterReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_descriptor;
      }
      
      public final ByteString getDevicetoken()
      {
        return this.devicetoken_;
      }
      
      public final boolean getOnoff()
      {
        return this.onoff_;
      }
      
      public final boolean getPassportlogin()
      {
        return this.passportlogin_;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasDevicetoken()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasOnoff()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasPassportlogin()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdPushRegisterReq.class, Builder.class);
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
        //   2: getstatic 201	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 207 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 143	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 210	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 143	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterReq$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdPushRegisterReq)) {
          return mergeFrom((SystemPacketProto.MnsCmdPushRegisterReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdPushRegisterReq paramMnsCmdPushRegisterReq)
      {
        if (paramMnsCmdPushRegisterReq == SystemPacketProto.MnsCmdPushRegisterReq.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdPushRegisterReq.hasDevicetoken()) {
          setDevicetoken(paramMnsCmdPushRegisterReq.getDevicetoken());
        }
        if (paramMnsCmdPushRegisterReq.hasOnoff()) {
          setOnoff(paramMnsCmdPushRegisterReq.getOnoff());
        }
        if (paramMnsCmdPushRegisterReq.hasSUID())
        {
          this.bitField0_ |= 0x4;
          this.sUID_ = paramMnsCmdPushRegisterReq.sUID_;
          onChanged();
        }
        if (paramMnsCmdPushRegisterReq.hasPassportlogin()) {
          setPassportlogin(paramMnsCmdPushRegisterReq.getPassportlogin());
        }
        mergeUnknownFields(paramMnsCmdPushRegisterReq.getUnknownFields());
        return this;
      }
      
      public final Builder setDevicetoken(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.devicetoken_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setOnoff(boolean paramBoolean)
      {
        this.bitField0_ |= 0x2;
        this.onoff_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setPassportlogin(boolean paramBoolean)
      {
        this.bitField0_ |= 0x8;
        this.passportlogin_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.sUID_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdPushRegisterReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getDevicetoken();
    
    public abstract boolean getOnoff();
    
    public abstract boolean getPassportlogin();
    
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract boolean hasDevicetoken();
    
    public abstract boolean hasOnoff();
    
    public abstract boolean hasPassportlogin();
    
    public abstract boolean hasSUID();
  }
  
  public static final class MnsCmdPushRegisterRsp
    extends GeneratedMessage
    implements SystemPacketProto.MnsCmdPushRegisterRspOrBuilder
  {
    public static Parser<MnsCmdPushRegisterRsp> PARSER = new SystemPacketProto.MnsCmdPushRegisterRsp.1();
    public static final int SUID_FIELD_NUMBER = 1;
    private static final MnsCmdPushRegisterRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sUID_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsCmdPushRegisterRsp localMnsCmdPushRegisterRsp = new MnsCmdPushRegisterRsp(true);
      defaultInstance = localMnsCmdPushRegisterRsp;
      localMnsCmdPushRegisterRsp.initFields();
    }
    
    /* Error */
    private MnsCmdPushRegisterRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 56	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 58	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 60	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 49	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:initFields	()V
      //   18: invokestatic 66	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +104 -> 130
      //   29: aload_1
      //   30: invokevirtual 72	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+124->161, 0:+127->164, 10:+45->82
      //   64: aload_0
      //   65: aload_1
      //   66: aload 5
      //   68: aload_2
      //   69: iload 4
      //   71: invokevirtual 76	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   74: ifne -49 -> 25
      //   77: iconst_1
      //   78: istore_3
      //   79: goto -54 -> 25
      //   82: aload_1
      //   83: invokevirtual 80	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   86: astore 6
      //   88: aload_0
      //   89: aload_0
      //   90: getfield 82	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:bitField0_	I
      //   93: iconst_1
      //   94: ior
      //   95: putfield 82	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:bitField0_	I
      //   98: aload_0
      //   99: aload 6
      //   101: putfield 84	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:sUID_	Ljava/lang/Object;
      //   104: goto -79 -> 25
      //   107: astore_1
      //   108: aload_1
      //   109: aload_0
      //   110: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   113: athrow
      //   114: astore_1
      //   115: aload_0
      //   116: aload 5
      //   118: invokevirtual 94	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   121: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   124: aload_0
      //   125: invokevirtual 99	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:makeExtensionsImmutable	()V
      //   128: aload_1
      //   129: athrow
      //   130: aload_0
      //   131: aload 5
      //   133: invokevirtual 94	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   136: putfield 96	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   139: aload_0
      //   140: invokevirtual 99	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:makeExtensionsImmutable	()V
      //   143: return
      //   144: astore_1
      //   145: new 53	com/google/protobuf/InvalidProtocolBufferException
      //   148: dup
      //   149: aload_1
      //   150: invokevirtual 103	java/io/IOException:getMessage	()Ljava/lang/String;
      //   153: invokespecial 106	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   156: aload_0
      //   157: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   160: athrow
      //   161: goto -97 -> 64
      //   164: iconst_1
      //   165: istore_3
      //   166: goto -141 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	169	0	this	MnsCmdPushRegisterRsp
      //   0	169	1	paramCodedInputStream	CodedInputStream
      //   0	169	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	142	3	i	int
      //   33	37	4	j	int
      //   21	111	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   86	14	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	107	com/google/protobuf/InvalidProtocolBufferException
      //   64	77	107	com/google/protobuf/InvalidProtocolBufferException
      //   82	104	107	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	114	finally
      //   64	77	114	finally
      //   82	104	114	finally
      //   108	114	114	finally
      //   145	161	114	finally
      //   29	35	144	java/io/IOException
      //   64	77	144	java/io/IOException
      //   82	104	144	java/io/IOException
    }
    
    private MnsCmdPushRegisterRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsCmdPushRegisterRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsCmdPushRegisterRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_descriptor;
    }
    
    private void initFields()
    {
      this.sUID_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$9200();
    }
    
    public static Builder newBuilder(MnsCmdPushRegisterRsp paramMnsCmdPushRegisterRsp)
    {
      return newBuilder().mergeFrom(paramMnsCmdPushRegisterRsp);
    }
    
    public static MnsCmdPushRegisterRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsCmdPushRegisterRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdPushRegisterRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsCmdPushRegisterRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsCmdPushRegisterRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsCmdPushRegisterRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdPushRegisterRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsCmdPushRegisterRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsCmdPushRegisterRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsCmdPushRegisterRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsCmdPushRegisterRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final MnsCmdPushRegisterRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<MnsCmdPushRegisterRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final String getSUID()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.sUID_ = str;
      }
      return str;
    }
    
    public final ByteString getSUIDBytes()
    {
      Object localObject = this.sUID_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.sUID_ = localObject;
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
      i = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        i = CodedOutputStream.computeBytesSize(1, getSUIDBytes()) + 0;
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasSUID()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsCmdPushRegisterRsp.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(1, getSUIDBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsCmdPushRegisterRspOrBuilder
    {
      private int bitField0_;
      private Object sUID_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsCmdPushRegisterRsp build()
      {
        SystemPacketProto.MnsCmdPushRegisterRsp localMnsCmdPushRegisterRsp = buildPartial();
        if (!localMnsCmdPushRegisterRsp.isInitialized()) {
          throw newUninitializedMessageException(localMnsCmdPushRegisterRsp);
        }
        return localMnsCmdPushRegisterRsp;
      }
      
      public final SystemPacketProto.MnsCmdPushRegisterRsp buildPartial()
      {
        int i = 1;
        SystemPacketProto.MnsCmdPushRegisterRsp localMnsCmdPushRegisterRsp = new SystemPacketProto.MnsCmdPushRegisterRsp(this, null);
        if ((this.bitField0_ & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsCmdPushRegisterRsp.access$9602(localMnsCmdPushRegisterRsp, this.sUID_);
          SystemPacketProto.MnsCmdPushRegisterRsp.access$9702(localMnsCmdPushRegisterRsp, i);
          onBuilt();
          return localMnsCmdPushRegisterRsp;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.sUID_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        return this;
      }
      
      public final Builder clearSUID()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.sUID_ = SystemPacketProto.MnsCmdPushRegisterRsp.getDefaultInstance().getSUID();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.MnsCmdPushRegisterRsp getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsCmdPushRegisterRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_descriptor;
      }
      
      public final String getSUID()
      {
        Object localObject = this.sUID_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.sUID_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSUIDBytes()
      {
        Object localObject = this.sUID_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.sUID_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasSUID()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsCmdPushRegisterRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsCmdPushRegisterRsp.class, Builder.class);
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
        //   2: getstatic 165	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 171 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 109	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 174	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 109	com/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdPushRegisterRsp$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsCmdPushRegisterRsp)) {
          return mergeFrom((SystemPacketProto.MnsCmdPushRegisterRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsCmdPushRegisterRsp paramMnsCmdPushRegisterRsp)
      {
        if (paramMnsCmdPushRegisterRsp == SystemPacketProto.MnsCmdPushRegisterRsp.getDefaultInstance()) {
          return this;
        }
        if (paramMnsCmdPushRegisterRsp.hasSUID())
        {
          this.bitField0_ |= 0x1;
          this.sUID_ = paramMnsCmdPushRegisterRsp.sUID_;
          onChanged();
        }
        mergeUnknownFields(paramMnsCmdPushRegisterRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setSUID(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.sUID_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSUIDBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.sUID_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsCmdPushRegisterRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getSUID();
    
    public abstract ByteString getSUIDBytes();
    
    public abstract boolean hasSUID();
  }
  
  public static final class MnsIpInfo
    extends GeneratedMessage
    implements SystemPacketProto.MnsIpInfoOrBuilder
  {
    public static final int APN_FIELD_NUMBER = 3;
    public static final int IPV6_FIELD_NUMBER = 5;
    public static final int IP_FIELD_NUMBER = 1;
    public static Parser<MnsIpInfo> PARSER = new SystemPacketProto.MnsIpInfo.1();
    public static final int PORT_FIELD_NUMBER = 2;
    public static final int REMARK_FIELD_NUMBER = 4;
    private static final MnsIpInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int apn_;
    private int bitField0_;
    private int ip_;
    private Object ipv6_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int port_;
    private Object remark_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      MnsIpInfo localMnsIpInfo = new MnsIpInfo(true);
      defaultInstance = localMnsIpInfo;
      localMnsIpInfo.initFields();
    }
    
    /* Error */
    private MnsIpInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 68	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 70	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 72	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 61	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:initFields	()V
      //   18: invokestatic 78	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +243 -> 269
      //   29: aload_1
      //   30: invokevirtual 84	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+246->283, 0:+249->286, 8:+77->114, 16:+121->158, 24:+159->196, 34:+180->217, 42:+206->243
      //   96: aload_0
      //   97: aload_1
      //   98: aload 5
      //   100: aload_2
      //   101: iload 4
      //   103: invokevirtual 88	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   106: ifne -81 -> 25
      //   109: iconst_1
      //   110: istore_3
      //   111: goto -86 -> 25
      //   114: aload_0
      //   115: aload_0
      //   116: getfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   119: iconst_1
      //   120: ior
      //   121: putfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   124: aload_0
      //   125: aload_1
      //   126: invokevirtual 93	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   129: putfield 95	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:ip_	I
      //   132: goto -107 -> 25
      //   135: astore_1
      //   136: aload_1
      //   137: aload_0
      //   138: invokevirtual 99	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   141: athrow
      //   142: astore_1
      //   143: aload_0
      //   144: aload 5
      //   146: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   149: putfield 107	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   152: aload_0
      //   153: invokevirtual 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:makeExtensionsImmutable	()V
      //   156: aload_1
      //   157: athrow
      //   158: aload_0
      //   159: aload_0
      //   160: getfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   163: iconst_2
      //   164: ior
      //   165: putfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   168: aload_0
      //   169: aload_1
      //   170: invokevirtual 93	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   173: putfield 112	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:port_	I
      //   176: goto -151 -> 25
      //   179: astore_1
      //   180: new 65	com/google/protobuf/InvalidProtocolBufferException
      //   183: dup
      //   184: aload_1
      //   185: invokevirtual 116	java/io/IOException:getMessage	()Ljava/lang/String;
      //   188: invokespecial 119	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   191: aload_0
      //   192: invokevirtual 99	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   195: athrow
      //   196: aload_0
      //   197: aload_0
      //   198: getfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   201: iconst_4
      //   202: ior
      //   203: putfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   206: aload_0
      //   207: aload_1
      //   208: invokevirtual 122	com/google/protobuf/CodedInputStream:readInt32	()I
      //   211: putfield 124	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:apn_	I
      //   214: goto -189 -> 25
      //   217: aload_1
      //   218: invokevirtual 128	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   221: astore 6
      //   223: aload_0
      //   224: aload_0
      //   225: getfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   228: bipush 8
      //   230: ior
      //   231: putfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   234: aload_0
      //   235: aload 6
      //   237: putfield 130	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:remark_	Ljava/lang/Object;
      //   240: goto -215 -> 25
      //   243: aload_1
      //   244: invokevirtual 128	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   247: astore 6
      //   249: aload_0
      //   250: aload_0
      //   251: getfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   254: bipush 16
      //   256: ior
      //   257: putfield 90	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:bitField0_	I
      //   260: aload_0
      //   261: aload 6
      //   263: putfield 132	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:ipv6_	Ljava/lang/Object;
      //   266: goto -241 -> 25
      //   269: aload_0
      //   270: aload 5
      //   272: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   275: putfield 107	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   278: aload_0
      //   279: invokevirtual 110	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:makeExtensionsImmutable	()V
      //   282: return
      //   283: goto -187 -> 96
      //   286: iconst_1
      //   287: istore_3
      //   288: goto -263 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	291	0	this	MnsIpInfo
      //   0	291	1	paramCodedInputStream	CodedInputStream
      //   0	291	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	264	3	i	int
      //   33	69	4	j	int
      //   21	250	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   221	41	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	135	com/google/protobuf/InvalidProtocolBufferException
      //   96	109	135	com/google/protobuf/InvalidProtocolBufferException
      //   114	132	135	com/google/protobuf/InvalidProtocolBufferException
      //   158	176	135	com/google/protobuf/InvalidProtocolBufferException
      //   196	214	135	com/google/protobuf/InvalidProtocolBufferException
      //   217	240	135	com/google/protobuf/InvalidProtocolBufferException
      //   243	266	135	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	142	finally
      //   96	109	142	finally
      //   114	132	142	finally
      //   136	142	142	finally
      //   158	176	142	finally
      //   180	196	142	finally
      //   196	214	142	finally
      //   217	240	142	finally
      //   243	266	142	finally
      //   29	35	179	java/io/IOException
      //   96	109	179	java/io/IOException
      //   114	132	179	java/io/IOException
      //   158	176	179	java/io/IOException
      //   196	214	179	java/io/IOException
      //   217	240	179	java/io/IOException
      //   243	266	179	java/io/IOException
    }
    
    private MnsIpInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private MnsIpInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static MnsIpInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsIpInfo_descriptor;
    }
    
    private void initFields()
    {
      this.ip_ = 0;
      this.port_ = 0;
      this.apn_ = 0;
      this.remark_ = "";
      this.ipv6_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$15700();
    }
    
    public static Builder newBuilder(MnsIpInfo paramMnsIpInfo)
    {
      return newBuilder().mergeFrom(paramMnsIpInfo);
    }
    
    public static MnsIpInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsIpInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static MnsIpInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsIpInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsIpInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (MnsIpInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static MnsIpInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsIpInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static MnsIpInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (MnsIpInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static MnsIpInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsIpInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsIpInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (MnsIpInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static MnsIpInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (MnsIpInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static MnsIpInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (MnsIpInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static MnsIpInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (MnsIpInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getApn()
    {
      return this.apn_;
    }
    
    public final MnsIpInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getIp()
    {
      return this.ip_;
    }
    
    public final String getIpv6()
    {
      Object localObject = this.ipv6_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.ipv6_ = str;
      }
      return str;
    }
    
    public final ByteString getIpv6Bytes()
    {
      Object localObject = this.ipv6_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.ipv6_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<MnsIpInfo> getParserForType()
    {
      return PARSER;
    }
    
    public final int getPort()
    {
      return this.port_;
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
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt32Size(1, this.ip_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeUInt32Size(2, this.port_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeInt32Size(3, this.apn_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getRemarkBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getIpv6Bytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasApn()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasIp()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasIpv6()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasPort()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasRemark()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsIpInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(MnsIpInfo.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.ip_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.port_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeInt32(3, this.apn_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getRemarkBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getIpv6Bytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.MnsIpInfoOrBuilder
    {
      private int apn_;
      private int bitField0_;
      private int ip_;
      private Object ipv6_ = "";
      private int port_;
      private Object remark_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsIpInfo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.MnsIpInfo build()
      {
        SystemPacketProto.MnsIpInfo localMnsIpInfo = buildPartial();
        if (!localMnsIpInfo.isInitialized()) {
          throw newUninitializedMessageException(localMnsIpInfo);
        }
        return localMnsIpInfo;
      }
      
      public final SystemPacketProto.MnsIpInfo buildPartial()
      {
        int j = 1;
        SystemPacketProto.MnsIpInfo localMnsIpInfo = new SystemPacketProto.MnsIpInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.MnsIpInfo.access$16102(localMnsIpInfo, this.ip_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.MnsIpInfo.access$16202(localMnsIpInfo, this.port_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.MnsIpInfo.access$16302(localMnsIpInfo, this.apn_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          SystemPacketProto.MnsIpInfo.access$16402(localMnsIpInfo, this.remark_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          SystemPacketProto.MnsIpInfo.access$16502(localMnsIpInfo, this.ipv6_);
          SystemPacketProto.MnsIpInfo.access$16602(localMnsIpInfo, j);
          onBuilt();
          return localMnsIpInfo;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.ip_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.port_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.apn_ = 0;
        this.bitField0_ &= 0xFFFFFFFB;
        this.remark_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.ipv6_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        return this;
      }
      
      public final Builder clearApn()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.apn_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearIp()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.ip_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearIpv6()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.ipv6_ = SystemPacketProto.MnsIpInfo.getDefaultInstance().getIpv6();
        onChanged();
        return this;
      }
      
      public final Builder clearPort()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.port_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearRemark()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.remark_ = SystemPacketProto.MnsIpInfo.getDefaultInstance().getRemark();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getApn()
      {
        return this.apn_;
      }
      
      public final SystemPacketProto.MnsIpInfo getDefaultInstanceForType()
      {
        return SystemPacketProto.MnsIpInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsIpInfo_descriptor;
      }
      
      public final int getIp()
      {
        return this.ip_;
      }
      
      public final String getIpv6()
      {
        Object localObject = this.ipv6_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.ipv6_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getIpv6Bytes()
      {
        Object localObject = this.ipv6_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.ipv6_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getPort()
      {
        return this.port_;
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
      
      public final boolean hasApn()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasIp()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasIpv6()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasPort()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasRemark()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_MnsIpInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.MnsIpInfo.class, Builder.class);
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
        //   2: getstatic 205	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 211 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 140	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 214	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 140	com/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.MnsIpInfo)) {
          return mergeFrom((SystemPacketProto.MnsIpInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.MnsIpInfo paramMnsIpInfo)
      {
        if (paramMnsIpInfo == SystemPacketProto.MnsIpInfo.getDefaultInstance()) {
          return this;
        }
        if (paramMnsIpInfo.hasIp()) {
          setIp(paramMnsIpInfo.getIp());
        }
        if (paramMnsIpInfo.hasPort()) {
          setPort(paramMnsIpInfo.getPort());
        }
        if (paramMnsIpInfo.hasApn()) {
          setApn(paramMnsIpInfo.getApn());
        }
        if (paramMnsIpInfo.hasRemark())
        {
          this.bitField0_ |= 0x8;
          this.remark_ = paramMnsIpInfo.remark_;
          onChanged();
        }
        if (paramMnsIpInfo.hasIpv6())
        {
          this.bitField0_ |= 0x10;
          this.ipv6_ = paramMnsIpInfo.ipv6_;
          onChanged();
        }
        mergeUnknownFields(paramMnsIpInfo.getUnknownFields());
        return this;
      }
      
      public final Builder setApn(int paramInt)
      {
        this.bitField0_ |= 0x4;
        this.apn_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setIp(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.ip_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setIpv6(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.ipv6_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setIpv6Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.ipv6_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setPort(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.port_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setRemark(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.remark_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setRemarkBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.remark_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface MnsIpInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getApn();
    
    public abstract int getIp();
    
    public abstract String getIpv6();
    
    public abstract ByteString getIpv6Bytes();
    
    public abstract int getPort();
    
    public abstract String getRemark();
    
    public abstract ByteString getRemarkBytes();
    
    public abstract boolean hasApn();
    
    public abstract boolean hasIp();
    
    public abstract boolean hasIpv6();
    
    public abstract boolean hasPort();
    
    public abstract boolean hasRemark();
  }
  
  public static final class PublicKeyInfo
    extends GeneratedMessage
    implements SystemPacketProto.PublicKeyInfoOrBuilder
  {
    public static final int KEYID_FIELD_NUMBER = 1;
    public static Parser<PublicKeyInfo> PARSER = new SystemPacketProto.PublicKeyInfo.1();
    public static final int PUBLICKEY_FIELD_NUMBER = 3;
    public static final int SIGNATURE_FIELD_NUMBER = 2;
    private static final PublicKeyInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int keyId_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private ByteString publicKey_;
    private Object signature_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      PublicKeyInfo localPublicKeyInfo = new PublicKeyInfo(true);
      defaultInstance = localPublicKeyInfo;
      localPublicKeyInfo.initFields();
    }
    
    /* Error */
    private PublicKeyInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 63	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 65	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 67	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 56	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:initFields	()V
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
      //   37: lookupswitch	default:+182->219, 0:+185->222, 8:+61->98, 18:+105->142, 26:+147->184
      //   80: aload_0
      //   81: aload_1
      //   82: aload 5
      //   84: aload_2
      //   85: iload 4
      //   87: invokevirtual 83	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 88	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   113: putfield 90	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:keyId_	I
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
      //   133: putfield 102	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 105	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_1
      //   143: invokevirtual 109	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   146: astore 6
      //   148: aload_0
      //   149: aload_0
      //   150: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:bitField0_	I
      //   153: iconst_2
      //   154: ior
      //   155: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:bitField0_	I
      //   158: aload_0
      //   159: aload 6
      //   161: putfield 111	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:signature_	Ljava/lang/Object;
      //   164: goto -139 -> 25
      //   167: astore_1
      //   168: new 60	com/google/protobuf/InvalidProtocolBufferException
      //   171: dup
      //   172: aload_1
      //   173: invokevirtual 115	java/io/IOException:getMessage	()Ljava/lang/String;
      //   176: invokespecial 118	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   179: aload_0
      //   180: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   183: athrow
      //   184: aload_0
      //   185: aload_0
      //   186: getfield 85	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:bitField0_	I
      //   189: iconst_4
      //   190: ior
      //   191: putfield 85	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:bitField0_	I
      //   194: aload_0
      //   195: aload_1
      //   196: invokevirtual 109	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   199: putfield 120	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:publicKey_	Lcom/google/protobuf/ByteString;
      //   202: goto -177 -> 25
      //   205: aload_0
      //   206: aload 5
      //   208: invokevirtual 100	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   211: putfield 102	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   214: aload_0
      //   215: invokevirtual 105	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:makeExtensionsImmutable	()V
      //   218: return
      //   219: goto -139 -> 80
      //   222: iconst_1
      //   223: istore_3
      //   224: goto -199 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	227	0	this	PublicKeyInfo
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
    
    private PublicKeyInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private PublicKeyInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static PublicKeyInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_descriptor;
    }
    
    private void initFields()
    {
      this.keyId_ = 0;
      this.signature_ = "";
      this.publicKey_ = ByteString.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$24000();
    }
    
    public static Builder newBuilder(PublicKeyInfo paramPublicKeyInfo)
    {
      return newBuilder().mergeFrom(paramPublicKeyInfo);
    }
    
    public static PublicKeyInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (PublicKeyInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static PublicKeyInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (PublicKeyInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static PublicKeyInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (PublicKeyInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static PublicKeyInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (PublicKeyInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static PublicKeyInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (PublicKeyInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static PublicKeyInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (PublicKeyInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static PublicKeyInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (PublicKeyInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static PublicKeyInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (PublicKeyInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static PublicKeyInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (PublicKeyInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static PublicKeyInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (PublicKeyInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final PublicKeyInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getKeyId()
    {
      return this.keyId_;
    }
    
    public final Parser<PublicKeyInfo> getParserForType()
    {
      return PARSER;
    }
    
    public final ByteString getPublicKey()
    {
      return this.publicKey_;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt32Size(1, this.keyId_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getSignatureBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, this.publicKey_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getSignature()
    {
      Object localObject = this.signature_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.signature_ = str;
      }
      return str;
    }
    
    public final ByteString getSignatureBytes()
    {
      Object localObject = this.signature_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.signature_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasKeyId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasPublicKey()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasSignature()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(PublicKeyInfo.class, Builder.class);
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
        paramCodedOutputStream.writeUInt32(1, this.keyId_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getSignatureBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, this.publicKey_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.PublicKeyInfoOrBuilder
    {
      private int bitField0_;
      private int keyId_;
      private ByteString publicKey_ = ByteString.EMPTY;
      private Object signature_ = "";
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.PublicKeyInfo build()
      {
        SystemPacketProto.PublicKeyInfo localPublicKeyInfo = buildPartial();
        if (!localPublicKeyInfo.isInitialized()) {
          throw newUninitializedMessageException(localPublicKeyInfo);
        }
        return localPublicKeyInfo;
      }
      
      public final SystemPacketProto.PublicKeyInfo buildPartial()
      {
        int j = 1;
        SystemPacketProto.PublicKeyInfo localPublicKeyInfo = new SystemPacketProto.PublicKeyInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.PublicKeyInfo.access$24402(localPublicKeyInfo, this.keyId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.PublicKeyInfo.access$24502(localPublicKeyInfo, this.signature_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.PublicKeyInfo.access$24602(localPublicKeyInfo, this.publicKey_);
          SystemPacketProto.PublicKeyInfo.access$24702(localPublicKeyInfo, j);
          onBuilt();
          return localPublicKeyInfo;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.keyId_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.signature_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.publicKey_ = ByteString.EMPTY;
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearKeyId()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.keyId_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearPublicKey()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.publicKey_ = SystemPacketProto.PublicKeyInfo.getDefaultInstance().getPublicKey();
        onChanged();
        return this;
      }
      
      public final Builder clearSignature()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.signature_ = SystemPacketProto.PublicKeyInfo.getDefaultInstance().getSignature();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final SystemPacketProto.PublicKeyInfo getDefaultInstanceForType()
      {
        return SystemPacketProto.PublicKeyInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_descriptor;
      }
      
      public final int getKeyId()
      {
        return this.keyId_;
      }
      
      public final ByteString getPublicKey()
      {
        return this.publicKey_;
      }
      
      public final String getSignature()
      {
        Object localObject = this.signature_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.signature_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getSignatureBytes()
      {
        Object localObject = this.signature_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.signature_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasKeyId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasPublicKey()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasSignature()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_PublicKeyInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.PublicKeyInfo.class, Builder.class);
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
        //   2: getstatic 191	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 197 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 134	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 200	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 134	com/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.PublicKeyInfo)) {
          return mergeFrom((SystemPacketProto.PublicKeyInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.PublicKeyInfo paramPublicKeyInfo)
      {
        if (paramPublicKeyInfo == SystemPacketProto.PublicKeyInfo.getDefaultInstance()) {
          return this;
        }
        if (paramPublicKeyInfo.hasKeyId()) {
          setKeyId(paramPublicKeyInfo.getKeyId());
        }
        if (paramPublicKeyInfo.hasSignature())
        {
          this.bitField0_ |= 0x2;
          this.signature_ = paramPublicKeyInfo.signature_;
          onChanged();
        }
        if (paramPublicKeyInfo.hasPublicKey()) {
          setPublicKey(paramPublicKeyInfo.getPublicKey());
        }
        mergeUnknownFields(paramPublicKeyInfo.getUnknownFields());
        return this;
      }
      
      public final Builder setKeyId(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.keyId_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setPublicKey(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.publicKey_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSignature(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.signature_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSignatureBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.signature_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface PublicKeyInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getKeyId();
    
    public abstract ByteString getPublicKey();
    
    public abstract String getSignature();
    
    public abstract ByteString getSignatureBytes();
    
    public abstract boolean hasKeyId();
    
    public abstract boolean hasPublicKey();
    
    public abstract boolean hasSignature();
  }
  
  public static final class SdkConnMgrInfo
    extends GeneratedMessage
    implements SystemPacketProto.SdkConnMgrInfoOrBuilder
  {
    public static final int APN_TYPE_FIELD_NUMBER = 2;
    public static final int IP_PRINCIPLE_FIELD_NUMBER = 1;
    public static final int IS_BGD_FIELD_NUMBER = 3;
    public static Parser<SdkConnMgrInfo> PARSER = new SystemPacketProto.SdkConnMgrInfo.1();
    private static final SdkConnMgrInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int apnType_;
    private int bitField0_;
    private int ipPrinciple_;
    private boolean isBgd_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      SdkConnMgrInfo localSdkConnMgrInfo = new SdkConnMgrInfo(true);
      defaultInstance = localSdkConnMgrInfo;
      localSdkConnMgrInfo.initFields();
    }
    
    /* Error */
    private SdkConnMgrInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 62	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 64	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 66	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 55	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:initFields	()V
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
      //   87: invokevirtual 82	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   90: ifne -65 -> 25
      //   93: iconst_1
      //   94: istore_3
      //   95: goto -70 -> 25
      //   98: aload_0
      //   99: aload_0
      //   100: getfield 84	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:bitField0_	I
      //   103: iconst_1
      //   104: ior
      //   105: putfield 84	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:bitField0_	I
      //   108: aload_0
      //   109: aload_1
      //   110: invokevirtual 87	com/google/protobuf/CodedInputStream:readInt32	()I
      //   113: putfield 89	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:ipPrinciple_	I
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
      //   133: putfield 101	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   136: aload_0
      //   137: invokevirtual 104	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:makeExtensionsImmutable	()V
      //   140: aload_1
      //   141: athrow
      //   142: aload_0
      //   143: aload_0
      //   144: getfield 84	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:bitField0_	I
      //   147: iconst_2
      //   148: ior
      //   149: putfield 84	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:bitField0_	I
      //   152: aload_0
      //   153: aload_1
      //   154: invokevirtual 87	com/google/protobuf/CodedInputStream:readInt32	()I
      //   157: putfield 106	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:apnType_	I
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
      //   180: aload_0
      //   181: aload_0
      //   182: getfield 84	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:bitField0_	I
      //   185: iconst_4
      //   186: ior
      //   187: putfield 84	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:bitField0_	I
      //   190: aload_0
      //   191: aload_1
      //   192: invokevirtual 117	com/google/protobuf/CodedInputStream:readBool	()Z
      //   195: putfield 119	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:isBgd_	Z
      //   198: goto -173 -> 25
      //   201: aload_0
      //   202: aload 5
      //   204: invokevirtual 99	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   207: putfield 101	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   210: aload_0
      //   211: invokevirtual 104	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:makeExtensionsImmutable	()V
      //   214: return
      //   215: goto -135 -> 80
      //   218: iconst_1
      //   219: istore_3
      //   220: goto -195 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	223	0	this	SdkConnMgrInfo
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
    
    private SdkConnMgrInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private SdkConnMgrInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static SdkConnMgrInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_descriptor;
    }
    
    private void initFields()
    {
      this.ipPrinciple_ = 0;
      this.apnType_ = 0;
      this.isBgd_ = false;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$2400();
    }
    
    public static Builder newBuilder(SdkConnMgrInfo paramSdkConnMgrInfo)
    {
      return newBuilder().mergeFrom(paramSdkConnMgrInfo);
    }
    
    public static SdkConnMgrInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkConnMgrInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static SdkConnMgrInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkConnMgrInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkConnMgrInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (SdkConnMgrInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static SdkConnMgrInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkConnMgrInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static SdkConnMgrInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (SdkConnMgrInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static SdkConnMgrInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkConnMgrInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkConnMgrInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkConnMgrInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static SdkConnMgrInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkConnMgrInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkConnMgrInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (SdkConnMgrInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static SdkConnMgrInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkConnMgrInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getApnType()
    {
      return this.apnType_;
    }
    
    public final SdkConnMgrInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getIpPrinciple()
    {
      return this.ipPrinciple_;
    }
    
    public final boolean getIsBgd()
    {
      return this.isBgd_;
    }
    
    public final Parser<SdkConnMgrInfo> getParserForType()
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
        j = CodedOutputStream.computeInt32Size(1, this.ipPrinciple_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeInt32Size(2, this.apnType_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBoolSize(3, this.isBgd_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasApnType()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasIpPrinciple()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasIsBgd()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(SdkConnMgrInfo.class, Builder.class);
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
        paramCodedOutputStream.writeInt32(1, this.ipPrinciple_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeInt32(2, this.apnType_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBool(3, this.isBgd_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements SystemPacketProto.SdkConnMgrInfoOrBuilder
    {
      private int apnType_;
      private int bitField0_;
      private int ipPrinciple_;
      private boolean isBgd_;
      
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
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final SystemPacketProto.SdkConnMgrInfo build()
      {
        SystemPacketProto.SdkConnMgrInfo localSdkConnMgrInfo = buildPartial();
        if (!localSdkConnMgrInfo.isInitialized()) {
          throw newUninitializedMessageException(localSdkConnMgrInfo);
        }
        return localSdkConnMgrInfo;
      }
      
      public final SystemPacketProto.SdkConnMgrInfo buildPartial()
      {
        int j = 1;
        SystemPacketProto.SdkConnMgrInfo localSdkConnMgrInfo = new SystemPacketProto.SdkConnMgrInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          SystemPacketProto.SdkConnMgrInfo.access$2802(localSdkConnMgrInfo, this.ipPrinciple_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          SystemPacketProto.SdkConnMgrInfo.access$2902(localSdkConnMgrInfo, this.apnType_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          SystemPacketProto.SdkConnMgrInfo.access$3002(localSdkConnMgrInfo, this.isBgd_);
          SystemPacketProto.SdkConnMgrInfo.access$3102(localSdkConnMgrInfo, j);
          onBuilt();
          return localSdkConnMgrInfo;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.ipPrinciple_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.apnType_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.isBgd_ = false;
        this.bitField0_ &= 0xFFFFFFFB;
        return this;
      }
      
      public final Builder clearApnType()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.apnType_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearIpPrinciple()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.ipPrinciple_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearIsBgd()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.isBgd_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getApnType()
      {
        return this.apnType_;
      }
      
      public final SystemPacketProto.SdkConnMgrInfo getDefaultInstanceForType()
      {
        return SystemPacketProto.SdkConnMgrInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_descriptor;
      }
      
      public final int getIpPrinciple()
      {
        return this.ipPrinciple_;
      }
      
      public final boolean getIsBgd()
      {
        return this.isBgd_;
      }
      
      public final boolean hasApnType()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasIpPrinciple()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasIsBgd()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return SystemPacketProto.internal_static_com_mi_milink_sdk_proto_SdkConnMgrInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(SystemPacketProto.SdkConnMgrInfo.class, Builder.class);
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
        //   2: getstatic 163	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 169 3 0
        //   12: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 114	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 172	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 114	com/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder:mergeFrom	(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;
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
        if ((paramMessage instanceof SystemPacketProto.SdkConnMgrInfo)) {
          return mergeFrom((SystemPacketProto.SdkConnMgrInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(SystemPacketProto.SdkConnMgrInfo paramSdkConnMgrInfo)
      {
        if (paramSdkConnMgrInfo == SystemPacketProto.SdkConnMgrInfo.getDefaultInstance()) {
          return this;
        }
        if (paramSdkConnMgrInfo.hasIpPrinciple()) {
          setIpPrinciple(paramSdkConnMgrInfo.getIpPrinciple());
        }
        if (paramSdkConnMgrInfo.hasApnType()) {
          setApnType(paramSdkConnMgrInfo.getApnType());
        }
        if (paramSdkConnMgrInfo.hasIsBgd()) {
          setIsBgd(paramSdkConnMgrInfo.getIsBgd());
        }
        mergeUnknownFields(paramSdkConnMgrInfo.getUnknownFields());
        return this;
      }
      
      public final Builder setApnType(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.apnType_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setIpPrinciple(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.ipPrinciple_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setIsBgd(boolean paramBoolean)
      {
        this.bitField0_ |= 0x4;
        this.isBgd_ = paramBoolean;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface SdkConnMgrInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getApnType();
    
    public abstract int getIpPrinciple();
    
    public abstract boolean getIsBgd();
    
    public abstract boolean hasApnType();
    
    public abstract boolean hasIpPrinciple();
    
    public abstract boolean hasIsBgd();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\proto\SystemPacketProto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */