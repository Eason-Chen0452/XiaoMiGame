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
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.ProtocolStringList;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class LoginProto
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(15);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionReq_descriptor, new String[] { "DevAppId", "JarSdkVersion", "ServiceVersion", "Imei", "Imsi", "ImeiMd5", "Ua", "Resolution", "Access", "Mac", "Timezone", "Country", "Carrier", "GamePackageName", "GameVersionCode", "GameVersionName", "FirstChannel", "CurrentChannel", "Os" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(16);
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionRsp_descriptor, new String[] { "RetCode", "ServiceDownloadUrl", "Md5", "Size", "Note", "Force", "GuideLink", "GuideWord", "ServiceVersion" });
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_fieldAccessorTable;
  
  static
  {
    o localo = new o();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\013Login.proto\022 org.xiaomi.gamecenter.milink.msg\"d\n\fAppAccountVo\022\024\n\fappAccountId\030\001 \002(\004\022\026\n\016appAccountName\030\002 \002(\t\022\025\n\rlastLoginTime\030\003 \002(\004\022\017\n\007session\030\004 \002(\t\"Ñ\001\n\025GetLoginAppAccountReq\022\f\n\004fuid\030\001 \002(\004\022\020\n\bdevAppId\030\002 \002(\t\022\f\n\004toke\030\003 \002(\t\022\f\n\004imei\030\004 \001(\t\022\f\n\004imsi\030\005 \001(\t\022\022\n\nsdkVersion\030\006 \001(\t\022\017\n\007channel\030\007 \001(\t\022\n\n\002ua\030\b \001(\t\022\026\n\016currentChannel\030\t \001(\t\022\017\n\007imeiMd5\030\n \001(\t\022\024\n\ffirstChannel\030\013 \001(\t\"x\n\025GetLoginAppAccountRsp\022\017\n\007retCode\030\001 ", "\002(\r\022\024\n\fappAccountId\030\002 \001(\004\022\020\n\bnickName\030\003 \001(\t\022\017\n\007session\030\004 \001(\t\022\025\n\rlastLoginTime\030\005 \001(\004\"Î\001\n\022GetServiceTokenReq\022\f\n\004fuid\030\001 \002(\004\022\020\n\bdevAppId\030\002 \002(\t\022\f\n\004toke\030\003 \002(\t\022\f\n\004imei\030\004 \001(\t\022\f\n\004imsi\030\005 \001(\t\022\022\n\nsdkVersion\030\006 \001(\t\022\017\n\007channel\030\007 \001(\t\022\n\n\002ua\030\b \001(\t\022\026\n\016currentChannel\030\t \001(\t\022\017\n\007imeiMd5\030\n \001(\t\022\024\n\ffirstChannel\030\013 \001(\t\";\n\022GetServiceTokenRsp\022\017\n\007retCode\030\001 \002(\r\022\024\n\fserviceToken\030\002 \001(\t\"Ï\001\n\nSdkInitReq\022\020\n\bdevAppId\030\001 \002(\t\022\023\n\013packageNam", "e\030\002 \002(\t\022\016\n\006appKey\030\003 \002(\t\022\f\n\004imei\030\004 \001(\t\022\f\n\004imsi\030\005 \001(\t\022\022\n\nsdkVersion\030\006 \001(\t\022\017\n\007channel\030\007 \001(\t\022\n\n\002ua\030\b \001(\t\022\026\n\016currentChannel\030\t \001(\t\022\017\n\007imeiMd5\030\n \001(\t\022\024\n\ffirstChannel\030\013 \001(\t\"\001\n\nSdkInitRsp\022\017\n\007retCode\030\001 \002(\005\022\f\n\004type\030\002 \001(\t\022\025\n\rmutilAccounts\030\003 \001(\t\022\027\n\017displayLoginBar\030\004 \001(\t\022\020\n\bcronTime\030\005 \001(\t\022\026\n\016dispalyToolBar\030\006 \001(\t\022\030\n\020channelBlackList\030\007 \003(\t\"Í\001\n\021GetAppAccountsReq\022\f\n\004fuid\030\001 \002(\004\022\020\n\bdevAppId\030\002 \002(\t\022\f\n\004toke\030\003 \002(\t\022\f\n\004ime", "i\030\004 \001(\t\022\f\n\004imsi\030\005 \001(\t\022\022\n\nsdkVersion\030\006 \001(\t\022\017\n\007channel\030\007 \001(\t\022\n\n\002ua\030\b \001(\t\022\026\n\016currentChannel\030\t \001(\t\022\017\n\007imeiMd5\030\n \001(\t\022\024\n\ffirstChannel\030\013 \001(\t\"\001\n\021GetAppAccountsRsp\022\017\n\007retCode\030\001 \002(\r\022\030\n\020defaultAccountId\030\002 \002(\004\022@\n\baccounts\030\003 \003(\0132..org.xiaomi.gamecenter.milink.msg.AppAccountVo\"ê\001\n\030RecordLoginAppAccountReq\022\f\n\004fuid\030\001 \002(\004\022\020\n\bdevAppId\030\002 \002(\t\022\024\n\fappAccountId\030\003 \002(\004\022\f\n\004toke\030\004 \002(\t\022\f\n\004imei\030\005 \001(\t\022\f\n\004imsi\030\006 \001(\t\022\022\n\nsdkVers", "ion\030\007 \001(\t\022\017\n\007channel\030\b \001(\t\022\n\n\002ua\030\t \001(\t\022\026\n\016currentChannel\030\n \001(\t\022\017\n\007imeiMd5\030\013 \001(\t\022\024\n\ffirstChannel\030\f \001(\t\"+\n\030RecordLoginAppAccountRsp\022\017\n\007retCode\030\001 \002(\r\"Ê\001\n\032SetUserInfoToGameCenterReq\022\f\n\004fuid\030\001 \002(\004\022\f\n\004toke\030\002 \002(\t\022\020\n\bnickname\030\003 \001(\t\022\013\n\003sex\030\004 \001(\r\022\f\n\004imei\030\005 \001(\t\022\021\n\tavatarUrl\030\006 \001(\t\022\021\n\tautoLogin\030\007 \001(\b\022\026\n\016currentChannel\030\b \001(\t\022\017\n\007imeiMd5\030\t \001(\t\022\024\n\ffirstChannel\030\n \001(\t\"=\n\032SetUserInfoToGameCenterRsp\022\017\n\007retCode\030\001 \002(\r\022\016", "\n\006errMsg\030\002 \001(\t\"p\n\017GetSdkConfigReq\022\020\n\bdevAppId\030\001 \002(\t\022\017\n\007channel\030\002 \002(\t\022\f\n\004imei\030\003 \001(\t\022\f\n\004imsi\030\004 \001(\t\022\022\n\nsdkVersion\030\005 \001(\t\022\n\n\002ua\030\006 \001(\t\"Z\n\017GetSdkConfigRsp\022\017\n\007retCode\030\001 \002(\r\022\022\n\ngameConfig\030\002 \002(\r\022\021\n\tloginType\030\003 \003(\t\022\017\n\007payType\030\004 \003(\t\"ø\002\n\022CheckSdkVersionReq\022\020\n\bdevAppId\030\001 \002(\004\022\025\n\rjarSdkVersion\030\002 \002(\t\022\026\n\016serviceVersion\030\003 \002(\t\022\f\n\004imei\030\004 \001(\t\022\f\n\004imsi\030\005 \001(\t\022\017\n\007imeiMd5\030\006 \001(\t\022\n\n\002ua\030\007 \001(\t\022\022\n\nresolution\030\b \001(\t\022\016\n\006access\030\t \001(", "\t\022\013\n\003mac\030\n \001(\t\022\020\n\btimezone\030\013 \001(\t\022\017\n\007country\030\f \001(\t\022\017\n\007carrier\030\r \001(\t\022\027\n\017gamePackageName\030\016 \001(\t\022\027\n\017gameVersionCode\030\017 \001(\r\022\027\n\017gameVersionName\030\020 \001(\t\022\024\n\ffirstChannel\030\021 \001(\t\022\026\n\016currentChannel\030\022 \001(\t\022\n\n\002os\030\023 \001(\t\"·\001\n\022CheckSdkVersionRsp\022\017\n\007retCode\030\001 \002(\r\022\032\n\022serviceDownloadUrl\030\002 \001(\t\022\013\n\003md5\030\003 \001(\t\022\f\n\004size\030\004 \001(\004\022\f\n\004note\030\006 \001(\t\022\r\n\005force\030\007 \001(\b\022\021\n\tguideLink\030\b \001(\t\022\021\n\tguideWord\030\t \001(\t\022\026\n\016serviceVersion\030\n \001(\t*;\n\nGameConfig\022", "\013\n\007SERVICE\020\000\022\020\n\fDISTRIBUTION\020\001\022\016\n\nGAMECENTER\020\002B\fB\nLoginProto" }, new Descriptors.FileDescriptor[0], localo);
    internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_descriptor, new String[] { "AppAccountId", "AppAccountName", "LastLoginTime", "Session" });
    internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_descriptor, new String[] { "Fuid", "DevAppId", "Toke", "Imei", "Imsi", "SdkVersion", "Channel", "Ua", "CurrentChannel", "ImeiMd5", "FirstChannel" });
    internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_descriptor, new String[] { "RetCode", "AppAccountId", "NickName", "Session", "LastLoginTime" });
    internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_descriptor, new String[] { "Fuid", "DevAppId", "Toke", "Imei", "Imsi", "SdkVersion", "Channel", "Ua", "CurrentChannel", "ImeiMd5", "FirstChannel" });
    internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(4);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_descriptor, new String[] { "RetCode", "ServiceToken" });
    internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(5);
    internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_descriptor, new String[] { "DevAppId", "PackageName", "AppKey", "Imei", "Imsi", "SdkVersion", "Channel", "Ua", "CurrentChannel", "ImeiMd5", "FirstChannel" });
    internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(6);
    internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_descriptor, new String[] { "RetCode", "Type", "MutilAccounts", "DisplayLoginBar", "CronTime", "DispalyToolBar", "ChannelBlackList" });
    internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(7);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_descriptor, new String[] { "Fuid", "DevAppId", "Toke", "Imei", "Imsi", "SdkVersion", "Channel", "Ua", "CurrentChannel", "ImeiMd5", "FirstChannel" });
    internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(8);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_descriptor, new String[] { "RetCode", "DefaultAccountId", "Accounts" });
    internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(9);
    internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_descriptor, new String[] { "Fuid", "DevAppId", "AppAccountId", "Toke", "Imei", "Imsi", "SdkVersion", "Channel", "Ua", "CurrentChannel", "ImeiMd5", "FirstChannel" });
    internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(10);
    internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_descriptor, new String[] { "RetCode" });
    internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(11);
    internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_descriptor, new String[] { "Fuid", "Toke", "Nickname", "Sex", "Imei", "AvatarUrl", "AutoLogin", "CurrentChannel", "ImeiMd5", "FirstChannel" });
    internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(12);
    internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_descriptor, new String[] { "RetCode", "ErrMsg" });
    internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(13);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_descriptor, new String[] { "DevAppId", "Channel", "Imei", "Imsi", "SdkVersion", "Ua" });
    internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(14);
    internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_descriptor, new String[] { "RetCode", "GameConfig", "LoginType", "PayType" });
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class AppAccountVo
    extends GeneratedMessage
    implements LoginProto.AppAccountVoOrBuilder
  {
    public static final int APPACCOUNTID_FIELD_NUMBER = 1;
    public static final int APPACCOUNTNAME_FIELD_NUMBER = 2;
    public static final int LASTLOGINTIME_FIELD_NUMBER = 3;
    public static Parser<AppAccountVo> PARSER = new p();
    public static final int SESSION_FIELD_NUMBER = 4;
    private static final AppAccountVo defaultInstance;
    private static final long serialVersionUID = 0L;
    private long appAccountId_;
    private Object appAccountName_;
    private int bitField0_;
    private long lastLoginTime_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object session_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      AppAccountVo localAppAccountVo = new AppAccountVo(true);
      defaultInstance = localAppAccountVo;
      localAppAccountVo.initFields();
    }
    
    /* Error */
    private AppAccountVo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 65	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 67	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 69	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 58	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:initFields	()V
      //   18: invokestatic 75	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +213 -> 239
      //   29: aload_1
      //   30: invokevirtual 81	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+216->253, 0:+219->256, 8:+69->106, 18:+113->150, 24:+155->192, 34:+176->213
      //   88: aload_0
      //   89: aload_1
      //   90: aload 5
      //   92: aload_2
      //   93: iload 4
      //   95: invokevirtual 85	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   98: ifne -73 -> 25
      //   101: iconst_1
      //   102: istore_3
      //   103: goto -78 -> 25
      //   106: aload_0
      //   107: aload_0
      //   108: getfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:bitField0_	I
      //   111: iconst_1
      //   112: ior
      //   113: putfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:bitField0_	I
      //   116: aload_0
      //   117: aload_1
      //   118: invokevirtual 91	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   121: putfield 93	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:appAccountId_	J
      //   124: goto -99 -> 25
      //   127: astore_1
      //   128: aload_1
      //   129: aload_0
      //   130: invokevirtual 97	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   133: athrow
      //   134: astore_1
      //   135: aload_0
      //   136: aload 5
      //   138: invokevirtual 103	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   141: putfield 105	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   144: aload_0
      //   145: invokevirtual 108	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:makeExtensionsImmutable	()V
      //   148: aload_1
      //   149: athrow
      //   150: aload_1
      //   151: invokevirtual 112	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   154: astore 6
      //   156: aload_0
      //   157: aload_0
      //   158: getfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:bitField0_	I
      //   161: iconst_2
      //   162: ior
      //   163: putfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:bitField0_	I
      //   166: aload_0
      //   167: aload 6
      //   169: putfield 114	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:appAccountName_	Ljava/lang/Object;
      //   172: goto -147 -> 25
      //   175: astore_1
      //   176: new 62	com/google/protobuf/InvalidProtocolBufferException
      //   179: dup
      //   180: aload_1
      //   181: invokevirtual 118	java/io/IOException:getMessage	()Ljava/lang/String;
      //   184: invokespecial 121	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   187: aload_0
      //   188: invokevirtual 97	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   191: athrow
      //   192: aload_0
      //   193: aload_0
      //   194: getfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:bitField0_	I
      //   197: iconst_4
      //   198: ior
      //   199: putfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:bitField0_	I
      //   202: aload_0
      //   203: aload_1
      //   204: invokevirtual 91	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   207: putfield 123	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:lastLoginTime_	J
      //   210: goto -185 -> 25
      //   213: aload_1
      //   214: invokevirtual 112	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   217: astore 6
      //   219: aload_0
      //   220: aload_0
      //   221: getfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:bitField0_	I
      //   224: bipush 8
      //   226: ior
      //   227: putfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:bitField0_	I
      //   230: aload_0
      //   231: aload 6
      //   233: putfield 125	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:session_	Ljava/lang/Object;
      //   236: goto -211 -> 25
      //   239: aload_0
      //   240: aload 5
      //   242: invokevirtual 103	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   245: putfield 105	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   248: aload_0
      //   249: invokevirtual 108	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:makeExtensionsImmutable	()V
      //   252: return
      //   253: goto -165 -> 88
      //   256: iconst_1
      //   257: istore_3
      //   258: goto -233 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	261	0	this	AppAccountVo
      //   0	261	1	paramCodedInputStream	CodedInputStream
      //   0	261	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	234	3	i	int
      //   33	61	4	j	int
      //   21	220	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   154	78	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	127	com/google/protobuf/InvalidProtocolBufferException
      //   88	101	127	com/google/protobuf/InvalidProtocolBufferException
      //   106	124	127	com/google/protobuf/InvalidProtocolBufferException
      //   150	172	127	com/google/protobuf/InvalidProtocolBufferException
      //   192	210	127	com/google/protobuf/InvalidProtocolBufferException
      //   213	236	127	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	134	finally
      //   88	101	134	finally
      //   106	124	134	finally
      //   128	134	134	finally
      //   150	172	134	finally
      //   176	192	134	finally
      //   192	210	134	finally
      //   213	236	134	finally
      //   29	35	175	java/io/IOException
      //   88	101	175	java/io/IOException
      //   106	124	175	java/io/IOException
      //   150	172	175	java/io/IOException
      //   192	210	175	java/io/IOException
      //   213	236	175	java/io/IOException
    }
    
    private AppAccountVo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private AppAccountVo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static AppAccountVo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_descriptor;
    }
    
    private void initFields()
    {
      this.appAccountId_ = 0L;
      this.appAccountName_ = "";
      this.lastLoginTime_ = 0L;
      this.session_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(AppAccountVo paramAppAccountVo)
    {
      return newBuilder().mergeFrom(paramAppAccountVo);
    }
    
    public static AppAccountVo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (AppAccountVo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static AppAccountVo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (AppAccountVo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static AppAccountVo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (AppAccountVo)PARSER.parseFrom(paramByteString);
    }
    
    public static AppAccountVo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (AppAccountVo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static AppAccountVo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (AppAccountVo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static AppAccountVo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (AppAccountVo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static AppAccountVo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (AppAccountVo)PARSER.parseFrom(paramInputStream);
    }
    
    public static AppAccountVo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (AppAccountVo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static AppAccountVo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (AppAccountVo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static AppAccountVo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (AppAccountVo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final long getAppAccountId()
    {
      return this.appAccountId_;
    }
    
    public final String getAppAccountName()
    {
      Object localObject = this.appAccountName_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.appAccountName_ = str;
      }
      return str;
    }
    
    public final ByteString getAppAccountNameBytes()
    {
      Object localObject = this.appAccountName_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.appAccountName_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final AppAccountVo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getLastLoginTime()
    {
      return this.lastLoginTime_;
    }
    
    public final Parser<AppAccountVo> getParserForType()
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
        j = CodedOutputStream.computeUInt64Size(1, this.appAccountId_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getAppAccountNameBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt64Size(3, this.lastLoginTime_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getSessionBytes());
      }
      i += getUnknownFields().getSerializedSize();
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
    
    public final boolean hasAppAccountId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasAppAccountName()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasLastLoginTime()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasSession()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_fieldAccessorTable.ensureFieldAccessorsInitialized(AppAccountVo.class, Builder.class);
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
      if (!hasAppAccountId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasAppAccountName())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasLastLoginTime())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasSession())
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
        paramCodedOutputStream.writeUInt64(1, this.appAccountId_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getAppAccountNameBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt64(3, this.lastLoginTime_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getSessionBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.AppAccountVoOrBuilder
    {
      private long appAccountId_;
      private Object appAccountName_ = "";
      private int bitField0_;
      private long lastLoginTime_;
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
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.AppAccountVo build()
      {
        LoginProto.AppAccountVo localAppAccountVo = buildPartial();
        if (!localAppAccountVo.isInitialized()) {
          throw newUninitializedMessageException(localAppAccountVo);
        }
        return localAppAccountVo;
      }
      
      public final LoginProto.AppAccountVo buildPartial()
      {
        int j = 1;
        LoginProto.AppAccountVo localAppAccountVo = new LoginProto.AppAccountVo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.AppAccountVo.access$702(localAppAccountVo, this.appAccountId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.AppAccountVo.access$802(localAppAccountVo, this.appAccountName_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.AppAccountVo.access$902(localAppAccountVo, this.lastLoginTime_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.AppAccountVo.access$1002(localAppAccountVo, this.session_);
          LoginProto.AppAccountVo.access$1102(localAppAccountVo, i);
          onBuilt();
          return localAppAccountVo;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.appAccountId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.appAccountName_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.lastLoginTime_ = 0L;
        this.bitField0_ &= 0xFFFFFFFB;
        this.session_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        return this;
      }
      
      public final Builder clearAppAccountId()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.appAccountId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearAppAccountName()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.appAccountName_ = LoginProto.AppAccountVo.getDefaultInstance().getAppAccountName();
        onChanged();
        return this;
      }
      
      public final Builder clearLastLoginTime()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.lastLoginTime_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearSession()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.session_ = LoginProto.AppAccountVo.getDefaultInstance().getSession();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final long getAppAccountId()
      {
        return this.appAccountId_;
      }
      
      public final String getAppAccountName()
      {
        Object localObject = this.appAccountName_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.appAccountName_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getAppAccountNameBytes()
      {
        Object localObject = this.appAccountName_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.appAccountName_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final LoginProto.AppAccountVo getDefaultInstanceForType()
      {
        return LoginProto.AppAccountVo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_descriptor;
      }
      
      public final long getLastLoginTime()
      {
        return this.lastLoginTime_;
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
      
      public final boolean hasAppAccountId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasAppAccountName()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasLastLoginTime()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasSession()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_AppAccountVo_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.AppAccountVo.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasAppAccountId()) {}
        while ((!hasAppAccountName()) || (!hasLastLoginTime()) || (!hasSession())) {
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
        //   2: getstatic 206	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 212 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 139	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 215	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 139	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo$Builder;
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
        if ((paramMessage instanceof LoginProto.AppAccountVo)) {
          return mergeFrom((LoginProto.AppAccountVo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.AppAccountVo paramAppAccountVo)
      {
        if (paramAppAccountVo == LoginProto.AppAccountVo.getDefaultInstance()) {
          return this;
        }
        if (paramAppAccountVo.hasAppAccountId()) {
          setAppAccountId(paramAppAccountVo.getAppAccountId());
        }
        if (paramAppAccountVo.hasAppAccountName())
        {
          this.bitField0_ |= 0x2;
          this.appAccountName_ = paramAppAccountVo.appAccountName_;
          onChanged();
        }
        if (paramAppAccountVo.hasLastLoginTime()) {
          setLastLoginTime(paramAppAccountVo.getLastLoginTime());
        }
        if (paramAppAccountVo.hasSession())
        {
          this.bitField0_ |= 0x8;
          this.session_ = paramAppAccountVo.session_;
          onChanged();
        }
        mergeUnknownFields(paramAppAccountVo.getUnknownFields());
        return this;
      }
      
      public final Builder setAppAccountId(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.appAccountId_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setAppAccountName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.appAccountName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setAppAccountNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.appAccountName_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setLastLoginTime(long paramLong)
      {
        this.bitField0_ |= 0x4;
        this.lastLoginTime_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setSession(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.session_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSessionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.session_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface AppAccountVoOrBuilder
    extends MessageOrBuilder
  {
    public abstract long getAppAccountId();
    
    public abstract String getAppAccountName();
    
    public abstract ByteString getAppAccountNameBytes();
    
    public abstract long getLastLoginTime();
    
    public abstract String getSession();
    
    public abstract ByteString getSessionBytes();
    
    public abstract boolean hasAppAccountId();
    
    public abstract boolean hasAppAccountName();
    
    public abstract boolean hasLastLoginTime();
    
    public abstract boolean hasSession();
  }
  
  public static final class CheckSdkVersionReq
    extends GeneratedMessage
    implements LoginProto.CheckSdkVersionReqOrBuilder
  {
    public static final int ACCESS_FIELD_NUMBER = 9;
    public static final int CARRIER_FIELD_NUMBER = 13;
    public static final int COUNTRY_FIELD_NUMBER = 12;
    public static final int CURRENTCHANNEL_FIELD_NUMBER = 18;
    public static final int DEVAPPID_FIELD_NUMBER = 1;
    public static final int FIRSTCHANNEL_FIELD_NUMBER = 17;
    public static final int GAMEPACKAGENAME_FIELD_NUMBER = 14;
    public static final int GAMEVERSIONCODE_FIELD_NUMBER = 15;
    public static final int GAMEVERSIONNAME_FIELD_NUMBER = 16;
    public static final int IMEIMD5_FIELD_NUMBER = 6;
    public static final int IMEI_FIELD_NUMBER = 4;
    public static final int IMSI_FIELD_NUMBER = 5;
    public static final int JARSDKVERSION_FIELD_NUMBER = 2;
    public static final int MAC_FIELD_NUMBER = 10;
    public static final int OS_FIELD_NUMBER = 19;
    public static Parser<CheckSdkVersionReq> PARSER = new q();
    public static final int RESOLUTION_FIELD_NUMBER = 8;
    public static final int SERVICEVERSION_FIELD_NUMBER = 3;
    public static final int TIMEZONE_FIELD_NUMBER = 11;
    public static final int UA_FIELD_NUMBER = 7;
    private static final CheckSdkVersionReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object access_;
    private int bitField0_;
    private Object carrier_;
    private Object country_;
    private Object currentChannel_;
    private long devAppId_;
    private Object firstChannel_;
    private Object gamePackageName_;
    private int gameVersionCode_;
    private Object gameVersionName_;
    private Object imeiMd5_;
    private Object imei_;
    private Object imsi_;
    private Object jarSdkVersion_;
    private Object mac_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object os_;
    private Object resolution_;
    private Object serviceVersion_;
    private Object timezone_;
    private Object ua_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      CheckSdkVersionReq localCheckSdkVersionReq = new CheckSdkVersionReq(true);
      defaultInstance = localCheckSdkVersionReq;
      localCheckSdkVersionReq.initFields();
    }
    
    /* Error */
    private CheckSdkVersionReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 110	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 114	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:initFields	()V
      //   18: invokestatic 120	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +731 -> 757
      //   29: aload_1
      //   30: invokevirtual 126	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+734->771, 0:+737->774, 8:+189->226, 18:+233->270, 26:+275->312, 34:+300->337, 42:+326->363, 50:+352->389, 58:+378->415, 66:+404->441, 74:+431->468, 82:+458->495, 90:+485->522, 98:+512->549, 106:+539->576, 114:+566->603, 120:+593->630, 130:+616->653, 138:+642->679, 146:+668->705, 154:+694->731
      //   208: aload_0
      //   209: aload_1
      //   210: aload 5
      //   212: aload_2
      //   213: iload 4
      //   215: invokevirtual 130	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   218: ifne -193 -> 25
      //   221: iconst_1
      //   222: istore_3
      //   223: goto -198 -> 25
      //   226: aload_0
      //   227: aload_0
      //   228: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   231: iconst_1
      //   232: ior
      //   233: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   236: aload_0
      //   237: aload_1
      //   238: invokevirtual 136	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   241: putfield 138	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:devAppId_	J
      //   244: goto -219 -> 25
      //   247: astore_1
      //   248: aload_1
      //   249: aload_0
      //   250: invokevirtual 142	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   253: athrow
      //   254: astore_1
      //   255: aload_0
      //   256: aload 5
      //   258: invokevirtual 148	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   261: putfield 150	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   264: aload_0
      //   265: invokevirtual 153	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:makeExtensionsImmutable	()V
      //   268: aload_1
      //   269: athrow
      //   270: aload_1
      //   271: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   274: astore 6
      //   276: aload_0
      //   277: aload_0
      //   278: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   281: iconst_2
      //   282: ior
      //   283: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   286: aload_0
      //   287: aload 6
      //   289: putfield 159	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:jarSdkVersion_	Ljava/lang/Object;
      //   292: goto -267 -> 25
      //   295: astore_1
      //   296: new 107	com/google/protobuf/InvalidProtocolBufferException
      //   299: dup
      //   300: aload_1
      //   301: invokevirtual 163	java/io/IOException:getMessage	()Ljava/lang/String;
      //   304: invokespecial 166	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   307: aload_0
      //   308: invokevirtual 142	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   311: athrow
      //   312: aload_1
      //   313: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   316: astore 6
      //   318: aload_0
      //   319: aload_0
      //   320: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   323: iconst_4
      //   324: ior
      //   325: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   328: aload_0
      //   329: aload 6
      //   331: putfield 168	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:serviceVersion_	Ljava/lang/Object;
      //   334: goto -309 -> 25
      //   337: aload_1
      //   338: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   341: astore 6
      //   343: aload_0
      //   344: aload_0
      //   345: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   348: bipush 8
      //   350: ior
      //   351: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   354: aload_0
      //   355: aload 6
      //   357: putfield 170	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:imei_	Ljava/lang/Object;
      //   360: goto -335 -> 25
      //   363: aload_1
      //   364: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   367: astore 6
      //   369: aload_0
      //   370: aload_0
      //   371: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   374: bipush 16
      //   376: ior
      //   377: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   380: aload_0
      //   381: aload 6
      //   383: putfield 172	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:imsi_	Ljava/lang/Object;
      //   386: goto -361 -> 25
      //   389: aload_1
      //   390: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   393: astore 6
      //   395: aload_0
      //   396: aload_0
      //   397: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   400: bipush 32
      //   402: ior
      //   403: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   406: aload_0
      //   407: aload 6
      //   409: putfield 174	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:imeiMd5_	Ljava/lang/Object;
      //   412: goto -387 -> 25
      //   415: aload_1
      //   416: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   419: astore 6
      //   421: aload_0
      //   422: aload_0
      //   423: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   426: bipush 64
      //   428: ior
      //   429: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   432: aload_0
      //   433: aload 6
      //   435: putfield 176	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:ua_	Ljava/lang/Object;
      //   438: goto -413 -> 25
      //   441: aload_1
      //   442: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   445: astore 6
      //   447: aload_0
      //   448: aload_0
      //   449: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   452: sipush 128
      //   455: ior
      //   456: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   459: aload_0
      //   460: aload 6
      //   462: putfield 178	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:resolution_	Ljava/lang/Object;
      //   465: goto -440 -> 25
      //   468: aload_1
      //   469: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   472: astore 6
      //   474: aload_0
      //   475: aload_0
      //   476: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   479: sipush 256
      //   482: ior
      //   483: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   486: aload_0
      //   487: aload 6
      //   489: putfield 180	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:access_	Ljava/lang/Object;
      //   492: goto -467 -> 25
      //   495: aload_1
      //   496: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   499: astore 6
      //   501: aload_0
      //   502: aload_0
      //   503: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   506: sipush 512
      //   509: ior
      //   510: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   513: aload_0
      //   514: aload 6
      //   516: putfield 182	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:mac_	Ljava/lang/Object;
      //   519: goto -494 -> 25
      //   522: aload_1
      //   523: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   526: astore 6
      //   528: aload_0
      //   529: aload_0
      //   530: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   533: sipush 1024
      //   536: ior
      //   537: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   540: aload_0
      //   541: aload 6
      //   543: putfield 184	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:timezone_	Ljava/lang/Object;
      //   546: goto -521 -> 25
      //   549: aload_1
      //   550: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   553: astore 6
      //   555: aload_0
      //   556: aload_0
      //   557: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   560: sipush 2048
      //   563: ior
      //   564: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   567: aload_0
      //   568: aload 6
      //   570: putfield 186	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:country_	Ljava/lang/Object;
      //   573: goto -548 -> 25
      //   576: aload_1
      //   577: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   580: astore 6
      //   582: aload_0
      //   583: aload_0
      //   584: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   587: sipush 4096
      //   590: ior
      //   591: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   594: aload_0
      //   595: aload 6
      //   597: putfield 188	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:carrier_	Ljava/lang/Object;
      //   600: goto -575 -> 25
      //   603: aload_1
      //   604: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   607: astore 6
      //   609: aload_0
      //   610: aload_0
      //   611: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   614: sipush 8192
      //   617: ior
      //   618: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   621: aload_0
      //   622: aload 6
      //   624: putfield 190	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:gamePackageName_	Ljava/lang/Object;
      //   627: goto -602 -> 25
      //   630: aload_0
      //   631: aload_0
      //   632: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   635: sipush 16384
      //   638: ior
      //   639: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   642: aload_0
      //   643: aload_1
      //   644: invokevirtual 193	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   647: putfield 195	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:gameVersionCode_	I
      //   650: goto -625 -> 25
      //   653: aload_1
      //   654: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   657: astore 6
      //   659: aload_0
      //   660: aload_0
      //   661: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   664: ldc -60
      //   666: ior
      //   667: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   670: aload_0
      //   671: aload 6
      //   673: putfield 198	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:gameVersionName_	Ljava/lang/Object;
      //   676: goto -651 -> 25
      //   679: aload_1
      //   680: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   683: astore 6
      //   685: aload_0
      //   686: aload_0
      //   687: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   690: ldc -57
      //   692: ior
      //   693: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   696: aload_0
      //   697: aload 6
      //   699: putfield 201	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:firstChannel_	Ljava/lang/Object;
      //   702: goto -677 -> 25
      //   705: aload_1
      //   706: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   709: astore 6
      //   711: aload_0
      //   712: aload_0
      //   713: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   716: ldc -54
      //   718: ior
      //   719: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   722: aload_0
      //   723: aload 6
      //   725: putfield 204	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:currentChannel_	Ljava/lang/Object;
      //   728: goto -703 -> 25
      //   731: aload_1
      //   732: invokevirtual 157	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   735: astore 6
      //   737: aload_0
      //   738: aload_0
      //   739: getfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   742: ldc -51
      //   744: ior
      //   745: putfield 132	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:bitField0_	I
      //   748: aload_0
      //   749: aload 6
      //   751: putfield 207	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:os_	Ljava/lang/Object;
      //   754: goto -729 -> 25
      //   757: aload_0
      //   758: aload 5
      //   760: invokevirtual 148	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   763: putfield 150	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   766: aload_0
      //   767: invokevirtual 153	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:makeExtensionsImmutable	()V
      //   770: return
      //   771: goto -563 -> 208
      //   774: iconst_1
      //   775: istore_3
      //   776: goto -751 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	779	0	this	CheckSdkVersionReq
      //   0	779	1	paramCodedInputStream	CodedInputStream
      //   0	779	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	752	3	i	int
      //   33	181	4	j	int
      //   21	738	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   274	476	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	247	com/google/protobuf/InvalidProtocolBufferException
      //   208	221	247	com/google/protobuf/InvalidProtocolBufferException
      //   226	244	247	com/google/protobuf/InvalidProtocolBufferException
      //   270	292	247	com/google/protobuf/InvalidProtocolBufferException
      //   312	334	247	com/google/protobuf/InvalidProtocolBufferException
      //   337	360	247	com/google/protobuf/InvalidProtocolBufferException
      //   363	386	247	com/google/protobuf/InvalidProtocolBufferException
      //   389	412	247	com/google/protobuf/InvalidProtocolBufferException
      //   415	438	247	com/google/protobuf/InvalidProtocolBufferException
      //   441	465	247	com/google/protobuf/InvalidProtocolBufferException
      //   468	492	247	com/google/protobuf/InvalidProtocolBufferException
      //   495	519	247	com/google/protobuf/InvalidProtocolBufferException
      //   522	546	247	com/google/protobuf/InvalidProtocolBufferException
      //   549	573	247	com/google/protobuf/InvalidProtocolBufferException
      //   576	600	247	com/google/protobuf/InvalidProtocolBufferException
      //   603	627	247	com/google/protobuf/InvalidProtocolBufferException
      //   630	650	247	com/google/protobuf/InvalidProtocolBufferException
      //   653	676	247	com/google/protobuf/InvalidProtocolBufferException
      //   679	702	247	com/google/protobuf/InvalidProtocolBufferException
      //   705	728	247	com/google/protobuf/InvalidProtocolBufferException
      //   731	754	247	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	254	finally
      //   208	221	254	finally
      //   226	244	254	finally
      //   248	254	254	finally
      //   270	292	254	finally
      //   296	312	254	finally
      //   312	334	254	finally
      //   337	360	254	finally
      //   363	386	254	finally
      //   389	412	254	finally
      //   415	438	254	finally
      //   441	465	254	finally
      //   468	492	254	finally
      //   495	519	254	finally
      //   522	546	254	finally
      //   549	573	254	finally
      //   576	600	254	finally
      //   603	627	254	finally
      //   630	650	254	finally
      //   653	676	254	finally
      //   679	702	254	finally
      //   705	728	254	finally
      //   731	754	254	finally
      //   29	35	295	java/io/IOException
      //   208	221	295	java/io/IOException
      //   226	244	295	java/io/IOException
      //   270	292	295	java/io/IOException
      //   312	334	295	java/io/IOException
      //   337	360	295	java/io/IOException
      //   363	386	295	java/io/IOException
      //   389	412	295	java/io/IOException
      //   415	438	295	java/io/IOException
      //   441	465	295	java/io/IOException
      //   468	492	295	java/io/IOException
      //   495	519	295	java/io/IOException
      //   522	546	295	java/io/IOException
      //   549	573	295	java/io/IOException
      //   576	600	295	java/io/IOException
      //   603	627	295	java/io/IOException
      //   630	650	295	java/io/IOException
      //   653	676	295	java/io/IOException
      //   679	702	295	java/io/IOException
      //   705	728	295	java/io/IOException
      //   731	754	295	java/io/IOException
    }
    
    private CheckSdkVersionReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private CheckSdkVersionReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static CheckSdkVersionReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionReq_descriptor;
    }
    
    private void initFields()
    {
      this.devAppId_ = 0L;
      this.jarSdkVersion_ = "";
      this.serviceVersion_ = "";
      this.imei_ = "";
      this.imsi_ = "";
      this.imeiMd5_ = "";
      this.ua_ = "";
      this.resolution_ = "";
      this.access_ = "";
      this.mac_ = "";
      this.timezone_ = "";
      this.country_ = "";
      this.carrier_ = "";
      this.gamePackageName_ = "";
      this.gameVersionCode_ = 0;
      this.gameVersionName_ = "";
      this.firstChannel_ = "";
      this.currentChannel_ = "";
      this.os_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$22400();
    }
    
    public static Builder newBuilder(CheckSdkVersionReq paramCheckSdkVersionReq)
    {
      return newBuilder().mergeFrom(paramCheckSdkVersionReq);
    }
    
    public static CheckSdkVersionReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (CheckSdkVersionReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static CheckSdkVersionReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (CheckSdkVersionReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static CheckSdkVersionReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (CheckSdkVersionReq)PARSER.parseFrom(paramByteString);
    }
    
    public static CheckSdkVersionReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (CheckSdkVersionReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static CheckSdkVersionReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (CheckSdkVersionReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static CheckSdkVersionReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (CheckSdkVersionReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static CheckSdkVersionReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (CheckSdkVersionReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static CheckSdkVersionReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (CheckSdkVersionReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static CheckSdkVersionReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (CheckSdkVersionReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static CheckSdkVersionReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (CheckSdkVersionReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getAccess()
    {
      Object localObject = this.access_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.access_ = str;
      }
      return str;
    }
    
    public final ByteString getAccessBytes()
    {
      Object localObject = this.access_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.access_ = localObject;
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
    
    public final String getCountry()
    {
      Object localObject = this.country_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.country_ = str;
      }
      return str;
    }
    
    public final ByteString getCountryBytes()
    {
      Object localObject = this.country_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.country_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getCurrentChannel()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.currentChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getCurrentChannelBytes()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.currentChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final CheckSdkVersionReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getDevAppId()
    {
      return this.devAppId_;
    }
    
    public final String getFirstChannel()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.firstChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getFirstChannelBytes()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.firstChannel_ = localObject;
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
    
    public final String getImei()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imei_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiBytes()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imei_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
    
    public final String getImsi()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imsi_ = str;
      }
      return str;
    }
    
    public final ByteString getImsiBytes()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imsi_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getJarSdkVersion()
    {
      Object localObject = this.jarSdkVersion_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.jarSdkVersion_ = str;
      }
      return str;
    }
    
    public final ByteString getJarSdkVersionBytes()
    {
      Object localObject = this.jarSdkVersion_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.jarSdkVersion_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getMac()
    {
      Object localObject = this.mac_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.mac_ = str;
      }
      return str;
    }
    
    public final ByteString getMacBytes()
    {
      Object localObject = this.mac_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.mac_ = localObject;
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
    
    public final Parser<CheckSdkVersionReq> getParserForType()
    {
      return PARSER;
    }
    
    public final String getResolution()
    {
      Object localObject = this.resolution_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.resolution_ = str;
      }
      return str;
    }
    
    public final ByteString getResolutionBytes()
    {
      Object localObject = this.resolution_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.resolution_ = localObject;
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
        i = j + CodedOutputStream.computeBytesSize(2, getJarSdkVersionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getServiceVersionBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getImeiBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getImsiBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getImeiMd5Bytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getUaBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getResolutionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getAccessBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getMacBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getTimezoneBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x800) == 2048) {
        i = j + CodedOutputStream.computeBytesSize(12, getCountryBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x1000) == 4096) {
        j = i + CodedOutputStream.computeBytesSize(13, getCarrierBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x2000) == 8192) {
        i = j + CodedOutputStream.computeBytesSize(14, getGamePackageNameBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4000) == 16384) {
        j = i + CodedOutputStream.computeUInt32Size(15, this.gameVersionCode_);
      }
      i = j;
      if ((this.bitField0_ & 0x8000) == 32768) {
        i = j + CodedOutputStream.computeBytesSize(16, getGameVersionNameBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10000) == 65536) {
        j = i + CodedOutputStream.computeBytesSize(17, getFirstChannelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20000) == 131072) {
        i = j + CodedOutputStream.computeBytesSize(18, getCurrentChannelBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40000) == 262144) {
        j = i + CodedOutputStream.computeBytesSize(19, getOsBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getServiceVersion()
    {
      Object localObject = this.serviceVersion_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serviceVersion_ = str;
      }
      return str;
    }
    
    public final ByteString getServiceVersionBytes()
    {
      Object localObject = this.serviceVersion_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serviceVersion_ = localObject;
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
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAccess()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasCarrier()
    {
      return (this.bitField0_ & 0x1000) == 4096;
    }
    
    public final boolean hasCountry()
    {
      return (this.bitField0_ & 0x800) == 2048;
    }
    
    public final boolean hasCurrentChannel()
    {
      return (this.bitField0_ & 0x20000) == 131072;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasFirstChannel()
    {
      return (this.bitField0_ & 0x10000) == 65536;
    }
    
    public final boolean hasGamePackageName()
    {
      return (this.bitField0_ & 0x2000) == 8192;
    }
    
    public final boolean hasGameVersionCode()
    {
      return (this.bitField0_ & 0x4000) == 16384;
    }
    
    public final boolean hasGameVersionName()
    {
      return (this.bitField0_ & 0x8000) == 32768;
    }
    
    public final boolean hasImei()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasImeiMd5()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasImsi()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasJarSdkVersion()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasMac()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasOs()
    {
      return (this.bitField0_ & 0x40000) == 262144;
    }
    
    public final boolean hasResolution()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasServiceVersion()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasTimezone()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionReq_fieldAccessorTable.ensureFieldAccessorsInitialized(CheckSdkVersionReq.class, Builder.class);
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
      if (!hasJarSdkVersion())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasServiceVersion())
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
        paramCodedOutputStream.writeBytes(2, getJarSdkVersionBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getServiceVersionBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getImeiBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getImsiBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getImeiMd5Bytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getUaBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getResolutionBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getAccessBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getMacBytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getTimezoneBytes());
      }
      if ((this.bitField0_ & 0x800) == 2048) {
        paramCodedOutputStream.writeBytes(12, getCountryBytes());
      }
      if ((this.bitField0_ & 0x1000) == 4096) {
        paramCodedOutputStream.writeBytes(13, getCarrierBytes());
      }
      if ((this.bitField0_ & 0x2000) == 8192) {
        paramCodedOutputStream.writeBytes(14, getGamePackageNameBytes());
      }
      if ((this.bitField0_ & 0x4000) == 16384) {
        paramCodedOutputStream.writeUInt32(15, this.gameVersionCode_);
      }
      if ((this.bitField0_ & 0x8000) == 32768) {
        paramCodedOutputStream.writeBytes(16, getGameVersionNameBytes());
      }
      if ((this.bitField0_ & 0x10000) == 65536) {
        paramCodedOutputStream.writeBytes(17, getFirstChannelBytes());
      }
      if ((this.bitField0_ & 0x20000) == 131072) {
        paramCodedOutputStream.writeBytes(18, getCurrentChannelBytes());
      }
      if ((this.bitField0_ & 0x40000) == 262144) {
        paramCodedOutputStream.writeBytes(19, getOsBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.CheckSdkVersionReqOrBuilder
    {
      private Object access_ = "";
      private int bitField0_;
      private Object carrier_ = "";
      private Object country_ = "";
      private Object currentChannel_ = "";
      private long devAppId_;
      private Object firstChannel_ = "";
      private Object gamePackageName_ = "";
      private int gameVersionCode_;
      private Object gameVersionName_ = "";
      private Object imeiMd5_ = "";
      private Object imei_ = "";
      private Object imsi_ = "";
      private Object jarSdkVersion_ = "";
      private Object mac_ = "";
      private Object os_ = "";
      private Object resolution_ = "";
      private Object serviceVersion_ = "";
      private Object timezone_ = "";
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
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.CheckSdkVersionReq build()
      {
        LoginProto.CheckSdkVersionReq localCheckSdkVersionReq = buildPartial();
        if (!localCheckSdkVersionReq.isInitialized()) {
          throw newUninitializedMessageException(localCheckSdkVersionReq);
        }
        return localCheckSdkVersionReq;
      }
      
      public final LoginProto.CheckSdkVersionReq buildPartial()
      {
        int j = 1;
        LoginProto.CheckSdkVersionReq localCheckSdkVersionReq = new LoginProto.CheckSdkVersionReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.CheckSdkVersionReq.access$22802(localCheckSdkVersionReq, this.devAppId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.CheckSdkVersionReq.access$22902(localCheckSdkVersionReq, this.jarSdkVersion_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.CheckSdkVersionReq.access$23002(localCheckSdkVersionReq, this.serviceVersion_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.CheckSdkVersionReq.access$23102(localCheckSdkVersionReq, this.imei_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.CheckSdkVersionReq.access$23202(localCheckSdkVersionReq, this.imsi_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.CheckSdkVersionReq.access$23302(localCheckSdkVersionReq, this.imeiMd5_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          LoginProto.CheckSdkVersionReq.access$23402(localCheckSdkVersionReq, this.ua_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          LoginProto.CheckSdkVersionReq.access$23502(localCheckSdkVersionReq, this.resolution_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          LoginProto.CheckSdkVersionReq.access$23602(localCheckSdkVersionReq, this.access_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          LoginProto.CheckSdkVersionReq.access$23702(localCheckSdkVersionReq, this.mac_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          LoginProto.CheckSdkVersionReq.access$23802(localCheckSdkVersionReq, this.timezone_);
          i = j;
          if ((k & 0x800) == 2048) {
            i = j | 0x800;
          }
          LoginProto.CheckSdkVersionReq.access$23902(localCheckSdkVersionReq, this.country_);
          j = i;
          if ((k & 0x1000) == 4096) {
            j = i | 0x1000;
          }
          LoginProto.CheckSdkVersionReq.access$24002(localCheckSdkVersionReq, this.carrier_);
          i = j;
          if ((k & 0x2000) == 8192) {
            i = j | 0x2000;
          }
          LoginProto.CheckSdkVersionReq.access$24102(localCheckSdkVersionReq, this.gamePackageName_);
          j = i;
          if ((k & 0x4000) == 16384) {
            j = i | 0x4000;
          }
          LoginProto.CheckSdkVersionReq.access$24202(localCheckSdkVersionReq, this.gameVersionCode_);
          i = j;
          if ((k & 0x8000) == 32768) {
            i = j | 0x8000;
          }
          LoginProto.CheckSdkVersionReq.access$24302(localCheckSdkVersionReq, this.gameVersionName_);
          j = i;
          if ((k & 0x10000) == 65536) {
            j = i | 0x10000;
          }
          LoginProto.CheckSdkVersionReq.access$24402(localCheckSdkVersionReq, this.firstChannel_);
          i = j;
          if ((k & 0x20000) == 131072) {
            i = j | 0x20000;
          }
          LoginProto.CheckSdkVersionReq.access$24502(localCheckSdkVersionReq, this.currentChannel_);
          j = i;
          if ((k & 0x40000) == 262144) {
            j = i | 0x40000;
          }
          LoginProto.CheckSdkVersionReq.access$24602(localCheckSdkVersionReq, this.os_);
          LoginProto.CheckSdkVersionReq.access$24702(localCheckSdkVersionReq, j);
          onBuilt();
          return localCheckSdkVersionReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.devAppId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.jarSdkVersion_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.serviceVersion_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.imei_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.imsi_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.imeiMd5_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.ua_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.resolution_ = "";
        this.bitField0_ &= 0xFF7F;
        this.access_ = "";
        this.bitField0_ &= 0xFEFF;
        this.mac_ = "";
        this.bitField0_ &= 0xFDFF;
        this.timezone_ = "";
        this.bitField0_ &= 0xFBFF;
        this.country_ = "";
        this.bitField0_ &= 0xF7FF;
        this.carrier_ = "";
        this.bitField0_ &= 0xEFFF;
        this.gamePackageName_ = "";
        this.bitField0_ &= 0xDFFF;
        this.gameVersionCode_ = 0;
        this.bitField0_ &= 0xBFFF;
        this.gameVersionName_ = "";
        this.bitField0_ &= 0xFFFF7FFF;
        this.firstChannel_ = "";
        this.bitField0_ &= 0xFFFEFFFF;
        this.currentChannel_ = "";
        this.bitField0_ &= 0xFFFDFFFF;
        this.os_ = "";
        this.bitField0_ &= 0xFFFBFFFF;
        return this;
      }
      
      public final Builder clearAccess()
      {
        this.bitField0_ &= 0xFEFF;
        this.access_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getAccess();
        onChanged();
        return this;
      }
      
      public final Builder clearCarrier()
      {
        this.bitField0_ &= 0xEFFF;
        this.carrier_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getCarrier();
        onChanged();
        return this;
      }
      
      public final Builder clearCountry()
      {
        this.bitField0_ &= 0xF7FF;
        this.country_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getCountry();
        onChanged();
        return this;
      }
      
      public final Builder clearCurrentChannel()
      {
        this.bitField0_ &= 0xFFFDFFFF;
        this.currentChannel_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getCurrentChannel();
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
      
      public final Builder clearFirstChannel()
      {
        this.bitField0_ &= 0xFFFEFFFF;
        this.firstChannel_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getFirstChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearGamePackageName()
      {
        this.bitField0_ &= 0xDFFF;
        this.gamePackageName_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getGamePackageName();
        onChanged();
        return this;
      }
      
      public final Builder clearGameVersionCode()
      {
        this.bitField0_ &= 0xBFFF;
        this.gameVersionCode_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearGameVersionName()
      {
        this.bitField0_ &= 0xFFFF7FFF;
        this.gameVersionName_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getGameVersionName();
        onChanged();
        return this;
      }
      
      public final Builder clearImei()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.imei_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getImei();
        onChanged();
        return this;
      }
      
      public final Builder clearImeiMd5()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.imeiMd5_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getImeiMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearImsi()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.imsi_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getImsi();
        onChanged();
        return this;
      }
      
      public final Builder clearJarSdkVersion()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.jarSdkVersion_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getJarSdkVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearMac()
      {
        this.bitField0_ &= 0xFDFF;
        this.mac_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getMac();
        onChanged();
        return this;
      }
      
      public final Builder clearOs()
      {
        this.bitField0_ &= 0xFFFBFFFF;
        this.os_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getOs();
        onChanged();
        return this;
      }
      
      public final Builder clearResolution()
      {
        this.bitField0_ &= 0xFF7F;
        this.resolution_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getResolution();
        onChanged();
        return this;
      }
      
      public final Builder clearServiceVersion()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.serviceVersion_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getServiceVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearTimezone()
      {
        this.bitField0_ &= 0xFBFF;
        this.timezone_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getTimezone();
        onChanged();
        return this;
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.ua_ = LoginProto.CheckSdkVersionReq.getDefaultInstance().getUa();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getAccess()
      {
        Object localObject = this.access_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.access_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getAccessBytes()
      {
        Object localObject = this.access_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.access_ = localObject;
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
      
      public final String getCountry()
      {
        Object localObject = this.country_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.country_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCountryBytes()
      {
        Object localObject = this.country_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.country_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getCurrentChannel()
      {
        Object localObject = this.currentChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.currentChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCurrentChannelBytes()
      {
        Object localObject = this.currentChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.currentChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final LoginProto.CheckSdkVersionReq getDefaultInstanceForType()
      {
        return LoginProto.CheckSdkVersionReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionReq_descriptor;
      }
      
      public final long getDevAppId()
      {
        return this.devAppId_;
      }
      
      public final String getFirstChannel()
      {
        Object localObject = this.firstChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.firstChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getFirstChannelBytes()
      {
        Object localObject = this.firstChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.firstChannel_ = localObject;
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
      
      public final String getImei()
      {
        Object localObject = this.imei_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imei_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiBytes()
      {
        Object localObject = this.imei_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imei_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getImsi()
      {
        Object localObject = this.imsi_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imsi_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImsiBytes()
      {
        Object localObject = this.imsi_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imsi_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getJarSdkVersion()
      {
        Object localObject = this.jarSdkVersion_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.jarSdkVersion_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getJarSdkVersionBytes()
      {
        Object localObject = this.jarSdkVersion_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.jarSdkVersion_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getMac()
      {
        Object localObject = this.mac_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.mac_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getMacBytes()
      {
        Object localObject = this.mac_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.mac_ = localObject;
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
      
      public final String getResolution()
      {
        Object localObject = this.resolution_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.resolution_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getResolutionBytes()
      {
        Object localObject = this.resolution_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.resolution_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getServiceVersion()
      {
        Object localObject = this.serviceVersion_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serviceVersion_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServiceVersionBytes()
      {
        Object localObject = this.serviceVersion_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serviceVersion_ = localObject;
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
      
      public final boolean hasAccess()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasCarrier()
      {
        return (this.bitField0_ & 0x1000) == 4096;
      }
      
      public final boolean hasCountry()
      {
        return (this.bitField0_ & 0x800) == 2048;
      }
      
      public final boolean hasCurrentChannel()
      {
        return (this.bitField0_ & 0x20000) == 131072;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasFirstChannel()
      {
        return (this.bitField0_ & 0x10000) == 65536;
      }
      
      public final boolean hasGamePackageName()
      {
        return (this.bitField0_ & 0x2000) == 8192;
      }
      
      public final boolean hasGameVersionCode()
      {
        return (this.bitField0_ & 0x4000) == 16384;
      }
      
      public final boolean hasGameVersionName()
      {
        return (this.bitField0_ & 0x8000) == 32768;
      }
      
      public final boolean hasImei()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasImeiMd5()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasImsi()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasJarSdkVersion()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasMac()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasOs()
      {
        return (this.bitField0_ & 0x40000) == 262144;
      }
      
      public final boolean hasResolution()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasServiceVersion()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasTimezone()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionReq_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.CheckSdkVersionReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasDevAppId()) {}
        while ((!hasJarSdkVersion()) || (!hasServiceVersion())) {
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
        //   2: getstatic 393	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 399 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 297	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 402	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 297	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;
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
        if ((paramMessage instanceof LoginProto.CheckSdkVersionReq)) {
          return mergeFrom((LoginProto.CheckSdkVersionReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.CheckSdkVersionReq paramCheckSdkVersionReq)
      {
        if (paramCheckSdkVersionReq == LoginProto.CheckSdkVersionReq.getDefaultInstance()) {
          return this;
        }
        if (paramCheckSdkVersionReq.hasDevAppId()) {
          setDevAppId(paramCheckSdkVersionReq.getDevAppId());
        }
        if (paramCheckSdkVersionReq.hasJarSdkVersion())
        {
          this.bitField0_ |= 0x2;
          this.jarSdkVersion_ = paramCheckSdkVersionReq.jarSdkVersion_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasServiceVersion())
        {
          this.bitField0_ |= 0x4;
          this.serviceVersion_ = paramCheckSdkVersionReq.serviceVersion_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasImei())
        {
          this.bitField0_ |= 0x8;
          this.imei_ = paramCheckSdkVersionReq.imei_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasImsi())
        {
          this.bitField0_ |= 0x10;
          this.imsi_ = paramCheckSdkVersionReq.imsi_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasImeiMd5())
        {
          this.bitField0_ |= 0x20;
          this.imeiMd5_ = paramCheckSdkVersionReq.imeiMd5_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasUa())
        {
          this.bitField0_ |= 0x40;
          this.ua_ = paramCheckSdkVersionReq.ua_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasResolution())
        {
          this.bitField0_ |= 0x80;
          this.resolution_ = paramCheckSdkVersionReq.resolution_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasAccess())
        {
          this.bitField0_ |= 0x100;
          this.access_ = paramCheckSdkVersionReq.access_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasMac())
        {
          this.bitField0_ |= 0x200;
          this.mac_ = paramCheckSdkVersionReq.mac_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasTimezone())
        {
          this.bitField0_ |= 0x400;
          this.timezone_ = paramCheckSdkVersionReq.timezone_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasCountry())
        {
          this.bitField0_ |= 0x800;
          this.country_ = paramCheckSdkVersionReq.country_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasCarrier())
        {
          this.bitField0_ |= 0x1000;
          this.carrier_ = paramCheckSdkVersionReq.carrier_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasGamePackageName())
        {
          this.bitField0_ |= 0x2000;
          this.gamePackageName_ = paramCheckSdkVersionReq.gamePackageName_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasGameVersionCode()) {
          setGameVersionCode(paramCheckSdkVersionReq.getGameVersionCode());
        }
        if (paramCheckSdkVersionReq.hasGameVersionName())
        {
          this.bitField0_ |= 0x8000;
          this.gameVersionName_ = paramCheckSdkVersionReq.gameVersionName_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasFirstChannel())
        {
          this.bitField0_ |= 0x10000;
          this.firstChannel_ = paramCheckSdkVersionReq.firstChannel_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasCurrentChannel())
        {
          this.bitField0_ |= 0x20000;
          this.currentChannel_ = paramCheckSdkVersionReq.currentChannel_;
          onChanged();
        }
        if (paramCheckSdkVersionReq.hasOs())
        {
          this.bitField0_ |= 0x40000;
          this.os_ = paramCheckSdkVersionReq.os_;
          onChanged();
        }
        mergeUnknownFields(paramCheckSdkVersionReq.getUnknownFields());
        return this;
      }
      
      public final Builder setAccess(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.access_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setAccessBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.access_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCarrier(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1000;
        this.carrier_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCarrierBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1000;
        this.carrier_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCountry(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.country_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCountryBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.country_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20000;
        this.currentChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20000;
        this.currentChannel_ = paramByteString;
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
      
      public final Builder setFirstChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10000;
        this.firstChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10000;
        this.firstChannel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setGamePackageName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2000;
        this.gamePackageName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setGamePackageNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2000;
        this.gamePackageName_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setGameVersionCode(int paramInt)
      {
        this.bitField0_ |= 0x4000;
        this.gameVersionCode_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setGameVersionName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8000;
        this.gameVersionName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setGameVersionNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8000;
        this.gameVersionName_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImei(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.imeiMd5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.imeiMd5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImsi(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImsiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setJarSdkVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.jarSdkVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setJarSdkVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.jarSdkVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setMac(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.mac_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setMacBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.mac_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setOs(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40000;
        this.os_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setOsBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40000;
        this.os_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setResolution(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.resolution_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setResolutionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.resolution_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.serviceVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.serviceVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setTimezone(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.timezone_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTimezoneBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.timezone_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface CheckSdkVersionReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getAccess();
    
    public abstract ByteString getAccessBytes();
    
    public abstract String getCarrier();
    
    public abstract ByteString getCarrierBytes();
    
    public abstract String getCountry();
    
    public abstract ByteString getCountryBytes();
    
    public abstract String getCurrentChannel();
    
    public abstract ByteString getCurrentChannelBytes();
    
    public abstract long getDevAppId();
    
    public abstract String getFirstChannel();
    
    public abstract ByteString getFirstChannelBytes();
    
    public abstract String getGamePackageName();
    
    public abstract ByteString getGamePackageNameBytes();
    
    public abstract int getGameVersionCode();
    
    public abstract String getGameVersionName();
    
    public abstract ByteString getGameVersionNameBytes();
    
    public abstract String getImei();
    
    public abstract ByteString getImeiBytes();
    
    public abstract String getImeiMd5();
    
    public abstract ByteString getImeiMd5Bytes();
    
    public abstract String getImsi();
    
    public abstract ByteString getImsiBytes();
    
    public abstract String getJarSdkVersion();
    
    public abstract ByteString getJarSdkVersionBytes();
    
    public abstract String getMac();
    
    public abstract ByteString getMacBytes();
    
    public abstract String getOs();
    
    public abstract ByteString getOsBytes();
    
    public abstract String getResolution();
    
    public abstract ByteString getResolutionBytes();
    
    public abstract String getServiceVersion();
    
    public abstract ByteString getServiceVersionBytes();
    
    public abstract String getTimezone();
    
    public abstract ByteString getTimezoneBytes();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract boolean hasAccess();
    
    public abstract boolean hasCarrier();
    
    public abstract boolean hasCountry();
    
    public abstract boolean hasCurrentChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasFirstChannel();
    
    public abstract boolean hasGamePackageName();
    
    public abstract boolean hasGameVersionCode();
    
    public abstract boolean hasGameVersionName();
    
    public abstract boolean hasImei();
    
    public abstract boolean hasImeiMd5();
    
    public abstract boolean hasImsi();
    
    public abstract boolean hasJarSdkVersion();
    
    public abstract boolean hasMac();
    
    public abstract boolean hasOs();
    
    public abstract boolean hasResolution();
    
    public abstract boolean hasServiceVersion();
    
    public abstract boolean hasTimezone();
    
    public abstract boolean hasUa();
  }
  
  public static final class CheckSdkVersionRsp
    extends GeneratedMessage
    implements LoginProto.CheckSdkVersionRspOrBuilder
  {
    public static final int FORCE_FIELD_NUMBER = 7;
    public static final int GUIDELINK_FIELD_NUMBER = 8;
    public static final int GUIDEWORD_FIELD_NUMBER = 9;
    public static final int MD5_FIELD_NUMBER = 3;
    public static final int NOTE_FIELD_NUMBER = 6;
    public static Parser<CheckSdkVersionRsp> PARSER = new r();
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int SERVICEDOWNLOADURL_FIELD_NUMBER = 2;
    public static final int SERVICEVERSION_FIELD_NUMBER = 10;
    public static final int SIZE_FIELD_NUMBER = 4;
    private static final CheckSdkVersionRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private boolean force_;
    private Object guideLink_;
    private Object guideWord_;
    private Object md5_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object note_;
    private int retCode_;
    private Object serviceDownloadUrl_;
    private Object serviceVersion_;
    private long size_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      CheckSdkVersionRsp localCheckSdkVersionRsp = new CheckSdkVersionRsp(true);
      defaultInstance = localCheckSdkVersionRsp;
      localCheckSdkVersionRsp.initFields();
    }
    
    /* Error */
    private CheckSdkVersionRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 81	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 83	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 85	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 74	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:initFields	()V
      //   18: invokestatic 91	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +381 -> 407
      //   29: aload_1
      //   30: invokevirtual 97	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+384->421, 0:+387->424, 8:+109->146, 18:+153->190, 26:+195->232, 32:+220->257, 50:+242->279, 56:+268->305, 66:+290->327, 74:+316->353, 82:+343->380
      //   128: aload_0
      //   129: aload_1
      //   130: aload 5
      //   132: aload_2
      //   133: iload 4
      //   135: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   138: ifne -113 -> 25
      //   141: iconst_1
      //   142: istore_3
      //   143: goto -118 -> 25
      //   146: aload_0
      //   147: aload_0
      //   148: getfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   151: iconst_1
      //   152: ior
      //   153: putfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   156: aload_0
      //   157: aload_1
      //   158: invokevirtual 106	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   161: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:retCode_	I
      //   164: goto -139 -> 25
      //   167: astore_1
      //   168: aload_1
      //   169: aload_0
      //   170: invokevirtual 112	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   173: athrow
      //   174: astore_1
      //   175: aload_0
      //   176: aload 5
      //   178: invokevirtual 118	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   181: putfield 120	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   184: aload_0
      //   185: invokevirtual 123	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:makeExtensionsImmutable	()V
      //   188: aload_1
      //   189: athrow
      //   190: aload_1
      //   191: invokevirtual 127	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   194: astore 6
      //   196: aload_0
      //   197: aload_0
      //   198: getfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   201: iconst_2
      //   202: ior
      //   203: putfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   206: aload_0
      //   207: aload 6
      //   209: putfield 129	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:serviceDownloadUrl_	Ljava/lang/Object;
      //   212: goto -187 -> 25
      //   215: astore_1
      //   216: new 78	com/google/protobuf/InvalidProtocolBufferException
      //   219: dup
      //   220: aload_1
      //   221: invokevirtual 133	java/io/IOException:getMessage	()Ljava/lang/String;
      //   224: invokespecial 136	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   227: aload_0
      //   228: invokevirtual 112	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   231: athrow
      //   232: aload_1
      //   233: invokevirtual 127	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   236: astore 6
      //   238: aload_0
      //   239: aload_0
      //   240: getfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   243: iconst_4
      //   244: ior
      //   245: putfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   248: aload_0
      //   249: aload 6
      //   251: putfield 138	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:md5_	Ljava/lang/Object;
      //   254: goto -229 -> 25
      //   257: aload_0
      //   258: aload_0
      //   259: getfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   262: bipush 8
      //   264: ior
      //   265: putfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   268: aload_0
      //   269: aload_1
      //   270: invokevirtual 142	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   273: putfield 144	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:size_	J
      //   276: goto -251 -> 25
      //   279: aload_1
      //   280: invokevirtual 127	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   283: astore 6
      //   285: aload_0
      //   286: aload_0
      //   287: getfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   290: bipush 16
      //   292: ior
      //   293: putfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   296: aload_0
      //   297: aload 6
      //   299: putfield 146	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:note_	Ljava/lang/Object;
      //   302: goto -277 -> 25
      //   305: aload_0
      //   306: aload_0
      //   307: getfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   310: bipush 32
      //   312: ior
      //   313: putfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   316: aload_0
      //   317: aload_1
      //   318: invokevirtual 150	com/google/protobuf/CodedInputStream:readBool	()Z
      //   321: putfield 152	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:force_	Z
      //   324: goto -299 -> 25
      //   327: aload_1
      //   328: invokevirtual 127	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   331: astore 6
      //   333: aload_0
      //   334: aload_0
      //   335: getfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   338: bipush 64
      //   340: ior
      //   341: putfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   344: aload_0
      //   345: aload 6
      //   347: putfield 154	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:guideLink_	Ljava/lang/Object;
      //   350: goto -325 -> 25
      //   353: aload_1
      //   354: invokevirtual 127	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   357: astore 6
      //   359: aload_0
      //   360: aload_0
      //   361: getfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   364: sipush 128
      //   367: ior
      //   368: putfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   371: aload_0
      //   372: aload 6
      //   374: putfield 156	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:guideWord_	Ljava/lang/Object;
      //   377: goto -352 -> 25
      //   380: aload_1
      //   381: invokevirtual 127	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   384: astore 6
      //   386: aload_0
      //   387: aload_0
      //   388: getfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   391: sipush 256
      //   394: ior
      //   395: putfield 103	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:bitField0_	I
      //   398: aload_0
      //   399: aload 6
      //   401: putfield 158	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:serviceVersion_	Ljava/lang/Object;
      //   404: goto -379 -> 25
      //   407: aload_0
      //   408: aload 5
      //   410: invokevirtual 118	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   413: putfield 120	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   416: aload_0
      //   417: invokevirtual 123	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:makeExtensionsImmutable	()V
      //   420: return
      //   421: goto -293 -> 128
      //   424: iconst_1
      //   425: istore_3
      //   426: goto -401 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	429	0	this	CheckSdkVersionRsp
      //   0	429	1	paramCodedInputStream	CodedInputStream
      //   0	429	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	402	3	i	int
      //   33	101	4	j	int
      //   21	388	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   194	206	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	167	com/google/protobuf/InvalidProtocolBufferException
      //   128	141	167	com/google/protobuf/InvalidProtocolBufferException
      //   146	164	167	com/google/protobuf/InvalidProtocolBufferException
      //   190	212	167	com/google/protobuf/InvalidProtocolBufferException
      //   232	254	167	com/google/protobuf/InvalidProtocolBufferException
      //   257	276	167	com/google/protobuf/InvalidProtocolBufferException
      //   279	302	167	com/google/protobuf/InvalidProtocolBufferException
      //   305	324	167	com/google/protobuf/InvalidProtocolBufferException
      //   327	350	167	com/google/protobuf/InvalidProtocolBufferException
      //   353	377	167	com/google/protobuf/InvalidProtocolBufferException
      //   380	404	167	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	174	finally
      //   128	141	174	finally
      //   146	164	174	finally
      //   168	174	174	finally
      //   190	212	174	finally
      //   216	232	174	finally
      //   232	254	174	finally
      //   257	276	174	finally
      //   279	302	174	finally
      //   305	324	174	finally
      //   327	350	174	finally
      //   353	377	174	finally
      //   380	404	174	finally
      //   29	35	215	java/io/IOException
      //   128	141	215	java/io/IOException
      //   146	164	215	java/io/IOException
      //   190	212	215	java/io/IOException
      //   232	254	215	java/io/IOException
      //   257	276	215	java/io/IOException
      //   279	302	215	java/io/IOException
      //   305	324	215	java/io/IOException
      //   327	350	215	java/io/IOException
      //   353	377	215	java/io/IOException
      //   380	404	215	java/io/IOException
    }
    
    private CheckSdkVersionRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private CheckSdkVersionRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static CheckSdkVersionRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.serviceDownloadUrl_ = "";
      this.md5_ = "";
      this.size_ = 0L;
      this.note_ = "";
      this.force_ = false;
      this.guideLink_ = "";
      this.guideWord_ = "";
      this.serviceVersion_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$25100();
    }
    
    public static Builder newBuilder(CheckSdkVersionRsp paramCheckSdkVersionRsp)
    {
      return newBuilder().mergeFrom(paramCheckSdkVersionRsp);
    }
    
    public static CheckSdkVersionRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (CheckSdkVersionRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static CheckSdkVersionRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (CheckSdkVersionRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static CheckSdkVersionRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (CheckSdkVersionRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static CheckSdkVersionRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (CheckSdkVersionRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static CheckSdkVersionRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (CheckSdkVersionRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static CheckSdkVersionRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (CheckSdkVersionRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static CheckSdkVersionRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (CheckSdkVersionRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static CheckSdkVersionRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (CheckSdkVersionRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static CheckSdkVersionRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (CheckSdkVersionRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static CheckSdkVersionRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (CheckSdkVersionRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final CheckSdkVersionRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final boolean getForce()
    {
      return this.force_;
    }
    
    public final String getGuideLink()
    {
      Object localObject = this.guideLink_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.guideLink_ = str;
      }
      return str;
    }
    
    public final ByteString getGuideLinkBytes()
    {
      Object localObject = this.guideLink_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.guideLink_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getGuideWord()
    {
      Object localObject = this.guideWord_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.guideWord_ = str;
      }
      return str;
    }
    
    public final ByteString getGuideWordBytes()
    {
      Object localObject = this.guideWord_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.guideWord_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getMd5()
    {
      Object localObject = this.md5_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.md5_ = str;
      }
      return str;
    }
    
    public final ByteString getMd5Bytes()
    {
      Object localObject = this.md5_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.md5_ = localObject;
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
    
    public final Parser<CheckSdkVersionRsp> getParserForType()
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
        i = j + CodedOutputStream.computeBytesSize(2, getServiceDownloadUrlBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getMd5Bytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeUInt64Size(4, this.size_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(6, getNoteBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBoolSize(7, this.force_);
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(8, getGuideLinkBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(9, getGuideWordBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(10, getServiceVersionBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getServiceDownloadUrl()
    {
      Object localObject = this.serviceDownloadUrl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serviceDownloadUrl_ = str;
      }
      return str;
    }
    
    public final ByteString getServiceDownloadUrlBytes()
    {
      Object localObject = this.serviceDownloadUrl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serviceDownloadUrl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getServiceVersion()
    {
      Object localObject = this.serviceVersion_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serviceVersion_ = str;
      }
      return str;
    }
    
    public final ByteString getServiceVersionBytes()
    {
      Object localObject = this.serviceVersion_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serviceVersion_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getSize()
    {
      return this.size_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasForce()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasGuideLink()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasGuideWord()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasMd5()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasNote()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasServiceDownloadUrl()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasServiceVersion()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasSize()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(CheckSdkVersionRsp.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(2, getServiceDownloadUrlBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getMd5Bytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeUInt64(4, this.size_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(6, getNoteBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBool(7, this.force_);
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(8, getGuideLinkBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(9, getGuideWordBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(10, getServiceVersionBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.CheckSdkVersionRspOrBuilder
    {
      private int bitField0_;
      private boolean force_;
      private Object guideLink_ = "";
      private Object guideWord_ = "";
      private Object md5_ = "";
      private Object note_ = "";
      private int retCode_;
      private Object serviceDownloadUrl_ = "";
      private Object serviceVersion_ = "";
      private long size_;
      
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
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.CheckSdkVersionRsp build()
      {
        LoginProto.CheckSdkVersionRsp localCheckSdkVersionRsp = buildPartial();
        if (!localCheckSdkVersionRsp.isInitialized()) {
          throw newUninitializedMessageException(localCheckSdkVersionRsp);
        }
        return localCheckSdkVersionRsp;
      }
      
      public final LoginProto.CheckSdkVersionRsp buildPartial()
      {
        int j = 1;
        LoginProto.CheckSdkVersionRsp localCheckSdkVersionRsp = new LoginProto.CheckSdkVersionRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.CheckSdkVersionRsp.access$25502(localCheckSdkVersionRsp, this.retCode_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.CheckSdkVersionRsp.access$25602(localCheckSdkVersionRsp, this.serviceDownloadUrl_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.CheckSdkVersionRsp.access$25702(localCheckSdkVersionRsp, this.md5_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.CheckSdkVersionRsp.access$25802(localCheckSdkVersionRsp, this.size_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.CheckSdkVersionRsp.access$25902(localCheckSdkVersionRsp, this.note_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.CheckSdkVersionRsp.access$26002(localCheckSdkVersionRsp, this.force_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          LoginProto.CheckSdkVersionRsp.access$26102(localCheckSdkVersionRsp, this.guideLink_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          LoginProto.CheckSdkVersionRsp.access$26202(localCheckSdkVersionRsp, this.guideWord_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          LoginProto.CheckSdkVersionRsp.access$26302(localCheckSdkVersionRsp, this.serviceVersion_);
          LoginProto.CheckSdkVersionRsp.access$26402(localCheckSdkVersionRsp, j);
          onBuilt();
          return localCheckSdkVersionRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.serviceDownloadUrl_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.md5_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.size_ = 0L;
        this.bitField0_ &= 0xFFFFFFF7;
        this.note_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.force_ = false;
        this.bitField0_ &= 0xFFFFFFDF;
        this.guideLink_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.guideWord_ = "";
        this.bitField0_ &= 0xFF7F;
        this.serviceVersion_ = "";
        this.bitField0_ &= 0xFEFF;
        return this;
      }
      
      public final Builder clearForce()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.force_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearGuideLink()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.guideLink_ = LoginProto.CheckSdkVersionRsp.getDefaultInstance().getGuideLink();
        onChanged();
        return this;
      }
      
      public final Builder clearGuideWord()
      {
        this.bitField0_ &= 0xFF7F;
        this.guideWord_ = LoginProto.CheckSdkVersionRsp.getDefaultInstance().getGuideWord();
        onChanged();
        return this;
      }
      
      public final Builder clearMd5()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.md5_ = LoginProto.CheckSdkVersionRsp.getDefaultInstance().getMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearNote()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.note_ = LoginProto.CheckSdkVersionRsp.getDefaultInstance().getNote();
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
      
      public final Builder clearServiceDownloadUrl()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.serviceDownloadUrl_ = LoginProto.CheckSdkVersionRsp.getDefaultInstance().getServiceDownloadUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearServiceVersion()
      {
        this.bitField0_ &= 0xFEFF;
        this.serviceVersion_ = LoginProto.CheckSdkVersionRsp.getDefaultInstance().getServiceVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearSize()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.size_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final LoginProto.CheckSdkVersionRsp getDefaultInstanceForType()
      {
        return LoginProto.CheckSdkVersionRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionRsp_descriptor;
      }
      
      public final boolean getForce()
      {
        return this.force_;
      }
      
      public final String getGuideLink()
      {
        Object localObject = this.guideLink_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.guideLink_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getGuideLinkBytes()
      {
        Object localObject = this.guideLink_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.guideLink_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getGuideWord()
      {
        Object localObject = this.guideWord_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.guideWord_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getGuideWordBytes()
      {
        Object localObject = this.guideWord_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.guideWord_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getMd5()
      {
        Object localObject = this.md5_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.md5_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getMd5Bytes()
      {
        Object localObject = this.md5_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.md5_ = localObject;
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
      
      public final String getServiceDownloadUrl()
      {
        Object localObject = this.serviceDownloadUrl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serviceDownloadUrl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServiceDownloadUrlBytes()
      {
        Object localObject = this.serviceDownloadUrl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serviceDownloadUrl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getServiceVersion()
      {
        Object localObject = this.serviceVersion_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serviceVersion_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServiceVersionBytes()
      {
        Object localObject = this.serviceVersion_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serviceVersion_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getSize()
      {
        return this.size_;
      }
      
      public final boolean hasForce()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasGuideLink()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasGuideWord()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasMd5()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasNote()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasServiceDownloadUrl()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasServiceVersion()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasSize()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_CheckSdkVersionRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.CheckSdkVersionRsp.class, Builder.class);
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
        //   2: getstatic 260	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 266 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 188	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 269	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 188	org/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
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
        if ((paramMessage instanceof LoginProto.CheckSdkVersionRsp)) {
          return mergeFrom((LoginProto.CheckSdkVersionRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.CheckSdkVersionRsp paramCheckSdkVersionRsp)
      {
        if (paramCheckSdkVersionRsp == LoginProto.CheckSdkVersionRsp.getDefaultInstance()) {
          return this;
        }
        if (paramCheckSdkVersionRsp.hasRetCode()) {
          setRetCode(paramCheckSdkVersionRsp.getRetCode());
        }
        if (paramCheckSdkVersionRsp.hasServiceDownloadUrl())
        {
          this.bitField0_ |= 0x2;
          this.serviceDownloadUrl_ = paramCheckSdkVersionRsp.serviceDownloadUrl_;
          onChanged();
        }
        if (paramCheckSdkVersionRsp.hasMd5())
        {
          this.bitField0_ |= 0x4;
          this.md5_ = paramCheckSdkVersionRsp.md5_;
          onChanged();
        }
        if (paramCheckSdkVersionRsp.hasSize()) {
          setSize(paramCheckSdkVersionRsp.getSize());
        }
        if (paramCheckSdkVersionRsp.hasNote())
        {
          this.bitField0_ |= 0x10;
          this.note_ = paramCheckSdkVersionRsp.note_;
          onChanged();
        }
        if (paramCheckSdkVersionRsp.hasForce()) {
          setForce(paramCheckSdkVersionRsp.getForce());
        }
        if (paramCheckSdkVersionRsp.hasGuideLink())
        {
          this.bitField0_ |= 0x40;
          this.guideLink_ = paramCheckSdkVersionRsp.guideLink_;
          onChanged();
        }
        if (paramCheckSdkVersionRsp.hasGuideWord())
        {
          this.bitField0_ |= 0x80;
          this.guideWord_ = paramCheckSdkVersionRsp.guideWord_;
          onChanged();
        }
        if (paramCheckSdkVersionRsp.hasServiceVersion())
        {
          this.bitField0_ |= 0x100;
          this.serviceVersion_ = paramCheckSdkVersionRsp.serviceVersion_;
          onChanged();
        }
        mergeUnknownFields(paramCheckSdkVersionRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setForce(boolean paramBoolean)
      {
        this.bitField0_ |= 0x20;
        this.force_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setGuideLink(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.guideLink_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setGuideLinkBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.guideLink_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setGuideWord(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.guideWord_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setGuideWordBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.guideWord_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.md5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.md5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setNote(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.note_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNoteBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
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
      
      public final Builder setServiceDownloadUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.serviceDownloadUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceDownloadUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.serviceDownloadUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.serviceVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.serviceVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSize(long paramLong)
      {
        this.bitField0_ |= 0x8;
        this.size_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface CheckSdkVersionRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract boolean getForce();
    
    public abstract String getGuideLink();
    
    public abstract ByteString getGuideLinkBytes();
    
    public abstract String getGuideWord();
    
    public abstract ByteString getGuideWordBytes();
    
    public abstract String getMd5();
    
    public abstract ByteString getMd5Bytes();
    
    public abstract String getNote();
    
    public abstract ByteString getNoteBytes();
    
    public abstract int getRetCode();
    
    public abstract String getServiceDownloadUrl();
    
    public abstract ByteString getServiceDownloadUrlBytes();
    
    public abstract String getServiceVersion();
    
    public abstract ByteString getServiceVersionBytes();
    
    public abstract long getSize();
    
    public abstract boolean hasForce();
    
    public abstract boolean hasGuideLink();
    
    public abstract boolean hasGuideWord();
    
    public abstract boolean hasMd5();
    
    public abstract boolean hasNote();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasServiceDownloadUrl();
    
    public abstract boolean hasServiceVersion();
    
    public abstract boolean hasSize();
  }
  
  public static enum GameConfig
    implements ProtocolMessageEnum
  {
    public static final int DISTRIBUTION_VALUE = 1;
    public static final int GAMECENTER_VALUE = 2;
    public static final int SERVICE_VALUE = 0;
    private static final GameConfig[] VALUES = values();
    private static Internal.EnumLiteMap<GameConfig> internalValueMap;
    private final int index;
    private final int value;
    
    static
    {
      DISTRIBUTION = new GameConfig("DISTRIBUTION", 1, 1, 1);
      GAMECENTER = new GameConfig("GAMECENTER", 2, 2, 2);
      $VALUES = new GameConfig[] { SERVICE, DISTRIBUTION, GAMECENTER };
      internalValueMap = new s();
    }
    
    private GameConfig(int paramInt1, int paramInt2)
    {
      this.index = paramInt1;
      this.value = paramInt2;
    }
    
    public static final Descriptors.EnumDescriptor getDescriptor()
    {
      return (Descriptors.EnumDescriptor)LoginProto.getDescriptor().getEnumTypes().get(0);
    }
    
    public static Internal.EnumLiteMap<GameConfig> internalGetValueMap()
    {
      return internalValueMap;
    }
    
    public static GameConfig valueOf(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return null;
      case 0: 
        return SERVICE;
      case 1: 
        return DISTRIBUTION;
      }
      return GAMECENTER;
    }
    
    public static GameConfig valueOf(Descriptors.EnumValueDescriptor paramEnumValueDescriptor)
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
  
  public static final class GetAppAccountsReq
    extends GeneratedMessage
    implements LoginProto.GetAppAccountsReqOrBuilder
  {
    public static final int CHANNEL_FIELD_NUMBER = 7;
    public static final int CURRENTCHANNEL_FIELD_NUMBER = 9;
    public static final int DEVAPPID_FIELD_NUMBER = 2;
    public static final int FIRSTCHANNEL_FIELD_NUMBER = 11;
    public static final int FUID_FIELD_NUMBER = 1;
    public static final int IMEIMD5_FIELD_NUMBER = 10;
    public static final int IMEI_FIELD_NUMBER = 4;
    public static final int IMSI_FIELD_NUMBER = 5;
    public static Parser<GetAppAccountsReq> PARSER = new t();
    public static final int SDKVERSION_FIELD_NUMBER = 6;
    public static final int TOKE_FIELD_NUMBER = 3;
    public static final int UA_FIELD_NUMBER = 8;
    private static final GetAppAccountsReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object channel_;
    private Object currentChannel_;
    private Object devAppId_;
    private Object firstChannel_;
    private long fuid_;
    private Object imeiMd5_;
    private Object imei_;
    private Object imsi_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sdkVersion_;
    private Object toke_;
    private Object ua_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetAppAccountsReq localGetAppAccountsReq = new GetAppAccountsReq(true);
      defaultInstance = localGetAppAccountsReq;
      localGetAppAccountsReq.initFields();
    }
    
    /* Error */
    private GetAppAccountsReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 86	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 88	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 79	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:initFields	()V
      //   18: invokestatic 96	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +459 -> 485
      //   29: aload_1
      //   30: invokevirtual 102	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+462->499, 0:+465->502, 8:+125->162, 18:+169->206, 26:+211->248, 34:+236->273, 42:+262->299, 50:+288->325, 58:+314->351, 66:+340->377, 74:+367->404, 82:+394->431, 90:+421->458
      //   144: aload_0
      //   145: aload_1
      //   146: aload 5
      //   148: aload_2
      //   149: iload 4
      //   151: invokevirtual 106	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   154: ifne -129 -> 25
      //   157: iconst_1
      //   158: istore_3
      //   159: goto -134 -> 25
      //   162: aload_0
      //   163: aload_0
      //   164: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   167: iconst_1
      //   168: ior
      //   169: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   172: aload_0
      //   173: aload_1
      //   174: invokevirtual 112	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   177: putfield 114	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:fuid_	J
      //   180: goto -155 -> 25
      //   183: astore_1
      //   184: aload_1
      //   185: aload_0
      //   186: invokevirtual 118	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   189: athrow
      //   190: astore_1
      //   191: aload_0
      //   192: aload 5
      //   194: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   197: putfield 126	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   200: aload_0
      //   201: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:makeExtensionsImmutable	()V
      //   204: aload_1
      //   205: athrow
      //   206: aload_1
      //   207: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   210: astore 6
      //   212: aload_0
      //   213: aload_0
      //   214: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   217: iconst_2
      //   218: ior
      //   219: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   222: aload_0
      //   223: aload 6
      //   225: putfield 135	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:devAppId_	Ljava/lang/Object;
      //   228: goto -203 -> 25
      //   231: astore_1
      //   232: new 83	com/google/protobuf/InvalidProtocolBufferException
      //   235: dup
      //   236: aload_1
      //   237: invokevirtual 139	java/io/IOException:getMessage	()Ljava/lang/String;
      //   240: invokespecial 142	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   243: aload_0
      //   244: invokevirtual 118	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   247: athrow
      //   248: aload_1
      //   249: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   252: astore 6
      //   254: aload_0
      //   255: aload_0
      //   256: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   259: iconst_4
      //   260: ior
      //   261: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   264: aload_0
      //   265: aload 6
      //   267: putfield 144	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:toke_	Ljava/lang/Object;
      //   270: goto -245 -> 25
      //   273: aload_1
      //   274: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   277: astore 6
      //   279: aload_0
      //   280: aload_0
      //   281: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   284: bipush 8
      //   286: ior
      //   287: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   290: aload_0
      //   291: aload 6
      //   293: putfield 146	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:imei_	Ljava/lang/Object;
      //   296: goto -271 -> 25
      //   299: aload_1
      //   300: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   303: astore 6
      //   305: aload_0
      //   306: aload_0
      //   307: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   310: bipush 16
      //   312: ior
      //   313: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   316: aload_0
      //   317: aload 6
      //   319: putfield 148	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:imsi_	Ljava/lang/Object;
      //   322: goto -297 -> 25
      //   325: aload_1
      //   326: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   329: astore 6
      //   331: aload_0
      //   332: aload_0
      //   333: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   336: bipush 32
      //   338: ior
      //   339: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   342: aload_0
      //   343: aload 6
      //   345: putfield 150	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:sdkVersion_	Ljava/lang/Object;
      //   348: goto -323 -> 25
      //   351: aload_1
      //   352: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   355: astore 6
      //   357: aload_0
      //   358: aload_0
      //   359: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   362: bipush 64
      //   364: ior
      //   365: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   368: aload_0
      //   369: aload 6
      //   371: putfield 152	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:channel_	Ljava/lang/Object;
      //   374: goto -349 -> 25
      //   377: aload_1
      //   378: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   381: astore 6
      //   383: aload_0
      //   384: aload_0
      //   385: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   388: sipush 128
      //   391: ior
      //   392: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   395: aload_0
      //   396: aload 6
      //   398: putfield 154	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:ua_	Ljava/lang/Object;
      //   401: goto -376 -> 25
      //   404: aload_1
      //   405: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   408: astore 6
      //   410: aload_0
      //   411: aload_0
      //   412: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   415: sipush 256
      //   418: ior
      //   419: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   422: aload_0
      //   423: aload 6
      //   425: putfield 156	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:currentChannel_	Ljava/lang/Object;
      //   428: goto -403 -> 25
      //   431: aload_1
      //   432: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   435: astore 6
      //   437: aload_0
      //   438: aload_0
      //   439: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   442: sipush 512
      //   445: ior
      //   446: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   449: aload_0
      //   450: aload 6
      //   452: putfield 158	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:imeiMd5_	Ljava/lang/Object;
      //   455: goto -430 -> 25
      //   458: aload_1
      //   459: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   462: astore 6
      //   464: aload_0
      //   465: aload_0
      //   466: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   469: sipush 1024
      //   472: ior
      //   473: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:bitField0_	I
      //   476: aload_0
      //   477: aload 6
      //   479: putfield 160	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:firstChannel_	Ljava/lang/Object;
      //   482: goto -457 -> 25
      //   485: aload_0
      //   486: aload 5
      //   488: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   491: putfield 126	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   494: aload_0
      //   495: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:makeExtensionsImmutable	()V
      //   498: return
      //   499: goto -355 -> 144
      //   502: iconst_1
      //   503: istore_3
      //   504: goto -479 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	507	0	this	GetAppAccountsReq
      //   0	507	1	paramCodedInputStream	CodedInputStream
      //   0	507	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	480	3	i	int
      //   33	117	4	j	int
      //   21	466	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   210	268	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	183	com/google/protobuf/InvalidProtocolBufferException
      //   144	157	183	com/google/protobuf/InvalidProtocolBufferException
      //   162	180	183	com/google/protobuf/InvalidProtocolBufferException
      //   206	228	183	com/google/protobuf/InvalidProtocolBufferException
      //   248	270	183	com/google/protobuf/InvalidProtocolBufferException
      //   273	296	183	com/google/protobuf/InvalidProtocolBufferException
      //   299	322	183	com/google/protobuf/InvalidProtocolBufferException
      //   325	348	183	com/google/protobuf/InvalidProtocolBufferException
      //   351	374	183	com/google/protobuf/InvalidProtocolBufferException
      //   377	401	183	com/google/protobuf/InvalidProtocolBufferException
      //   404	428	183	com/google/protobuf/InvalidProtocolBufferException
      //   431	455	183	com/google/protobuf/InvalidProtocolBufferException
      //   458	482	183	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	190	finally
      //   144	157	190	finally
      //   162	180	190	finally
      //   184	190	190	finally
      //   206	228	190	finally
      //   232	248	190	finally
      //   248	270	190	finally
      //   273	296	190	finally
      //   299	322	190	finally
      //   325	348	190	finally
      //   351	374	190	finally
      //   377	401	190	finally
      //   404	428	190	finally
      //   431	455	190	finally
      //   458	482	190	finally
      //   29	35	231	java/io/IOException
      //   144	157	231	java/io/IOException
      //   162	180	231	java/io/IOException
      //   206	228	231	java/io/IOException
      //   248	270	231	java/io/IOException
      //   273	296	231	java/io/IOException
      //   299	322	231	java/io/IOException
      //   325	348	231	java/io/IOException
      //   351	374	231	java/io/IOException
      //   377	401	231	java/io/IOException
      //   404	428	231	java/io/IOException
      //   431	455	231	java/io/IOException
      //   458	482	231	java/io/IOException
    }
    
    private GetAppAccountsReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetAppAccountsReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetAppAccountsReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_descriptor;
    }
    
    private void initFields()
    {
      this.fuid_ = 0L;
      this.devAppId_ = "";
      this.toke_ = "";
      this.imei_ = "";
      this.imsi_ = "";
      this.sdkVersion_ = "";
      this.channel_ = "";
      this.ua_ = "";
      this.currentChannel_ = "";
      this.imeiMd5_ = "";
      this.firstChannel_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$11000();
    }
    
    public static Builder newBuilder(GetAppAccountsReq paramGetAppAccountsReq)
    {
      return newBuilder().mergeFrom(paramGetAppAccountsReq);
    }
    
    public static GetAppAccountsReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetAppAccountsReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetAppAccountsReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetAppAccountsReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetAppAccountsReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetAppAccountsReq)PARSER.parseFrom(paramByteString);
    }
    
    public static GetAppAccountsReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetAppAccountsReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetAppAccountsReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetAppAccountsReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetAppAccountsReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetAppAccountsReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetAppAccountsReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetAppAccountsReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetAppAccountsReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetAppAccountsReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetAppAccountsReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetAppAccountsReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetAppAccountsReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetAppAccountsReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
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
    
    public final String getCurrentChannel()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.currentChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getCurrentChannelBytes()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.currentChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final GetAppAccountsReq getDefaultInstanceForType()
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
    
    public final String getFirstChannel()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.firstChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getFirstChannelBytes()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.firstChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final String getImei()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imei_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiBytes()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imei_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
    
    public final String getImsi()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imsi_ = str;
      }
      return str;
    }
    
    public final ByteString getImsiBytes()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imsi_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<GetAppAccountsReq> getParserForType()
    {
      return PARSER;
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
        j = CodedOutputStream.computeUInt64Size(1, this.fuid_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getDevAppIdBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getTokeBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getImeiBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getImsiBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getSdkVersionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getChannelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getUaBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getCurrentChannelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getImeiMd5Bytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getFirstChannelBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getToke()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.toke_ = str;
      }
      return str;
    }
    
    public final ByteString getTokeBytes()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.toke_ = localObject;
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
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasChannel()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasCurrentChannel()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasFirstChannel()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasImei()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasImeiMd5()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasImsi()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasSdkVersion()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasToke()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_fieldAccessorTable.ensureFieldAccessorsInitialized(GetAppAccountsReq.class, Builder.class);
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
      if (!hasDevAppId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasToke())
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
        paramCodedOutputStream.writeBytes(2, getDevAppIdBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getTokeBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getImeiBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getImsiBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getSdkVersionBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getChannelBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getUaBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getCurrentChannelBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getImeiMd5Bytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getFirstChannelBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.GetAppAccountsReqOrBuilder
    {
      private int bitField0_;
      private Object channel_ = "";
      private Object currentChannel_ = "";
      private Object devAppId_ = "";
      private Object firstChannel_ = "";
      private long fuid_;
      private Object imeiMd5_ = "";
      private Object imei_ = "";
      private Object imsi_ = "";
      private Object sdkVersion_ = "";
      private Object toke_ = "";
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
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.GetAppAccountsReq build()
      {
        LoginProto.GetAppAccountsReq localGetAppAccountsReq = buildPartial();
        if (!localGetAppAccountsReq.isInitialized()) {
          throw newUninitializedMessageException(localGetAppAccountsReq);
        }
        return localGetAppAccountsReq;
      }
      
      public final LoginProto.GetAppAccountsReq buildPartial()
      {
        int j = 1;
        LoginProto.GetAppAccountsReq localGetAppAccountsReq = new LoginProto.GetAppAccountsReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.GetAppAccountsReq.access$11402(localGetAppAccountsReq, this.fuid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.GetAppAccountsReq.access$11502(localGetAppAccountsReq, this.devAppId_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.GetAppAccountsReq.access$11602(localGetAppAccountsReq, this.toke_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.GetAppAccountsReq.access$11702(localGetAppAccountsReq, this.imei_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.GetAppAccountsReq.access$11802(localGetAppAccountsReq, this.imsi_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.GetAppAccountsReq.access$11902(localGetAppAccountsReq, this.sdkVersion_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          LoginProto.GetAppAccountsReq.access$12002(localGetAppAccountsReq, this.channel_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          LoginProto.GetAppAccountsReq.access$12102(localGetAppAccountsReq, this.ua_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          LoginProto.GetAppAccountsReq.access$12202(localGetAppAccountsReq, this.currentChannel_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          LoginProto.GetAppAccountsReq.access$12302(localGetAppAccountsReq, this.imeiMd5_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          LoginProto.GetAppAccountsReq.access$12402(localGetAppAccountsReq, this.firstChannel_);
          LoginProto.GetAppAccountsReq.access$12502(localGetAppAccountsReq, j);
          onBuilt();
          return localGetAppAccountsReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.devAppId_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.toke_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.imei_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.imsi_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.sdkVersion_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.channel_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.ua_ = "";
        this.bitField0_ &= 0xFF7F;
        this.currentChannel_ = "";
        this.bitField0_ &= 0xFEFF;
        this.imeiMd5_ = "";
        this.bitField0_ &= 0xFDFF;
        this.firstChannel_ = "";
        this.bitField0_ &= 0xFBFF;
        return this;
      }
      
      public final Builder clearChannel()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.channel_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearCurrentChannel()
      {
        this.bitField0_ &= 0xFEFF;
        this.currentChannel_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getCurrentChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.devAppId_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getDevAppId();
        onChanged();
        return this;
      }
      
      public final Builder clearFirstChannel()
      {
        this.bitField0_ &= 0xFBFF;
        this.firstChannel_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getFirstChannel();
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
      
      public final Builder clearImei()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.imei_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getImei();
        onChanged();
        return this;
      }
      
      public final Builder clearImeiMd5()
      {
        this.bitField0_ &= 0xFDFF;
        this.imeiMd5_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getImeiMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearImsi()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.imsi_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getImsi();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkVersion()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.sdkVersion_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getSdkVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearToke()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.toke_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getToke();
        onChanged();
        return this;
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFF7F;
        this.ua_ = LoginProto.GetAppAccountsReq.getDefaultInstance().getUa();
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
      
      public final String getCurrentChannel()
      {
        Object localObject = this.currentChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.currentChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCurrentChannelBytes()
      {
        Object localObject = this.currentChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.currentChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final LoginProto.GetAppAccountsReq getDefaultInstanceForType()
      {
        return LoginProto.GetAppAccountsReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_descriptor;
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
      
      public final String getFirstChannel()
      {
        Object localObject = this.firstChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.firstChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getFirstChannelBytes()
      {
        Object localObject = this.firstChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.firstChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getImei()
      {
        Object localObject = this.imei_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imei_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiBytes()
      {
        Object localObject = this.imei_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imei_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getImsi()
      {
        Object localObject = this.imsi_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imsi_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImsiBytes()
      {
        Object localObject = this.imsi_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imsi_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getToke()
      {
        Object localObject = this.toke_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.toke_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTokeBytes()
      {
        Object localObject = this.toke_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.toke_ = localObject;
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
      
      public final boolean hasChannel()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasCurrentChannel()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasFirstChannel()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasImei()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasImeiMd5()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasImsi()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasSdkVersion()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasToke()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsReq_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.GetAppAccountsReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasFuid()) {}
        while ((!hasDevAppId()) || (!hasToke())) {
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
        //   2: getstatic 291	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 297 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 212	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 300	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 212	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsReq$Builder;
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
        if ((paramMessage instanceof LoginProto.GetAppAccountsReq)) {
          return mergeFrom((LoginProto.GetAppAccountsReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.GetAppAccountsReq paramGetAppAccountsReq)
      {
        if (paramGetAppAccountsReq == LoginProto.GetAppAccountsReq.getDefaultInstance()) {
          return this;
        }
        if (paramGetAppAccountsReq.hasFuid()) {
          setFuid(paramGetAppAccountsReq.getFuid());
        }
        if (paramGetAppAccountsReq.hasDevAppId())
        {
          this.bitField0_ |= 0x2;
          this.devAppId_ = paramGetAppAccountsReq.devAppId_;
          onChanged();
        }
        if (paramGetAppAccountsReq.hasToke())
        {
          this.bitField0_ |= 0x4;
          this.toke_ = paramGetAppAccountsReq.toke_;
          onChanged();
        }
        if (paramGetAppAccountsReq.hasImei())
        {
          this.bitField0_ |= 0x8;
          this.imei_ = paramGetAppAccountsReq.imei_;
          onChanged();
        }
        if (paramGetAppAccountsReq.hasImsi())
        {
          this.bitField0_ |= 0x10;
          this.imsi_ = paramGetAppAccountsReq.imsi_;
          onChanged();
        }
        if (paramGetAppAccountsReq.hasSdkVersion())
        {
          this.bitField0_ |= 0x20;
          this.sdkVersion_ = paramGetAppAccountsReq.sdkVersion_;
          onChanged();
        }
        if (paramGetAppAccountsReq.hasChannel())
        {
          this.bitField0_ |= 0x40;
          this.channel_ = paramGetAppAccountsReq.channel_;
          onChanged();
        }
        if (paramGetAppAccountsReq.hasUa())
        {
          this.bitField0_ |= 0x80;
          this.ua_ = paramGetAppAccountsReq.ua_;
          onChanged();
        }
        if (paramGetAppAccountsReq.hasCurrentChannel())
        {
          this.bitField0_ |= 0x100;
          this.currentChannel_ = paramGetAppAccountsReq.currentChannel_;
          onChanged();
        }
        if (paramGetAppAccountsReq.hasImeiMd5())
        {
          this.bitField0_ |= 0x200;
          this.imeiMd5_ = paramGetAppAccountsReq.imeiMd5_;
          onChanged();
        }
        if (paramGetAppAccountsReq.hasFirstChannel())
        {
          this.bitField0_ |= 0x400;
          this.firstChannel_ = paramGetAppAccountsReq.firstChannel_;
          onChanged();
        }
        mergeUnknownFields(paramGetAppAccountsReq.getUnknownFields());
        return this;
      }
      
      public final Builder setChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.channel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.channel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.currentChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.currentChannel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.devAppId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.devAppId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.firstChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.firstChannel_ = paramByteString;
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
      
      public final Builder setImei(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.imeiMd5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.imeiMd5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImsi(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImsiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.sdkVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.sdkVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setToke(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.toke_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTokeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.toke_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface GetAppAccountsReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getChannel();
    
    public abstract ByteString getChannelBytes();
    
    public abstract String getCurrentChannel();
    
    public abstract ByteString getCurrentChannelBytes();
    
    public abstract String getDevAppId();
    
    public abstract ByteString getDevAppIdBytes();
    
    public abstract String getFirstChannel();
    
    public abstract ByteString getFirstChannelBytes();
    
    public abstract long getFuid();
    
    public abstract String getImei();
    
    public abstract ByteString getImeiBytes();
    
    public abstract String getImeiMd5();
    
    public abstract ByteString getImeiMd5Bytes();
    
    public abstract String getImsi();
    
    public abstract ByteString getImsiBytes();
    
    public abstract String getSdkVersion();
    
    public abstract ByteString getSdkVersionBytes();
    
    public abstract String getToke();
    
    public abstract ByteString getTokeBytes();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract boolean hasChannel();
    
    public abstract boolean hasCurrentChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasFirstChannel();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasImei();
    
    public abstract boolean hasImeiMd5();
    
    public abstract boolean hasImsi();
    
    public abstract boolean hasSdkVersion();
    
    public abstract boolean hasToke();
    
    public abstract boolean hasUa();
  }
  
  public static final class GetAppAccountsRsp
    extends GeneratedMessage
    implements LoginProto.GetAppAccountsRspOrBuilder
  {
    public static final int ACCOUNTS_FIELD_NUMBER = 3;
    public static final int DEFAULTACCOUNTID_FIELD_NUMBER = 2;
    public static Parser<GetAppAccountsRsp> PARSER = new u();
    public static final int RETCODE_FIELD_NUMBER = 1;
    private static final GetAppAccountsRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private List<LoginProto.AppAccountVo> accounts_;
    private int bitField0_;
    private long defaultAccountId_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int retCode_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetAppAccountsRsp localGetAppAccountsRsp = new GetAppAccountsRsp(true);
      defaultInstance = localGetAppAccountsRsp;
      localGetAppAccountsRsp.initFields();
    }
    
    /* Error */
    private GetAppAccountsRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 63	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 65	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 67	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 56	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:initFields	()V
      //   18: invokestatic 73	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
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
      //   43: invokevirtual 79	com/google/protobuf/CodedInputStream:readTag	()I
      //   46: istore 4
      //   48: iload 4
      //   50: lookupswitch	default:+318->368, 0:+321->371, 8:+70->120, 16:+155->205, 26:+215->265
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
      //   108: invokevirtual 83	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
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
      //   131: getfield 85	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:bitField0_	I
      //   134: iconst_1
      //   135: ior
      //   136: putfield 85	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:bitField0_	I
      //   139: iload_3
      //   140: istore 7
      //   142: iload_3
      //   143: istore 5
      //   145: iload_3
      //   146: istore 8
      //   148: aload_0
      //   149: aload_1
      //   150: invokevirtual 88	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   153: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:retCode_	I
      //   156: goto -128 -> 28
      //   159: astore_1
      //   160: iload 7
      //   162: istore 5
      //   164: aload_1
      //   165: aload_0
      //   166: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   169: athrow
      //   170: astore_1
      //   171: iload 5
      //   173: iconst_4
      //   174: iand
      //   175: iconst_4
      //   176: if_icmpne +14 -> 190
      //   179: aload_0
      //   180: aload_0
      //   181: getfield 96	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:accounts_	Ljava/util/List;
      //   184: invokestatic 102	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   187: putfield 96	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:accounts_	Ljava/util/List;
      //   190: aload_0
      //   191: aload 9
      //   193: invokevirtual 108	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   196: putfield 110	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   199: aload_0
      //   200: invokevirtual 113	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:makeExtensionsImmutable	()V
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
      //   216: getfield 85	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:bitField0_	I
      //   219: iconst_2
      //   220: ior
      //   221: putfield 85	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:bitField0_	I
      //   224: iload_3
      //   225: istore 7
      //   227: iload_3
      //   228: istore 5
      //   230: iload_3
      //   231: istore 8
      //   233: aload_0
      //   234: aload_1
      //   235: invokevirtual 117	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   238: putfield 119	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:defaultAccountId_	J
      //   241: goto -213 -> 28
      //   244: astore_1
      //   245: iload 8
      //   247: istore 5
      //   249: new 60	com/google/protobuf/InvalidProtocolBufferException
      //   252: dup
      //   253: aload_1
      //   254: invokevirtual 123	java/io/IOException:getMessage	()Ljava/lang/String;
      //   257: invokespecial 126	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   260: aload_0
      //   261: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
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
      //   285: new 128	java/util/ArrayList
      //   288: dup
      //   289: invokespecial 129	java/util/ArrayList:<init>	()V
      //   292: putfield 96	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:accounts_	Ljava/util/List;
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
      //   313: getfield 96	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:accounts_	Ljava/util/List;
      //   316: aload_1
      //   317: getstatic 132	org/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo:PARSER	Lcom/google/protobuf/Parser;
      //   320: aload_2
      //   321: invokevirtual 136	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   324: invokeinterface 142 2 0
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
      //   345: getfield 96	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:accounts_	Ljava/util/List;
      //   348: invokestatic 102	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   351: putfield 96	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:accounts_	Ljava/util/List;
      //   354: aload_0
      //   355: aload 9
      //   357: invokevirtual 108	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   360: putfield 110	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   363: aload_0
      //   364: invokevirtual 113	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:makeExtensionsImmutable	()V
      //   367: return
      //   368: goto -276 -> 92
      //   371: iconst_1
      //   372: istore 6
      //   374: goto -346 -> 28
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	377	0	this	GetAppAccountsRsp
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
    
    private GetAppAccountsRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetAppAccountsRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetAppAccountsRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.defaultAccountId_ = 0L;
      this.accounts_ = Collections.emptyList();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$12900();
    }
    
    public static Builder newBuilder(GetAppAccountsRsp paramGetAppAccountsRsp)
    {
      return newBuilder().mergeFrom(paramGetAppAccountsRsp);
    }
    
    public static GetAppAccountsRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetAppAccountsRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetAppAccountsRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetAppAccountsRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetAppAccountsRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetAppAccountsRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static GetAppAccountsRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetAppAccountsRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetAppAccountsRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetAppAccountsRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetAppAccountsRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetAppAccountsRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetAppAccountsRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetAppAccountsRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetAppAccountsRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetAppAccountsRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetAppAccountsRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetAppAccountsRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetAppAccountsRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetAppAccountsRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final LoginProto.AppAccountVo getAccounts(int paramInt)
    {
      return (LoginProto.AppAccountVo)this.accounts_.get(paramInt);
    }
    
    public final int getAccountsCount()
    {
      return this.accounts_.size();
    }
    
    public final List<LoginProto.AppAccountVo> getAccountsList()
    {
      return this.accounts_;
    }
    
    public final LoginProto.AppAccountVoOrBuilder getAccountsOrBuilder(int paramInt)
    {
      return (LoginProto.AppAccountVoOrBuilder)this.accounts_.get(paramInt);
    }
    
    public final List<? extends LoginProto.AppAccountVoOrBuilder> getAccountsOrBuilderList()
    {
      return this.accounts_;
    }
    
    public final long getDefaultAccountId()
    {
      return this.defaultAccountId_;
    }
    
    public final GetAppAccountsRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<GetAppAccountsRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final int getRetCode()
    {
      return this.retCode_;
    }
    
    public final int getSerializedSize()
    {
      int k = 0;
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      if ((this.bitField0_ & 0x1) == 1) {}
      for (i = CodedOutputStream.computeUInt32Size(1, this.retCode_) + 0;; i = 0)
      {
        int j = i;
        if ((this.bitField0_ & 0x2) == 2) {
          j = i + CodedOutputStream.computeUInt64Size(2, this.defaultAccountId_);
        }
        i = j;
        j = k;
        while (j < this.accounts_.size())
        {
          k = CodedOutputStream.computeMessageSize(3, (MessageLite)this.accounts_.get(j));
          j += 1;
          i = k + i;
        }
        i = getUnknownFields().getSerializedSize() + i;
        this.memoizedSerializedSize = i;
        return i;
      }
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasDefaultAccountId()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(GetAppAccountsRsp.class, Builder.class);
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
      if (!hasDefaultAccountId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      i = 0;
      while (i < getAccountsCount())
      {
        if (!getAccounts(i).isInitialized())
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
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt64(2, this.defaultAccountId_);
      }
      int i = 0;
      while (i < this.accounts_.size())
      {
        paramCodedOutputStream.writeMessage(3, (MessageLite)this.accounts_.get(i));
        i += 1;
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.GetAppAccountsRspOrBuilder
    {
      private RepeatedFieldBuilder<LoginProto.AppAccountVo, LoginProto.AppAccountVo.Builder, LoginProto.AppAccountVoOrBuilder> accountsBuilder_;
      private List<LoginProto.AppAccountVo> accounts_ = Collections.emptyList();
      private int bitField0_;
      private long defaultAccountId_;
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
      
      private void ensureAccountsIsMutable()
      {
        if ((this.bitField0_ & 0x4) != 4)
        {
          this.accounts_ = new ArrayList(this.accounts_);
          this.bitField0_ |= 0x4;
        }
      }
      
      private RepeatedFieldBuilder<LoginProto.AppAccountVo, LoginProto.AppAccountVo.Builder, LoginProto.AppAccountVoOrBuilder> getAccountsFieldBuilder()
      {
        List localList;
        if (this.accountsBuilder_ == null)
        {
          localList = this.accounts_;
          if ((this.bitField0_ & 0x4) != 4) {
            break label55;
          }
        }
        label55:
        for (boolean bool = true;; bool = false)
        {
          this.accountsBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
          this.accounts_ = null;
          return this.accountsBuilder_;
        }
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (LoginProto.GetAppAccountsRsp.alwaysUseFieldBuilders) {
          getAccountsFieldBuilder();
        }
      }
      
      public final Builder addAccounts(int paramInt, LoginProto.AppAccountVo.Builder paramBuilder)
      {
        if (this.accountsBuilder_ == null)
        {
          ensureAccountsIsMutable();
          this.accounts_.add(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.accountsBuilder_.addMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder addAccounts(int paramInt, LoginProto.AppAccountVo paramAppAccountVo)
      {
        if (this.accountsBuilder_ == null)
        {
          if (paramAppAccountVo == null) {
            throw new NullPointerException();
          }
          ensureAccountsIsMutable();
          this.accounts_.add(paramInt, paramAppAccountVo);
          onChanged();
          return this;
        }
        this.accountsBuilder_.addMessage(paramInt, paramAppAccountVo);
        return this;
      }
      
      public final Builder addAccounts(LoginProto.AppAccountVo.Builder paramBuilder)
      {
        if (this.accountsBuilder_ == null)
        {
          ensureAccountsIsMutable();
          this.accounts_.add(paramBuilder.build());
          onChanged();
          return this;
        }
        this.accountsBuilder_.addMessage(paramBuilder.build());
        return this;
      }
      
      public final Builder addAccounts(LoginProto.AppAccountVo paramAppAccountVo)
      {
        if (this.accountsBuilder_ == null)
        {
          if (paramAppAccountVo == null) {
            throw new NullPointerException();
          }
          ensureAccountsIsMutable();
          this.accounts_.add(paramAppAccountVo);
          onChanged();
          return this;
        }
        this.accountsBuilder_.addMessage(paramAppAccountVo);
        return this;
      }
      
      public final LoginProto.AppAccountVo.Builder addAccountsBuilder()
      {
        return (LoginProto.AppAccountVo.Builder)getAccountsFieldBuilder().addBuilder(LoginProto.AppAccountVo.getDefaultInstance());
      }
      
      public final LoginProto.AppAccountVo.Builder addAccountsBuilder(int paramInt)
      {
        return (LoginProto.AppAccountVo.Builder)getAccountsFieldBuilder().addBuilder(paramInt, LoginProto.AppAccountVo.getDefaultInstance());
      }
      
      public final Builder addAllAccounts(Iterable<? extends LoginProto.AppAccountVo> paramIterable)
      {
        if (this.accountsBuilder_ == null)
        {
          ensureAccountsIsMutable();
          AbstractMessageLite.Builder.addAll(paramIterable, this.accounts_);
          onChanged();
          return this;
        }
        this.accountsBuilder_.addAllMessages(paramIterable);
        return this;
      }
      
      public final LoginProto.GetAppAccountsRsp build()
      {
        LoginProto.GetAppAccountsRsp localGetAppAccountsRsp = buildPartial();
        if (!localGetAppAccountsRsp.isInitialized()) {
          throw newUninitializedMessageException(localGetAppAccountsRsp);
        }
        return localGetAppAccountsRsp;
      }
      
      public final LoginProto.GetAppAccountsRsp buildPartial()
      {
        int i = 1;
        LoginProto.GetAppAccountsRsp localGetAppAccountsRsp = new LoginProto.GetAppAccountsRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.GetAppAccountsRsp.access$13302(localGetAppAccountsRsp, this.retCode_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          LoginProto.GetAppAccountsRsp.access$13402(localGetAppAccountsRsp, this.defaultAccountId_);
          if (this.accountsBuilder_ == null)
          {
            if ((this.bitField0_ & 0x4) == 4)
            {
              this.accounts_ = Collections.unmodifiableList(this.accounts_);
              this.bitField0_ &= 0xFFFFFFFB;
            }
            LoginProto.GetAppAccountsRsp.access$13502(localGetAppAccountsRsp, this.accounts_);
          }
          for (;;)
          {
            LoginProto.GetAppAccountsRsp.access$13602(localGetAppAccountsRsp, j);
            onBuilt();
            return localGetAppAccountsRsp;
            LoginProto.GetAppAccountsRsp.access$13502(localGetAppAccountsRsp, this.accountsBuilder_.build());
          }
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.defaultAccountId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFD;
        if (this.accountsBuilder_ == null)
        {
          this.accounts_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFB;
          return this;
        }
        this.accountsBuilder_.clear();
        return this;
      }
      
      public final Builder clearAccounts()
      {
        if (this.accountsBuilder_ == null)
        {
          this.accounts_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFB;
          onChanged();
          return this;
        }
        this.accountsBuilder_.clear();
        return this;
      }
      
      public final Builder clearDefaultAccountId()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.defaultAccountId_ = 0L;
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
      
      public final LoginProto.AppAccountVo getAccounts(int paramInt)
      {
        if (this.accountsBuilder_ == null) {
          return (LoginProto.AppAccountVo)this.accounts_.get(paramInt);
        }
        return (LoginProto.AppAccountVo)this.accountsBuilder_.getMessage(paramInt);
      }
      
      public final LoginProto.AppAccountVo.Builder getAccountsBuilder(int paramInt)
      {
        return (LoginProto.AppAccountVo.Builder)getAccountsFieldBuilder().getBuilder(paramInt);
      }
      
      public final List<LoginProto.AppAccountVo.Builder> getAccountsBuilderList()
      {
        return getAccountsFieldBuilder().getBuilderList();
      }
      
      public final int getAccountsCount()
      {
        if (this.accountsBuilder_ == null) {
          return this.accounts_.size();
        }
        return this.accountsBuilder_.getCount();
      }
      
      public final List<LoginProto.AppAccountVo> getAccountsList()
      {
        if (this.accountsBuilder_ == null) {
          return Collections.unmodifiableList(this.accounts_);
        }
        return this.accountsBuilder_.getMessageList();
      }
      
      public final LoginProto.AppAccountVoOrBuilder getAccountsOrBuilder(int paramInt)
      {
        if (this.accountsBuilder_ == null) {
          return (LoginProto.AppAccountVoOrBuilder)this.accounts_.get(paramInt);
        }
        return (LoginProto.AppAccountVoOrBuilder)this.accountsBuilder_.getMessageOrBuilder(paramInt);
      }
      
      public final List<? extends LoginProto.AppAccountVoOrBuilder> getAccountsOrBuilderList()
      {
        if (this.accountsBuilder_ != null) {
          return this.accountsBuilder_.getMessageOrBuilderList();
        }
        return Collections.unmodifiableList(this.accounts_);
      }
      
      public final long getDefaultAccountId()
      {
        return this.defaultAccountId_;
      }
      
      public final LoginProto.GetAppAccountsRsp getDefaultInstanceForType()
      {
        return LoginProto.GetAppAccountsRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_descriptor;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final boolean hasDefaultAccountId()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetAppAccountsRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.GetAppAccountsRsp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasRetCode()) {}
        while (!hasDefaultAccountId()) {
          return false;
        }
        int i = 0;
        for (;;)
        {
          if (i >= getAccountsCount()) {
            break label44;
          }
          if (!getAccounts(i).isInitialized()) {
            break;
          }
          i += 1;
        }
        label44:
        return true;
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 320	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 326 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 223	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 329	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 223	org/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;
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
        if ((paramMessage instanceof LoginProto.GetAppAccountsRsp)) {
          return mergeFrom((LoginProto.GetAppAccountsRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.GetAppAccountsRsp paramGetAppAccountsRsp)
      {
        RepeatedFieldBuilder localRepeatedFieldBuilder = null;
        if (paramGetAppAccountsRsp == LoginProto.GetAppAccountsRsp.getDefaultInstance()) {
          return this;
        }
        if (paramGetAppAccountsRsp.hasRetCode()) {
          setRetCode(paramGetAppAccountsRsp.getRetCode());
        }
        if (paramGetAppAccountsRsp.hasDefaultAccountId()) {
          setDefaultAccountId(paramGetAppAccountsRsp.getDefaultAccountId());
        }
        if (this.accountsBuilder_ == null) {
          if (!paramGetAppAccountsRsp.accounts_.isEmpty())
          {
            if (!this.accounts_.isEmpty()) {
              break label108;
            }
            this.accounts_ = paramGetAppAccountsRsp.accounts_;
            this.bitField0_ &= 0xFFFFFFFB;
            onChanged();
          }
        }
        for (;;)
        {
          mergeUnknownFields(paramGetAppAccountsRsp.getUnknownFields());
          return this;
          label108:
          ensureAccountsIsMutable();
          this.accounts_.addAll(paramGetAppAccountsRsp.accounts_);
          break;
          if (!paramGetAppAccountsRsp.accounts_.isEmpty()) {
            if (this.accountsBuilder_.isEmpty())
            {
              this.accountsBuilder_.dispose();
              this.accountsBuilder_ = null;
              this.accounts_ = paramGetAppAccountsRsp.accounts_;
              this.bitField0_ &= 0xFFFFFFFB;
              if (LoginProto.GetAppAccountsRsp.alwaysUseFieldBuilders) {
                localRepeatedFieldBuilder = getAccountsFieldBuilder();
              }
              this.accountsBuilder_ = localRepeatedFieldBuilder;
            }
            else
            {
              this.accountsBuilder_.addAllMessages(paramGetAppAccountsRsp.accounts_);
            }
          }
        }
      }
      
      public final Builder removeAccounts(int paramInt)
      {
        if (this.accountsBuilder_ == null)
        {
          ensureAccountsIsMutable();
          this.accounts_.remove(paramInt);
          onChanged();
          return this;
        }
        this.accountsBuilder_.remove(paramInt);
        return this;
      }
      
      public final Builder setAccounts(int paramInt, LoginProto.AppAccountVo.Builder paramBuilder)
      {
        if (this.accountsBuilder_ == null)
        {
          ensureAccountsIsMutable();
          this.accounts_.set(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.accountsBuilder_.setMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder setAccounts(int paramInt, LoginProto.AppAccountVo paramAppAccountVo)
      {
        if (this.accountsBuilder_ == null)
        {
          if (paramAppAccountVo == null) {
            throw new NullPointerException();
          }
          ensureAccountsIsMutable();
          this.accounts_.set(paramInt, paramAppAccountVo);
          onChanged();
          return this;
        }
        this.accountsBuilder_.setMessage(paramInt, paramAppAccountVo);
        return this;
      }
      
      public final Builder setDefaultAccountId(long paramLong)
      {
        this.bitField0_ |= 0x2;
        this.defaultAccountId_ = paramLong;
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
  
  public static abstract interface GetAppAccountsRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract LoginProto.AppAccountVo getAccounts(int paramInt);
    
    public abstract int getAccountsCount();
    
    public abstract List<LoginProto.AppAccountVo> getAccountsList();
    
    public abstract LoginProto.AppAccountVoOrBuilder getAccountsOrBuilder(int paramInt);
    
    public abstract List<? extends LoginProto.AppAccountVoOrBuilder> getAccountsOrBuilderList();
    
    public abstract long getDefaultAccountId();
    
    public abstract int getRetCode();
    
    public abstract boolean hasDefaultAccountId();
    
    public abstract boolean hasRetCode();
  }
  
  public static final class GetLoginAppAccountReq
    extends GeneratedMessage
    implements LoginProto.GetLoginAppAccountReqOrBuilder
  {
    public static final int CHANNEL_FIELD_NUMBER = 7;
    public static final int CURRENTCHANNEL_FIELD_NUMBER = 9;
    public static final int DEVAPPID_FIELD_NUMBER = 2;
    public static final int FIRSTCHANNEL_FIELD_NUMBER = 11;
    public static final int FUID_FIELD_NUMBER = 1;
    public static final int IMEIMD5_FIELD_NUMBER = 10;
    public static final int IMEI_FIELD_NUMBER = 4;
    public static final int IMSI_FIELD_NUMBER = 5;
    public static Parser<GetLoginAppAccountReq> PARSER = new v();
    public static final int SDKVERSION_FIELD_NUMBER = 6;
    public static final int TOKE_FIELD_NUMBER = 3;
    public static final int UA_FIELD_NUMBER = 8;
    private static final GetLoginAppAccountReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object channel_;
    private Object currentChannel_;
    private Object devAppId_;
    private Object firstChannel_;
    private long fuid_;
    private Object imeiMd5_;
    private Object imei_;
    private Object imsi_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sdkVersion_;
    private Object toke_;
    private Object ua_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetLoginAppAccountReq localGetLoginAppAccountReq = new GetLoginAppAccountReq(true);
      defaultInstance = localGetLoginAppAccountReq;
      localGetLoginAppAccountReq.initFields();
    }
    
    /* Error */
    private GetLoginAppAccountReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 86	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 88	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 79	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:initFields	()V
      //   18: invokestatic 96	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +459 -> 485
      //   29: aload_1
      //   30: invokevirtual 102	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+462->499, 0:+465->502, 8:+125->162, 18:+169->206, 26:+211->248, 34:+236->273, 42:+262->299, 50:+288->325, 58:+314->351, 66:+340->377, 74:+367->404, 82:+394->431, 90:+421->458
      //   144: aload_0
      //   145: aload_1
      //   146: aload 5
      //   148: aload_2
      //   149: iload 4
      //   151: invokevirtual 106	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   154: ifne -129 -> 25
      //   157: iconst_1
      //   158: istore_3
      //   159: goto -134 -> 25
      //   162: aload_0
      //   163: aload_0
      //   164: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   167: iconst_1
      //   168: ior
      //   169: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   172: aload_0
      //   173: aload_1
      //   174: invokevirtual 112	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   177: putfield 114	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:fuid_	J
      //   180: goto -155 -> 25
      //   183: astore_1
      //   184: aload_1
      //   185: aload_0
      //   186: invokevirtual 118	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   189: athrow
      //   190: astore_1
      //   191: aload_0
      //   192: aload 5
      //   194: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   197: putfield 126	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   200: aload_0
      //   201: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:makeExtensionsImmutable	()V
      //   204: aload_1
      //   205: athrow
      //   206: aload_1
      //   207: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   210: astore 6
      //   212: aload_0
      //   213: aload_0
      //   214: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   217: iconst_2
      //   218: ior
      //   219: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   222: aload_0
      //   223: aload 6
      //   225: putfield 135	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:devAppId_	Ljava/lang/Object;
      //   228: goto -203 -> 25
      //   231: astore_1
      //   232: new 83	com/google/protobuf/InvalidProtocolBufferException
      //   235: dup
      //   236: aload_1
      //   237: invokevirtual 139	java/io/IOException:getMessage	()Ljava/lang/String;
      //   240: invokespecial 142	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   243: aload_0
      //   244: invokevirtual 118	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   247: athrow
      //   248: aload_1
      //   249: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   252: astore 6
      //   254: aload_0
      //   255: aload_0
      //   256: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   259: iconst_4
      //   260: ior
      //   261: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   264: aload_0
      //   265: aload 6
      //   267: putfield 144	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:toke_	Ljava/lang/Object;
      //   270: goto -245 -> 25
      //   273: aload_1
      //   274: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   277: astore 6
      //   279: aload_0
      //   280: aload_0
      //   281: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   284: bipush 8
      //   286: ior
      //   287: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   290: aload_0
      //   291: aload 6
      //   293: putfield 146	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:imei_	Ljava/lang/Object;
      //   296: goto -271 -> 25
      //   299: aload_1
      //   300: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   303: astore 6
      //   305: aload_0
      //   306: aload_0
      //   307: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   310: bipush 16
      //   312: ior
      //   313: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   316: aload_0
      //   317: aload 6
      //   319: putfield 148	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:imsi_	Ljava/lang/Object;
      //   322: goto -297 -> 25
      //   325: aload_1
      //   326: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   329: astore 6
      //   331: aload_0
      //   332: aload_0
      //   333: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   336: bipush 32
      //   338: ior
      //   339: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   342: aload_0
      //   343: aload 6
      //   345: putfield 150	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:sdkVersion_	Ljava/lang/Object;
      //   348: goto -323 -> 25
      //   351: aload_1
      //   352: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   355: astore 6
      //   357: aload_0
      //   358: aload_0
      //   359: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   362: bipush 64
      //   364: ior
      //   365: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   368: aload_0
      //   369: aload 6
      //   371: putfield 152	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:channel_	Ljava/lang/Object;
      //   374: goto -349 -> 25
      //   377: aload_1
      //   378: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   381: astore 6
      //   383: aload_0
      //   384: aload_0
      //   385: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   388: sipush 128
      //   391: ior
      //   392: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   395: aload_0
      //   396: aload 6
      //   398: putfield 154	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:ua_	Ljava/lang/Object;
      //   401: goto -376 -> 25
      //   404: aload_1
      //   405: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   408: astore 6
      //   410: aload_0
      //   411: aload_0
      //   412: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   415: sipush 256
      //   418: ior
      //   419: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   422: aload_0
      //   423: aload 6
      //   425: putfield 156	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:currentChannel_	Ljava/lang/Object;
      //   428: goto -403 -> 25
      //   431: aload_1
      //   432: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   435: astore 6
      //   437: aload_0
      //   438: aload_0
      //   439: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   442: sipush 512
      //   445: ior
      //   446: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   449: aload_0
      //   450: aload 6
      //   452: putfield 158	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:imeiMd5_	Ljava/lang/Object;
      //   455: goto -430 -> 25
      //   458: aload_1
      //   459: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   462: astore 6
      //   464: aload_0
      //   465: aload_0
      //   466: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   469: sipush 1024
      //   472: ior
      //   473: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:bitField0_	I
      //   476: aload_0
      //   477: aload 6
      //   479: putfield 160	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:firstChannel_	Ljava/lang/Object;
      //   482: goto -457 -> 25
      //   485: aload_0
      //   486: aload 5
      //   488: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   491: putfield 126	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   494: aload_0
      //   495: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:makeExtensionsImmutable	()V
      //   498: return
      //   499: goto -355 -> 144
      //   502: iconst_1
      //   503: istore_3
      //   504: goto -479 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	507	0	this	GetLoginAppAccountReq
      //   0	507	1	paramCodedInputStream	CodedInputStream
      //   0	507	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	480	3	i	int
      //   33	117	4	j	int
      //   21	466	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   210	268	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	183	com/google/protobuf/InvalidProtocolBufferException
      //   144	157	183	com/google/protobuf/InvalidProtocolBufferException
      //   162	180	183	com/google/protobuf/InvalidProtocolBufferException
      //   206	228	183	com/google/protobuf/InvalidProtocolBufferException
      //   248	270	183	com/google/protobuf/InvalidProtocolBufferException
      //   273	296	183	com/google/protobuf/InvalidProtocolBufferException
      //   299	322	183	com/google/protobuf/InvalidProtocolBufferException
      //   325	348	183	com/google/protobuf/InvalidProtocolBufferException
      //   351	374	183	com/google/protobuf/InvalidProtocolBufferException
      //   377	401	183	com/google/protobuf/InvalidProtocolBufferException
      //   404	428	183	com/google/protobuf/InvalidProtocolBufferException
      //   431	455	183	com/google/protobuf/InvalidProtocolBufferException
      //   458	482	183	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	190	finally
      //   144	157	190	finally
      //   162	180	190	finally
      //   184	190	190	finally
      //   206	228	190	finally
      //   232	248	190	finally
      //   248	270	190	finally
      //   273	296	190	finally
      //   299	322	190	finally
      //   325	348	190	finally
      //   351	374	190	finally
      //   377	401	190	finally
      //   404	428	190	finally
      //   431	455	190	finally
      //   458	482	190	finally
      //   29	35	231	java/io/IOException
      //   144	157	231	java/io/IOException
      //   162	180	231	java/io/IOException
      //   206	228	231	java/io/IOException
      //   248	270	231	java/io/IOException
      //   273	296	231	java/io/IOException
      //   299	322	231	java/io/IOException
      //   325	348	231	java/io/IOException
      //   351	374	231	java/io/IOException
      //   377	401	231	java/io/IOException
      //   404	428	231	java/io/IOException
      //   431	455	231	java/io/IOException
      //   458	482	231	java/io/IOException
    }
    
    private GetLoginAppAccountReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetLoginAppAccountReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetLoginAppAccountReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_descriptor;
    }
    
    private void initFields()
    {
      this.fuid_ = 0L;
      this.devAppId_ = "";
      this.toke_ = "";
      this.imei_ = "";
      this.imsi_ = "";
      this.sdkVersion_ = "";
      this.channel_ = "";
      this.ua_ = "";
      this.currentChannel_ = "";
      this.imeiMd5_ = "";
      this.firstChannel_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1500();
    }
    
    public static Builder newBuilder(GetLoginAppAccountReq paramGetLoginAppAccountReq)
    {
      return newBuilder().mergeFrom(paramGetLoginAppAccountReq);
    }
    
    public static GetLoginAppAccountReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetLoginAppAccountReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetLoginAppAccountReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetLoginAppAccountReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetLoginAppAccountReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetLoginAppAccountReq)PARSER.parseFrom(paramByteString);
    }
    
    public static GetLoginAppAccountReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetLoginAppAccountReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetLoginAppAccountReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetLoginAppAccountReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetLoginAppAccountReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetLoginAppAccountReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetLoginAppAccountReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetLoginAppAccountReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetLoginAppAccountReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetLoginAppAccountReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetLoginAppAccountReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetLoginAppAccountReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetLoginAppAccountReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetLoginAppAccountReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
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
    
    public final String getCurrentChannel()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.currentChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getCurrentChannelBytes()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.currentChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final GetLoginAppAccountReq getDefaultInstanceForType()
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
    
    public final String getFirstChannel()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.firstChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getFirstChannelBytes()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.firstChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final String getImei()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imei_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiBytes()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imei_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
    
    public final String getImsi()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imsi_ = str;
      }
      return str;
    }
    
    public final ByteString getImsiBytes()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imsi_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<GetLoginAppAccountReq> getParserForType()
    {
      return PARSER;
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
        j = CodedOutputStream.computeUInt64Size(1, this.fuid_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getDevAppIdBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getTokeBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getImeiBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getImsiBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getSdkVersionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getChannelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getUaBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getCurrentChannelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getImeiMd5Bytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getFirstChannelBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getToke()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.toke_ = str;
      }
      return str;
    }
    
    public final ByteString getTokeBytes()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.toke_ = localObject;
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
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasChannel()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasCurrentChannel()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasFirstChannel()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasImei()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasImeiMd5()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasImsi()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasSdkVersion()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasToke()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_fieldAccessorTable.ensureFieldAccessorsInitialized(GetLoginAppAccountReq.class, Builder.class);
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
      if (!hasDevAppId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasToke())
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
        paramCodedOutputStream.writeBytes(2, getDevAppIdBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getTokeBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getImeiBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getImsiBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getSdkVersionBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getChannelBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getUaBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getCurrentChannelBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getImeiMd5Bytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getFirstChannelBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.GetLoginAppAccountReqOrBuilder
    {
      private int bitField0_;
      private Object channel_ = "";
      private Object currentChannel_ = "";
      private Object devAppId_ = "";
      private Object firstChannel_ = "";
      private long fuid_;
      private Object imeiMd5_ = "";
      private Object imei_ = "";
      private Object imsi_ = "";
      private Object sdkVersion_ = "";
      private Object toke_ = "";
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
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.GetLoginAppAccountReq build()
      {
        LoginProto.GetLoginAppAccountReq localGetLoginAppAccountReq = buildPartial();
        if (!localGetLoginAppAccountReq.isInitialized()) {
          throw newUninitializedMessageException(localGetLoginAppAccountReq);
        }
        return localGetLoginAppAccountReq;
      }
      
      public final LoginProto.GetLoginAppAccountReq buildPartial()
      {
        int j = 1;
        LoginProto.GetLoginAppAccountReq localGetLoginAppAccountReq = new LoginProto.GetLoginAppAccountReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.GetLoginAppAccountReq.access$1902(localGetLoginAppAccountReq, this.fuid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.GetLoginAppAccountReq.access$2002(localGetLoginAppAccountReq, this.devAppId_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.GetLoginAppAccountReq.access$2102(localGetLoginAppAccountReq, this.toke_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.GetLoginAppAccountReq.access$2202(localGetLoginAppAccountReq, this.imei_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.GetLoginAppAccountReq.access$2302(localGetLoginAppAccountReq, this.imsi_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.GetLoginAppAccountReq.access$2402(localGetLoginAppAccountReq, this.sdkVersion_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          LoginProto.GetLoginAppAccountReq.access$2502(localGetLoginAppAccountReq, this.channel_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          LoginProto.GetLoginAppAccountReq.access$2602(localGetLoginAppAccountReq, this.ua_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          LoginProto.GetLoginAppAccountReq.access$2702(localGetLoginAppAccountReq, this.currentChannel_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          LoginProto.GetLoginAppAccountReq.access$2802(localGetLoginAppAccountReq, this.imeiMd5_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          LoginProto.GetLoginAppAccountReq.access$2902(localGetLoginAppAccountReq, this.firstChannel_);
          LoginProto.GetLoginAppAccountReq.access$3002(localGetLoginAppAccountReq, j);
          onBuilt();
          return localGetLoginAppAccountReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.devAppId_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.toke_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.imei_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.imsi_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.sdkVersion_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.channel_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.ua_ = "";
        this.bitField0_ &= 0xFF7F;
        this.currentChannel_ = "";
        this.bitField0_ &= 0xFEFF;
        this.imeiMd5_ = "";
        this.bitField0_ &= 0xFDFF;
        this.firstChannel_ = "";
        this.bitField0_ &= 0xFBFF;
        return this;
      }
      
      public final Builder clearChannel()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.channel_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearCurrentChannel()
      {
        this.bitField0_ &= 0xFEFF;
        this.currentChannel_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getCurrentChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.devAppId_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getDevAppId();
        onChanged();
        return this;
      }
      
      public final Builder clearFirstChannel()
      {
        this.bitField0_ &= 0xFBFF;
        this.firstChannel_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getFirstChannel();
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
      
      public final Builder clearImei()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.imei_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getImei();
        onChanged();
        return this;
      }
      
      public final Builder clearImeiMd5()
      {
        this.bitField0_ &= 0xFDFF;
        this.imeiMd5_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getImeiMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearImsi()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.imsi_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getImsi();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkVersion()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.sdkVersion_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getSdkVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearToke()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.toke_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getToke();
        onChanged();
        return this;
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFF7F;
        this.ua_ = LoginProto.GetLoginAppAccountReq.getDefaultInstance().getUa();
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
      
      public final String getCurrentChannel()
      {
        Object localObject = this.currentChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.currentChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCurrentChannelBytes()
      {
        Object localObject = this.currentChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.currentChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final LoginProto.GetLoginAppAccountReq getDefaultInstanceForType()
      {
        return LoginProto.GetLoginAppAccountReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_descriptor;
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
      
      public final String getFirstChannel()
      {
        Object localObject = this.firstChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.firstChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getFirstChannelBytes()
      {
        Object localObject = this.firstChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.firstChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getImei()
      {
        Object localObject = this.imei_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imei_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiBytes()
      {
        Object localObject = this.imei_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imei_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getImsi()
      {
        Object localObject = this.imsi_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imsi_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImsiBytes()
      {
        Object localObject = this.imsi_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imsi_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getToke()
      {
        Object localObject = this.toke_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.toke_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTokeBytes()
      {
        Object localObject = this.toke_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.toke_ = localObject;
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
      
      public final boolean hasChannel()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasCurrentChannel()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasFirstChannel()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasImei()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasImeiMd5()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasImsi()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasSdkVersion()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasToke()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountReq_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.GetLoginAppAccountReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasFuid()) {}
        while ((!hasDevAppId()) || (!hasToke())) {
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
        //   2: getstatic 291	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 297 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 212	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 300	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 212	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;
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
        if ((paramMessage instanceof LoginProto.GetLoginAppAccountReq)) {
          return mergeFrom((LoginProto.GetLoginAppAccountReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.GetLoginAppAccountReq paramGetLoginAppAccountReq)
      {
        if (paramGetLoginAppAccountReq == LoginProto.GetLoginAppAccountReq.getDefaultInstance()) {
          return this;
        }
        if (paramGetLoginAppAccountReq.hasFuid()) {
          setFuid(paramGetLoginAppAccountReq.getFuid());
        }
        if (paramGetLoginAppAccountReq.hasDevAppId())
        {
          this.bitField0_ |= 0x2;
          this.devAppId_ = paramGetLoginAppAccountReq.devAppId_;
          onChanged();
        }
        if (paramGetLoginAppAccountReq.hasToke())
        {
          this.bitField0_ |= 0x4;
          this.toke_ = paramGetLoginAppAccountReq.toke_;
          onChanged();
        }
        if (paramGetLoginAppAccountReq.hasImei())
        {
          this.bitField0_ |= 0x8;
          this.imei_ = paramGetLoginAppAccountReq.imei_;
          onChanged();
        }
        if (paramGetLoginAppAccountReq.hasImsi())
        {
          this.bitField0_ |= 0x10;
          this.imsi_ = paramGetLoginAppAccountReq.imsi_;
          onChanged();
        }
        if (paramGetLoginAppAccountReq.hasSdkVersion())
        {
          this.bitField0_ |= 0x20;
          this.sdkVersion_ = paramGetLoginAppAccountReq.sdkVersion_;
          onChanged();
        }
        if (paramGetLoginAppAccountReq.hasChannel())
        {
          this.bitField0_ |= 0x40;
          this.channel_ = paramGetLoginAppAccountReq.channel_;
          onChanged();
        }
        if (paramGetLoginAppAccountReq.hasUa())
        {
          this.bitField0_ |= 0x80;
          this.ua_ = paramGetLoginAppAccountReq.ua_;
          onChanged();
        }
        if (paramGetLoginAppAccountReq.hasCurrentChannel())
        {
          this.bitField0_ |= 0x100;
          this.currentChannel_ = paramGetLoginAppAccountReq.currentChannel_;
          onChanged();
        }
        if (paramGetLoginAppAccountReq.hasImeiMd5())
        {
          this.bitField0_ |= 0x200;
          this.imeiMd5_ = paramGetLoginAppAccountReq.imeiMd5_;
          onChanged();
        }
        if (paramGetLoginAppAccountReq.hasFirstChannel())
        {
          this.bitField0_ |= 0x400;
          this.firstChannel_ = paramGetLoginAppAccountReq.firstChannel_;
          onChanged();
        }
        mergeUnknownFields(paramGetLoginAppAccountReq.getUnknownFields());
        return this;
      }
      
      public final Builder setChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.channel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.channel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.currentChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.currentChannel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.devAppId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.devAppId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.firstChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.firstChannel_ = paramByteString;
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
      
      public final Builder setImei(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.imeiMd5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.imeiMd5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImsi(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImsiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.sdkVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.sdkVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setToke(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.toke_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTokeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.toke_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface GetLoginAppAccountReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getChannel();
    
    public abstract ByteString getChannelBytes();
    
    public abstract String getCurrentChannel();
    
    public abstract ByteString getCurrentChannelBytes();
    
    public abstract String getDevAppId();
    
    public abstract ByteString getDevAppIdBytes();
    
    public abstract String getFirstChannel();
    
    public abstract ByteString getFirstChannelBytes();
    
    public abstract long getFuid();
    
    public abstract String getImei();
    
    public abstract ByteString getImeiBytes();
    
    public abstract String getImeiMd5();
    
    public abstract ByteString getImeiMd5Bytes();
    
    public abstract String getImsi();
    
    public abstract ByteString getImsiBytes();
    
    public abstract String getSdkVersion();
    
    public abstract ByteString getSdkVersionBytes();
    
    public abstract String getToke();
    
    public abstract ByteString getTokeBytes();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract boolean hasChannel();
    
    public abstract boolean hasCurrentChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasFirstChannel();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasImei();
    
    public abstract boolean hasImeiMd5();
    
    public abstract boolean hasImsi();
    
    public abstract boolean hasSdkVersion();
    
    public abstract boolean hasToke();
    
    public abstract boolean hasUa();
  }
  
  public static final class GetLoginAppAccountRsp
    extends GeneratedMessage
    implements LoginProto.GetLoginAppAccountRspOrBuilder
  {
    public static final int APPACCOUNTID_FIELD_NUMBER = 2;
    public static final int LASTLOGINTIME_FIELD_NUMBER = 5;
    public static final int NICKNAME_FIELD_NUMBER = 3;
    public static Parser<GetLoginAppAccountRsp> PARSER = new w();
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int SESSION_FIELD_NUMBER = 4;
    private static final GetLoginAppAccountRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private long appAccountId_;
    private int bitField0_;
    private long lastLoginTime_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object nickName_;
    private int retCode_;
    private Object session_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetLoginAppAccountRsp localGetLoginAppAccountRsp = new GetLoginAppAccountRsp(true);
      defaultInstance = localGetLoginAppAccountRsp;
      localGetLoginAppAccountRsp.initFields();
    }
    
    /* Error */
    private GetLoginAppAccountRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 68	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 70	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 72	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 61	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:initFields	()V
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
      //   37: lookupswitch	default:+246->283, 0:+249->286, 8:+77->114, 16:+121->158, 26:+159->196, 34:+184->221, 40:+210->247
      //   96: aload_0
      //   97: aload_1
      //   98: aload 5
      //   100: aload_2
      //   101: iload 4
      //   103: invokevirtual 88	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   106: ifne -81 -> 25
      //   109: iconst_1
      //   110: istore_3
      //   111: goto -86 -> 25
      //   114: aload_0
      //   115: aload_0
      //   116: getfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   119: iconst_1
      //   120: ior
      //   121: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   124: aload_0
      //   125: aload_1
      //   126: invokevirtual 93	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   129: putfield 95	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:retCode_	I
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
      //   149: putfield 107	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   152: aload_0
      //   153: invokevirtual 110	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:makeExtensionsImmutable	()V
      //   156: aload_1
      //   157: athrow
      //   158: aload_0
      //   159: aload_0
      //   160: getfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   163: iconst_2
      //   164: ior
      //   165: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   168: aload_0
      //   169: aload_1
      //   170: invokevirtual 114	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   173: putfield 116	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:appAccountId_	J
      //   176: goto -151 -> 25
      //   179: astore_1
      //   180: new 65	com/google/protobuf/InvalidProtocolBufferException
      //   183: dup
      //   184: aload_1
      //   185: invokevirtual 120	java/io/IOException:getMessage	()Ljava/lang/String;
      //   188: invokespecial 123	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   191: aload_0
      //   192: invokevirtual 99	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   195: athrow
      //   196: aload_1
      //   197: invokevirtual 127	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   200: astore 6
      //   202: aload_0
      //   203: aload_0
      //   204: getfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   207: iconst_4
      //   208: ior
      //   209: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   212: aload_0
      //   213: aload 6
      //   215: putfield 129	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:nickName_	Ljava/lang/Object;
      //   218: goto -193 -> 25
      //   221: aload_1
      //   222: invokevirtual 127	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   225: astore 6
      //   227: aload_0
      //   228: aload_0
      //   229: getfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   232: bipush 8
      //   234: ior
      //   235: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   238: aload_0
      //   239: aload 6
      //   241: putfield 131	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:session_	Ljava/lang/Object;
      //   244: goto -219 -> 25
      //   247: aload_0
      //   248: aload_0
      //   249: getfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   252: bipush 16
      //   254: ior
      //   255: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:bitField0_	I
      //   258: aload_0
      //   259: aload_1
      //   260: invokevirtual 114	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   263: putfield 133	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:lastLoginTime_	J
      //   266: goto -241 -> 25
      //   269: aload_0
      //   270: aload 5
      //   272: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   275: putfield 107	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   278: aload_0
      //   279: invokevirtual 110	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:makeExtensionsImmutable	()V
      //   282: return
      //   283: goto -187 -> 96
      //   286: iconst_1
      //   287: istore_3
      //   288: goto -263 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	291	0	this	GetLoginAppAccountRsp
      //   0	291	1	paramCodedInputStream	CodedInputStream
      //   0	291	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	264	3	i	int
      //   33	69	4	j	int
      //   21	250	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   200	40	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	135	com/google/protobuf/InvalidProtocolBufferException
      //   96	109	135	com/google/protobuf/InvalidProtocolBufferException
      //   114	132	135	com/google/protobuf/InvalidProtocolBufferException
      //   158	176	135	com/google/protobuf/InvalidProtocolBufferException
      //   196	218	135	com/google/protobuf/InvalidProtocolBufferException
      //   221	244	135	com/google/protobuf/InvalidProtocolBufferException
      //   247	266	135	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	142	finally
      //   96	109	142	finally
      //   114	132	142	finally
      //   136	142	142	finally
      //   158	176	142	finally
      //   180	196	142	finally
      //   196	218	142	finally
      //   221	244	142	finally
      //   247	266	142	finally
      //   29	35	179	java/io/IOException
      //   96	109	179	java/io/IOException
      //   114	132	179	java/io/IOException
      //   158	176	179	java/io/IOException
      //   196	218	179	java/io/IOException
      //   221	244	179	java/io/IOException
      //   247	266	179	java/io/IOException
    }
    
    private GetLoginAppAccountRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetLoginAppAccountRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetLoginAppAccountRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.appAccountId_ = 0L;
      this.nickName_ = "";
      this.session_ = "";
      this.lastLoginTime_ = 0L;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$3400();
    }
    
    public static Builder newBuilder(GetLoginAppAccountRsp paramGetLoginAppAccountRsp)
    {
      return newBuilder().mergeFrom(paramGetLoginAppAccountRsp);
    }
    
    public static GetLoginAppAccountRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetLoginAppAccountRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetLoginAppAccountRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetLoginAppAccountRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetLoginAppAccountRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetLoginAppAccountRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static GetLoginAppAccountRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetLoginAppAccountRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetLoginAppAccountRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetLoginAppAccountRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetLoginAppAccountRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetLoginAppAccountRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetLoginAppAccountRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetLoginAppAccountRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetLoginAppAccountRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetLoginAppAccountRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetLoginAppAccountRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetLoginAppAccountRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetLoginAppAccountRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetLoginAppAccountRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final long getAppAccountId()
    {
      return this.appAccountId_;
    }
    
    public final GetLoginAppAccountRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final long getLastLoginTime()
    {
      return this.lastLoginTime_;
    }
    
    public final String getNickName()
    {
      Object localObject = this.nickName_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.nickName_ = str;
      }
      return str;
    }
    
    public final ByteString getNickNameBytes()
    {
      Object localObject = this.nickName_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.nickName_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<GetLoginAppAccountRsp> getParserForType()
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
        i = j + CodedOutputStream.computeUInt64Size(2, this.appAccountId_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getNickNameBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getSessionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeUInt64Size(5, this.lastLoginTime_);
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
    
    public final boolean hasAppAccountId()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasLastLoginTime()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasNickName()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasSession()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(GetLoginAppAccountRsp.class, Builder.class);
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
        paramCodedOutputStream.writeUInt64(2, this.appAccountId_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getNickNameBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getSessionBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeUInt64(5, this.lastLoginTime_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.GetLoginAppAccountRspOrBuilder
    {
      private long appAccountId_;
      private int bitField0_;
      private long lastLoginTime_;
      private Object nickName_ = "";
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
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.GetLoginAppAccountRsp build()
      {
        LoginProto.GetLoginAppAccountRsp localGetLoginAppAccountRsp = buildPartial();
        if (!localGetLoginAppAccountRsp.isInitialized()) {
          throw newUninitializedMessageException(localGetLoginAppAccountRsp);
        }
        return localGetLoginAppAccountRsp;
      }
      
      public final LoginProto.GetLoginAppAccountRsp buildPartial()
      {
        int j = 1;
        LoginProto.GetLoginAppAccountRsp localGetLoginAppAccountRsp = new LoginProto.GetLoginAppAccountRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.GetLoginAppAccountRsp.access$3802(localGetLoginAppAccountRsp, this.retCode_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.GetLoginAppAccountRsp.access$3902(localGetLoginAppAccountRsp, this.appAccountId_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.GetLoginAppAccountRsp.access$4002(localGetLoginAppAccountRsp, this.nickName_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.GetLoginAppAccountRsp.access$4102(localGetLoginAppAccountRsp, this.session_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.GetLoginAppAccountRsp.access$4202(localGetLoginAppAccountRsp, this.lastLoginTime_);
          LoginProto.GetLoginAppAccountRsp.access$4302(localGetLoginAppAccountRsp, j);
          onBuilt();
          return localGetLoginAppAccountRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.appAccountId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFD;
        this.nickName_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.session_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.lastLoginTime_ = 0L;
        this.bitField0_ &= 0xFFFFFFEF;
        return this;
      }
      
      public final Builder clearAppAccountId()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.appAccountId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearLastLoginTime()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.lastLoginTime_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearNickName()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.nickName_ = LoginProto.GetLoginAppAccountRsp.getDefaultInstance().getNickName();
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
        this.bitField0_ &= 0xFFFFFFF7;
        this.session_ = LoginProto.GetLoginAppAccountRsp.getDefaultInstance().getSession();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final long getAppAccountId()
      {
        return this.appAccountId_;
      }
      
      public final LoginProto.GetLoginAppAccountRsp getDefaultInstanceForType()
      {
        return LoginProto.GetLoginAppAccountRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_descriptor;
      }
      
      public final long getLastLoginTime()
      {
        return this.lastLoginTime_;
      }
      
      public final String getNickName()
      {
        Object localObject = this.nickName_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.nickName_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNickNameBytes()
      {
        Object localObject = this.nickName_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.nickName_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final boolean hasAppAccountId()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasLastLoginTime()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasNickName()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasSession()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetLoginAppAccountRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.GetLoginAppAccountRsp.class, Builder.class);
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
        //   2: getstatic 210	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 216 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 146	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 219	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 146	org/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp$Builder;
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
        if ((paramMessage instanceof LoginProto.GetLoginAppAccountRsp)) {
          return mergeFrom((LoginProto.GetLoginAppAccountRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.GetLoginAppAccountRsp paramGetLoginAppAccountRsp)
      {
        if (paramGetLoginAppAccountRsp == LoginProto.GetLoginAppAccountRsp.getDefaultInstance()) {
          return this;
        }
        if (paramGetLoginAppAccountRsp.hasRetCode()) {
          setRetCode(paramGetLoginAppAccountRsp.getRetCode());
        }
        if (paramGetLoginAppAccountRsp.hasAppAccountId()) {
          setAppAccountId(paramGetLoginAppAccountRsp.getAppAccountId());
        }
        if (paramGetLoginAppAccountRsp.hasNickName())
        {
          this.bitField0_ |= 0x4;
          this.nickName_ = paramGetLoginAppAccountRsp.nickName_;
          onChanged();
        }
        if (paramGetLoginAppAccountRsp.hasSession())
        {
          this.bitField0_ |= 0x8;
          this.session_ = paramGetLoginAppAccountRsp.session_;
          onChanged();
        }
        if (paramGetLoginAppAccountRsp.hasLastLoginTime()) {
          setLastLoginTime(paramGetLoginAppAccountRsp.getLastLoginTime());
        }
        mergeUnknownFields(paramGetLoginAppAccountRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setAppAccountId(long paramLong)
      {
        this.bitField0_ |= 0x2;
        this.appAccountId_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setLastLoginTime(long paramLong)
      {
        this.bitField0_ |= 0x10;
        this.lastLoginTime_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setNickName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.nickName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNickNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.nickName_ = paramByteString;
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
        this.bitField0_ |= 0x8;
        this.session_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSessionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.session_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface GetLoginAppAccountRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract long getAppAccountId();
    
    public abstract long getLastLoginTime();
    
    public abstract String getNickName();
    
    public abstract ByteString getNickNameBytes();
    
    public abstract int getRetCode();
    
    public abstract String getSession();
    
    public abstract ByteString getSessionBytes();
    
    public abstract boolean hasAppAccountId();
    
    public abstract boolean hasLastLoginTime();
    
    public abstract boolean hasNickName();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasSession();
  }
  
  public static final class GetSdkConfigReq
    extends GeneratedMessage
    implements LoginProto.GetSdkConfigReqOrBuilder
  {
    public static final int CHANNEL_FIELD_NUMBER = 2;
    public static final int DEVAPPID_FIELD_NUMBER = 1;
    public static final int IMEI_FIELD_NUMBER = 3;
    public static final int IMSI_FIELD_NUMBER = 4;
    public static Parser<GetSdkConfigReq> PARSER = new x();
    public static final int SDKVERSION_FIELD_NUMBER = 5;
    public static final int UA_FIELD_NUMBER = 6;
    private static final GetSdkConfigReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object channel_;
    private Object devAppId_;
    private Object imei_;
    private Object imsi_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sdkVersion_;
    private Object ua_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetSdkConfigReq localGetSdkConfigReq = new GetSdkConfigReq(true);
      defaultInstance = localGetSdkConfigReq;
      localGetSdkConfigReq.initFields();
    }
    
    /* Error */
    private GetSdkConfigReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 71	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 73	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 75	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 64	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:initFields	()V
      //   18: invokestatic 81	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +289 -> 315
      //   29: aload_1
      //   30: invokevirtual 87	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+292->329, 0:+295->332, 10:+85->122, 18:+133->170, 26:+175->212, 34:+200->237, 42:+226->263, 50:+252->289
      //   104: aload_0
      //   105: aload_1
      //   106: aload 5
      //   108: aload_2
      //   109: iload 4
      //   111: invokevirtual 91	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   114: ifne -89 -> 25
      //   117: iconst_1
      //   118: istore_3
      //   119: goto -94 -> 25
      //   122: aload_1
      //   123: invokevirtual 95	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   126: astore 6
      //   128: aload_0
      //   129: aload_0
      //   130: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   133: iconst_1
      //   134: ior
      //   135: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   138: aload_0
      //   139: aload 6
      //   141: putfield 99	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:devAppId_	Ljava/lang/Object;
      //   144: goto -119 -> 25
      //   147: astore_1
      //   148: aload_1
      //   149: aload_0
      //   150: invokevirtual 103	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   153: athrow
      //   154: astore_1
      //   155: aload_0
      //   156: aload 5
      //   158: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   161: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   164: aload_0
      //   165: invokevirtual 114	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:makeExtensionsImmutable	()V
      //   168: aload_1
      //   169: athrow
      //   170: aload_1
      //   171: invokevirtual 95	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   174: astore 6
      //   176: aload_0
      //   177: aload_0
      //   178: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   181: iconst_2
      //   182: ior
      //   183: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   186: aload_0
      //   187: aload 6
      //   189: putfield 116	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:channel_	Ljava/lang/Object;
      //   192: goto -167 -> 25
      //   195: astore_1
      //   196: new 68	com/google/protobuf/InvalidProtocolBufferException
      //   199: dup
      //   200: aload_1
      //   201: invokevirtual 120	java/io/IOException:getMessage	()Ljava/lang/String;
      //   204: invokespecial 123	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   207: aload_0
      //   208: invokevirtual 103	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   211: athrow
      //   212: aload_1
      //   213: invokevirtual 95	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   216: astore 6
      //   218: aload_0
      //   219: aload_0
      //   220: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   223: iconst_4
      //   224: ior
      //   225: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   228: aload_0
      //   229: aload 6
      //   231: putfield 125	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:imei_	Ljava/lang/Object;
      //   234: goto -209 -> 25
      //   237: aload_1
      //   238: invokevirtual 95	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   241: astore 6
      //   243: aload_0
      //   244: aload_0
      //   245: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   248: bipush 8
      //   250: ior
      //   251: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   254: aload_0
      //   255: aload 6
      //   257: putfield 127	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:imsi_	Ljava/lang/Object;
      //   260: goto -235 -> 25
      //   263: aload_1
      //   264: invokevirtual 95	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   267: astore 6
      //   269: aload_0
      //   270: aload_0
      //   271: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   274: bipush 16
      //   276: ior
      //   277: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   280: aload_0
      //   281: aload 6
      //   283: putfield 129	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:sdkVersion_	Ljava/lang/Object;
      //   286: goto -261 -> 25
      //   289: aload_1
      //   290: invokevirtual 95	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   293: astore 6
      //   295: aload_0
      //   296: aload_0
      //   297: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   300: bipush 32
      //   302: ior
      //   303: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:bitField0_	I
      //   306: aload_0
      //   307: aload 6
      //   309: putfield 131	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:ua_	Ljava/lang/Object;
      //   312: goto -287 -> 25
      //   315: aload_0
      //   316: aload 5
      //   318: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   321: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   324: aload_0
      //   325: invokevirtual 114	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:makeExtensionsImmutable	()V
      //   328: return
      //   329: goto -225 -> 104
      //   332: iconst_1
      //   333: istore_3
      //   334: goto -309 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	337	0	this	GetSdkConfigReq
      //   0	337	1	paramCodedInputStream	CodedInputStream
      //   0	337	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	310	3	i	int
      //   33	77	4	j	int
      //   21	296	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   126	182	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	147	com/google/protobuf/InvalidProtocolBufferException
      //   104	117	147	com/google/protobuf/InvalidProtocolBufferException
      //   122	144	147	com/google/protobuf/InvalidProtocolBufferException
      //   170	192	147	com/google/protobuf/InvalidProtocolBufferException
      //   212	234	147	com/google/protobuf/InvalidProtocolBufferException
      //   237	260	147	com/google/protobuf/InvalidProtocolBufferException
      //   263	286	147	com/google/protobuf/InvalidProtocolBufferException
      //   289	312	147	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	154	finally
      //   104	117	154	finally
      //   122	144	154	finally
      //   148	154	154	finally
      //   170	192	154	finally
      //   196	212	154	finally
      //   212	234	154	finally
      //   237	260	154	finally
      //   263	286	154	finally
      //   289	312	154	finally
      //   29	35	195	java/io/IOException
      //   104	117	195	java/io/IOException
      //   122	144	195	java/io/IOException
      //   170	192	195	java/io/IOException
      //   212	234	195	java/io/IOException
      //   237	260	195	java/io/IOException
      //   263	286	195	java/io/IOException
      //   289	312	195	java/io/IOException
    }
    
    private GetSdkConfigReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetSdkConfigReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetSdkConfigReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_descriptor;
    }
    
    private void initFields()
    {
      this.devAppId_ = "";
      this.channel_ = "";
      this.imei_ = "";
      this.imsi_ = "";
      this.sdkVersion_ = "";
      this.ua_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$19800();
    }
    
    public static Builder newBuilder(GetSdkConfigReq paramGetSdkConfigReq)
    {
      return newBuilder().mergeFrom(paramGetSdkConfigReq);
    }
    
    public static GetSdkConfigReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetSdkConfigReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetSdkConfigReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSdkConfigReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSdkConfigReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetSdkConfigReq)PARSER.parseFrom(paramByteString);
    }
    
    public static GetSdkConfigReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetSdkConfigReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetSdkConfigReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetSdkConfigReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetSdkConfigReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSdkConfigReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSdkConfigReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetSdkConfigReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetSdkConfigReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSdkConfigReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSdkConfigReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetSdkConfigReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetSdkConfigReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetSdkConfigReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
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
    
    public final GetSdkConfigReq getDefaultInstanceForType()
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
    
    public final String getImei()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imei_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiBytes()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imei_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getImsi()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imsi_ = str;
      }
      return str;
    }
    
    public final ByteString getImsiBytes()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imsi_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<GetSdkConfigReq> getParserForType()
    {
      return PARSER;
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
        j = CodedOutputStream.computeBytesSize(1, getDevAppIdBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getChannelBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getImeiBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getImsiBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getSdkVersionBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getUaBytes());
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
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasChannel()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasImei()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasImsi()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasSdkVersion()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_fieldAccessorTable.ensureFieldAccessorsInitialized(GetSdkConfigReq.class, Builder.class);
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
      if (!hasChannel())
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
        paramCodedOutputStream.writeBytes(1, getDevAppIdBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getChannelBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getImeiBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getImsiBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getSdkVersionBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getUaBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.GetSdkConfigReqOrBuilder
    {
      private int bitField0_;
      private Object channel_ = "";
      private Object devAppId_ = "";
      private Object imei_ = "";
      private Object imsi_ = "";
      private Object sdkVersion_ = "";
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
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.GetSdkConfigReq build()
      {
        LoginProto.GetSdkConfigReq localGetSdkConfigReq = buildPartial();
        if (!localGetSdkConfigReq.isInitialized()) {
          throw newUninitializedMessageException(localGetSdkConfigReq);
        }
        return localGetSdkConfigReq;
      }
      
      public final LoginProto.GetSdkConfigReq buildPartial()
      {
        int j = 1;
        LoginProto.GetSdkConfigReq localGetSdkConfigReq = new LoginProto.GetSdkConfigReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.GetSdkConfigReq.access$20202(localGetSdkConfigReq, this.devAppId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.GetSdkConfigReq.access$20302(localGetSdkConfigReq, this.channel_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.GetSdkConfigReq.access$20402(localGetSdkConfigReq, this.imei_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.GetSdkConfigReq.access$20502(localGetSdkConfigReq, this.imsi_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.GetSdkConfigReq.access$20602(localGetSdkConfigReq, this.sdkVersion_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.GetSdkConfigReq.access$20702(localGetSdkConfigReq, this.ua_);
          LoginProto.GetSdkConfigReq.access$20802(localGetSdkConfigReq, i);
          onBuilt();
          return localGetSdkConfigReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.devAppId_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.channel_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.imei_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.imsi_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.sdkVersion_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.ua_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        return this;
      }
      
      public final Builder clearChannel()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.channel_ = LoginProto.GetSdkConfigReq.getDefaultInstance().getChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.devAppId_ = LoginProto.GetSdkConfigReq.getDefaultInstance().getDevAppId();
        onChanged();
        return this;
      }
      
      public final Builder clearImei()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.imei_ = LoginProto.GetSdkConfigReq.getDefaultInstance().getImei();
        onChanged();
        return this;
      }
      
      public final Builder clearImsi()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.imsi_ = LoginProto.GetSdkConfigReq.getDefaultInstance().getImsi();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkVersion()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.sdkVersion_ = LoginProto.GetSdkConfigReq.getDefaultInstance().getSdkVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.ua_ = LoginProto.GetSdkConfigReq.getDefaultInstance().getUa();
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
      
      public final LoginProto.GetSdkConfigReq getDefaultInstanceForType()
      {
        return LoginProto.GetSdkConfigReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_descriptor;
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
      
      public final String getImei()
      {
        Object localObject = this.imei_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imei_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiBytes()
      {
        Object localObject = this.imei_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imei_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getImsi()
      {
        Object localObject = this.imsi_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imsi_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImsiBytes()
      {
        Object localObject = this.imsi_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imsi_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final boolean hasChannel()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasImei()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasImsi()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasSdkVersion()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigReq_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.GetSdkConfigReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasDevAppId()) {}
        while (!hasChannel()) {
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
        //   2: getstatic 229	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 235 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 163	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 238	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 163	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;
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
        if ((paramMessage instanceof LoginProto.GetSdkConfigReq)) {
          return mergeFrom((LoginProto.GetSdkConfigReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.GetSdkConfigReq paramGetSdkConfigReq)
      {
        if (paramGetSdkConfigReq == LoginProto.GetSdkConfigReq.getDefaultInstance()) {
          return this;
        }
        if (paramGetSdkConfigReq.hasDevAppId())
        {
          this.bitField0_ |= 0x1;
          this.devAppId_ = paramGetSdkConfigReq.devAppId_;
          onChanged();
        }
        if (paramGetSdkConfigReq.hasChannel())
        {
          this.bitField0_ |= 0x2;
          this.channel_ = paramGetSdkConfigReq.channel_;
          onChanged();
        }
        if (paramGetSdkConfigReq.hasImei())
        {
          this.bitField0_ |= 0x4;
          this.imei_ = paramGetSdkConfigReq.imei_;
          onChanged();
        }
        if (paramGetSdkConfigReq.hasImsi())
        {
          this.bitField0_ |= 0x8;
          this.imsi_ = paramGetSdkConfigReq.imsi_;
          onChanged();
        }
        if (paramGetSdkConfigReq.hasSdkVersion())
        {
          this.bitField0_ |= 0x10;
          this.sdkVersion_ = paramGetSdkConfigReq.sdkVersion_;
          onChanged();
        }
        if (paramGetSdkConfigReq.hasUa())
        {
          this.bitField0_ |= 0x20;
          this.ua_ = paramGetSdkConfigReq.ua_;
          onChanged();
        }
        mergeUnknownFields(paramGetSdkConfigReq.getUnknownFields());
        return this;
      }
      
      public final Builder setChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.channel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.channel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.devAppId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.devAppId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImei(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.imei_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.imei_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImsi(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imsi_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImsiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imsi_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.sdkVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.sdkVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface GetSdkConfigReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getChannel();
    
    public abstract ByteString getChannelBytes();
    
    public abstract String getDevAppId();
    
    public abstract ByteString getDevAppIdBytes();
    
    public abstract String getImei();
    
    public abstract ByteString getImeiBytes();
    
    public abstract String getImsi();
    
    public abstract ByteString getImsiBytes();
    
    public abstract String getSdkVersion();
    
    public abstract ByteString getSdkVersionBytes();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract boolean hasChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasImei();
    
    public abstract boolean hasImsi();
    
    public abstract boolean hasSdkVersion();
    
    public abstract boolean hasUa();
  }
  
  public static final class GetSdkConfigRsp
    extends GeneratedMessage
    implements LoginProto.GetSdkConfigRspOrBuilder
  {
    public static final int GAMECONFIG_FIELD_NUMBER = 2;
    public static final int LOGINTYPE_FIELD_NUMBER = 3;
    public static Parser<GetSdkConfigRsp> PARSER = new y();
    public static final int PAYTYPE_FIELD_NUMBER = 4;
    public static final int RETCODE_FIELD_NUMBER = 1;
    private static final GetSdkConfigRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int gameConfig_;
    private LazyStringList loginType_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private LazyStringList payType_;
    private int retCode_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetSdkConfigRsp localGetSdkConfigRsp = new GetSdkConfigRsp(true);
      defaultInstance = localGetSdkConfigRsp;
      localGetSdkConfigRsp.initFields();
    }
    
    /* Error */
    private GetSdkConfigRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 65	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 67	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 69	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 58	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:initFields	()V
      //   18: invokestatic 75	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 9
      //   23: iconst_0
      //   24: istore 5
      //   26: iconst_0
      //   27: istore_3
      //   28: iload 5
      //   30: ifne +425 -> 455
      //   33: iload_3
      //   34: istore 6
      //   36: iload_3
      //   37: istore 7
      //   39: iload_3
      //   40: istore 8
      //   42: aload_1
      //   43: invokevirtual 81	com/google/protobuf/CodedInputStream:readTag	()I
      //   46: istore 4
      //   48: iload 4
      //   50: lookupswitch	default:+472->522, 0:+475->525, 8:+78->128, 16:+190->240, 26:+252->302, 34:+315->365
      //   100: iload_3
      //   101: istore 6
      //   103: iload_3
      //   104: istore 7
      //   106: iload_3
      //   107: istore 8
      //   109: aload_0
      //   110: aload_1
      //   111: aload 9
      //   113: aload_2
      //   114: iload 4
      //   116: invokevirtual 85	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   119: ifne -91 -> 28
      //   122: iconst_1
      //   123: istore 5
      //   125: goto -97 -> 28
      //   128: iload_3
      //   129: istore 6
      //   131: iload_3
      //   132: istore 7
      //   134: iload_3
      //   135: istore 8
      //   137: aload_0
      //   138: aload_0
      //   139: getfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:bitField0_	I
      //   142: iconst_1
      //   143: ior
      //   144: putfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:bitField0_	I
      //   147: iload_3
      //   148: istore 6
      //   150: iload_3
      //   151: istore 7
      //   153: iload_3
      //   154: istore 8
      //   156: aload_0
      //   157: aload_1
      //   158: invokevirtual 90	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   161: putfield 92	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:retCode_	I
      //   164: goto -136 -> 28
      //   167: astore_1
      //   168: iload 6
      //   170: istore_3
      //   171: iload_3
      //   172: istore 4
      //   174: aload_1
      //   175: aload_0
      //   176: invokevirtual 96	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   179: athrow
      //   180: astore_1
      //   181: iload 4
      //   183: iconst_4
      //   184: iand
      //   185: iconst_4
      //   186: if_icmpne +16 -> 202
      //   189: aload_0
      //   190: aload_0
      //   191: getfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:loginType_	Lcom/google/protobuf/LazyStringList;
      //   194: invokeinterface 104 1 0
      //   199: putfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:loginType_	Lcom/google/protobuf/LazyStringList;
      //   202: iload 4
      //   204: bipush 8
      //   206: iand
      //   207: bipush 8
      //   209: if_icmpne +16 -> 225
      //   212: aload_0
      //   213: aload_0
      //   214: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:payType_	Lcom/google/protobuf/LazyStringList;
      //   217: invokeinterface 104 1 0
      //   222: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:payType_	Lcom/google/protobuf/LazyStringList;
      //   225: aload_0
      //   226: aload 9
      //   228: invokevirtual 112	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   231: putfield 114	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   234: aload_0
      //   235: invokevirtual 117	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:makeExtensionsImmutable	()V
      //   238: aload_1
      //   239: athrow
      //   240: iload_3
      //   241: istore 6
      //   243: iload_3
      //   244: istore 7
      //   246: iload_3
      //   247: istore 8
      //   249: aload_0
      //   250: aload_0
      //   251: getfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:bitField0_	I
      //   254: iconst_2
      //   255: ior
      //   256: putfield 87	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:bitField0_	I
      //   259: iload_3
      //   260: istore 6
      //   262: iload_3
      //   263: istore 7
      //   265: iload_3
      //   266: istore 8
      //   268: aload_0
      //   269: aload_1
      //   270: invokevirtual 90	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   273: putfield 119	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:gameConfig_	I
      //   276: goto -248 -> 28
      //   279: astore_1
      //   280: iload 7
      //   282: istore_3
      //   283: iload_3
      //   284: istore 4
      //   286: new 62	com/google/protobuf/InvalidProtocolBufferException
      //   289: dup
      //   290: aload_1
      //   291: invokevirtual 123	java/io/IOException:getMessage	()Ljava/lang/String;
      //   294: invokespecial 126	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   297: aload_0
      //   298: invokevirtual 96	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   301: athrow
      //   302: iload_3
      //   303: istore 6
      //   305: iload_3
      //   306: istore 7
      //   308: iload_3
      //   309: istore 8
      //   311: aload_1
      //   312: invokevirtual 130	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   315: astore 10
      //   317: iload_3
      //   318: iconst_4
      //   319: iand
      //   320: iconst_4
      //   321: if_icmpeq +198 -> 519
      //   324: iload_3
      //   325: istore 6
      //   327: iload_3
      //   328: istore 7
      //   330: iload_3
      //   331: istore 8
      //   333: aload_0
      //   334: new 132	com/google/protobuf/LazyStringArrayList
      //   337: dup
      //   338: invokespecial 133	com/google/protobuf/LazyStringArrayList:<init>	()V
      //   341: putfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:loginType_	Lcom/google/protobuf/LazyStringList;
      //   344: iload_3
      //   345: iconst_4
      //   346: ior
      //   347: istore_3
      //   348: iload_3
      //   349: istore 4
      //   351: aload_0
      //   352: getfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:loginType_	Lcom/google/protobuf/LazyStringList;
      //   355: aload 10
      //   357: invokeinterface 137 2 0
      //   362: goto -334 -> 28
      //   365: iload_3
      //   366: istore 6
      //   368: iload_3
      //   369: istore 7
      //   371: iload_3
      //   372: istore 8
      //   374: aload_1
      //   375: invokevirtual 130	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   378: astore 10
      //   380: iload_3
      //   381: istore 4
      //   383: iload_3
      //   384: bipush 8
      //   386: iand
      //   387: bipush 8
      //   389: if_icmpeq +29 -> 418
      //   392: iload_3
      //   393: istore 6
      //   395: iload_3
      //   396: istore 7
      //   398: iload_3
      //   399: istore 8
      //   401: aload_0
      //   402: new 132	com/google/protobuf/LazyStringArrayList
      //   405: dup
      //   406: invokespecial 133	com/google/protobuf/LazyStringArrayList:<init>	()V
      //   409: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:payType_	Lcom/google/protobuf/LazyStringList;
      //   412: iload_3
      //   413: bipush 8
      //   415: ior
      //   416: istore 4
      //   418: iload 4
      //   420: istore 6
      //   422: iload 4
      //   424: istore 7
      //   426: iload 4
      //   428: istore 8
      //   430: aload_0
      //   431: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:payType_	Lcom/google/protobuf/LazyStringList;
      //   434: aload 10
      //   436: invokeinterface 137 2 0
      //   441: iload 4
      //   443: istore_3
      //   444: goto -416 -> 28
      //   447: astore_1
      //   448: iload 8
      //   450: istore 4
      //   452: goto -271 -> 181
      //   455: iload_3
      //   456: iconst_4
      //   457: iand
      //   458: iconst_4
      //   459: if_icmpne +16 -> 475
      //   462: aload_0
      //   463: aload_0
      //   464: getfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:loginType_	Lcom/google/protobuf/LazyStringList;
      //   467: invokeinterface 104 1 0
      //   472: putfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:loginType_	Lcom/google/protobuf/LazyStringList;
      //   475: iload_3
      //   476: bipush 8
      //   478: iand
      //   479: bipush 8
      //   481: if_icmpne +16 -> 497
      //   484: aload_0
      //   485: aload_0
      //   486: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:payType_	Lcom/google/protobuf/LazyStringList;
      //   489: invokeinterface 104 1 0
      //   494: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:payType_	Lcom/google/protobuf/LazyStringList;
      //   497: aload_0
      //   498: aload 9
      //   500: invokevirtual 112	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   503: putfield 114	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   506: aload_0
      //   507: invokevirtual 117	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:makeExtensionsImmutable	()V
      //   510: return
      //   511: astore_1
      //   512: goto -229 -> 283
      //   515: astore_1
      //   516: goto -345 -> 171
      //   519: goto -171 -> 348
      //   522: goto -422 -> 100
      //   525: iconst_1
      //   526: istore 5
      //   528: goto -500 -> 28
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	531	0	this	GetSdkConfigRsp
      //   0	531	1	paramCodedInputStream	CodedInputStream
      //   0	531	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   27	452	3	i	int
      //   46	405	4	j	int
      //   24	503	5	k	int
      //   34	387	6	m	int
      //   37	388	7	n	int
      //   40	409	8	i1	int
      //   21	478	9	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   315	120	10	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   42	48	167	com/google/protobuf/InvalidProtocolBufferException
      //   109	122	167	com/google/protobuf/InvalidProtocolBufferException
      //   137	147	167	com/google/protobuf/InvalidProtocolBufferException
      //   156	164	167	com/google/protobuf/InvalidProtocolBufferException
      //   249	259	167	com/google/protobuf/InvalidProtocolBufferException
      //   268	276	167	com/google/protobuf/InvalidProtocolBufferException
      //   311	317	167	com/google/protobuf/InvalidProtocolBufferException
      //   333	344	167	com/google/protobuf/InvalidProtocolBufferException
      //   374	380	167	com/google/protobuf/InvalidProtocolBufferException
      //   401	412	167	com/google/protobuf/InvalidProtocolBufferException
      //   430	441	167	com/google/protobuf/InvalidProtocolBufferException
      //   174	180	180	finally
      //   286	302	180	finally
      //   351	362	180	finally
      //   42	48	279	java/io/IOException
      //   109	122	279	java/io/IOException
      //   137	147	279	java/io/IOException
      //   156	164	279	java/io/IOException
      //   249	259	279	java/io/IOException
      //   268	276	279	java/io/IOException
      //   311	317	279	java/io/IOException
      //   333	344	279	java/io/IOException
      //   374	380	279	java/io/IOException
      //   401	412	279	java/io/IOException
      //   430	441	279	java/io/IOException
      //   42	48	447	finally
      //   109	122	447	finally
      //   137	147	447	finally
      //   156	164	447	finally
      //   249	259	447	finally
      //   268	276	447	finally
      //   311	317	447	finally
      //   333	344	447	finally
      //   374	380	447	finally
      //   401	412	447	finally
      //   430	441	447	finally
      //   351	362	511	java/io/IOException
      //   351	362	515	com/google/protobuf/InvalidProtocolBufferException
    }
    
    private GetSdkConfigRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetSdkConfigRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetSdkConfigRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.gameConfig_ = 0;
      this.loginType_ = LazyStringArrayList.EMPTY;
      this.payType_ = LazyStringArrayList.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$21200();
    }
    
    public static Builder newBuilder(GetSdkConfigRsp paramGetSdkConfigRsp)
    {
      return newBuilder().mergeFrom(paramGetSdkConfigRsp);
    }
    
    public static GetSdkConfigRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetSdkConfigRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetSdkConfigRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSdkConfigRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSdkConfigRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetSdkConfigRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static GetSdkConfigRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetSdkConfigRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetSdkConfigRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetSdkConfigRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetSdkConfigRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSdkConfigRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSdkConfigRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetSdkConfigRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetSdkConfigRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetSdkConfigRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetSdkConfigRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetSdkConfigRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetSdkConfigRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetSdkConfigRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final GetSdkConfigRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final int getGameConfig()
    {
      return this.gameConfig_;
    }
    
    public final String getLoginType(int paramInt)
    {
      return (String)this.loginType_.get(paramInt);
    }
    
    public final ByteString getLoginTypeBytes(int paramInt)
    {
      return this.loginType_.getByteString(paramInt);
    }
    
    public final int getLoginTypeCount()
    {
      return this.loginType_.size();
    }
    
    public final ProtocolStringList getLoginTypeList()
    {
      return this.loginType_;
    }
    
    public final Parser<GetSdkConfigRsp> getParserForType()
    {
      return PARSER;
    }
    
    public final String getPayType(int paramInt)
    {
      return (String)this.payType_.get(paramInt);
    }
    
    public final ByteString getPayTypeBytes(int paramInt)
    {
      return this.payType_.getByteString(paramInt);
    }
    
    public final int getPayTypeCount()
    {
      return this.payType_.size();
    }
    
    public final ProtocolStringList getPayTypeList()
    {
      return this.payType_;
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
      if ((this.bitField0_ & 0x1) == 1) {}
      for (i = CodedOutputStream.computeUInt32Size(1, this.retCode_) + 0;; i = 0)
      {
        int j = i;
        if ((this.bitField0_ & 0x2) == 2) {
          j = i + CodedOutputStream.computeUInt32Size(2, this.gameConfig_);
        }
        int k = 0;
        i = 0;
        while (k < this.loginType_.size())
        {
          i += CodedOutputStream.computeBytesSizeNoTag(this.loginType_.getByteString(k));
          k += 1;
        }
        int n = getLoginTypeList().size();
        k = 0;
        int m = 0;
        while (k < this.payType_.size())
        {
          m += CodedOutputStream.computeBytesSizeNoTag(this.payType_.getByteString(k));
          k += 1;
        }
        i = j + i + n * 1 + m + getPayTypeList().size() * 1 + getUnknownFields().getSerializedSize();
        this.memoizedSerializedSize = i;
        return i;
      }
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasGameConfig()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(GetSdkConfigRsp.class, Builder.class);
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
      if (!hasGameConfig())
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
      int k = 0;
      getSerializedSize();
      if ((this.bitField0_ & 0x1) == 1) {
        paramCodedOutputStream.writeUInt32(1, this.retCode_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeUInt32(2, this.gameConfig_);
      }
      int i = 0;
      int j;
      for (;;)
      {
        j = k;
        if (i >= this.loginType_.size()) {
          break;
        }
        paramCodedOutputStream.writeBytes(3, this.loginType_.getByteString(i));
        i += 1;
      }
      while (j < this.payType_.size())
      {
        paramCodedOutputStream.writeBytes(4, this.payType_.getByteString(j));
        j += 1;
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.GetSdkConfigRspOrBuilder
    {
      private int bitField0_;
      private int gameConfig_;
      private LazyStringList loginType_ = LazyStringArrayList.EMPTY;
      private LazyStringList payType_ = LazyStringArrayList.EMPTY;
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
      
      private void ensureLoginTypeIsMutable()
      {
        if ((this.bitField0_ & 0x4) != 4)
        {
          this.loginType_ = new LazyStringArrayList(this.loginType_);
          this.bitField0_ |= 0x4;
        }
      }
      
      private void ensurePayTypeIsMutable()
      {
        if ((this.bitField0_ & 0x8) != 8)
        {
          this.payType_ = new LazyStringArrayList(this.payType_);
          this.bitField0_ |= 0x8;
        }
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final Builder addAllLoginType(Iterable<String> paramIterable)
      {
        ensureLoginTypeIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.loginType_);
        onChanged();
        return this;
      }
      
      public final Builder addAllPayType(Iterable<String> paramIterable)
      {
        ensurePayTypeIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.payType_);
        onChanged();
        return this;
      }
      
      public final Builder addLoginType(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        ensureLoginTypeIsMutable();
        this.loginType_.add(paramString);
        onChanged();
        return this;
      }
      
      public final Builder addLoginTypeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        ensureLoginTypeIsMutable();
        this.loginType_.add(paramByteString);
        onChanged();
        return this;
      }
      
      public final Builder addPayType(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        ensurePayTypeIsMutable();
        this.payType_.add(paramString);
        onChanged();
        return this;
      }
      
      public final Builder addPayTypeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        ensurePayTypeIsMutable();
        this.payType_.add(paramByteString);
        onChanged();
        return this;
      }
      
      public final LoginProto.GetSdkConfigRsp build()
      {
        LoginProto.GetSdkConfigRsp localGetSdkConfigRsp = buildPartial();
        if (!localGetSdkConfigRsp.isInitialized()) {
          throw newUninitializedMessageException(localGetSdkConfigRsp);
        }
        return localGetSdkConfigRsp;
      }
      
      public final LoginProto.GetSdkConfigRsp buildPartial()
      {
        int i = 1;
        LoginProto.GetSdkConfigRsp localGetSdkConfigRsp = new LoginProto.GetSdkConfigRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.GetSdkConfigRsp.access$21602(localGetSdkConfigRsp, this.retCode_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          LoginProto.GetSdkConfigRsp.access$21702(localGetSdkConfigRsp, this.gameConfig_);
          if ((this.bitField0_ & 0x4) == 4)
          {
            this.loginType_ = this.loginType_.getUnmodifiableView();
            this.bitField0_ &= 0xFFFFFFFB;
          }
          LoginProto.GetSdkConfigRsp.access$21802(localGetSdkConfigRsp, this.loginType_);
          if ((this.bitField0_ & 0x8) == 8)
          {
            this.payType_ = this.payType_.getUnmodifiableView();
            this.bitField0_ &= 0xFFFFFFF7;
          }
          LoginProto.GetSdkConfigRsp.access$21902(localGetSdkConfigRsp, this.payType_);
          LoginProto.GetSdkConfigRsp.access$22002(localGetSdkConfigRsp, j);
          onBuilt();
          return localGetSdkConfigRsp;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.gameConfig_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.loginType_ = LazyStringArrayList.EMPTY;
        this.bitField0_ &= 0xFFFFFFFB;
        this.payType_ = LazyStringArrayList.EMPTY;
        this.bitField0_ &= 0xFFFFFFF7;
        return this;
      }
      
      public final Builder clearGameConfig()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.gameConfig_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearLoginType()
      {
        this.loginType_ = LazyStringArrayList.EMPTY;
        this.bitField0_ &= 0xFFFFFFFB;
        onChanged();
        return this;
      }
      
      public final Builder clearPayType()
      {
        this.payType_ = LazyStringArrayList.EMPTY;
        this.bitField0_ &= 0xFFFFFFF7;
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
      
      public final LoginProto.GetSdkConfigRsp getDefaultInstanceForType()
      {
        return LoginProto.GetSdkConfigRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_descriptor;
      }
      
      public final int getGameConfig()
      {
        return this.gameConfig_;
      }
      
      public final String getLoginType(int paramInt)
      {
        return (String)this.loginType_.get(paramInt);
      }
      
      public final ByteString getLoginTypeBytes(int paramInt)
      {
        return this.loginType_.getByteString(paramInt);
      }
      
      public final int getLoginTypeCount()
      {
        return this.loginType_.size();
      }
      
      public final ProtocolStringList getLoginTypeList()
      {
        return this.loginType_.getUnmodifiableView();
      }
      
      public final String getPayType(int paramInt)
      {
        return (String)this.payType_.get(paramInt);
      }
      
      public final ByteString getPayTypeBytes(int paramInt)
      {
        return this.payType_.getByteString(paramInt);
      }
      
      public final int getPayTypeCount()
      {
        return this.payType_.size();
      }
      
      public final ProtocolStringList getPayTypeList()
      {
        return this.payType_.getUnmodifiableView();
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final boolean hasGameConfig()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetSdkConfigRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.GetSdkConfigRsp.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasRetCode()) {}
        while (!hasGameConfig()) {
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
        //   2: getstatic 242	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 248 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 172	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 251	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 172	org/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
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
        if ((paramMessage instanceof LoginProto.GetSdkConfigRsp)) {
          return mergeFrom((LoginProto.GetSdkConfigRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.GetSdkConfigRsp paramGetSdkConfigRsp)
      {
        if (paramGetSdkConfigRsp == LoginProto.GetSdkConfigRsp.getDefaultInstance()) {
          return this;
        }
        if (paramGetSdkConfigRsp.hasRetCode()) {
          setRetCode(paramGetSdkConfigRsp.getRetCode());
        }
        if (paramGetSdkConfigRsp.hasGameConfig()) {
          setGameConfig(paramGetSdkConfigRsp.getGameConfig());
        }
        if (!paramGetSdkConfigRsp.loginType_.isEmpty())
        {
          if (this.loginType_.isEmpty())
          {
            this.loginType_ = paramGetSdkConfigRsp.loginType_;
            this.bitField0_ &= 0xFFFFFFFB;
            onChanged();
          }
        }
        else if (!paramGetSdkConfigRsp.payType_.isEmpty())
        {
          if (!this.payType_.isEmpty()) {
            break label167;
          }
          this.payType_ = paramGetSdkConfigRsp.payType_;
          this.bitField0_ &= 0xFFFFFFF7;
        }
        for (;;)
        {
          onChanged();
          mergeUnknownFields(paramGetSdkConfigRsp.getUnknownFields());
          return this;
          ensureLoginTypeIsMutable();
          this.loginType_.addAll(paramGetSdkConfigRsp.loginType_);
          break;
          label167:
          ensurePayTypeIsMutable();
          this.payType_.addAll(paramGetSdkConfigRsp.payType_);
        }
      }
      
      public final Builder setGameConfig(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.gameConfig_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setLoginType(int paramInt, String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        ensureLoginTypeIsMutable();
        this.loginType_.set(paramInt, paramString);
        onChanged();
        return this;
      }
      
      public final Builder setPayType(int paramInt, String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        ensurePayTypeIsMutable();
        this.payType_.set(paramInt, paramString);
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
  
  public static abstract interface GetSdkConfigRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getGameConfig();
    
    public abstract String getLoginType(int paramInt);
    
    public abstract ByteString getLoginTypeBytes(int paramInt);
    
    public abstract int getLoginTypeCount();
    
    public abstract ProtocolStringList getLoginTypeList();
    
    public abstract String getPayType(int paramInt);
    
    public abstract ByteString getPayTypeBytes(int paramInt);
    
    public abstract int getPayTypeCount();
    
    public abstract ProtocolStringList getPayTypeList();
    
    public abstract int getRetCode();
    
    public abstract boolean hasGameConfig();
    
    public abstract boolean hasRetCode();
  }
  
  public static final class GetServiceTokenReq
    extends GeneratedMessage
    implements LoginProto.GetServiceTokenReqOrBuilder
  {
    public static final int CHANNEL_FIELD_NUMBER = 7;
    public static final int CURRENTCHANNEL_FIELD_NUMBER = 9;
    public static final int DEVAPPID_FIELD_NUMBER = 2;
    public static final int FIRSTCHANNEL_FIELD_NUMBER = 11;
    public static final int FUID_FIELD_NUMBER = 1;
    public static final int IMEIMD5_FIELD_NUMBER = 10;
    public static final int IMEI_FIELD_NUMBER = 4;
    public static final int IMSI_FIELD_NUMBER = 5;
    public static Parser<GetServiceTokenReq> PARSER = new z();
    public static final int SDKVERSION_FIELD_NUMBER = 6;
    public static final int TOKE_FIELD_NUMBER = 3;
    public static final int UA_FIELD_NUMBER = 8;
    private static final GetServiceTokenReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object channel_;
    private Object currentChannel_;
    private Object devAppId_;
    private Object firstChannel_;
    private long fuid_;
    private Object imeiMd5_;
    private Object imei_;
    private Object imsi_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sdkVersion_;
    private Object toke_;
    private Object ua_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetServiceTokenReq localGetServiceTokenReq = new GetServiceTokenReq(true);
      defaultInstance = localGetServiceTokenReq;
      localGetServiceTokenReq.initFields();
    }
    
    /* Error */
    private GetServiceTokenReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 86	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 88	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 79	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:initFields	()V
      //   18: invokestatic 96	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +459 -> 485
      //   29: aload_1
      //   30: invokevirtual 102	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+462->499, 0:+465->502, 8:+125->162, 18:+169->206, 26:+211->248, 34:+236->273, 42:+262->299, 50:+288->325, 58:+314->351, 66:+340->377, 74:+367->404, 82:+394->431, 90:+421->458
      //   144: aload_0
      //   145: aload_1
      //   146: aload 5
      //   148: aload_2
      //   149: iload 4
      //   151: invokevirtual 106	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   154: ifne -129 -> 25
      //   157: iconst_1
      //   158: istore_3
      //   159: goto -134 -> 25
      //   162: aload_0
      //   163: aload_0
      //   164: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   167: iconst_1
      //   168: ior
      //   169: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   172: aload_0
      //   173: aload_1
      //   174: invokevirtual 112	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   177: putfield 114	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:fuid_	J
      //   180: goto -155 -> 25
      //   183: astore_1
      //   184: aload_1
      //   185: aload_0
      //   186: invokevirtual 118	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   189: athrow
      //   190: astore_1
      //   191: aload_0
      //   192: aload 5
      //   194: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   197: putfield 126	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   200: aload_0
      //   201: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:makeExtensionsImmutable	()V
      //   204: aload_1
      //   205: athrow
      //   206: aload_1
      //   207: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   210: astore 6
      //   212: aload_0
      //   213: aload_0
      //   214: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   217: iconst_2
      //   218: ior
      //   219: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   222: aload_0
      //   223: aload 6
      //   225: putfield 135	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:devAppId_	Ljava/lang/Object;
      //   228: goto -203 -> 25
      //   231: astore_1
      //   232: new 83	com/google/protobuf/InvalidProtocolBufferException
      //   235: dup
      //   236: aload_1
      //   237: invokevirtual 139	java/io/IOException:getMessage	()Ljava/lang/String;
      //   240: invokespecial 142	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   243: aload_0
      //   244: invokevirtual 118	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   247: athrow
      //   248: aload_1
      //   249: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   252: astore 6
      //   254: aload_0
      //   255: aload_0
      //   256: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   259: iconst_4
      //   260: ior
      //   261: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   264: aload_0
      //   265: aload 6
      //   267: putfield 144	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:toke_	Ljava/lang/Object;
      //   270: goto -245 -> 25
      //   273: aload_1
      //   274: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   277: astore 6
      //   279: aload_0
      //   280: aload_0
      //   281: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   284: bipush 8
      //   286: ior
      //   287: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   290: aload_0
      //   291: aload 6
      //   293: putfield 146	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:imei_	Ljava/lang/Object;
      //   296: goto -271 -> 25
      //   299: aload_1
      //   300: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   303: astore 6
      //   305: aload_0
      //   306: aload_0
      //   307: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   310: bipush 16
      //   312: ior
      //   313: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   316: aload_0
      //   317: aload 6
      //   319: putfield 148	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:imsi_	Ljava/lang/Object;
      //   322: goto -297 -> 25
      //   325: aload_1
      //   326: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   329: astore 6
      //   331: aload_0
      //   332: aload_0
      //   333: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   336: bipush 32
      //   338: ior
      //   339: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   342: aload_0
      //   343: aload 6
      //   345: putfield 150	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:sdkVersion_	Ljava/lang/Object;
      //   348: goto -323 -> 25
      //   351: aload_1
      //   352: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   355: astore 6
      //   357: aload_0
      //   358: aload_0
      //   359: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   362: bipush 64
      //   364: ior
      //   365: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   368: aload_0
      //   369: aload 6
      //   371: putfield 152	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:channel_	Ljava/lang/Object;
      //   374: goto -349 -> 25
      //   377: aload_1
      //   378: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   381: astore 6
      //   383: aload_0
      //   384: aload_0
      //   385: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   388: sipush 128
      //   391: ior
      //   392: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   395: aload_0
      //   396: aload 6
      //   398: putfield 154	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:ua_	Ljava/lang/Object;
      //   401: goto -376 -> 25
      //   404: aload_1
      //   405: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   408: astore 6
      //   410: aload_0
      //   411: aload_0
      //   412: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   415: sipush 256
      //   418: ior
      //   419: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   422: aload_0
      //   423: aload 6
      //   425: putfield 156	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:currentChannel_	Ljava/lang/Object;
      //   428: goto -403 -> 25
      //   431: aload_1
      //   432: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   435: astore 6
      //   437: aload_0
      //   438: aload_0
      //   439: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   442: sipush 512
      //   445: ior
      //   446: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   449: aload_0
      //   450: aload 6
      //   452: putfield 158	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:imeiMd5_	Ljava/lang/Object;
      //   455: goto -430 -> 25
      //   458: aload_1
      //   459: invokevirtual 133	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   462: astore 6
      //   464: aload_0
      //   465: aload_0
      //   466: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   469: sipush 1024
      //   472: ior
      //   473: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:bitField0_	I
      //   476: aload_0
      //   477: aload 6
      //   479: putfield 160	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:firstChannel_	Ljava/lang/Object;
      //   482: goto -457 -> 25
      //   485: aload_0
      //   486: aload 5
      //   488: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   491: putfield 126	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   494: aload_0
      //   495: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:makeExtensionsImmutable	()V
      //   498: return
      //   499: goto -355 -> 144
      //   502: iconst_1
      //   503: istore_3
      //   504: goto -479 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	507	0	this	GetServiceTokenReq
      //   0	507	1	paramCodedInputStream	CodedInputStream
      //   0	507	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	480	3	i	int
      //   33	117	4	j	int
      //   21	466	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   210	268	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	183	com/google/protobuf/InvalidProtocolBufferException
      //   144	157	183	com/google/protobuf/InvalidProtocolBufferException
      //   162	180	183	com/google/protobuf/InvalidProtocolBufferException
      //   206	228	183	com/google/protobuf/InvalidProtocolBufferException
      //   248	270	183	com/google/protobuf/InvalidProtocolBufferException
      //   273	296	183	com/google/protobuf/InvalidProtocolBufferException
      //   299	322	183	com/google/protobuf/InvalidProtocolBufferException
      //   325	348	183	com/google/protobuf/InvalidProtocolBufferException
      //   351	374	183	com/google/protobuf/InvalidProtocolBufferException
      //   377	401	183	com/google/protobuf/InvalidProtocolBufferException
      //   404	428	183	com/google/protobuf/InvalidProtocolBufferException
      //   431	455	183	com/google/protobuf/InvalidProtocolBufferException
      //   458	482	183	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	190	finally
      //   144	157	190	finally
      //   162	180	190	finally
      //   184	190	190	finally
      //   206	228	190	finally
      //   232	248	190	finally
      //   248	270	190	finally
      //   273	296	190	finally
      //   299	322	190	finally
      //   325	348	190	finally
      //   351	374	190	finally
      //   377	401	190	finally
      //   404	428	190	finally
      //   431	455	190	finally
      //   458	482	190	finally
      //   29	35	231	java/io/IOException
      //   144	157	231	java/io/IOException
      //   162	180	231	java/io/IOException
      //   206	228	231	java/io/IOException
      //   248	270	231	java/io/IOException
      //   273	296	231	java/io/IOException
      //   299	322	231	java/io/IOException
      //   325	348	231	java/io/IOException
      //   351	374	231	java/io/IOException
      //   377	401	231	java/io/IOException
      //   404	428	231	java/io/IOException
      //   431	455	231	java/io/IOException
      //   458	482	231	java/io/IOException
    }
    
    private GetServiceTokenReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetServiceTokenReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetServiceTokenReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_descriptor;
    }
    
    private void initFields()
    {
      this.fuid_ = 0L;
      this.devAppId_ = "";
      this.toke_ = "";
      this.imei_ = "";
      this.imsi_ = "";
      this.sdkVersion_ = "";
      this.channel_ = "";
      this.ua_ = "";
      this.currentChannel_ = "";
      this.imeiMd5_ = "";
      this.firstChannel_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$4700();
    }
    
    public static Builder newBuilder(GetServiceTokenReq paramGetServiceTokenReq)
    {
      return newBuilder().mergeFrom(paramGetServiceTokenReq);
    }
    
    public static GetServiceTokenReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetServiceTokenReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetServiceTokenReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetServiceTokenReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetServiceTokenReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetServiceTokenReq)PARSER.parseFrom(paramByteString);
    }
    
    public static GetServiceTokenReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetServiceTokenReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetServiceTokenReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetServiceTokenReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetServiceTokenReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetServiceTokenReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetServiceTokenReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetServiceTokenReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetServiceTokenReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetServiceTokenReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetServiceTokenReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetServiceTokenReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetServiceTokenReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetServiceTokenReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
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
    
    public final String getCurrentChannel()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.currentChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getCurrentChannelBytes()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.currentChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final GetServiceTokenReq getDefaultInstanceForType()
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
    
    public final String getFirstChannel()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.firstChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getFirstChannelBytes()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.firstChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final String getImei()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imei_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiBytes()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imei_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
    
    public final String getImsi()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imsi_ = str;
      }
      return str;
    }
    
    public final ByteString getImsiBytes()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imsi_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<GetServiceTokenReq> getParserForType()
    {
      return PARSER;
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
        j = CodedOutputStream.computeUInt64Size(1, this.fuid_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getDevAppIdBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getTokeBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getImeiBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getImsiBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getSdkVersionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getChannelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getUaBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getCurrentChannelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getImeiMd5Bytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getFirstChannelBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getToke()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.toke_ = str;
      }
      return str;
    }
    
    public final ByteString getTokeBytes()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.toke_ = localObject;
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
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasChannel()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasCurrentChannel()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasFirstChannel()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasImei()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasImeiMd5()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasImsi()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasSdkVersion()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasToke()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_fieldAccessorTable.ensureFieldAccessorsInitialized(GetServiceTokenReq.class, Builder.class);
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
      if (!hasDevAppId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasToke())
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
        paramCodedOutputStream.writeBytes(2, getDevAppIdBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getTokeBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getImeiBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getImsiBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getSdkVersionBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getChannelBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getUaBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getCurrentChannelBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getImeiMd5Bytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getFirstChannelBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.GetServiceTokenReqOrBuilder
    {
      private int bitField0_;
      private Object channel_ = "";
      private Object currentChannel_ = "";
      private Object devAppId_ = "";
      private Object firstChannel_ = "";
      private long fuid_;
      private Object imeiMd5_ = "";
      private Object imei_ = "";
      private Object imsi_ = "";
      private Object sdkVersion_ = "";
      private Object toke_ = "";
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
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.GetServiceTokenReq build()
      {
        LoginProto.GetServiceTokenReq localGetServiceTokenReq = buildPartial();
        if (!localGetServiceTokenReq.isInitialized()) {
          throw newUninitializedMessageException(localGetServiceTokenReq);
        }
        return localGetServiceTokenReq;
      }
      
      public final LoginProto.GetServiceTokenReq buildPartial()
      {
        int j = 1;
        LoginProto.GetServiceTokenReq localGetServiceTokenReq = new LoginProto.GetServiceTokenReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.GetServiceTokenReq.access$5102(localGetServiceTokenReq, this.fuid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.GetServiceTokenReq.access$5202(localGetServiceTokenReq, this.devAppId_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.GetServiceTokenReq.access$5302(localGetServiceTokenReq, this.toke_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.GetServiceTokenReq.access$5402(localGetServiceTokenReq, this.imei_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.GetServiceTokenReq.access$5502(localGetServiceTokenReq, this.imsi_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.GetServiceTokenReq.access$5602(localGetServiceTokenReq, this.sdkVersion_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          LoginProto.GetServiceTokenReq.access$5702(localGetServiceTokenReq, this.channel_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          LoginProto.GetServiceTokenReq.access$5802(localGetServiceTokenReq, this.ua_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          LoginProto.GetServiceTokenReq.access$5902(localGetServiceTokenReq, this.currentChannel_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          LoginProto.GetServiceTokenReq.access$6002(localGetServiceTokenReq, this.imeiMd5_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          LoginProto.GetServiceTokenReq.access$6102(localGetServiceTokenReq, this.firstChannel_);
          LoginProto.GetServiceTokenReq.access$6202(localGetServiceTokenReq, j);
          onBuilt();
          return localGetServiceTokenReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.devAppId_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.toke_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.imei_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.imsi_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.sdkVersion_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.channel_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.ua_ = "";
        this.bitField0_ &= 0xFF7F;
        this.currentChannel_ = "";
        this.bitField0_ &= 0xFEFF;
        this.imeiMd5_ = "";
        this.bitField0_ &= 0xFDFF;
        this.firstChannel_ = "";
        this.bitField0_ &= 0xFBFF;
        return this;
      }
      
      public final Builder clearChannel()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.channel_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearCurrentChannel()
      {
        this.bitField0_ &= 0xFEFF;
        this.currentChannel_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getCurrentChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.devAppId_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getDevAppId();
        onChanged();
        return this;
      }
      
      public final Builder clearFirstChannel()
      {
        this.bitField0_ &= 0xFBFF;
        this.firstChannel_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getFirstChannel();
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
      
      public final Builder clearImei()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.imei_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getImei();
        onChanged();
        return this;
      }
      
      public final Builder clearImeiMd5()
      {
        this.bitField0_ &= 0xFDFF;
        this.imeiMd5_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getImeiMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearImsi()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.imsi_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getImsi();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkVersion()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.sdkVersion_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getSdkVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearToke()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.toke_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getToke();
        onChanged();
        return this;
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFF7F;
        this.ua_ = LoginProto.GetServiceTokenReq.getDefaultInstance().getUa();
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
      
      public final String getCurrentChannel()
      {
        Object localObject = this.currentChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.currentChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCurrentChannelBytes()
      {
        Object localObject = this.currentChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.currentChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final LoginProto.GetServiceTokenReq getDefaultInstanceForType()
      {
        return LoginProto.GetServiceTokenReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_descriptor;
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
      
      public final String getFirstChannel()
      {
        Object localObject = this.firstChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.firstChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getFirstChannelBytes()
      {
        Object localObject = this.firstChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.firstChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getImei()
      {
        Object localObject = this.imei_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imei_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiBytes()
      {
        Object localObject = this.imei_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imei_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getImsi()
      {
        Object localObject = this.imsi_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imsi_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImsiBytes()
      {
        Object localObject = this.imsi_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imsi_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getToke()
      {
        Object localObject = this.toke_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.toke_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTokeBytes()
      {
        Object localObject = this.toke_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.toke_ = localObject;
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
      
      public final boolean hasChannel()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasCurrentChannel()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasFirstChannel()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasImei()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasImeiMd5()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasImsi()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasSdkVersion()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasToke()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenReq_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.GetServiceTokenReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasFuid()) {}
        while ((!hasDevAppId()) || (!hasToke())) {
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
        //   2: getstatic 291	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 297 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 212	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 300	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 212	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;
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
        if ((paramMessage instanceof LoginProto.GetServiceTokenReq)) {
          return mergeFrom((LoginProto.GetServiceTokenReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.GetServiceTokenReq paramGetServiceTokenReq)
      {
        if (paramGetServiceTokenReq == LoginProto.GetServiceTokenReq.getDefaultInstance()) {
          return this;
        }
        if (paramGetServiceTokenReq.hasFuid()) {
          setFuid(paramGetServiceTokenReq.getFuid());
        }
        if (paramGetServiceTokenReq.hasDevAppId())
        {
          this.bitField0_ |= 0x2;
          this.devAppId_ = paramGetServiceTokenReq.devAppId_;
          onChanged();
        }
        if (paramGetServiceTokenReq.hasToke())
        {
          this.bitField0_ |= 0x4;
          this.toke_ = paramGetServiceTokenReq.toke_;
          onChanged();
        }
        if (paramGetServiceTokenReq.hasImei())
        {
          this.bitField0_ |= 0x8;
          this.imei_ = paramGetServiceTokenReq.imei_;
          onChanged();
        }
        if (paramGetServiceTokenReq.hasImsi())
        {
          this.bitField0_ |= 0x10;
          this.imsi_ = paramGetServiceTokenReq.imsi_;
          onChanged();
        }
        if (paramGetServiceTokenReq.hasSdkVersion())
        {
          this.bitField0_ |= 0x20;
          this.sdkVersion_ = paramGetServiceTokenReq.sdkVersion_;
          onChanged();
        }
        if (paramGetServiceTokenReq.hasChannel())
        {
          this.bitField0_ |= 0x40;
          this.channel_ = paramGetServiceTokenReq.channel_;
          onChanged();
        }
        if (paramGetServiceTokenReq.hasUa())
        {
          this.bitField0_ |= 0x80;
          this.ua_ = paramGetServiceTokenReq.ua_;
          onChanged();
        }
        if (paramGetServiceTokenReq.hasCurrentChannel())
        {
          this.bitField0_ |= 0x100;
          this.currentChannel_ = paramGetServiceTokenReq.currentChannel_;
          onChanged();
        }
        if (paramGetServiceTokenReq.hasImeiMd5())
        {
          this.bitField0_ |= 0x200;
          this.imeiMd5_ = paramGetServiceTokenReq.imeiMd5_;
          onChanged();
        }
        if (paramGetServiceTokenReq.hasFirstChannel())
        {
          this.bitField0_ |= 0x400;
          this.firstChannel_ = paramGetServiceTokenReq.firstChannel_;
          onChanged();
        }
        mergeUnknownFields(paramGetServiceTokenReq.getUnknownFields());
        return this;
      }
      
      public final Builder setChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.channel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.channel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.currentChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.currentChannel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.devAppId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.devAppId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.firstChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.firstChannel_ = paramByteString;
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
      
      public final Builder setImei(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.imeiMd5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.imeiMd5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImsi(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImsiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.sdkVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.sdkVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setToke(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.toke_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTokeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.toke_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface GetServiceTokenReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getChannel();
    
    public abstract ByteString getChannelBytes();
    
    public abstract String getCurrentChannel();
    
    public abstract ByteString getCurrentChannelBytes();
    
    public abstract String getDevAppId();
    
    public abstract ByteString getDevAppIdBytes();
    
    public abstract String getFirstChannel();
    
    public abstract ByteString getFirstChannelBytes();
    
    public abstract long getFuid();
    
    public abstract String getImei();
    
    public abstract ByteString getImeiBytes();
    
    public abstract String getImeiMd5();
    
    public abstract ByteString getImeiMd5Bytes();
    
    public abstract String getImsi();
    
    public abstract ByteString getImsiBytes();
    
    public abstract String getSdkVersion();
    
    public abstract ByteString getSdkVersionBytes();
    
    public abstract String getToke();
    
    public abstract ByteString getTokeBytes();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract boolean hasChannel();
    
    public abstract boolean hasCurrentChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasFirstChannel();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasImei();
    
    public abstract boolean hasImeiMd5();
    
    public abstract boolean hasImsi();
    
    public abstract boolean hasSdkVersion();
    
    public abstract boolean hasToke();
    
    public abstract boolean hasUa();
  }
  
  public static final class GetServiceTokenRsp
    extends GeneratedMessage
    implements LoginProto.GetServiceTokenRspOrBuilder
  {
    public static Parser<GetServiceTokenRsp> PARSER = new aa();
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int SERVICETOKEN_FIELD_NUMBER = 2;
    private static final GetServiceTokenRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int retCode_;
    private Object serviceToken_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      GetServiceTokenRsp localGetServiceTokenRsp = new GetServiceTokenRsp(true);
      defaultInstance = localGetServiceTokenRsp;
      localGetServiceTokenRsp.initFields();
    }
    
    /* Error */
    private GetServiceTokenRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:initFields	()V
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
      //   79: invokevirtual 79	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 81	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 81	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 84	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   105: putfield 86	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:retCode_	I
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
      //   125: putfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_1
      //   135: invokevirtual 105	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   138: astore 6
      //   140: aload_0
      //   141: aload_0
      //   142: getfield 81	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:bitField0_	I
      //   145: iconst_2
      //   146: ior
      //   147: putfield 81	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:bitField0_	I
      //   150: aload_0
      //   151: aload 6
      //   153: putfield 107	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:serviceToken_	Ljava/lang/Object;
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
      //   182: putfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   185: aload_0
      //   186: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:makeExtensionsImmutable	()V
      //   189: return
      //   190: goto -118 -> 72
      //   193: iconst_1
      //   194: istore_3
      //   195: goto -170 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	198	0	this	GetServiceTokenRsp
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
    
    private GetServiceTokenRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private GetServiceTokenRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static GetServiceTokenRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.serviceToken_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$6600();
    }
    
    public static Builder newBuilder(GetServiceTokenRsp paramGetServiceTokenRsp)
    {
      return newBuilder().mergeFrom(paramGetServiceTokenRsp);
    }
    
    public static GetServiceTokenRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetServiceTokenRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static GetServiceTokenRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetServiceTokenRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetServiceTokenRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (GetServiceTokenRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static GetServiceTokenRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetServiceTokenRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static GetServiceTokenRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (GetServiceTokenRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static GetServiceTokenRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetServiceTokenRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static GetServiceTokenRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (GetServiceTokenRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static GetServiceTokenRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (GetServiceTokenRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static GetServiceTokenRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (GetServiceTokenRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static GetServiceTokenRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (GetServiceTokenRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final GetServiceTokenRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<GetServiceTokenRsp> getParserForType()
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
        j = i + CodedOutputStream.computeBytesSize(2, getServiceTokenBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getServiceToken()
    {
      Object localObject = this.serviceToken_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.serviceToken_ = str;
      }
      return str;
    }
    
    public final ByteString getServiceTokenBytes()
    {
      Object localObject = this.serviceToken_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.serviceToken_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasServiceToken()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(GetServiceTokenRsp.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(2, getServiceTokenBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.GetServiceTokenRspOrBuilder
    {
      private int bitField0_;
      private int retCode_;
      private Object serviceToken_ = "";
      
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
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.GetServiceTokenRsp build()
      {
        LoginProto.GetServiceTokenRsp localGetServiceTokenRsp = buildPartial();
        if (!localGetServiceTokenRsp.isInitialized()) {
          throw newUninitializedMessageException(localGetServiceTokenRsp);
        }
        return localGetServiceTokenRsp;
      }
      
      public final LoginProto.GetServiceTokenRsp buildPartial()
      {
        int i = 1;
        LoginProto.GetServiceTokenRsp localGetServiceTokenRsp = new LoginProto.GetServiceTokenRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.GetServiceTokenRsp.access$7002(localGetServiceTokenRsp, this.retCode_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          LoginProto.GetServiceTokenRsp.access$7102(localGetServiceTokenRsp, this.serviceToken_);
          LoginProto.GetServiceTokenRsp.access$7202(localGetServiceTokenRsp, j);
          onBuilt();
          return localGetServiceTokenRsp;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.serviceToken_ = "";
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
      
      public final Builder clearServiceToken()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.serviceToken_ = LoginProto.GetServiceTokenRsp.getDefaultInstance().getServiceToken();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final LoginProto.GetServiceTokenRsp getDefaultInstanceForType()
      {
        return LoginProto.GetServiceTokenRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_descriptor;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final String getServiceToken()
      {
        Object localObject = this.serviceToken_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.serviceToken_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getServiceTokenBytes()
      {
        Object localObject = this.serviceToken_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.serviceToken_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasServiceToken()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_GetServiceTokenRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.GetServiceTokenRsp.class, Builder.class);
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
        //   2: getstatic 177	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 183 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 186	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp$Builder;
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
        if ((paramMessage instanceof LoginProto.GetServiceTokenRsp)) {
          return mergeFrom((LoginProto.GetServiceTokenRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.GetServiceTokenRsp paramGetServiceTokenRsp)
      {
        if (paramGetServiceTokenRsp == LoginProto.GetServiceTokenRsp.getDefaultInstance()) {
          return this;
        }
        if (paramGetServiceTokenRsp.hasRetCode()) {
          setRetCode(paramGetServiceTokenRsp.getRetCode());
        }
        if (paramGetServiceTokenRsp.hasServiceToken())
        {
          this.bitField0_ |= 0x2;
          this.serviceToken_ = paramGetServiceTokenRsp.serviceToken_;
          onChanged();
        }
        mergeUnknownFields(paramGetServiceTokenRsp.getUnknownFields());
        return this;
      }
      
      public final Builder setRetCode(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.retCode_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setServiceToken(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.serviceToken_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setServiceTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.serviceToken_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface GetServiceTokenRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getRetCode();
    
    public abstract String getServiceToken();
    
    public abstract ByteString getServiceTokenBytes();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasServiceToken();
  }
  
  public static final class RecordLoginAppAccountReq
    extends GeneratedMessage
    implements LoginProto.RecordLoginAppAccountReqOrBuilder
  {
    public static final int APPACCOUNTID_FIELD_NUMBER = 3;
    public static final int CHANNEL_FIELD_NUMBER = 8;
    public static final int CURRENTCHANNEL_FIELD_NUMBER = 10;
    public static final int DEVAPPID_FIELD_NUMBER = 2;
    public static final int FIRSTCHANNEL_FIELD_NUMBER = 12;
    public static final int FUID_FIELD_NUMBER = 1;
    public static final int IMEIMD5_FIELD_NUMBER = 11;
    public static final int IMEI_FIELD_NUMBER = 5;
    public static final int IMSI_FIELD_NUMBER = 6;
    public static Parser<RecordLoginAppAccountReq> PARSER = new ab();
    public static final int SDKVERSION_FIELD_NUMBER = 7;
    public static final int TOKE_FIELD_NUMBER = 4;
    public static final int UA_FIELD_NUMBER = 9;
    private static final RecordLoginAppAccountReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private long appAccountId_;
    private int bitField0_;
    private Object channel_;
    private Object currentChannel_;
    private Object devAppId_;
    private Object firstChannel_;
    private long fuid_;
    private Object imeiMd5_;
    private Object imei_;
    private Object imsi_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object sdkVersion_;
    private Object toke_;
    private Object ua_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      RecordLoginAppAccountReq localRecordLoginAppAccountReq = new RecordLoginAppAccountReq(true);
      defaultInstance = localRecordLoginAppAccountReq;
      localRecordLoginAppAccountReq.initFields();
    }
    
    /* Error */
    private RecordLoginAppAccountReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 89	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 91	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 93	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 82	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:initFields	()V
      //   18: invokestatic 99	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +490 -> 516
      //   29: aload_1
      //   30: invokevirtual 105	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+493->530, 0:+496->533, 8:+133->170, 18:+177->214, 24:+219->256, 34:+240->277, 42:+266->303, 50:+292->329, 58:+318->355, 66:+344->381, 74:+371->408, 82:+398->435, 90:+425->462, 98:+452->489
      //   152: aload_0
      //   153: aload_1
      //   154: aload 5
      //   156: aload_2
      //   157: iload 4
      //   159: invokevirtual 109	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   162: ifne -137 -> 25
      //   165: iconst_1
      //   166: istore_3
      //   167: goto -142 -> 25
      //   170: aload_0
      //   171: aload_0
      //   172: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   175: iconst_1
      //   176: ior
      //   177: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   180: aload_0
      //   181: aload_1
      //   182: invokevirtual 115	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   185: putfield 117	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:fuid_	J
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
      //   205: putfield 129	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   208: aload_0
      //   209: invokevirtual 132	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:makeExtensionsImmutable	()V
      //   212: aload_1
      //   213: athrow
      //   214: aload_1
      //   215: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   218: astore 6
      //   220: aload_0
      //   221: aload_0
      //   222: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   225: iconst_2
      //   226: ior
      //   227: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   230: aload_0
      //   231: aload 6
      //   233: putfield 138	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:devAppId_	Ljava/lang/Object;
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
      //   256: aload_0
      //   257: aload_0
      //   258: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   261: iconst_4
      //   262: ior
      //   263: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   266: aload_0
      //   267: aload_1
      //   268: invokevirtual 115	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   271: putfield 147	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:appAccountId_	J
      //   274: goto -249 -> 25
      //   277: aload_1
      //   278: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   281: astore 6
      //   283: aload_0
      //   284: aload_0
      //   285: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   288: bipush 8
      //   290: ior
      //   291: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   294: aload_0
      //   295: aload 6
      //   297: putfield 149	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:toke_	Ljava/lang/Object;
      //   300: goto -275 -> 25
      //   303: aload_1
      //   304: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   307: astore 6
      //   309: aload_0
      //   310: aload_0
      //   311: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   314: bipush 16
      //   316: ior
      //   317: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   320: aload_0
      //   321: aload 6
      //   323: putfield 151	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:imei_	Ljava/lang/Object;
      //   326: goto -301 -> 25
      //   329: aload_1
      //   330: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   333: astore 6
      //   335: aload_0
      //   336: aload_0
      //   337: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   340: bipush 32
      //   342: ior
      //   343: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   346: aload_0
      //   347: aload 6
      //   349: putfield 153	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:imsi_	Ljava/lang/Object;
      //   352: goto -327 -> 25
      //   355: aload_1
      //   356: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   359: astore 6
      //   361: aload_0
      //   362: aload_0
      //   363: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   366: bipush 64
      //   368: ior
      //   369: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   372: aload_0
      //   373: aload 6
      //   375: putfield 155	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:sdkVersion_	Ljava/lang/Object;
      //   378: goto -353 -> 25
      //   381: aload_1
      //   382: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   385: astore 6
      //   387: aload_0
      //   388: aload_0
      //   389: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   392: sipush 128
      //   395: ior
      //   396: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   399: aload_0
      //   400: aload 6
      //   402: putfield 157	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:channel_	Ljava/lang/Object;
      //   405: goto -380 -> 25
      //   408: aload_1
      //   409: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   412: astore 6
      //   414: aload_0
      //   415: aload_0
      //   416: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   419: sipush 256
      //   422: ior
      //   423: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   426: aload_0
      //   427: aload 6
      //   429: putfield 159	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:ua_	Ljava/lang/Object;
      //   432: goto -407 -> 25
      //   435: aload_1
      //   436: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   439: astore 6
      //   441: aload_0
      //   442: aload_0
      //   443: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   446: sipush 512
      //   449: ior
      //   450: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   453: aload_0
      //   454: aload 6
      //   456: putfield 161	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:currentChannel_	Ljava/lang/Object;
      //   459: goto -434 -> 25
      //   462: aload_1
      //   463: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   466: astore 6
      //   468: aload_0
      //   469: aload_0
      //   470: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   473: sipush 1024
      //   476: ior
      //   477: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   480: aload_0
      //   481: aload 6
      //   483: putfield 163	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:imeiMd5_	Ljava/lang/Object;
      //   486: goto -461 -> 25
      //   489: aload_1
      //   490: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   493: astore 6
      //   495: aload_0
      //   496: aload_0
      //   497: getfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   500: sipush 2048
      //   503: ior
      //   504: putfield 111	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:bitField0_	I
      //   507: aload_0
      //   508: aload 6
      //   510: putfield 165	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:firstChannel_	Ljava/lang/Object;
      //   513: goto -488 -> 25
      //   516: aload_0
      //   517: aload 5
      //   519: invokevirtual 127	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   522: putfield 129	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   525: aload_0
      //   526: invokevirtual 132	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:makeExtensionsImmutable	()V
      //   529: return
      //   530: goto -378 -> 152
      //   533: iconst_1
      //   534: istore_3
      //   535: goto -510 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	538	0	this	RecordLoginAppAccountReq
      //   0	538	1	paramCodedInputStream	CodedInputStream
      //   0	538	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	511	3	i	int
      //   33	125	4	j	int
      //   21	497	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   218	291	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	191	com/google/protobuf/InvalidProtocolBufferException
      //   152	165	191	com/google/protobuf/InvalidProtocolBufferException
      //   170	188	191	com/google/protobuf/InvalidProtocolBufferException
      //   214	236	191	com/google/protobuf/InvalidProtocolBufferException
      //   256	274	191	com/google/protobuf/InvalidProtocolBufferException
      //   277	300	191	com/google/protobuf/InvalidProtocolBufferException
      //   303	326	191	com/google/protobuf/InvalidProtocolBufferException
      //   329	352	191	com/google/protobuf/InvalidProtocolBufferException
      //   355	378	191	com/google/protobuf/InvalidProtocolBufferException
      //   381	405	191	com/google/protobuf/InvalidProtocolBufferException
      //   408	432	191	com/google/protobuf/InvalidProtocolBufferException
      //   435	459	191	com/google/protobuf/InvalidProtocolBufferException
      //   462	486	191	com/google/protobuf/InvalidProtocolBufferException
      //   489	513	191	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	198	finally
      //   152	165	198	finally
      //   170	188	198	finally
      //   192	198	198	finally
      //   214	236	198	finally
      //   240	256	198	finally
      //   256	274	198	finally
      //   277	300	198	finally
      //   303	326	198	finally
      //   329	352	198	finally
      //   355	378	198	finally
      //   381	405	198	finally
      //   408	432	198	finally
      //   435	459	198	finally
      //   462	486	198	finally
      //   489	513	198	finally
      //   29	35	239	java/io/IOException
      //   152	165	239	java/io/IOException
      //   170	188	239	java/io/IOException
      //   214	236	239	java/io/IOException
      //   256	274	239	java/io/IOException
      //   277	300	239	java/io/IOException
      //   303	326	239	java/io/IOException
      //   329	352	239	java/io/IOException
      //   355	378	239	java/io/IOException
      //   381	405	239	java/io/IOException
      //   408	432	239	java/io/IOException
      //   435	459	239	java/io/IOException
      //   462	486	239	java/io/IOException
      //   489	513	239	java/io/IOException
    }
    
    private RecordLoginAppAccountReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private RecordLoginAppAccountReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static RecordLoginAppAccountReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_descriptor;
    }
    
    private void initFields()
    {
      this.fuid_ = 0L;
      this.devAppId_ = "";
      this.appAccountId_ = 0L;
      this.toke_ = "";
      this.imei_ = "";
      this.imsi_ = "";
      this.sdkVersion_ = "";
      this.channel_ = "";
      this.ua_ = "";
      this.currentChannel_ = "";
      this.imeiMd5_ = "";
      this.firstChannel_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$14100();
    }
    
    public static Builder newBuilder(RecordLoginAppAccountReq paramRecordLoginAppAccountReq)
    {
      return newBuilder().mergeFrom(paramRecordLoginAppAccountReq);
    }
    
    public static RecordLoginAppAccountReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RecordLoginAppAccountReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static RecordLoginAppAccountReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RecordLoginAppAccountReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RecordLoginAppAccountReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (RecordLoginAppAccountReq)PARSER.parseFrom(paramByteString);
    }
    
    public static RecordLoginAppAccountReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RecordLoginAppAccountReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static RecordLoginAppAccountReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (RecordLoginAppAccountReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static RecordLoginAppAccountReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RecordLoginAppAccountReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static RecordLoginAppAccountReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RecordLoginAppAccountReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static RecordLoginAppAccountReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RecordLoginAppAccountReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RecordLoginAppAccountReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (RecordLoginAppAccountReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static RecordLoginAppAccountReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RecordLoginAppAccountReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final long getAppAccountId()
    {
      return this.appAccountId_;
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
    
    public final String getCurrentChannel()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.currentChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getCurrentChannelBytes()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.currentChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final RecordLoginAppAccountReq getDefaultInstanceForType()
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
    
    public final String getFirstChannel()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.firstChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getFirstChannelBytes()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.firstChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final String getImei()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imei_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiBytes()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imei_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
    
    public final String getImsi()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imsi_ = str;
      }
      return str;
    }
    
    public final ByteString getImsiBytes()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imsi_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<RecordLoginAppAccountReq> getParserForType()
    {
      return PARSER;
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
        j = CodedOutputStream.computeUInt64Size(1, this.fuid_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getDevAppIdBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt64Size(3, this.appAccountId_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getTokeBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getImeiBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getImsiBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getSdkVersionBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getChannelBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getUaBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getCurrentChannelBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getImeiMd5Bytes());
      }
      i = j;
      if ((this.bitField0_ & 0x800) == 2048) {
        i = j + CodedOutputStream.computeBytesSize(12, getFirstChannelBytes());
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final String getToke()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.toke_ = str;
      }
      return str;
    }
    
    public final ByteString getTokeBytes()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.toke_ = localObject;
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
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAppAccountId()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasChannel()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasCurrentChannel()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasFirstChannel()
    {
      return (this.bitField0_ & 0x800) == 2048;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasImei()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasImeiMd5()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasImsi()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasSdkVersion()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasToke()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_fieldAccessorTable.ensureFieldAccessorsInitialized(RecordLoginAppAccountReq.class, Builder.class);
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
      if (!hasDevAppId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasAppAccountId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasToke())
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
        paramCodedOutputStream.writeBytes(2, getDevAppIdBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt64(3, this.appAccountId_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getTokeBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getImeiBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getImsiBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getSdkVersionBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getChannelBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getUaBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getCurrentChannelBytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getImeiMd5Bytes());
      }
      if ((this.bitField0_ & 0x800) == 2048) {
        paramCodedOutputStream.writeBytes(12, getFirstChannelBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.RecordLoginAppAccountReqOrBuilder
    {
      private long appAccountId_;
      private int bitField0_;
      private Object channel_ = "";
      private Object currentChannel_ = "";
      private Object devAppId_ = "";
      private Object firstChannel_ = "";
      private long fuid_;
      private Object imeiMd5_ = "";
      private Object imei_ = "";
      private Object imsi_ = "";
      private Object sdkVersion_ = "";
      private Object toke_ = "";
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
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.RecordLoginAppAccountReq build()
      {
        LoginProto.RecordLoginAppAccountReq localRecordLoginAppAccountReq = buildPartial();
        if (!localRecordLoginAppAccountReq.isInitialized()) {
          throw newUninitializedMessageException(localRecordLoginAppAccountReq);
        }
        return localRecordLoginAppAccountReq;
      }
      
      public final LoginProto.RecordLoginAppAccountReq buildPartial()
      {
        int j = 1;
        LoginProto.RecordLoginAppAccountReq localRecordLoginAppAccountReq = new LoginProto.RecordLoginAppAccountReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.RecordLoginAppAccountReq.access$14502(localRecordLoginAppAccountReq, this.fuid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.RecordLoginAppAccountReq.access$14602(localRecordLoginAppAccountReq, this.devAppId_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.RecordLoginAppAccountReq.access$14702(localRecordLoginAppAccountReq, this.appAccountId_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.RecordLoginAppAccountReq.access$14802(localRecordLoginAppAccountReq, this.toke_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.RecordLoginAppAccountReq.access$14902(localRecordLoginAppAccountReq, this.imei_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.RecordLoginAppAccountReq.access$15002(localRecordLoginAppAccountReq, this.imsi_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          LoginProto.RecordLoginAppAccountReq.access$15102(localRecordLoginAppAccountReq, this.sdkVersion_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          LoginProto.RecordLoginAppAccountReq.access$15202(localRecordLoginAppAccountReq, this.channel_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          LoginProto.RecordLoginAppAccountReq.access$15302(localRecordLoginAppAccountReq, this.ua_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          LoginProto.RecordLoginAppAccountReq.access$15402(localRecordLoginAppAccountReq, this.currentChannel_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          LoginProto.RecordLoginAppAccountReq.access$15502(localRecordLoginAppAccountReq, this.imeiMd5_);
          i = j;
          if ((k & 0x800) == 2048) {
            i = j | 0x800;
          }
          LoginProto.RecordLoginAppAccountReq.access$15602(localRecordLoginAppAccountReq, this.firstChannel_);
          LoginProto.RecordLoginAppAccountReq.access$15702(localRecordLoginAppAccountReq, i);
          onBuilt();
          return localRecordLoginAppAccountReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.devAppId_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.appAccountId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFB;
        this.toke_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.imei_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.imsi_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.sdkVersion_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.channel_ = "";
        this.bitField0_ &= 0xFF7F;
        this.ua_ = "";
        this.bitField0_ &= 0xFEFF;
        this.currentChannel_ = "";
        this.bitField0_ &= 0xFDFF;
        this.imeiMd5_ = "";
        this.bitField0_ &= 0xFBFF;
        this.firstChannel_ = "";
        this.bitField0_ &= 0xF7FF;
        return this;
      }
      
      public final Builder clearAppAccountId()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.appAccountId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearChannel()
      {
        this.bitField0_ &= 0xFF7F;
        this.channel_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearCurrentChannel()
      {
        this.bitField0_ &= 0xFDFF;
        this.currentChannel_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getCurrentChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.devAppId_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getDevAppId();
        onChanged();
        return this;
      }
      
      public final Builder clearFirstChannel()
      {
        this.bitField0_ &= 0xF7FF;
        this.firstChannel_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getFirstChannel();
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
      
      public final Builder clearImei()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.imei_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getImei();
        onChanged();
        return this;
      }
      
      public final Builder clearImeiMd5()
      {
        this.bitField0_ &= 0xFBFF;
        this.imeiMd5_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getImeiMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearImsi()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.imsi_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getImsi();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkVersion()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.sdkVersion_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getSdkVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearToke()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.toke_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getToke();
        onChanged();
        return this;
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFEFF;
        this.ua_ = LoginProto.RecordLoginAppAccountReq.getDefaultInstance().getUa();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final long getAppAccountId()
      {
        return this.appAccountId_;
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
      
      public final String getCurrentChannel()
      {
        Object localObject = this.currentChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.currentChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCurrentChannelBytes()
      {
        Object localObject = this.currentChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.currentChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final LoginProto.RecordLoginAppAccountReq getDefaultInstanceForType()
      {
        return LoginProto.RecordLoginAppAccountReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_descriptor;
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
      
      public final String getFirstChannel()
      {
        Object localObject = this.firstChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.firstChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getFirstChannelBytes()
      {
        Object localObject = this.firstChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.firstChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getImei()
      {
        Object localObject = this.imei_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imei_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiBytes()
      {
        Object localObject = this.imei_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imei_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getImsi()
      {
        Object localObject = this.imsi_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imsi_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImsiBytes()
      {
        Object localObject = this.imsi_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imsi_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getToke()
      {
        Object localObject = this.toke_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.toke_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTokeBytes()
      {
        Object localObject = this.toke_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.toke_ = localObject;
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
      
      public final boolean hasAppAccountId()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasChannel()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasCurrentChannel()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasFirstChannel()
      {
        return (this.bitField0_ & 0x800) == 2048;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasImei()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasImeiMd5()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasImsi()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasSdkVersion()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasToke()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountReq_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.RecordLoginAppAccountReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasFuid()) {}
        while ((!hasDevAppId()) || (!hasAppAccountId()) || (!hasToke())) {
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
        //   2: getstatic 302	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 308 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 219	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 311	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 219	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountReq$Builder;
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
        if ((paramMessage instanceof LoginProto.RecordLoginAppAccountReq)) {
          return mergeFrom((LoginProto.RecordLoginAppAccountReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.RecordLoginAppAccountReq paramRecordLoginAppAccountReq)
      {
        if (paramRecordLoginAppAccountReq == LoginProto.RecordLoginAppAccountReq.getDefaultInstance()) {
          return this;
        }
        if (paramRecordLoginAppAccountReq.hasFuid()) {
          setFuid(paramRecordLoginAppAccountReq.getFuid());
        }
        if (paramRecordLoginAppAccountReq.hasDevAppId())
        {
          this.bitField0_ |= 0x2;
          this.devAppId_ = paramRecordLoginAppAccountReq.devAppId_;
          onChanged();
        }
        if (paramRecordLoginAppAccountReq.hasAppAccountId()) {
          setAppAccountId(paramRecordLoginAppAccountReq.getAppAccountId());
        }
        if (paramRecordLoginAppAccountReq.hasToke())
        {
          this.bitField0_ |= 0x8;
          this.toke_ = paramRecordLoginAppAccountReq.toke_;
          onChanged();
        }
        if (paramRecordLoginAppAccountReq.hasImei())
        {
          this.bitField0_ |= 0x10;
          this.imei_ = paramRecordLoginAppAccountReq.imei_;
          onChanged();
        }
        if (paramRecordLoginAppAccountReq.hasImsi())
        {
          this.bitField0_ |= 0x20;
          this.imsi_ = paramRecordLoginAppAccountReq.imsi_;
          onChanged();
        }
        if (paramRecordLoginAppAccountReq.hasSdkVersion())
        {
          this.bitField0_ |= 0x40;
          this.sdkVersion_ = paramRecordLoginAppAccountReq.sdkVersion_;
          onChanged();
        }
        if (paramRecordLoginAppAccountReq.hasChannel())
        {
          this.bitField0_ |= 0x80;
          this.channel_ = paramRecordLoginAppAccountReq.channel_;
          onChanged();
        }
        if (paramRecordLoginAppAccountReq.hasUa())
        {
          this.bitField0_ |= 0x100;
          this.ua_ = paramRecordLoginAppAccountReq.ua_;
          onChanged();
        }
        if (paramRecordLoginAppAccountReq.hasCurrentChannel())
        {
          this.bitField0_ |= 0x200;
          this.currentChannel_ = paramRecordLoginAppAccountReq.currentChannel_;
          onChanged();
        }
        if (paramRecordLoginAppAccountReq.hasImeiMd5())
        {
          this.bitField0_ |= 0x400;
          this.imeiMd5_ = paramRecordLoginAppAccountReq.imeiMd5_;
          onChanged();
        }
        if (paramRecordLoginAppAccountReq.hasFirstChannel())
        {
          this.bitField0_ |= 0x800;
          this.firstChannel_ = paramRecordLoginAppAccountReq.firstChannel_;
          onChanged();
        }
        mergeUnknownFields(paramRecordLoginAppAccountReq.getUnknownFields());
        return this;
      }
      
      public final Builder setAppAccountId(long paramLong)
      {
        this.bitField0_ |= 0x4;
        this.appAccountId_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.channel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.channel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.currentChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.currentChannel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.devAppId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.devAppId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.firstChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x800;
        this.firstChannel_ = paramByteString;
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
      
      public final Builder setImei(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imei_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imei_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.imeiMd5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.imeiMd5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImsi(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.imsi_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImsiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.imsi_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.sdkVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.sdkVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setToke(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.toke_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTokeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.toke_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface RecordLoginAppAccountReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract long getAppAccountId();
    
    public abstract String getChannel();
    
    public abstract ByteString getChannelBytes();
    
    public abstract String getCurrentChannel();
    
    public abstract ByteString getCurrentChannelBytes();
    
    public abstract String getDevAppId();
    
    public abstract ByteString getDevAppIdBytes();
    
    public abstract String getFirstChannel();
    
    public abstract ByteString getFirstChannelBytes();
    
    public abstract long getFuid();
    
    public abstract String getImei();
    
    public abstract ByteString getImeiBytes();
    
    public abstract String getImeiMd5();
    
    public abstract ByteString getImeiMd5Bytes();
    
    public abstract String getImsi();
    
    public abstract ByteString getImsiBytes();
    
    public abstract String getSdkVersion();
    
    public abstract ByteString getSdkVersionBytes();
    
    public abstract String getToke();
    
    public abstract ByteString getTokeBytes();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract boolean hasAppAccountId();
    
    public abstract boolean hasChannel();
    
    public abstract boolean hasCurrentChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasFirstChannel();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasImei();
    
    public abstract boolean hasImeiMd5();
    
    public abstract boolean hasImsi();
    
    public abstract boolean hasSdkVersion();
    
    public abstract boolean hasToke();
    
    public abstract boolean hasUa();
  }
  
  public static final class RecordLoginAppAccountRsp
    extends GeneratedMessage
    implements LoginProto.RecordLoginAppAccountRspOrBuilder
  {
    public static Parser<RecordLoginAppAccountRsp> PARSER = new ac();
    public static final int RETCODE_FIELD_NUMBER = 1;
    private static final RecordLoginAppAccountRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int retCode_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      RecordLoginAppAccountRsp localRecordLoginAppAccountRsp = new RecordLoginAppAccountRsp(true);
      defaultInstance = localRecordLoginAppAccountRsp;
      localRecordLoginAppAccountRsp.initFields();
    }
    
    /* Error */
    private RecordLoginAppAccountRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 57	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 59	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 48	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:initFields	()V
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
      //   71: invokevirtual 75	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   74: ifne -49 -> 25
      //   77: iconst_1
      //   78: istore_3
      //   79: goto -54 -> 25
      //   82: aload_0
      //   83: aload_0
      //   84: getfield 77	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:bitField0_	I
      //   87: iconst_1
      //   88: ior
      //   89: putfield 77	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:bitField0_	I
      //   92: aload_0
      //   93: aload_1
      //   94: invokevirtual 80	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   97: putfield 82	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:retCode_	I
      //   100: goto -75 -> 25
      //   103: astore_1
      //   104: aload_1
      //   105: aload_0
      //   106: invokevirtual 86	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   109: athrow
      //   110: astore_1
      //   111: aload_0
      //   112: aload 5
      //   114: invokevirtual 92	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   117: putfield 94	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   120: aload_0
      //   121: invokevirtual 97	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:makeExtensionsImmutable	()V
      //   124: aload_1
      //   125: athrow
      //   126: aload_0
      //   127: aload 5
      //   129: invokevirtual 92	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   132: putfield 94	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   135: aload_0
      //   136: invokevirtual 97	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:makeExtensionsImmutable	()V
      //   139: return
      //   140: astore_1
      //   141: new 52	com/google/protobuf/InvalidProtocolBufferException
      //   144: dup
      //   145: aload_1
      //   146: invokevirtual 101	java/io/IOException:getMessage	()Ljava/lang/String;
      //   149: invokespecial 104	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   152: aload_0
      //   153: invokevirtual 86	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   156: athrow
      //   157: goto -93 -> 64
      //   160: iconst_1
      //   161: istore_3
      //   162: goto -137 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	165	0	this	RecordLoginAppAccountRsp
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
    
    private RecordLoginAppAccountRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private RecordLoginAppAccountRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static RecordLoginAppAccountRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$16100();
    }
    
    public static Builder newBuilder(RecordLoginAppAccountRsp paramRecordLoginAppAccountRsp)
    {
      return newBuilder().mergeFrom(paramRecordLoginAppAccountRsp);
    }
    
    public static RecordLoginAppAccountRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static RecordLoginAppAccountRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RecordLoginAppAccountRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static RecordLoginAppAccountRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static RecordLoginAppAccountRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static RecordLoginAppAccountRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static RecordLoginAppAccountRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static RecordLoginAppAccountRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RecordLoginAppAccountRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static RecordLoginAppAccountRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RecordLoginAppAccountRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final RecordLoginAppAccountRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<RecordLoginAppAccountRsp> getParserForType()
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
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
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
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(RecordLoginAppAccountRsp.class, Builder.class);
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
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.RecordLoginAppAccountRspOrBuilder
    {
      private int bitField0_;
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
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.RecordLoginAppAccountRsp build()
      {
        LoginProto.RecordLoginAppAccountRsp localRecordLoginAppAccountRsp = buildPartial();
        if (!localRecordLoginAppAccountRsp.isInitialized()) {
          throw newUninitializedMessageException(localRecordLoginAppAccountRsp);
        }
        return localRecordLoginAppAccountRsp;
      }
      
      public final LoginProto.RecordLoginAppAccountRsp buildPartial()
      {
        int i = 1;
        LoginProto.RecordLoginAppAccountRsp localRecordLoginAppAccountRsp = new LoginProto.RecordLoginAppAccountRsp(this, null);
        if ((this.bitField0_ & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.RecordLoginAppAccountRsp.access$16502(localRecordLoginAppAccountRsp, this.retCode_);
          LoginProto.RecordLoginAppAccountRsp.access$16602(localRecordLoginAppAccountRsp, i);
          onBuilt();
          return localRecordLoginAppAccountRsp;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
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
      
      public final LoginProto.RecordLoginAppAccountRsp getDefaultInstanceForType()
      {
        return LoginProto.RecordLoginAppAccountRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_descriptor;
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
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_RecordLoginAppAccountRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.RecordLoginAppAccountRsp.class, Builder.class);
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
        //   2: getstatic 145	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 151 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 102	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 154	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 102	org/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$RecordLoginAppAccountRsp$Builder;
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
        if ((paramMessage instanceof LoginProto.RecordLoginAppAccountRsp)) {
          return mergeFrom((LoginProto.RecordLoginAppAccountRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.RecordLoginAppAccountRsp paramRecordLoginAppAccountRsp)
      {
        if (paramRecordLoginAppAccountRsp == LoginProto.RecordLoginAppAccountRsp.getDefaultInstance()) {
          return this;
        }
        if (paramRecordLoginAppAccountRsp.hasRetCode()) {
          setRetCode(paramRecordLoginAppAccountRsp.getRetCode());
        }
        mergeUnknownFields(paramRecordLoginAppAccountRsp.getUnknownFields());
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
  
  public static abstract interface RecordLoginAppAccountRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getRetCode();
    
    public abstract boolean hasRetCode();
  }
  
  public static final class SdkInitReq
    extends GeneratedMessage
    implements LoginProto.SdkInitReqOrBuilder
  {
    public static final int APPKEY_FIELD_NUMBER = 3;
    public static final int CHANNEL_FIELD_NUMBER = 7;
    public static final int CURRENTCHANNEL_FIELD_NUMBER = 9;
    public static final int DEVAPPID_FIELD_NUMBER = 1;
    public static final int FIRSTCHANNEL_FIELD_NUMBER = 11;
    public static final int IMEIMD5_FIELD_NUMBER = 10;
    public static final int IMEI_FIELD_NUMBER = 4;
    public static final int IMSI_FIELD_NUMBER = 5;
    public static final int PACKAGENAME_FIELD_NUMBER = 2;
    public static Parser<SdkInitReq> PARSER = new ad();
    public static final int SDKVERSION_FIELD_NUMBER = 6;
    public static final int UA_FIELD_NUMBER = 8;
    private static final SdkInitReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private Object appKey_;
    private int bitField0_;
    private Object channel_;
    private Object currentChannel_;
    private Object devAppId_;
    private Object firstChannel_;
    private Object imeiMd5_;
    private Object imei_;
    private Object imsi_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object packageName_;
    private Object sdkVersion_;
    private Object ua_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      SdkInitReq localSdkInitReq = new SdkInitReq(true);
      defaultInstance = localSdkInitReq;
      localSdkInitReq.initFields();
    }
    
    /* Error */
    private SdkInitReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 86	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 88	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 90	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 79	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:initFields	()V
      //   18: invokestatic 96	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +463 -> 489
      //   29: aload_1
      //   30: invokevirtual 102	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+466->503, 0:+469->506, 10:+125->162, 18:+173->210, 26:+215->252, 34:+240->277, 42:+266->303, 50:+292->329, 58:+318->355, 66:+344->381, 74:+371->408, 82:+398->435, 90:+425->462
      //   144: aload_0
      //   145: aload_1
      //   146: aload 5
      //   148: aload_2
      //   149: iload 4
      //   151: invokevirtual 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   154: ifne -129 -> 25
      //   157: iconst_1
      //   158: istore_3
      //   159: goto -134 -> 25
      //   162: aload_1
      //   163: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   166: astore 6
      //   168: aload_0
      //   169: aload_0
      //   170: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   173: iconst_1
      //   174: ior
      //   175: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   178: aload_0
      //   179: aload 6
      //   181: putfield 114	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:devAppId_	Ljava/lang/Object;
      //   184: goto -159 -> 25
      //   187: astore_1
      //   188: aload_1
      //   189: aload_0
      //   190: invokevirtual 118	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   193: athrow
      //   194: astore_1
      //   195: aload_0
      //   196: aload 5
      //   198: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   201: putfield 126	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   204: aload_0
      //   205: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:makeExtensionsImmutable	()V
      //   208: aload_1
      //   209: athrow
      //   210: aload_1
      //   211: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   214: astore 6
      //   216: aload_0
      //   217: aload_0
      //   218: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   221: iconst_2
      //   222: ior
      //   223: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   226: aload_0
      //   227: aload 6
      //   229: putfield 131	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:packageName_	Ljava/lang/Object;
      //   232: goto -207 -> 25
      //   235: astore_1
      //   236: new 83	com/google/protobuf/InvalidProtocolBufferException
      //   239: dup
      //   240: aload_1
      //   241: invokevirtual 135	java/io/IOException:getMessage	()Ljava/lang/String;
      //   244: invokespecial 138	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   247: aload_0
      //   248: invokevirtual 118	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   251: athrow
      //   252: aload_1
      //   253: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   256: astore 6
      //   258: aload_0
      //   259: aload_0
      //   260: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   263: iconst_4
      //   264: ior
      //   265: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   268: aload_0
      //   269: aload 6
      //   271: putfield 140	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:appKey_	Ljava/lang/Object;
      //   274: goto -249 -> 25
      //   277: aload_1
      //   278: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   281: astore 6
      //   283: aload_0
      //   284: aload_0
      //   285: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   288: bipush 8
      //   290: ior
      //   291: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   294: aload_0
      //   295: aload 6
      //   297: putfield 142	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:imei_	Ljava/lang/Object;
      //   300: goto -275 -> 25
      //   303: aload_1
      //   304: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   307: astore 6
      //   309: aload_0
      //   310: aload_0
      //   311: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   314: bipush 16
      //   316: ior
      //   317: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   320: aload_0
      //   321: aload 6
      //   323: putfield 144	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:imsi_	Ljava/lang/Object;
      //   326: goto -301 -> 25
      //   329: aload_1
      //   330: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   333: astore 6
      //   335: aload_0
      //   336: aload_0
      //   337: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   340: bipush 32
      //   342: ior
      //   343: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   346: aload_0
      //   347: aload 6
      //   349: putfield 146	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:sdkVersion_	Ljava/lang/Object;
      //   352: goto -327 -> 25
      //   355: aload_1
      //   356: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   359: astore 6
      //   361: aload_0
      //   362: aload_0
      //   363: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   366: bipush 64
      //   368: ior
      //   369: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   372: aload_0
      //   373: aload 6
      //   375: putfield 148	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:channel_	Ljava/lang/Object;
      //   378: goto -353 -> 25
      //   381: aload_1
      //   382: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   385: astore 6
      //   387: aload_0
      //   388: aload_0
      //   389: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   392: sipush 128
      //   395: ior
      //   396: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   399: aload_0
      //   400: aload 6
      //   402: putfield 150	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:ua_	Ljava/lang/Object;
      //   405: goto -380 -> 25
      //   408: aload_1
      //   409: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   412: astore 6
      //   414: aload_0
      //   415: aload_0
      //   416: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   419: sipush 256
      //   422: ior
      //   423: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   426: aload_0
      //   427: aload 6
      //   429: putfield 152	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:currentChannel_	Ljava/lang/Object;
      //   432: goto -407 -> 25
      //   435: aload_1
      //   436: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   439: astore 6
      //   441: aload_0
      //   442: aload_0
      //   443: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   446: sipush 512
      //   449: ior
      //   450: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   453: aload_0
      //   454: aload 6
      //   456: putfield 154	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:imeiMd5_	Ljava/lang/Object;
      //   459: goto -434 -> 25
      //   462: aload_1
      //   463: invokevirtual 110	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   466: astore 6
      //   468: aload_0
      //   469: aload_0
      //   470: getfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   473: sipush 1024
      //   476: ior
      //   477: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:bitField0_	I
      //   480: aload_0
      //   481: aload 6
      //   483: putfield 156	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:firstChannel_	Ljava/lang/Object;
      //   486: goto -461 -> 25
      //   489: aload_0
      //   490: aload 5
      //   492: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   495: putfield 126	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   498: aload_0
      //   499: invokevirtual 129	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:makeExtensionsImmutable	()V
      //   502: return
      //   503: goto -359 -> 144
      //   506: iconst_1
      //   507: istore_3
      //   508: goto -483 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	511	0	this	SdkInitReq
      //   0	511	1	paramCodedInputStream	CodedInputStream
      //   0	511	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	484	3	i	int
      //   33	117	4	j	int
      //   21	470	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   166	316	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	187	com/google/protobuf/InvalidProtocolBufferException
      //   144	157	187	com/google/protobuf/InvalidProtocolBufferException
      //   162	184	187	com/google/protobuf/InvalidProtocolBufferException
      //   210	232	187	com/google/protobuf/InvalidProtocolBufferException
      //   252	274	187	com/google/protobuf/InvalidProtocolBufferException
      //   277	300	187	com/google/protobuf/InvalidProtocolBufferException
      //   303	326	187	com/google/protobuf/InvalidProtocolBufferException
      //   329	352	187	com/google/protobuf/InvalidProtocolBufferException
      //   355	378	187	com/google/protobuf/InvalidProtocolBufferException
      //   381	405	187	com/google/protobuf/InvalidProtocolBufferException
      //   408	432	187	com/google/protobuf/InvalidProtocolBufferException
      //   435	459	187	com/google/protobuf/InvalidProtocolBufferException
      //   462	486	187	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	194	finally
      //   144	157	194	finally
      //   162	184	194	finally
      //   188	194	194	finally
      //   210	232	194	finally
      //   236	252	194	finally
      //   252	274	194	finally
      //   277	300	194	finally
      //   303	326	194	finally
      //   329	352	194	finally
      //   355	378	194	finally
      //   381	405	194	finally
      //   408	432	194	finally
      //   435	459	194	finally
      //   462	486	194	finally
      //   29	35	235	java/io/IOException
      //   144	157	235	java/io/IOException
      //   162	184	235	java/io/IOException
      //   210	232	235	java/io/IOException
      //   252	274	235	java/io/IOException
      //   277	300	235	java/io/IOException
      //   303	326	235	java/io/IOException
      //   329	352	235	java/io/IOException
      //   355	378	235	java/io/IOException
      //   381	405	235	java/io/IOException
      //   408	432	235	java/io/IOException
      //   435	459	235	java/io/IOException
      //   462	486	235	java/io/IOException
    }
    
    private SdkInitReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private SdkInitReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static SdkInitReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_descriptor;
    }
    
    private void initFields()
    {
      this.devAppId_ = "";
      this.packageName_ = "";
      this.appKey_ = "";
      this.imei_ = "";
      this.imsi_ = "";
      this.sdkVersion_ = "";
      this.channel_ = "";
      this.ua_ = "";
      this.currentChannel_ = "";
      this.imeiMd5_ = "";
      this.firstChannel_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$7600();
    }
    
    public static Builder newBuilder(SdkInitReq paramSdkInitReq)
    {
      return newBuilder().mergeFrom(paramSdkInitReq);
    }
    
    public static SdkInitReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkInitReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static SdkInitReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkInitReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkInitReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (SdkInitReq)PARSER.parseFrom(paramByteString);
    }
    
    public static SdkInitReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkInitReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static SdkInitReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (SdkInitReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static SdkInitReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkInitReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkInitReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkInitReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static SdkInitReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkInitReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkInitReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (SdkInitReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static SdkInitReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkInitReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getAppKey()
    {
      Object localObject = this.appKey_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.appKey_ = str;
      }
      return str;
    }
    
    public final ByteString getAppKeyBytes()
    {
      Object localObject = this.appKey_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.appKey_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
    
    public final String getCurrentChannel()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.currentChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getCurrentChannelBytes()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.currentChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final SdkInitReq getDefaultInstanceForType()
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
    
    public final String getFirstChannel()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.firstChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getFirstChannelBytes()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.firstChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getImei()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imei_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiBytes()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imei_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
    
    public final String getImsi()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imsi_ = str;
      }
      return str;
    }
    
    public final ByteString getImsiBytes()
    {
      Object localObject = this.imsi_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imsi_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getPackageName()
    {
      Object localObject = this.packageName_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.packageName_ = str;
      }
      return str;
    }
    
    public final ByteString getPackageNameBytes()
    {
      Object localObject = this.packageName_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.packageName_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<SdkInitReq> getParserForType()
    {
      return PARSER;
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
        j = CodedOutputStream.computeBytesSize(1, getDevAppIdBytes()) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getPackageNameBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getAppKeyBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeBytesSize(4, getImeiBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getImsiBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getSdkVersionBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBytesSize(7, getChannelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getUaBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getCurrentChannelBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getImeiMd5Bytes());
      }
      j = i;
      if ((this.bitField0_ & 0x400) == 1024) {
        j = i + CodedOutputStream.computeBytesSize(11, getFirstChannelBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
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
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAppKey()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasChannel()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasCurrentChannel()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasDevAppId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasFirstChannel()
    {
      return (this.bitField0_ & 0x400) == 1024;
    }
    
    public final boolean hasImei()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasImeiMd5()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasImsi()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasPackageName()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasSdkVersion()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasUa()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SdkInitReq.class, Builder.class);
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
      if (!hasPackageName())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasAppKey())
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
        paramCodedOutputStream.writeBytes(1, getDevAppIdBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getPackageNameBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getAppKeyBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getImeiBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getImsiBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getSdkVersionBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBytes(7, getChannelBytes());
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getUaBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getCurrentChannelBytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getImeiMd5Bytes());
      }
      if ((this.bitField0_ & 0x400) == 1024) {
        paramCodedOutputStream.writeBytes(11, getFirstChannelBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.SdkInitReqOrBuilder
    {
      private Object appKey_ = "";
      private int bitField0_;
      private Object channel_ = "";
      private Object currentChannel_ = "";
      private Object devAppId_ = "";
      private Object firstChannel_ = "";
      private Object imeiMd5_ = "";
      private Object imei_ = "";
      private Object imsi_ = "";
      private Object packageName_ = "";
      private Object sdkVersion_ = "";
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
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.SdkInitReq build()
      {
        LoginProto.SdkInitReq localSdkInitReq = buildPartial();
        if (!localSdkInitReq.isInitialized()) {
          throw newUninitializedMessageException(localSdkInitReq);
        }
        return localSdkInitReq;
      }
      
      public final LoginProto.SdkInitReq buildPartial()
      {
        int j = 1;
        LoginProto.SdkInitReq localSdkInitReq = new LoginProto.SdkInitReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.SdkInitReq.access$8002(localSdkInitReq, this.devAppId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.SdkInitReq.access$8102(localSdkInitReq, this.packageName_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.SdkInitReq.access$8202(localSdkInitReq, this.appKey_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.SdkInitReq.access$8302(localSdkInitReq, this.imei_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.SdkInitReq.access$8402(localSdkInitReq, this.imsi_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.SdkInitReq.access$8502(localSdkInitReq, this.sdkVersion_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          LoginProto.SdkInitReq.access$8602(localSdkInitReq, this.channel_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          LoginProto.SdkInitReq.access$8702(localSdkInitReq, this.ua_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          LoginProto.SdkInitReq.access$8802(localSdkInitReq, this.currentChannel_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          LoginProto.SdkInitReq.access$8902(localSdkInitReq, this.imeiMd5_);
          j = i;
          if ((k & 0x400) == 1024) {
            j = i | 0x400;
          }
          LoginProto.SdkInitReq.access$9002(localSdkInitReq, this.firstChannel_);
          LoginProto.SdkInitReq.access$9102(localSdkInitReq, j);
          onBuilt();
          return localSdkInitReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.devAppId_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.packageName_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.appKey_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.imei_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.imsi_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.sdkVersion_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.channel_ = "";
        this.bitField0_ &= 0xFFFFFFBF;
        this.ua_ = "";
        this.bitField0_ &= 0xFF7F;
        this.currentChannel_ = "";
        this.bitField0_ &= 0xFEFF;
        this.imeiMd5_ = "";
        this.bitField0_ &= 0xFDFF;
        this.firstChannel_ = "";
        this.bitField0_ &= 0xFBFF;
        return this;
      }
      
      public final Builder clearAppKey()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.appKey_ = LoginProto.SdkInitReq.getDefaultInstance().getAppKey();
        onChanged();
        return this;
      }
      
      public final Builder clearChannel()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.channel_ = LoginProto.SdkInitReq.getDefaultInstance().getChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearCurrentChannel()
      {
        this.bitField0_ &= 0xFEFF;
        this.currentChannel_ = LoginProto.SdkInitReq.getDefaultInstance().getCurrentChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearDevAppId()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.devAppId_ = LoginProto.SdkInitReq.getDefaultInstance().getDevAppId();
        onChanged();
        return this;
      }
      
      public final Builder clearFirstChannel()
      {
        this.bitField0_ &= 0xFBFF;
        this.firstChannel_ = LoginProto.SdkInitReq.getDefaultInstance().getFirstChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearImei()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.imei_ = LoginProto.SdkInitReq.getDefaultInstance().getImei();
        onChanged();
        return this;
      }
      
      public final Builder clearImeiMd5()
      {
        this.bitField0_ &= 0xFDFF;
        this.imeiMd5_ = LoginProto.SdkInitReq.getDefaultInstance().getImeiMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearImsi()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.imsi_ = LoginProto.SdkInitReq.getDefaultInstance().getImsi();
        onChanged();
        return this;
      }
      
      public final Builder clearPackageName()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.packageName_ = LoginProto.SdkInitReq.getDefaultInstance().getPackageName();
        onChanged();
        return this;
      }
      
      public final Builder clearSdkVersion()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.sdkVersion_ = LoginProto.SdkInitReq.getDefaultInstance().getSdkVersion();
        onChanged();
        return this;
      }
      
      public final Builder clearUa()
      {
        this.bitField0_ &= 0xFF7F;
        this.ua_ = LoginProto.SdkInitReq.getDefaultInstance().getUa();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getAppKey()
      {
        Object localObject = this.appKey_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.appKey_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getAppKeyBytes()
      {
        Object localObject = this.appKey_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.appKey_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getCurrentChannel()
      {
        Object localObject = this.currentChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.currentChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCurrentChannelBytes()
      {
        Object localObject = this.currentChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.currentChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final LoginProto.SdkInitReq getDefaultInstanceForType()
      {
        return LoginProto.SdkInitReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_descriptor;
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
      
      public final String getFirstChannel()
      {
        Object localObject = this.firstChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.firstChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getFirstChannelBytes()
      {
        Object localObject = this.firstChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.firstChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getImei()
      {
        Object localObject = this.imei_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imei_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiBytes()
      {
        Object localObject = this.imei_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imei_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getImsi()
      {
        Object localObject = this.imsi_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imsi_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImsiBytes()
      {
        Object localObject = this.imsi_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imsi_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getPackageName()
      {
        Object localObject = this.packageName_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.packageName_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getPackageNameBytes()
      {
        Object localObject = this.packageName_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.packageName_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final boolean hasAppKey()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasChannel()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasCurrentChannel()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasDevAppId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasFirstChannel()
      {
        return (this.bitField0_ & 0x400) == 1024;
      }
      
      public final boolean hasImei()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasImeiMd5()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasImsi()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasPackageName()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasSdkVersion()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasUa()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitReq_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.SdkInitReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasDevAppId()) {}
        while ((!hasPackageName()) || (!hasAppKey())) {
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
        //   2: getstatic 291	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 297 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 213	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 300	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 213	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;
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
        if ((paramMessage instanceof LoginProto.SdkInitReq)) {
          return mergeFrom((LoginProto.SdkInitReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.SdkInitReq paramSdkInitReq)
      {
        if (paramSdkInitReq == LoginProto.SdkInitReq.getDefaultInstance()) {
          return this;
        }
        if (paramSdkInitReq.hasDevAppId())
        {
          this.bitField0_ |= 0x1;
          this.devAppId_ = paramSdkInitReq.devAppId_;
          onChanged();
        }
        if (paramSdkInitReq.hasPackageName())
        {
          this.bitField0_ |= 0x2;
          this.packageName_ = paramSdkInitReq.packageName_;
          onChanged();
        }
        if (paramSdkInitReq.hasAppKey())
        {
          this.bitField0_ |= 0x4;
          this.appKey_ = paramSdkInitReq.appKey_;
          onChanged();
        }
        if (paramSdkInitReq.hasImei())
        {
          this.bitField0_ |= 0x8;
          this.imei_ = paramSdkInitReq.imei_;
          onChanged();
        }
        if (paramSdkInitReq.hasImsi())
        {
          this.bitField0_ |= 0x10;
          this.imsi_ = paramSdkInitReq.imsi_;
          onChanged();
        }
        if (paramSdkInitReq.hasSdkVersion())
        {
          this.bitField0_ |= 0x20;
          this.sdkVersion_ = paramSdkInitReq.sdkVersion_;
          onChanged();
        }
        if (paramSdkInitReq.hasChannel())
        {
          this.bitField0_ |= 0x40;
          this.channel_ = paramSdkInitReq.channel_;
          onChanged();
        }
        if (paramSdkInitReq.hasUa())
        {
          this.bitField0_ |= 0x80;
          this.ua_ = paramSdkInitReq.ua_;
          onChanged();
        }
        if (paramSdkInitReq.hasCurrentChannel())
        {
          this.bitField0_ |= 0x100;
          this.currentChannel_ = paramSdkInitReq.currentChannel_;
          onChanged();
        }
        if (paramSdkInitReq.hasImeiMd5())
        {
          this.bitField0_ |= 0x200;
          this.imeiMd5_ = paramSdkInitReq.imeiMd5_;
          onChanged();
        }
        if (paramSdkInitReq.hasFirstChannel())
        {
          this.bitField0_ |= 0x400;
          this.firstChannel_ = paramSdkInitReq.firstChannel_;
          onChanged();
        }
        mergeUnknownFields(paramSdkInitReq.getUnknownFields());
        return this;
      }
      
      public final Builder setAppKey(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.appKey_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setAppKeyBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.appKey_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.channel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x40;
        this.channel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.currentChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.currentChannel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppId(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.devAppId_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDevAppIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.devAppId_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.firstChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x400;
        this.firstChannel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImei(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.imei_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.imeiMd5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.imeiMd5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImsi(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImsiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imsi_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setPackageName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.packageName_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setPackageNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.packageName_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersion(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.sdkVersion_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setSdkVersionBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.sdkVersion_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setUa(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.ua_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUaBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.ua_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface SdkInitReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getAppKey();
    
    public abstract ByteString getAppKeyBytes();
    
    public abstract String getChannel();
    
    public abstract ByteString getChannelBytes();
    
    public abstract String getCurrentChannel();
    
    public abstract ByteString getCurrentChannelBytes();
    
    public abstract String getDevAppId();
    
    public abstract ByteString getDevAppIdBytes();
    
    public abstract String getFirstChannel();
    
    public abstract ByteString getFirstChannelBytes();
    
    public abstract String getImei();
    
    public abstract ByteString getImeiBytes();
    
    public abstract String getImeiMd5();
    
    public abstract ByteString getImeiMd5Bytes();
    
    public abstract String getImsi();
    
    public abstract ByteString getImsiBytes();
    
    public abstract String getPackageName();
    
    public abstract ByteString getPackageNameBytes();
    
    public abstract String getSdkVersion();
    
    public abstract ByteString getSdkVersionBytes();
    
    public abstract String getUa();
    
    public abstract ByteString getUaBytes();
    
    public abstract boolean hasAppKey();
    
    public abstract boolean hasChannel();
    
    public abstract boolean hasCurrentChannel();
    
    public abstract boolean hasDevAppId();
    
    public abstract boolean hasFirstChannel();
    
    public abstract boolean hasImei();
    
    public abstract boolean hasImeiMd5();
    
    public abstract boolean hasImsi();
    
    public abstract boolean hasPackageName();
    
    public abstract boolean hasSdkVersion();
    
    public abstract boolean hasUa();
  }
  
  public static final class SdkInitRsp
    extends GeneratedMessage
    implements LoginProto.SdkInitRspOrBuilder
  {
    public static final int CHANNELBLACKLIST_FIELD_NUMBER = 7;
    public static final int CRONTIME_FIELD_NUMBER = 5;
    public static final int DISPALYTOOLBAR_FIELD_NUMBER = 6;
    public static final int DISPLAYLOGINBAR_FIELD_NUMBER = 4;
    public static final int MUTILACCOUNTS_FIELD_NUMBER = 3;
    public static Parser<SdkInitRsp> PARSER = new ae();
    public static final int RETCODE_FIELD_NUMBER = 1;
    public static final int TYPE_FIELD_NUMBER = 2;
    private static final SdkInitRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private LazyStringList channelBlackList_;
    private Object cronTime_;
    private Object dispalyToolBar_;
    private Object displayLoginBar_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object mutilAccounts_;
    private int retCode_;
    private Object type_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      SdkInitRsp localSdkInitRsp = new SdkInitRsp(true);
      defaultInstance = localSdkInitRsp;
      localSdkInitRsp.initFields();
    }
    
    /* Error */
    private SdkInitRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 75	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 77	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 79	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 68	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:initFields	()V
      //   18: invokestatic 85	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 9
      //   23: iconst_0
      //   24: istore 6
      //   26: iconst_0
      //   27: istore_3
      //   28: iload 6
      //   30: ifne +577 -> 607
      //   33: iload_3
      //   34: istore 7
      //   36: iload_3
      //   37: istore 5
      //   39: iload_3
      //   40: istore 8
      //   42: aload_1
      //   43: invokevirtual 91	com/google/protobuf/CodedInputStream:readTag	()I
      //   46: istore 4
      //   48: iload 4
      //   50: lookupswitch	default:+593->643, 0:+596->646, 8:+102->152, 18:+191->241, 26:+264->314, 34:+316->366, 42:+369->419, 50:+422->472, 58:+475->525
      //   124: iload_3
      //   125: istore 7
      //   127: iload_3
      //   128: istore 5
      //   130: iload_3
      //   131: istore 8
      //   133: aload_0
      //   134: aload_1
      //   135: aload 9
      //   137: aload_2
      //   138: iload 4
      //   140: invokevirtual 95	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   143: ifne -115 -> 28
      //   146: iconst_1
      //   147: istore 6
      //   149: goto -121 -> 28
      //   152: iload_3
      //   153: istore 7
      //   155: iload_3
      //   156: istore 5
      //   158: iload_3
      //   159: istore 8
      //   161: aload_0
      //   162: aload_0
      //   163: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   166: iconst_1
      //   167: ior
      //   168: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   171: iload_3
      //   172: istore 7
      //   174: iload_3
      //   175: istore 5
      //   177: iload_3
      //   178: istore 8
      //   180: aload_0
      //   181: aload_1
      //   182: invokevirtual 100	com/google/protobuf/CodedInputStream:readInt32	()I
      //   185: putfield 102	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:retCode_	I
      //   188: goto -160 -> 28
      //   191: astore_1
      //   192: iload 7
      //   194: istore 5
      //   196: aload_1
      //   197: aload_0
      //   198: invokevirtual 106	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   201: athrow
      //   202: astore_1
      //   203: iload 5
      //   205: bipush 64
      //   207: iand
      //   208: bipush 64
      //   210: if_icmpne +16 -> 226
      //   213: aload_0
      //   214: aload_0
      //   215: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:channelBlackList_	Lcom/google/protobuf/LazyStringList;
      //   218: invokeinterface 114 1 0
      //   223: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:channelBlackList_	Lcom/google/protobuf/LazyStringList;
      //   226: aload_0
      //   227: aload 9
      //   229: invokevirtual 120	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   232: putfield 122	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   235: aload_0
      //   236: invokevirtual 125	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:makeExtensionsImmutable	()V
      //   239: aload_1
      //   240: athrow
      //   241: iload_3
      //   242: istore 7
      //   244: iload_3
      //   245: istore 5
      //   247: iload_3
      //   248: istore 8
      //   250: aload_1
      //   251: invokevirtual 129	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   254: astore 10
      //   256: iload_3
      //   257: istore 7
      //   259: iload_3
      //   260: istore 5
      //   262: iload_3
      //   263: istore 8
      //   265: aload_0
      //   266: aload_0
      //   267: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   270: iconst_2
      //   271: ior
      //   272: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   275: iload_3
      //   276: istore 7
      //   278: iload_3
      //   279: istore 5
      //   281: iload_3
      //   282: istore 8
      //   284: aload_0
      //   285: aload 10
      //   287: putfield 131	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:type_	Ljava/lang/Object;
      //   290: goto -262 -> 28
      //   293: astore_1
      //   294: iload 8
      //   296: istore 5
      //   298: new 72	com/google/protobuf/InvalidProtocolBufferException
      //   301: dup
      //   302: aload_1
      //   303: invokevirtual 135	java/io/IOException:getMessage	()Ljava/lang/String;
      //   306: invokespecial 138	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   309: aload_0
      //   310: invokevirtual 106	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   313: athrow
      //   314: iload_3
      //   315: istore 7
      //   317: iload_3
      //   318: istore 5
      //   320: iload_3
      //   321: istore 8
      //   323: aload_1
      //   324: invokevirtual 129	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   327: astore 10
      //   329: iload_3
      //   330: istore 7
      //   332: iload_3
      //   333: istore 5
      //   335: iload_3
      //   336: istore 8
      //   338: aload_0
      //   339: aload_0
      //   340: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   343: iconst_4
      //   344: ior
      //   345: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   348: iload_3
      //   349: istore 7
      //   351: iload_3
      //   352: istore 5
      //   354: iload_3
      //   355: istore 8
      //   357: aload_0
      //   358: aload 10
      //   360: putfield 140	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:mutilAccounts_	Ljava/lang/Object;
      //   363: goto -335 -> 28
      //   366: iload_3
      //   367: istore 7
      //   369: iload_3
      //   370: istore 5
      //   372: iload_3
      //   373: istore 8
      //   375: aload_1
      //   376: invokevirtual 129	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   379: astore 10
      //   381: iload_3
      //   382: istore 7
      //   384: iload_3
      //   385: istore 5
      //   387: iload_3
      //   388: istore 8
      //   390: aload_0
      //   391: aload_0
      //   392: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   395: bipush 8
      //   397: ior
      //   398: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   401: iload_3
      //   402: istore 7
      //   404: iload_3
      //   405: istore 5
      //   407: iload_3
      //   408: istore 8
      //   410: aload_0
      //   411: aload 10
      //   413: putfield 142	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:displayLoginBar_	Ljava/lang/Object;
      //   416: goto -388 -> 28
      //   419: iload_3
      //   420: istore 7
      //   422: iload_3
      //   423: istore 5
      //   425: iload_3
      //   426: istore 8
      //   428: aload_1
      //   429: invokevirtual 129	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   432: astore 10
      //   434: iload_3
      //   435: istore 7
      //   437: iload_3
      //   438: istore 5
      //   440: iload_3
      //   441: istore 8
      //   443: aload_0
      //   444: aload_0
      //   445: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   448: bipush 16
      //   450: ior
      //   451: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   454: iload_3
      //   455: istore 7
      //   457: iload_3
      //   458: istore 5
      //   460: iload_3
      //   461: istore 8
      //   463: aload_0
      //   464: aload 10
      //   466: putfield 144	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:cronTime_	Ljava/lang/Object;
      //   469: goto -441 -> 28
      //   472: iload_3
      //   473: istore 7
      //   475: iload_3
      //   476: istore 5
      //   478: iload_3
      //   479: istore 8
      //   481: aload_1
      //   482: invokevirtual 129	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   485: astore 10
      //   487: iload_3
      //   488: istore 7
      //   490: iload_3
      //   491: istore 5
      //   493: iload_3
      //   494: istore 8
      //   496: aload_0
      //   497: aload_0
      //   498: getfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   501: bipush 32
      //   503: ior
      //   504: putfield 97	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:bitField0_	I
      //   507: iload_3
      //   508: istore 7
      //   510: iload_3
      //   511: istore 5
      //   513: iload_3
      //   514: istore 8
      //   516: aload_0
      //   517: aload 10
      //   519: putfield 146	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:dispalyToolBar_	Ljava/lang/Object;
      //   522: goto -494 -> 28
      //   525: iload_3
      //   526: istore 7
      //   528: iload_3
      //   529: istore 5
      //   531: iload_3
      //   532: istore 8
      //   534: aload_1
      //   535: invokevirtual 129	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   538: astore 10
      //   540: iload_3
      //   541: istore 4
      //   543: iload_3
      //   544: bipush 64
      //   546: iand
      //   547: bipush 64
      //   549: if_icmpeq +29 -> 578
      //   552: iload_3
      //   553: istore 7
      //   555: iload_3
      //   556: istore 5
      //   558: iload_3
      //   559: istore 8
      //   561: aload_0
      //   562: new 148	com/google/protobuf/LazyStringArrayList
      //   565: dup
      //   566: invokespecial 149	com/google/protobuf/LazyStringArrayList:<init>	()V
      //   569: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:channelBlackList_	Lcom/google/protobuf/LazyStringList;
      //   572: iload_3
      //   573: bipush 64
      //   575: ior
      //   576: istore 4
      //   578: iload 4
      //   580: istore 7
      //   582: iload 4
      //   584: istore 5
      //   586: iload 4
      //   588: istore 8
      //   590: aload_0
      //   591: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:channelBlackList_	Lcom/google/protobuf/LazyStringList;
      //   594: aload 10
      //   596: invokeinterface 153 2 0
      //   601: iload 4
      //   603: istore_3
      //   604: goto -576 -> 28
      //   607: iload_3
      //   608: bipush 64
      //   610: iand
      //   611: bipush 64
      //   613: if_icmpne +16 -> 629
      //   616: aload_0
      //   617: aload_0
      //   618: getfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:channelBlackList_	Lcom/google/protobuf/LazyStringList;
      //   621: invokeinterface 114 1 0
      //   626: putfield 108	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:channelBlackList_	Lcom/google/protobuf/LazyStringList;
      //   629: aload_0
      //   630: aload 9
      //   632: invokevirtual 120	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   635: putfield 122	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   638: aload_0
      //   639: invokevirtual 125	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:makeExtensionsImmutable	()V
      //   642: return
      //   643: goto -519 -> 124
      //   646: iconst_1
      //   647: istore 6
      //   649: goto -621 -> 28
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	652	0	this	SdkInitRsp
      //   0	652	1	paramCodedInputStream	CodedInputStream
      //   0	652	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   27	584	3	i	int
      //   46	556	4	j	int
      //   37	548	5	k	int
      //   24	624	6	m	int
      //   34	547	7	n	int
      //   40	549	8	i1	int
      //   21	610	9	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   254	341	10	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   42	48	191	com/google/protobuf/InvalidProtocolBufferException
      //   133	146	191	com/google/protobuf/InvalidProtocolBufferException
      //   161	171	191	com/google/protobuf/InvalidProtocolBufferException
      //   180	188	191	com/google/protobuf/InvalidProtocolBufferException
      //   250	256	191	com/google/protobuf/InvalidProtocolBufferException
      //   265	275	191	com/google/protobuf/InvalidProtocolBufferException
      //   284	290	191	com/google/protobuf/InvalidProtocolBufferException
      //   323	329	191	com/google/protobuf/InvalidProtocolBufferException
      //   338	348	191	com/google/protobuf/InvalidProtocolBufferException
      //   357	363	191	com/google/protobuf/InvalidProtocolBufferException
      //   375	381	191	com/google/protobuf/InvalidProtocolBufferException
      //   390	401	191	com/google/protobuf/InvalidProtocolBufferException
      //   410	416	191	com/google/protobuf/InvalidProtocolBufferException
      //   428	434	191	com/google/protobuf/InvalidProtocolBufferException
      //   443	454	191	com/google/protobuf/InvalidProtocolBufferException
      //   463	469	191	com/google/protobuf/InvalidProtocolBufferException
      //   481	487	191	com/google/protobuf/InvalidProtocolBufferException
      //   496	507	191	com/google/protobuf/InvalidProtocolBufferException
      //   516	522	191	com/google/protobuf/InvalidProtocolBufferException
      //   534	540	191	com/google/protobuf/InvalidProtocolBufferException
      //   561	572	191	com/google/protobuf/InvalidProtocolBufferException
      //   590	601	191	com/google/protobuf/InvalidProtocolBufferException
      //   42	48	202	finally
      //   133	146	202	finally
      //   161	171	202	finally
      //   180	188	202	finally
      //   196	202	202	finally
      //   250	256	202	finally
      //   265	275	202	finally
      //   284	290	202	finally
      //   298	314	202	finally
      //   323	329	202	finally
      //   338	348	202	finally
      //   357	363	202	finally
      //   375	381	202	finally
      //   390	401	202	finally
      //   410	416	202	finally
      //   428	434	202	finally
      //   443	454	202	finally
      //   463	469	202	finally
      //   481	487	202	finally
      //   496	507	202	finally
      //   516	522	202	finally
      //   534	540	202	finally
      //   561	572	202	finally
      //   590	601	202	finally
      //   42	48	293	java/io/IOException
      //   133	146	293	java/io/IOException
      //   161	171	293	java/io/IOException
      //   180	188	293	java/io/IOException
      //   250	256	293	java/io/IOException
      //   265	275	293	java/io/IOException
      //   284	290	293	java/io/IOException
      //   323	329	293	java/io/IOException
      //   338	348	293	java/io/IOException
      //   357	363	293	java/io/IOException
      //   375	381	293	java/io/IOException
      //   390	401	293	java/io/IOException
      //   410	416	293	java/io/IOException
      //   428	434	293	java/io/IOException
      //   443	454	293	java/io/IOException
      //   463	469	293	java/io/IOException
      //   481	487	293	java/io/IOException
      //   496	507	293	java/io/IOException
      //   516	522	293	java/io/IOException
      //   534	540	293	java/io/IOException
      //   561	572	293	java/io/IOException
      //   590	601	293	java/io/IOException
    }
    
    private SdkInitRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private SdkInitRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static SdkInitRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.type_ = "";
      this.mutilAccounts_ = "";
      this.displayLoginBar_ = "";
      this.cronTime_ = "";
      this.dispalyToolBar_ = "";
      this.channelBlackList_ = LazyStringArrayList.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$9500();
    }
    
    public static Builder newBuilder(SdkInitRsp paramSdkInitRsp)
    {
      return newBuilder().mergeFrom(paramSdkInitRsp);
    }
    
    public static SdkInitRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkInitRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static SdkInitRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkInitRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkInitRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (SdkInitRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static SdkInitRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkInitRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static SdkInitRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (SdkInitRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static SdkInitRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkInitRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkInitRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SdkInitRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static SdkInitRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SdkInitRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SdkInitRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (SdkInitRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static SdkInitRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SdkInitRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getChannelBlackList(int paramInt)
    {
      return (String)this.channelBlackList_.get(paramInt);
    }
    
    public final ByteString getChannelBlackListBytes(int paramInt)
    {
      return this.channelBlackList_.getByteString(paramInt);
    }
    
    public final int getChannelBlackListCount()
    {
      return this.channelBlackList_.size();
    }
    
    public final ProtocolStringList getChannelBlackListList()
    {
      return this.channelBlackList_;
    }
    
    public final String getCronTime()
    {
      Object localObject = this.cronTime_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.cronTime_ = str;
      }
      return str;
    }
    
    public final ByteString getCronTimeBytes()
    {
      Object localObject = this.cronTime_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.cronTime_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final SdkInitRsp getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getDispalyToolBar()
    {
      Object localObject = this.dispalyToolBar_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.dispalyToolBar_ = str;
      }
      return str;
    }
    
    public final ByteString getDispalyToolBarBytes()
    {
      Object localObject = this.dispalyToolBar_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.dispalyToolBar_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getDisplayLoginBar()
    {
      Object localObject = this.displayLoginBar_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.displayLoginBar_ = str;
      }
      return str;
    }
    
    public final ByteString getDisplayLoginBarBytes()
    {
      Object localObject = this.displayLoginBar_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.displayLoginBar_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getMutilAccounts()
    {
      Object localObject = this.mutilAccounts_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.mutilAccounts_ = str;
      }
      return str;
    }
    
    public final ByteString getMutilAccountsBytes()
    {
      Object localObject = this.mutilAccounts_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.mutilAccounts_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<SdkInitRsp> getParserForType()
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
      if ((this.bitField0_ & 0x1) == 1) {}
      for (int j = CodedOutputStream.computeInt32Size(1, this.retCode_) + 0;; j = 0)
      {
        i = j;
        if ((this.bitField0_ & 0x2) == 2) {
          i = j + CodedOutputStream.computeBytesSize(2, getTypeBytes());
        }
        j = i;
        if ((this.bitField0_ & 0x4) == 4) {
          j = i + CodedOutputStream.computeBytesSize(3, getMutilAccountsBytes());
        }
        i = j;
        if ((this.bitField0_ & 0x8) == 8) {
          i = j + CodedOutputStream.computeBytesSize(4, getDisplayLoginBarBytes());
        }
        j = i;
        if ((this.bitField0_ & 0x10) == 16) {
          j = i + CodedOutputStream.computeBytesSize(5, getCronTimeBytes());
        }
        i = j;
        if ((this.bitField0_ & 0x20) == 32) {
          i = j + CodedOutputStream.computeBytesSize(6, getDispalyToolBarBytes());
        }
        j = 0;
        int k = 0;
        while (j < this.channelBlackList_.size())
        {
          k += CodedOutputStream.computeBytesSizeNoTag(this.channelBlackList_.getByteString(j));
          j += 1;
        }
        i = i + k + getChannelBlackListList().size() * 1 + getUnknownFields().getSerializedSize();
        this.memoizedSerializedSize = i;
        return i;
      }
    }
    
    public final String getType()
    {
      Object localObject = this.type_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.type_ = str;
      }
      return str;
    }
    
    public final ByteString getTypeBytes()
    {
      Object localObject = this.type_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.type_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasCronTime()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasDispalyToolBar()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasDisplayLoginBar()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasMutilAccounts()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasRetCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasType()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SdkInitRsp.class, Builder.class);
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
        paramCodedOutputStream.writeBytes(2, getTypeBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getMutilAccountsBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(4, getDisplayLoginBarBytes());
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getCronTimeBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getDispalyToolBarBytes());
      }
      int i = 0;
      while (i < this.channelBlackList_.size())
      {
        paramCodedOutputStream.writeBytes(7, this.channelBlackList_.getByteString(i));
        i += 1;
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.SdkInitRspOrBuilder
    {
      private int bitField0_;
      private LazyStringList channelBlackList_ = LazyStringArrayList.EMPTY;
      private Object cronTime_ = "";
      private Object dispalyToolBar_ = "";
      private Object displayLoginBar_ = "";
      private Object mutilAccounts_ = "";
      private int retCode_;
      private Object type_ = "";
      
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
      
      private void ensureChannelBlackListIsMutable()
      {
        if ((this.bitField0_ & 0x40) != 64)
        {
          this.channelBlackList_ = new LazyStringArrayList(this.channelBlackList_);
          this.bitField0_ |= 0x40;
        }
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final Builder addAllChannelBlackList(Iterable<String> paramIterable)
      {
        ensureChannelBlackListIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.channelBlackList_);
        onChanged();
        return this;
      }
      
      public final Builder addChannelBlackList(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        ensureChannelBlackListIsMutable();
        this.channelBlackList_.add(paramString);
        onChanged();
        return this;
      }
      
      public final Builder addChannelBlackListBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        ensureChannelBlackListIsMutable();
        this.channelBlackList_.add(paramByteString);
        onChanged();
        return this;
      }
      
      public final LoginProto.SdkInitRsp build()
      {
        LoginProto.SdkInitRsp localSdkInitRsp = buildPartial();
        if (!localSdkInitRsp.isInitialized()) {
          throw newUninitializedMessageException(localSdkInitRsp);
        }
        return localSdkInitRsp;
      }
      
      public final LoginProto.SdkInitRsp buildPartial()
      {
        int j = 1;
        LoginProto.SdkInitRsp localSdkInitRsp = new LoginProto.SdkInitRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.SdkInitRsp.access$9902(localSdkInitRsp, this.retCode_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.SdkInitRsp.access$10002(localSdkInitRsp, this.type_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.SdkInitRsp.access$10102(localSdkInitRsp, this.mutilAccounts_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.SdkInitRsp.access$10202(localSdkInitRsp, this.displayLoginBar_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.SdkInitRsp.access$10302(localSdkInitRsp, this.cronTime_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.SdkInitRsp.access$10402(localSdkInitRsp, this.dispalyToolBar_);
          if ((this.bitField0_ & 0x40) == 64)
          {
            this.channelBlackList_ = this.channelBlackList_.getUnmodifiableView();
            this.bitField0_ &= 0xFFFFFFBF;
          }
          LoginProto.SdkInitRsp.access$10502(localSdkInitRsp, this.channelBlackList_);
          LoginProto.SdkInitRsp.access$10602(localSdkInitRsp, i);
          onBuilt();
          return localSdkInitRsp;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.retCode_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.type_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.mutilAccounts_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.displayLoginBar_ = "";
        this.bitField0_ &= 0xFFFFFFF7;
        this.cronTime_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.dispalyToolBar_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.channelBlackList_ = LazyStringArrayList.EMPTY;
        this.bitField0_ &= 0xFFFFFFBF;
        return this;
      }
      
      public final Builder clearChannelBlackList()
      {
        this.channelBlackList_ = LazyStringArrayList.EMPTY;
        this.bitField0_ &= 0xFFFFFFBF;
        onChanged();
        return this;
      }
      
      public final Builder clearCronTime()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.cronTime_ = LoginProto.SdkInitRsp.getDefaultInstance().getCronTime();
        onChanged();
        return this;
      }
      
      public final Builder clearDispalyToolBar()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.dispalyToolBar_ = LoginProto.SdkInitRsp.getDefaultInstance().getDispalyToolBar();
        onChanged();
        return this;
      }
      
      public final Builder clearDisplayLoginBar()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.displayLoginBar_ = LoginProto.SdkInitRsp.getDefaultInstance().getDisplayLoginBar();
        onChanged();
        return this;
      }
      
      public final Builder clearMutilAccounts()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.mutilAccounts_ = LoginProto.SdkInitRsp.getDefaultInstance().getMutilAccounts();
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
      
      public final Builder clearType()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.type_ = LoginProto.SdkInitRsp.getDefaultInstance().getType();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getChannelBlackList(int paramInt)
      {
        return (String)this.channelBlackList_.get(paramInt);
      }
      
      public final ByteString getChannelBlackListBytes(int paramInt)
      {
        return this.channelBlackList_.getByteString(paramInt);
      }
      
      public final int getChannelBlackListCount()
      {
        return this.channelBlackList_.size();
      }
      
      public final ProtocolStringList getChannelBlackListList()
      {
        return this.channelBlackList_.getUnmodifiableView();
      }
      
      public final String getCronTime()
      {
        Object localObject = this.cronTime_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.cronTime_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCronTimeBytes()
      {
        Object localObject = this.cronTime_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.cronTime_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final LoginProto.SdkInitRsp getDefaultInstanceForType()
      {
        return LoginProto.SdkInitRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_descriptor;
      }
      
      public final String getDispalyToolBar()
      {
        Object localObject = this.dispalyToolBar_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.dispalyToolBar_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getDispalyToolBarBytes()
      {
        Object localObject = this.dispalyToolBar_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.dispalyToolBar_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getDisplayLoginBar()
      {
        Object localObject = this.displayLoginBar_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.displayLoginBar_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getDisplayLoginBarBytes()
      {
        Object localObject = this.displayLoginBar_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.displayLoginBar_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getMutilAccounts()
      {
        Object localObject = this.mutilAccounts_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.mutilAccounts_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getMutilAccountsBytes()
      {
        Object localObject = this.mutilAccounts_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.mutilAccounts_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getRetCode()
      {
        return this.retCode_;
      }
      
      public final String getType()
      {
        Object localObject = this.type_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.type_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTypeBytes()
      {
        Object localObject = this.type_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.type_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasCronTime()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasDispalyToolBar()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasDisplayLoginBar()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasMutilAccounts()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasRetCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasType()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SdkInitRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.SdkInitRsp.class, Builder.class);
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
        //   2: getstatic 292	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 298 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 210	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 301	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 210	org/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp$Builder;
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
        if ((paramMessage instanceof LoginProto.SdkInitRsp)) {
          return mergeFrom((LoginProto.SdkInitRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.SdkInitRsp paramSdkInitRsp)
      {
        if (paramSdkInitRsp == LoginProto.SdkInitRsp.getDefaultInstance()) {
          return this;
        }
        if (paramSdkInitRsp.hasRetCode()) {
          setRetCode(paramSdkInitRsp.getRetCode());
        }
        if (paramSdkInitRsp.hasType())
        {
          this.bitField0_ |= 0x2;
          this.type_ = paramSdkInitRsp.type_;
          onChanged();
        }
        if (paramSdkInitRsp.hasMutilAccounts())
        {
          this.bitField0_ |= 0x4;
          this.mutilAccounts_ = paramSdkInitRsp.mutilAccounts_;
          onChanged();
        }
        if (paramSdkInitRsp.hasDisplayLoginBar())
        {
          this.bitField0_ |= 0x8;
          this.displayLoginBar_ = paramSdkInitRsp.displayLoginBar_;
          onChanged();
        }
        if (paramSdkInitRsp.hasCronTime())
        {
          this.bitField0_ |= 0x10;
          this.cronTime_ = paramSdkInitRsp.cronTime_;
          onChanged();
        }
        if (paramSdkInitRsp.hasDispalyToolBar())
        {
          this.bitField0_ |= 0x20;
          this.dispalyToolBar_ = paramSdkInitRsp.dispalyToolBar_;
          onChanged();
        }
        if (!paramSdkInitRsp.channelBlackList_.isEmpty())
        {
          if (!this.channelBlackList_.isEmpty()) {
            break label231;
          }
          this.channelBlackList_ = paramSdkInitRsp.channelBlackList_;
          this.bitField0_ &= 0xFFFFFFBF;
        }
        for (;;)
        {
          onChanged();
          mergeUnknownFields(paramSdkInitRsp.getUnknownFields());
          return this;
          label231:
          ensureChannelBlackListIsMutable();
          this.channelBlackList_.addAll(paramSdkInitRsp.channelBlackList_);
        }
      }
      
      public final Builder setChannelBlackList(int paramInt, String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        ensureChannelBlackListIsMutable();
        this.channelBlackList_.set(paramInt, paramString);
        onChanged();
        return this;
      }
      
      public final Builder setCronTime(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.cronTime_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCronTimeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.cronTime_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDispalyToolBar(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.dispalyToolBar_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDispalyToolBarBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.dispalyToolBar_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setDisplayLoginBar(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.displayLoginBar_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setDisplayLoginBarBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x8;
        this.displayLoginBar_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setMutilAccounts(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.mutilAccounts_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setMutilAccountsBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.mutilAccounts_ = paramByteString;
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
      
      public final Builder setType(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.type_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTypeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.type_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface SdkInitRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getChannelBlackList(int paramInt);
    
    public abstract ByteString getChannelBlackListBytes(int paramInt);
    
    public abstract int getChannelBlackListCount();
    
    public abstract ProtocolStringList getChannelBlackListList();
    
    public abstract String getCronTime();
    
    public abstract ByteString getCronTimeBytes();
    
    public abstract String getDispalyToolBar();
    
    public abstract ByteString getDispalyToolBarBytes();
    
    public abstract String getDisplayLoginBar();
    
    public abstract ByteString getDisplayLoginBarBytes();
    
    public abstract String getMutilAccounts();
    
    public abstract ByteString getMutilAccountsBytes();
    
    public abstract int getRetCode();
    
    public abstract String getType();
    
    public abstract ByteString getTypeBytes();
    
    public abstract boolean hasCronTime();
    
    public abstract boolean hasDispalyToolBar();
    
    public abstract boolean hasDisplayLoginBar();
    
    public abstract boolean hasMutilAccounts();
    
    public abstract boolean hasRetCode();
    
    public abstract boolean hasType();
  }
  
  public static final class SetUserInfoToGameCenterReq
    extends GeneratedMessage
    implements LoginProto.SetUserInfoToGameCenterReqOrBuilder
  {
    public static final int AUTOLOGIN_FIELD_NUMBER = 7;
    public static final int AVATARURL_FIELD_NUMBER = 6;
    public static final int CURRENTCHANNEL_FIELD_NUMBER = 8;
    public static final int FIRSTCHANNEL_FIELD_NUMBER = 10;
    public static final int FUID_FIELD_NUMBER = 1;
    public static final int IMEIMD5_FIELD_NUMBER = 9;
    public static final int IMEI_FIELD_NUMBER = 5;
    public static final int NICKNAME_FIELD_NUMBER = 3;
    public static Parser<SetUserInfoToGameCenterReq> PARSER = new af();
    public static final int SEX_FIELD_NUMBER = 4;
    public static final int TOKE_FIELD_NUMBER = 2;
    private static final SetUserInfoToGameCenterReq defaultInstance;
    private static final long serialVersionUID = 0L;
    private boolean autoLogin_;
    private Object avatarUrl_;
    private int bitField0_;
    private Object currentChannel_;
    private Object firstChannel_;
    private long fuid_;
    private Object imeiMd5_;
    private Object imei_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object nickname_;
    private int sex_;
    private Object toke_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      SetUserInfoToGameCenterReq localSetUserInfoToGameCenterReq = new SetUserInfoToGameCenterReq(true);
      defaultInstance = localSetUserInfoToGameCenterReq;
      localSetUserInfoToGameCenterReq.initFields();
    }
    
    /* Error */
    private SetUserInfoToGameCenterReq(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 84	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 86	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 88	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 77	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:initFields	()V
      //   18: invokestatic 94	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 5
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +416 -> 442
      //   29: aload_1
      //   30: invokevirtual 100	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+419->456, 0:+422->459, 8:+117->154, 18:+161->198, 26:+203->240, 32:+228->265, 42:+250->287, 50:+276->313, 56:+302->339, 66:+324->361, 74:+351->388, 82:+378->415
      //   136: aload_0
      //   137: aload_1
      //   138: aload 5
      //   140: aload_2
      //   141: iload 4
      //   143: invokevirtual 104	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   146: ifne -121 -> 25
      //   149: iconst_1
      //   150: istore_3
      //   151: goto -126 -> 25
      //   154: aload_0
      //   155: aload_0
      //   156: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   159: iconst_1
      //   160: ior
      //   161: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   164: aload_0
      //   165: aload_1
      //   166: invokevirtual 110	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   169: putfield 112	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:fuid_	J
      //   172: goto -147 -> 25
      //   175: astore_1
      //   176: aload_1
      //   177: aload_0
      //   178: invokevirtual 116	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   181: athrow
      //   182: astore_1
      //   183: aload_0
      //   184: aload 5
      //   186: invokevirtual 122	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   189: putfield 124	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   192: aload_0
      //   193: invokevirtual 127	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:makeExtensionsImmutable	()V
      //   196: aload_1
      //   197: athrow
      //   198: aload_1
      //   199: invokevirtual 131	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   202: astore 6
      //   204: aload_0
      //   205: aload_0
      //   206: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   209: iconst_2
      //   210: ior
      //   211: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   214: aload_0
      //   215: aload 6
      //   217: putfield 133	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:toke_	Ljava/lang/Object;
      //   220: goto -195 -> 25
      //   223: astore_1
      //   224: new 81	com/google/protobuf/InvalidProtocolBufferException
      //   227: dup
      //   228: aload_1
      //   229: invokevirtual 137	java/io/IOException:getMessage	()Ljava/lang/String;
      //   232: invokespecial 140	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   235: aload_0
      //   236: invokevirtual 116	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   239: athrow
      //   240: aload_1
      //   241: invokevirtual 131	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   244: astore 6
      //   246: aload_0
      //   247: aload_0
      //   248: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   251: iconst_4
      //   252: ior
      //   253: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   256: aload_0
      //   257: aload 6
      //   259: putfield 142	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:nickname_	Ljava/lang/Object;
      //   262: goto -237 -> 25
      //   265: aload_0
      //   266: aload_0
      //   267: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   270: bipush 8
      //   272: ior
      //   273: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   276: aload_0
      //   277: aload_1
      //   278: invokevirtual 145	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   281: putfield 147	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:sex_	I
      //   284: goto -259 -> 25
      //   287: aload_1
      //   288: invokevirtual 131	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   291: astore 6
      //   293: aload_0
      //   294: aload_0
      //   295: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   298: bipush 16
      //   300: ior
      //   301: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   304: aload_0
      //   305: aload 6
      //   307: putfield 149	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:imei_	Ljava/lang/Object;
      //   310: goto -285 -> 25
      //   313: aload_1
      //   314: invokevirtual 131	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   317: astore 6
      //   319: aload_0
      //   320: aload_0
      //   321: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   324: bipush 32
      //   326: ior
      //   327: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   330: aload_0
      //   331: aload 6
      //   333: putfield 151	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:avatarUrl_	Ljava/lang/Object;
      //   336: goto -311 -> 25
      //   339: aload_0
      //   340: aload_0
      //   341: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   344: bipush 64
      //   346: ior
      //   347: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   350: aload_0
      //   351: aload_1
      //   352: invokevirtual 155	com/google/protobuf/CodedInputStream:readBool	()Z
      //   355: putfield 157	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:autoLogin_	Z
      //   358: goto -333 -> 25
      //   361: aload_1
      //   362: invokevirtual 131	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   365: astore 6
      //   367: aload_0
      //   368: aload_0
      //   369: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   372: sipush 128
      //   375: ior
      //   376: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   379: aload_0
      //   380: aload 6
      //   382: putfield 159	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:currentChannel_	Ljava/lang/Object;
      //   385: goto -360 -> 25
      //   388: aload_1
      //   389: invokevirtual 131	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   392: astore 6
      //   394: aload_0
      //   395: aload_0
      //   396: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   399: sipush 256
      //   402: ior
      //   403: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   406: aload_0
      //   407: aload 6
      //   409: putfield 161	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:imeiMd5_	Ljava/lang/Object;
      //   412: goto -387 -> 25
      //   415: aload_1
      //   416: invokevirtual 131	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   419: astore 6
      //   421: aload_0
      //   422: aload_0
      //   423: getfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   426: sipush 512
      //   429: ior
      //   430: putfield 106	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:bitField0_	I
      //   433: aload_0
      //   434: aload 6
      //   436: putfield 163	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:firstChannel_	Ljava/lang/Object;
      //   439: goto -414 -> 25
      //   442: aload_0
      //   443: aload 5
      //   445: invokevirtual 122	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   448: putfield 124	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   451: aload_0
      //   452: invokevirtual 127	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:makeExtensionsImmutable	()V
      //   455: return
      //   456: goto -320 -> 136
      //   459: iconst_1
      //   460: istore_3
      //   461: goto -436 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	464	0	this	SetUserInfoToGameCenterReq
      //   0	464	1	paramCodedInputStream	CodedInputStream
      //   0	464	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	437	3	i	int
      //   33	109	4	j	int
      //   21	423	5	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   202	233	6	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   29	35	175	com/google/protobuf/InvalidProtocolBufferException
      //   136	149	175	com/google/protobuf/InvalidProtocolBufferException
      //   154	172	175	com/google/protobuf/InvalidProtocolBufferException
      //   198	220	175	com/google/protobuf/InvalidProtocolBufferException
      //   240	262	175	com/google/protobuf/InvalidProtocolBufferException
      //   265	284	175	com/google/protobuf/InvalidProtocolBufferException
      //   287	310	175	com/google/protobuf/InvalidProtocolBufferException
      //   313	336	175	com/google/protobuf/InvalidProtocolBufferException
      //   339	358	175	com/google/protobuf/InvalidProtocolBufferException
      //   361	385	175	com/google/protobuf/InvalidProtocolBufferException
      //   388	412	175	com/google/protobuf/InvalidProtocolBufferException
      //   415	439	175	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	182	finally
      //   136	149	182	finally
      //   154	172	182	finally
      //   176	182	182	finally
      //   198	220	182	finally
      //   224	240	182	finally
      //   240	262	182	finally
      //   265	284	182	finally
      //   287	310	182	finally
      //   313	336	182	finally
      //   339	358	182	finally
      //   361	385	182	finally
      //   388	412	182	finally
      //   415	439	182	finally
      //   29	35	223	java/io/IOException
      //   136	149	223	java/io/IOException
      //   154	172	223	java/io/IOException
      //   198	220	223	java/io/IOException
      //   240	262	223	java/io/IOException
      //   265	284	223	java/io/IOException
      //   287	310	223	java/io/IOException
      //   313	336	223	java/io/IOException
      //   339	358	223	java/io/IOException
      //   361	385	223	java/io/IOException
      //   388	412	223	java/io/IOException
      //   415	439	223	java/io/IOException
    }
    
    private SetUserInfoToGameCenterReq(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private SetUserInfoToGameCenterReq(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static SetUserInfoToGameCenterReq getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_descriptor;
    }
    
    private void initFields()
    {
      this.fuid_ = 0L;
      this.toke_ = "";
      this.nickname_ = "";
      this.sex_ = 0;
      this.imei_ = "";
      this.avatarUrl_ = "";
      this.autoLogin_ = false;
      this.currentChannel_ = "";
      this.imeiMd5_ = "";
      this.firstChannel_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$17000();
    }
    
    public static Builder newBuilder(SetUserInfoToGameCenterReq paramSetUserInfoToGameCenterReq)
    {
      return newBuilder().mergeFrom(paramSetUserInfoToGameCenterReq);
    }
    
    public static SetUserInfoToGameCenterReq parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static SetUserInfoToGameCenterReq parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SetUserInfoToGameCenterReq parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseFrom(paramByteString);
    }
    
    public static SetUserInfoToGameCenterReq parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static SetUserInfoToGameCenterReq parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static SetUserInfoToGameCenterReq parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static SetUserInfoToGameCenterReq parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseFrom(paramInputStream);
    }
    
    public static SetUserInfoToGameCenterReq parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SetUserInfoToGameCenterReq parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static SetUserInfoToGameCenterReq parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SetUserInfoToGameCenterReq)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final boolean getAutoLogin()
    {
      return this.autoLogin_;
    }
    
    public final String getAvatarUrl()
    {
      Object localObject = this.avatarUrl_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.avatarUrl_ = str;
      }
      return str;
    }
    
    public final ByteString getAvatarUrlBytes()
    {
      Object localObject = this.avatarUrl_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.avatarUrl_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final String getCurrentChannel()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.currentChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getCurrentChannelBytes()
    {
      Object localObject = this.currentChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.currentChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final SetUserInfoToGameCenterReq getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getFirstChannel()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.firstChannel_ = str;
      }
      return str;
    }
    
    public final ByteString getFirstChannelBytes()
    {
      Object localObject = this.firstChannel_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.firstChannel_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final long getFuid()
    {
      return this.fuid_;
    }
    
    public final String getImei()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.imei_ = str;
      }
      return str;
    }
    
    public final ByteString getImeiBytes()
    {
      Object localObject = this.imei_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.imei_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
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
    
    public final String getNickname()
    {
      Object localObject = this.nickname_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.nickname_ = str;
      }
      return str;
    }
    
    public final ByteString getNicknameBytes()
    {
      Object localObject = this.nickname_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.nickname_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<SetUserInfoToGameCenterReq> getParserForType()
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
        j = CodedOutputStream.computeUInt64Size(1, this.fuid_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeBytesSize(2, getTokeBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeBytesSize(3, getNicknameBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeUInt32Size(4, this.sex_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeBytesSize(5, getImeiBytes());
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeBytesSize(6, getAvatarUrlBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeBoolSize(7, this.autoLogin_);
      }
      i = j;
      if ((this.bitField0_ & 0x80) == 128) {
        i = j + CodedOutputStream.computeBytesSize(8, getCurrentChannelBytes());
      }
      j = i;
      if ((this.bitField0_ & 0x100) == 256) {
        j = i + CodedOutputStream.computeBytesSize(9, getImeiMd5Bytes());
      }
      i = j;
      if ((this.bitField0_ & 0x200) == 512) {
        i = j + CodedOutputStream.computeBytesSize(10, getFirstChannelBytes());
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final int getSex()
    {
      return this.sex_;
    }
    
    public final String getToke()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.toke_ = str;
      }
      return str;
    }
    
    public final ByteString getTokeBytes()
    {
      Object localObject = this.toke_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.toke_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasAutoLogin()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasAvatarUrl()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasCurrentChannel()
    {
      return (this.bitField0_ & 0x80) == 128;
    }
    
    public final boolean hasFirstChannel()
    {
      return (this.bitField0_ & 0x200) == 512;
    }
    
    public final boolean hasFuid()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasImei()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasImeiMd5()
    {
      return (this.bitField0_ & 0x100) == 256;
    }
    
    public final boolean hasNickname()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasSex()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasToke()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_fieldAccessorTable.ensureFieldAccessorsInitialized(SetUserInfoToGameCenterReq.class, Builder.class);
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
      if (!hasToke())
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
        paramCodedOutputStream.writeBytes(2, getTokeBytes());
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeBytes(3, getNicknameBytes());
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeUInt32(4, this.sex_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeBytes(5, getImeiBytes());
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeBytes(6, getAvatarUrlBytes());
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeBool(7, this.autoLogin_);
      }
      if ((this.bitField0_ & 0x80) == 128) {
        paramCodedOutputStream.writeBytes(8, getCurrentChannelBytes());
      }
      if ((this.bitField0_ & 0x100) == 256) {
        paramCodedOutputStream.writeBytes(9, getImeiMd5Bytes());
      }
      if ((this.bitField0_ & 0x200) == 512) {
        paramCodedOutputStream.writeBytes(10, getFirstChannelBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements LoginProto.SetUserInfoToGameCenterReqOrBuilder
    {
      private boolean autoLogin_;
      private Object avatarUrl_ = "";
      private int bitField0_;
      private Object currentChannel_ = "";
      private Object firstChannel_ = "";
      private long fuid_;
      private Object imeiMd5_ = "";
      private Object imei_ = "";
      private Object nickname_ = "";
      private int sex_;
      private Object toke_ = "";
      
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
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.SetUserInfoToGameCenterReq build()
      {
        LoginProto.SetUserInfoToGameCenterReq localSetUserInfoToGameCenterReq = buildPartial();
        if (!localSetUserInfoToGameCenterReq.isInitialized()) {
          throw newUninitializedMessageException(localSetUserInfoToGameCenterReq);
        }
        return localSetUserInfoToGameCenterReq;
      }
      
      public final LoginProto.SetUserInfoToGameCenterReq buildPartial()
      {
        int j = 1;
        LoginProto.SetUserInfoToGameCenterReq localSetUserInfoToGameCenterReq = new LoginProto.SetUserInfoToGameCenterReq(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.SetUserInfoToGameCenterReq.access$17402(localSetUserInfoToGameCenterReq, this.fuid_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          LoginProto.SetUserInfoToGameCenterReq.access$17502(localSetUserInfoToGameCenterReq, this.toke_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          LoginProto.SetUserInfoToGameCenterReq.access$17602(localSetUserInfoToGameCenterReq, this.nickname_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          LoginProto.SetUserInfoToGameCenterReq.access$17702(localSetUserInfoToGameCenterReq, this.sex_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          LoginProto.SetUserInfoToGameCenterReq.access$17802(localSetUserInfoToGameCenterReq, this.imei_);
          i = j;
          if ((k & 0x20) == 32) {
            i = j | 0x20;
          }
          LoginProto.SetUserInfoToGameCenterReq.access$17902(localSetUserInfoToGameCenterReq, this.avatarUrl_);
          j = i;
          if ((k & 0x40) == 64) {
            j = i | 0x40;
          }
          LoginProto.SetUserInfoToGameCenterReq.access$18002(localSetUserInfoToGameCenterReq, this.autoLogin_);
          i = j;
          if ((k & 0x80) == 128) {
            i = j | 0x80;
          }
          LoginProto.SetUserInfoToGameCenterReq.access$18102(localSetUserInfoToGameCenterReq, this.currentChannel_);
          j = i;
          if ((k & 0x100) == 256) {
            j = i | 0x100;
          }
          LoginProto.SetUserInfoToGameCenterReq.access$18202(localSetUserInfoToGameCenterReq, this.imeiMd5_);
          i = j;
          if ((k & 0x200) == 512) {
            i = j | 0x200;
          }
          LoginProto.SetUserInfoToGameCenterReq.access$18302(localSetUserInfoToGameCenterReq, this.firstChannel_);
          LoginProto.SetUserInfoToGameCenterReq.access$18402(localSetUserInfoToGameCenterReq, i);
          onBuilt();
          return localSetUserInfoToGameCenterReq;
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.fuid_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.toke_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        this.nickname_ = "";
        this.bitField0_ &= 0xFFFFFFFB;
        this.sex_ = 0;
        this.bitField0_ &= 0xFFFFFFF7;
        this.imei_ = "";
        this.bitField0_ &= 0xFFFFFFEF;
        this.avatarUrl_ = "";
        this.bitField0_ &= 0xFFFFFFDF;
        this.autoLogin_ = false;
        this.bitField0_ &= 0xFFFFFFBF;
        this.currentChannel_ = "";
        this.bitField0_ &= 0xFF7F;
        this.imeiMd5_ = "";
        this.bitField0_ &= 0xFEFF;
        this.firstChannel_ = "";
        this.bitField0_ &= 0xFDFF;
        return this;
      }
      
      public final Builder clearAutoLogin()
      {
        this.bitField0_ &= 0xFFFFFFBF;
        this.autoLogin_ = false;
        onChanged();
        return this;
      }
      
      public final Builder clearAvatarUrl()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.avatarUrl_ = LoginProto.SetUserInfoToGameCenterReq.getDefaultInstance().getAvatarUrl();
        onChanged();
        return this;
      }
      
      public final Builder clearCurrentChannel()
      {
        this.bitField0_ &= 0xFF7F;
        this.currentChannel_ = LoginProto.SetUserInfoToGameCenterReq.getDefaultInstance().getCurrentChannel();
        onChanged();
        return this;
      }
      
      public final Builder clearFirstChannel()
      {
        this.bitField0_ &= 0xFDFF;
        this.firstChannel_ = LoginProto.SetUserInfoToGameCenterReq.getDefaultInstance().getFirstChannel();
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
      
      public final Builder clearImei()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.imei_ = LoginProto.SetUserInfoToGameCenterReq.getDefaultInstance().getImei();
        onChanged();
        return this;
      }
      
      public final Builder clearImeiMd5()
      {
        this.bitField0_ &= 0xFEFF;
        this.imeiMd5_ = LoginProto.SetUserInfoToGameCenterReq.getDefaultInstance().getImeiMd5();
        onChanged();
        return this;
      }
      
      public final Builder clearNickname()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.nickname_ = LoginProto.SetUserInfoToGameCenterReq.getDefaultInstance().getNickname();
        onChanged();
        return this;
      }
      
      public final Builder clearSex()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.sex_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearToke()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.toke_ = LoginProto.SetUserInfoToGameCenterReq.getDefaultInstance().getToke();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final boolean getAutoLogin()
      {
        return this.autoLogin_;
      }
      
      public final String getAvatarUrl()
      {
        Object localObject = this.avatarUrl_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.avatarUrl_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getAvatarUrlBytes()
      {
        Object localObject = this.avatarUrl_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.avatarUrl_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getCurrentChannel()
      {
        Object localObject = this.currentChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.currentChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getCurrentChannelBytes()
      {
        Object localObject = this.currentChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.currentChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final LoginProto.SetUserInfoToGameCenterReq getDefaultInstanceForType()
      {
        return LoginProto.SetUserInfoToGameCenterReq.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_descriptor;
      }
      
      public final String getFirstChannel()
      {
        Object localObject = this.firstChannel_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.firstChannel_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getFirstChannelBytes()
      {
        Object localObject = this.firstChannel_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.firstChannel_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final long getFuid()
      {
        return this.fuid_;
      }
      
      public final String getImei()
      {
        Object localObject = this.imei_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.imei_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getImeiBytes()
      {
        Object localObject = this.imei_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.imei_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
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
      
      public final String getNickname()
      {
        Object localObject = this.nickname_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.nickname_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNicknameBytes()
      {
        Object localObject = this.nickname_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.nickname_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getSex()
      {
        return this.sex_;
      }
      
      public final String getToke()
      {
        Object localObject = this.toke_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.toke_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getTokeBytes()
      {
        Object localObject = this.toke_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.toke_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasAutoLogin()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasAvatarUrl()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasCurrentChannel()
      {
        return (this.bitField0_ & 0x80) == 128;
      }
      
      public final boolean hasFirstChannel()
      {
        return (this.bitField0_ & 0x200) == 512;
      }
      
      public final boolean hasFuid()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasImei()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasImeiMd5()
      {
        return (this.bitField0_ & 0x100) == 256;
      }
      
      public final boolean hasNickname()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasSex()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasToke()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterReq_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.SetUserInfoToGameCenterReq.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasFuid()) {}
        while (!hasToke()) {
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
        //   2: getstatic 274	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 280 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 198	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 283	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 198	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
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
        if ((paramMessage instanceof LoginProto.SetUserInfoToGameCenterReq)) {
          return mergeFrom((LoginProto.SetUserInfoToGameCenterReq)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.SetUserInfoToGameCenterReq paramSetUserInfoToGameCenterReq)
      {
        if (paramSetUserInfoToGameCenterReq == LoginProto.SetUserInfoToGameCenterReq.getDefaultInstance()) {
          return this;
        }
        if (paramSetUserInfoToGameCenterReq.hasFuid()) {
          setFuid(paramSetUserInfoToGameCenterReq.getFuid());
        }
        if (paramSetUserInfoToGameCenterReq.hasToke())
        {
          this.bitField0_ |= 0x2;
          this.toke_ = paramSetUserInfoToGameCenterReq.toke_;
          onChanged();
        }
        if (paramSetUserInfoToGameCenterReq.hasNickname())
        {
          this.bitField0_ |= 0x4;
          this.nickname_ = paramSetUserInfoToGameCenterReq.nickname_;
          onChanged();
        }
        if (paramSetUserInfoToGameCenterReq.hasSex()) {
          setSex(paramSetUserInfoToGameCenterReq.getSex());
        }
        if (paramSetUserInfoToGameCenterReq.hasImei())
        {
          this.bitField0_ |= 0x10;
          this.imei_ = paramSetUserInfoToGameCenterReq.imei_;
          onChanged();
        }
        if (paramSetUserInfoToGameCenterReq.hasAvatarUrl())
        {
          this.bitField0_ |= 0x20;
          this.avatarUrl_ = paramSetUserInfoToGameCenterReq.avatarUrl_;
          onChanged();
        }
        if (paramSetUserInfoToGameCenterReq.hasAutoLogin()) {
          setAutoLogin(paramSetUserInfoToGameCenterReq.getAutoLogin());
        }
        if (paramSetUserInfoToGameCenterReq.hasCurrentChannel())
        {
          this.bitField0_ |= 0x80;
          this.currentChannel_ = paramSetUserInfoToGameCenterReq.currentChannel_;
          onChanged();
        }
        if (paramSetUserInfoToGameCenterReq.hasImeiMd5())
        {
          this.bitField0_ |= 0x100;
          this.imeiMd5_ = paramSetUserInfoToGameCenterReq.imeiMd5_;
          onChanged();
        }
        if (paramSetUserInfoToGameCenterReq.hasFirstChannel())
        {
          this.bitField0_ |= 0x200;
          this.firstChannel_ = paramSetUserInfoToGameCenterReq.firstChannel_;
          onChanged();
        }
        mergeUnknownFields(paramSetUserInfoToGameCenterReq.getUnknownFields());
        return this;
      }
      
      public final Builder setAutoLogin(boolean paramBoolean)
      {
        this.bitField0_ |= 0x40;
        this.autoLogin_ = paramBoolean;
        onChanged();
        return this;
      }
      
      public final Builder setAvatarUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.avatarUrl_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setAvatarUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.avatarUrl_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.currentChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setCurrentChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x80;
        this.currentChannel_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannel(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.firstChannel_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setFirstChannelBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x200;
        this.firstChannel_ = paramByteString;
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
      
      public final Builder setImei(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imei_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x10;
        this.imei_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.imeiMd5_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setImeiMd5Bytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x100;
        this.imeiMd5_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setNickname(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.nickname_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNicknameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.nickname_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setSex(int paramInt)
      {
        this.bitField0_ |= 0x8;
        this.sex_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setToke(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.toke_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setTokeBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.toke_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface SetUserInfoToGameCenterReqOrBuilder
    extends MessageOrBuilder
  {
    public abstract boolean getAutoLogin();
    
    public abstract String getAvatarUrl();
    
    public abstract ByteString getAvatarUrlBytes();
    
    public abstract String getCurrentChannel();
    
    public abstract ByteString getCurrentChannelBytes();
    
    public abstract String getFirstChannel();
    
    public abstract ByteString getFirstChannelBytes();
    
    public abstract long getFuid();
    
    public abstract String getImei();
    
    public abstract ByteString getImeiBytes();
    
    public abstract String getImeiMd5();
    
    public abstract ByteString getImeiMd5Bytes();
    
    public abstract String getNickname();
    
    public abstract ByteString getNicknameBytes();
    
    public abstract int getSex();
    
    public abstract String getToke();
    
    public abstract ByteString getTokeBytes();
    
    public abstract boolean hasAutoLogin();
    
    public abstract boolean hasAvatarUrl();
    
    public abstract boolean hasCurrentChannel();
    
    public abstract boolean hasFirstChannel();
    
    public abstract boolean hasFuid();
    
    public abstract boolean hasImei();
    
    public abstract boolean hasImeiMd5();
    
    public abstract boolean hasNickname();
    
    public abstract boolean hasSex();
    
    public abstract boolean hasToke();
  }
  
  public static final class SetUserInfoToGameCenterRsp
    extends GeneratedMessage
    implements LoginProto.SetUserInfoToGameCenterRspOrBuilder
  {
    public static final int ERRMSG_FIELD_NUMBER = 2;
    public static Parser<SetUserInfoToGameCenterRsp> PARSER = new ag();
    public static final int RETCODE_FIELD_NUMBER = 1;
    private static final SetUserInfoToGameCenterRsp defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object errMsg_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int retCode_;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      SetUserInfoToGameCenterRsp localSetUserInfoToGameCenterRsp = new SetUserInfoToGameCenterRsp(true);
      defaultInstance = localSetUserInfoToGameCenterRsp;
      localSetUserInfoToGameCenterRsp.initFields();
    }
    
    /* Error */
    private SetUserInfoToGameCenterRsp(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:initFields	()V
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
      //   79: invokevirtual 79	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: aload_0
      //   92: getfield 81	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:bitField0_	I
      //   95: iconst_1
      //   96: ior
      //   97: putfield 81	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 84	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   105: putfield 86	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:retCode_	I
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
      //   125: putfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   128: aload_0
      //   129: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:makeExtensionsImmutable	()V
      //   132: aload_1
      //   133: athrow
      //   134: aload_1
      //   135: invokevirtual 105	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   138: astore 6
      //   140: aload_0
      //   141: aload_0
      //   142: getfield 81	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:bitField0_	I
      //   145: iconst_2
      //   146: ior
      //   147: putfield 81	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:bitField0_	I
      //   150: aload_0
      //   151: aload 6
      //   153: putfield 107	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:errMsg_	Ljava/lang/Object;
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
      //   182: putfield 98	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   185: aload_0
      //   186: invokevirtual 101	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:makeExtensionsImmutable	()V
      //   189: return
      //   190: goto -118 -> 72
      //   193: iconst_1
      //   194: istore_3
      //   195: goto -170 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	198	0	this	SetUserInfoToGameCenterRsp
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
    
    private SetUserInfoToGameCenterRsp(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private SetUserInfoToGameCenterRsp(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static SetUserInfoToGameCenterRsp getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_descriptor;
    }
    
    private void initFields()
    {
      this.retCode_ = 0;
      this.errMsg_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$18800();
    }
    
    public static Builder newBuilder(SetUserInfoToGameCenterRsp paramSetUserInfoToGameCenterRsp)
    {
      return newBuilder().mergeFrom(paramSetUserInfoToGameCenterRsp);
    }
    
    public static SetUserInfoToGameCenterRsp parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static SetUserInfoToGameCenterRsp parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SetUserInfoToGameCenterRsp parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseFrom(paramByteString);
    }
    
    public static SetUserInfoToGameCenterRsp parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static SetUserInfoToGameCenterRsp parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static SetUserInfoToGameCenterRsp parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static SetUserInfoToGameCenterRsp parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseFrom(paramInputStream);
    }
    
    public static SetUserInfoToGameCenterRsp parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static SetUserInfoToGameCenterRsp parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static SetUserInfoToGameCenterRsp parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (SetUserInfoToGameCenterRsp)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final SetUserInfoToGameCenterRsp getDefaultInstanceForType()
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
    
    public final Parser<SetUserInfoToGameCenterRsp> getParserForType()
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
      return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(SetUserInfoToGameCenterRsp.class, Builder.class);
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
      implements LoginProto.SetUserInfoToGameCenterRspOrBuilder
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
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final LoginProto.SetUserInfoToGameCenterRsp build()
      {
        LoginProto.SetUserInfoToGameCenterRsp localSetUserInfoToGameCenterRsp = buildPartial();
        if (!localSetUserInfoToGameCenterRsp.isInitialized()) {
          throw newUninitializedMessageException(localSetUserInfoToGameCenterRsp);
        }
        return localSetUserInfoToGameCenterRsp;
      }
      
      public final LoginProto.SetUserInfoToGameCenterRsp buildPartial()
      {
        int i = 1;
        LoginProto.SetUserInfoToGameCenterRsp localSetUserInfoToGameCenterRsp = new LoginProto.SetUserInfoToGameCenterRsp(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          LoginProto.SetUserInfoToGameCenterRsp.access$19202(localSetUserInfoToGameCenterRsp, this.retCode_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          LoginProto.SetUserInfoToGameCenterRsp.access$19302(localSetUserInfoToGameCenterRsp, this.errMsg_);
          LoginProto.SetUserInfoToGameCenterRsp.access$19402(localSetUserInfoToGameCenterRsp, j);
          onBuilt();
          return localSetUserInfoToGameCenterRsp;
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
        this.errMsg_ = LoginProto.SetUserInfoToGameCenterRsp.getDefaultInstance().getErrMsg();
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
      
      public final LoginProto.SetUserInfoToGameCenterRsp getDefaultInstanceForType()
      {
        return LoginProto.SetUserInfoToGameCenterRsp.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_descriptor;
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
        return LoginProto.internal_static_org_xiaomi_gamecenter_milink_msg_SetUserInfoToGameCenterRsp_fieldAccessorTable.ensureFieldAccessorsInitialized(LoginProto.SetUserInfoToGameCenterRsp.class, Builder.class);
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
        //   2: getstatic 177	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 183 3 0
        //   12: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 186	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 120	org/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp$Builder:mergeFrom	(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp$Builder;
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
        if ((paramMessage instanceof LoginProto.SetUserInfoToGameCenterRsp)) {
          return mergeFrom((LoginProto.SetUserInfoToGameCenterRsp)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(LoginProto.SetUserInfoToGameCenterRsp paramSetUserInfoToGameCenterRsp)
      {
        if (paramSetUserInfoToGameCenterRsp == LoginProto.SetUserInfoToGameCenterRsp.getDefaultInstance()) {
          return this;
        }
        if (paramSetUserInfoToGameCenterRsp.hasRetCode()) {
          setRetCode(paramSetUserInfoToGameCenterRsp.getRetCode());
        }
        if (paramSetUserInfoToGameCenterRsp.hasErrMsg())
        {
          this.bitField0_ |= 0x2;
          this.errMsg_ = paramSetUserInfoToGameCenterRsp.errMsg_;
          onChanged();
        }
        mergeUnknownFields(paramSetUserInfoToGameCenterRsp.getUnknownFields());
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
  
  public static abstract interface SetUserInfoToGameCenterRspOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getErrMsg();
    
    public abstract ByteString getErrMsgBytes();
    
    public abstract int getRetCode();
    
    public abstract boolean hasErrMsg();
    
    public abstract boolean hasRetCode();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\xiaomi\gamecenter\milink\msg\LoginProto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */