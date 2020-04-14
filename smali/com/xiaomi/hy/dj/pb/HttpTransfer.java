package com.xiaomi.hy.dj.pb;

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

public final class HttpTransfer
{
  private static Descriptors.FileDescriptor descriptor;
  private static final Descriptors.Descriptor internal_static_com_xiaomi_hy_dj_pb_HttpReportRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_xiaomi_hy_dj_pb_HttpReportRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_xiaomi_hy_dj_pb_HttpReportRequest_descriptor, new String[] { "UserId", "Code", "CostTime", "ClientIp", "ServerIp", "RequestInfo", "ResponseInfo" });
  private static final Descriptors.Descriptor internal_static_com_xiaomi_hy_dj_pb_HttpReportResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(4);
  private static GeneratedMessage.FieldAccessorTable internal_static_com_xiaomi_hy_dj_pb_HttpReportResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_xiaomi_hy_dj_pb_HttpReportResponse_descriptor, new String[] { "Code" });
  private static final Descriptors.Descriptor internal_static_com_xiaomi_hy_dj_pb_NameValuePair_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_xiaomi_hy_dj_pb_NameValuePair_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_xiaomi_hy_dj_pb_RequestInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_xiaomi_hy_dj_pb_RequestInfo_fieldAccessorTable;
  private static final Descriptors.Descriptor internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_descriptor;
  private static GeneratedMessage.FieldAccessorTable internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_fieldAccessorTable;
  
  static
  {
    HttpTransfer.1 local1 = new HttpTransfer.1();
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[] { "\n\022HttpTransfer.proto\022\023com.xiaomi.hy.dj.pb\"¾\001\n\013RequestInfo\022\016\n\006method\030\001 \002(\r\022\013\n\003url\030\002 \002(\t\0223\n\007headers\030\003 \003(\0132\".com.xiaomi.hy.dj.pb.NameValuePair\0222\n\006params\030\004 \003(\0132\".com.xiaomi.hy.dj.pb.NameValuePair\022\020\n\bprotocol\030\005 \001(\r\022\027\n\017byteArrayEntity\030\006 \001(\f\",\n\rNameValuePair\022\f\n\004name\030\001 \002(\t\022\r\n\005value\030\002 \002(\t\"_\n\fResponseInfo\022\f\n\004code\030\001 \002(\005\0223\n\007headers\030\002 \003(\0132\".com.xiaomi.hy.dj.pb.NameValuePair\022\f\n\004body\030\003 \001(\t\"×\001\n\021HttpReportRequest\022", "\016\n\006userId\030\001 \002(\004\022\f\n\004code\030\002 \002(\005\022\020\n\bcostTime\030\003 \002(\004\022\020\n\bclientIp\030\004 \002(\005\022\020\n\bserverIp\030\005 \002(\005\0225\n\013requestInfo\030\006 \002(\0132 .com.xiaomi.hy.dj.pb.RequestInfo\0227\n\fresponseInfo\030\007 \001(\0132!.com.xiaomi.hy.dj.pb.ResponseInfo\"\"\n\022HttpReportResponse\022\f\n\004code\030\001 \002(\005" }, new Descriptors.FileDescriptor[0], local1);
    internal_static_com_xiaomi_hy_dj_pb_RequestInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
    internal_static_com_xiaomi_hy_dj_pb_RequestInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_xiaomi_hy_dj_pb_RequestInfo_descriptor, new String[] { "Method", "Url", "Headers", "Params", "Protocol", "ByteArrayEntity" });
    internal_static_com_xiaomi_hy_dj_pb_NameValuePair_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
    internal_static_com_xiaomi_hy_dj_pb_NameValuePair_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_xiaomi_hy_dj_pb_NameValuePair_descriptor, new String[] { "Name", "Value" });
    internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
    internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_descriptor, new String[] { "Code", "Headers", "Body" });
  }
  
  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }
  
  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry) {}
  
  public static final class HttpReportRequest
    extends GeneratedMessage
    implements HttpTransfer.HttpReportRequestOrBuilder
  {
    public static final int CLIENTIP_FIELD_NUMBER = 4;
    public static final int CODE_FIELD_NUMBER = 2;
    public static final int COSTTIME_FIELD_NUMBER = 3;
    public static Parser<HttpReportRequest> PARSER = new HttpTransfer.HttpReportRequest.1();
    public static final int REQUESTINFO_FIELD_NUMBER = 6;
    public static final int RESPONSEINFO_FIELD_NUMBER = 7;
    public static final int SERVERIP_FIELD_NUMBER = 5;
    public static final int USERID_FIELD_NUMBER = 1;
    private static final HttpReportRequest defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int clientIp_;
    private int code_;
    private long costTime_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private HttpTransfer.RequestInfo requestInfo_;
    private HttpTransfer.ResponseInfo responseInfo_;
    private int serverIp_;
    private final UnknownFieldSet unknownFields;
    private long userId_;
    
    static
    {
      HttpReportRequest localHttpReportRequest = new HttpReportRequest(true);
      defaultInstance = localHttpReportRequest;
      localHttpReportRequest.initFields();
    }
    
    /* Error */
    private HttpReportRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 75	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 77	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 79	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 68	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:initFields	()V
      //   18: invokestatic 85	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 6
      //   23: iconst_0
      //   24: istore_3
      //   25: iload_3
      //   26: ifne +399 -> 425
      //   29: aload_1
      //   30: invokevirtual 91	com/google/protobuf/CodedInputStream:readTag	()I
      //   33: istore 4
      //   35: iload 4
      //   37: lookupswitch	default:+414->451, 0:+417->454, 8:+93->130, 16:+137->174, 24:+175->212, 32:+196->233, 40:+218->255, 50:+240->277, 58:+314->351
      //   112: aload_0
      //   113: aload_1
      //   114: aload 6
      //   116: aload_2
      //   117: iload 4
      //   119: invokevirtual 95	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   122: ifne -97 -> 25
      //   125: iconst_1
      //   126: istore_3
      //   127: goto -102 -> 25
      //   130: aload_0
      //   131: aload_0
      //   132: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   135: iconst_1
      //   136: ior
      //   137: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   140: aload_0
      //   141: aload_1
      //   142: invokevirtual 101	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   145: putfield 103	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:userId_	J
      //   148: goto -123 -> 25
      //   151: astore_1
      //   152: aload_1
      //   153: aload_0
      //   154: invokevirtual 107	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   157: athrow
      //   158: astore_1
      //   159: aload_0
      //   160: aload 6
      //   162: invokevirtual 113	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   165: putfield 115	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   168: aload_0
      //   169: invokevirtual 118	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:makeExtensionsImmutable	()V
      //   172: aload_1
      //   173: athrow
      //   174: aload_0
      //   175: aload_0
      //   176: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   179: iconst_2
      //   180: ior
      //   181: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   184: aload_0
      //   185: aload_1
      //   186: invokevirtual 121	com/google/protobuf/CodedInputStream:readInt32	()I
      //   189: putfield 123	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:code_	I
      //   192: goto -167 -> 25
      //   195: astore_1
      //   196: new 72	com/google/protobuf/InvalidProtocolBufferException
      //   199: dup
      //   200: aload_1
      //   201: invokevirtual 127	java/io/IOException:getMessage	()Ljava/lang/String;
      //   204: invokespecial 130	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   207: aload_0
      //   208: invokevirtual 107	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   211: athrow
      //   212: aload_0
      //   213: aload_0
      //   214: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   217: iconst_4
      //   218: ior
      //   219: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   222: aload_0
      //   223: aload_1
      //   224: invokevirtual 101	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   227: putfield 132	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:costTime_	J
      //   230: goto -205 -> 25
      //   233: aload_0
      //   234: aload_0
      //   235: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   238: bipush 8
      //   240: ior
      //   241: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   244: aload_0
      //   245: aload_1
      //   246: invokevirtual 121	com/google/protobuf/CodedInputStream:readInt32	()I
      //   249: putfield 134	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:clientIp_	I
      //   252: goto -227 -> 25
      //   255: aload_0
      //   256: aload_0
      //   257: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   260: bipush 16
      //   262: ior
      //   263: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   266: aload_0
      //   267: aload_1
      //   268: invokevirtual 121	com/google/protobuf/CodedInputStream:readInt32	()I
      //   271: putfield 136	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:serverIp_	I
      //   274: goto -249 -> 25
      //   277: aload_0
      //   278: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   281: bipush 32
      //   283: iand
      //   284: bipush 32
      //   286: if_icmpne +159 -> 445
      //   289: aload_0
      //   290: getfield 138	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:requestInfo_	Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
      //   293: invokevirtual 144	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:toBuilder	()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
      //   296: astore 5
      //   298: aload_0
      //   299: aload_1
      //   300: getstatic 145	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:PARSER	Lcom/google/protobuf/Parser;
      //   303: aload_2
      //   304: invokevirtual 149	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   307: checkcast 140	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo
      //   310: putfield 138	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:requestInfo_	Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
      //   313: aload 5
      //   315: ifnull +22 -> 337
      //   318: aload 5
      //   320: aload_0
      //   321: getfield 138	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:requestInfo_	Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
      //   324: invokevirtual 155	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
      //   327: pop
      //   328: aload_0
      //   329: aload 5
      //   331: invokevirtual 159	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder:buildPartial	()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
      //   334: putfield 138	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:requestInfo_	Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
      //   337: aload_0
      //   338: aload_0
      //   339: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   342: bipush 32
      //   344: ior
      //   345: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   348: goto -323 -> 25
      //   351: aload_0
      //   352: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   355: bipush 64
      //   357: iand
      //   358: bipush 64
      //   360: if_icmpne +79 -> 439
      //   363: aload_0
      //   364: getfield 161	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:responseInfo_	Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;
      //   367: invokevirtual 166	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:toBuilder	()Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo$Builder;
      //   370: astore 5
      //   372: aload_0
      //   373: aload_1
      //   374: getstatic 167	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:PARSER	Lcom/google/protobuf/Parser;
      //   377: aload_2
      //   378: invokevirtual 149	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   381: checkcast 163	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo
      //   384: putfield 161	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:responseInfo_	Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;
      //   387: aload 5
      //   389: ifnull +22 -> 411
      //   392: aload 5
      //   394: aload_0
      //   395: getfield 161	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:responseInfo_	Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;
      //   398: invokevirtual 172	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo$Builder;
      //   401: pop
      //   402: aload_0
      //   403: aload 5
      //   405: invokevirtual 175	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo$Builder:buildPartial	()Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;
      //   408: putfield 161	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:responseInfo_	Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;
      //   411: aload_0
      //   412: aload_0
      //   413: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   416: bipush 64
      //   418: ior
      //   419: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:bitField0_	I
      //   422: goto -397 -> 25
      //   425: aload_0
      //   426: aload 6
      //   428: invokevirtual 113	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   431: putfield 115	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   434: aload_0
      //   435: invokevirtual 118	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:makeExtensionsImmutable	()V
      //   438: return
      //   439: aconst_null
      //   440: astore 5
      //   442: goto -70 -> 372
      //   445: aconst_null
      //   446: astore 5
      //   448: goto -150 -> 298
      //   451: goto -339 -> 112
      //   454: iconst_1
      //   455: istore_3
      //   456: goto -431 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	459	0	this	HttpReportRequest
      //   0	459	1	paramCodedInputStream	CodedInputStream
      //   0	459	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   24	432	3	i	int
      //   33	85	4	j	int
      //   296	151	5	localObject	Object
      //   21	406	6	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      // Exception table:
      //   from	to	target	type
      //   29	35	151	com/google/protobuf/InvalidProtocolBufferException
      //   112	125	151	com/google/protobuf/InvalidProtocolBufferException
      //   130	148	151	com/google/protobuf/InvalidProtocolBufferException
      //   174	192	151	com/google/protobuf/InvalidProtocolBufferException
      //   212	230	151	com/google/protobuf/InvalidProtocolBufferException
      //   233	252	151	com/google/protobuf/InvalidProtocolBufferException
      //   255	274	151	com/google/protobuf/InvalidProtocolBufferException
      //   277	298	151	com/google/protobuf/InvalidProtocolBufferException
      //   298	313	151	com/google/protobuf/InvalidProtocolBufferException
      //   318	337	151	com/google/protobuf/InvalidProtocolBufferException
      //   337	348	151	com/google/protobuf/InvalidProtocolBufferException
      //   351	372	151	com/google/protobuf/InvalidProtocolBufferException
      //   372	387	151	com/google/protobuf/InvalidProtocolBufferException
      //   392	411	151	com/google/protobuf/InvalidProtocolBufferException
      //   411	422	151	com/google/protobuf/InvalidProtocolBufferException
      //   29	35	158	finally
      //   112	125	158	finally
      //   130	148	158	finally
      //   152	158	158	finally
      //   174	192	158	finally
      //   196	212	158	finally
      //   212	230	158	finally
      //   233	252	158	finally
      //   255	274	158	finally
      //   277	298	158	finally
      //   298	313	158	finally
      //   318	337	158	finally
      //   337	348	158	finally
      //   351	372	158	finally
      //   372	387	158	finally
      //   392	411	158	finally
      //   411	422	158	finally
      //   29	35	195	java/io/IOException
      //   112	125	195	java/io/IOException
      //   130	148	195	java/io/IOException
      //   174	192	195	java/io/IOException
      //   212	230	195	java/io/IOException
      //   233	252	195	java/io/IOException
      //   255	274	195	java/io/IOException
      //   277	298	195	java/io/IOException
      //   298	313	195	java/io/IOException
      //   318	337	195	java/io/IOException
      //   337	348	195	java/io/IOException
      //   351	372	195	java/io/IOException
      //   372	387	195	java/io/IOException
      //   392	411	195	java/io/IOException
      //   411	422	195	java/io/IOException
    }
    
    private HttpReportRequest(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private HttpReportRequest(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static HttpReportRequest getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportRequest_descriptor;
    }
    
    private void initFields()
    {
      this.userId_ = 0L;
      this.code_ = 0;
      this.costTime_ = 0L;
      this.clientIp_ = 0;
      this.serverIp_ = 0;
      this.requestInfo_ = HttpTransfer.RequestInfo.getDefaultInstance();
      this.responseInfo_ = HttpTransfer.ResponseInfo.getDefaultInstance();
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$4100();
    }
    
    public static Builder newBuilder(HttpReportRequest paramHttpReportRequest)
    {
      return newBuilder().mergeFrom(paramHttpReportRequest);
    }
    
    public static HttpReportRequest parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (HttpReportRequest)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static HttpReportRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (HttpReportRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static HttpReportRequest parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (HttpReportRequest)PARSER.parseFrom(paramByteString);
    }
    
    public static HttpReportRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (HttpReportRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static HttpReportRequest parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (HttpReportRequest)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static HttpReportRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (HttpReportRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static HttpReportRequest parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (HttpReportRequest)PARSER.parseFrom(paramInputStream);
    }
    
    public static HttpReportRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (HttpReportRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static HttpReportRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (HttpReportRequest)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static HttpReportRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (HttpReportRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getClientIp()
    {
      return this.clientIp_;
    }
    
    public final int getCode()
    {
      return this.code_;
    }
    
    public final long getCostTime()
    {
      return this.costTime_;
    }
    
    public final HttpReportRequest getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<HttpReportRequest> getParserForType()
    {
      return PARSER;
    }
    
    public final HttpTransfer.RequestInfo getRequestInfo()
    {
      return this.requestInfo_;
    }
    
    public final HttpTransfer.RequestInfoOrBuilder getRequestInfoOrBuilder()
    {
      return this.requestInfo_;
    }
    
    public final HttpTransfer.ResponseInfo getResponseInfo()
    {
      return this.responseInfo_;
    }
    
    public final HttpTransfer.ResponseInfoOrBuilder getResponseInfoOrBuilder()
    {
      return this.responseInfo_;
    }
    
    public final int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      int j = 0;
      if ((this.bitField0_ & 0x1) == 1) {
        j = CodedOutputStream.computeUInt64Size(1, this.userId_) + 0;
      }
      i = j;
      if ((this.bitField0_ & 0x2) == 2) {
        i = j + CodedOutputStream.computeInt32Size(2, this.code_);
      }
      j = i;
      if ((this.bitField0_ & 0x4) == 4) {
        j = i + CodedOutputStream.computeUInt64Size(3, this.costTime_);
      }
      i = j;
      if ((this.bitField0_ & 0x8) == 8) {
        i = j + CodedOutputStream.computeInt32Size(4, this.clientIp_);
      }
      j = i;
      if ((this.bitField0_ & 0x10) == 16) {
        j = i + CodedOutputStream.computeInt32Size(5, this.serverIp_);
      }
      i = j;
      if ((this.bitField0_ & 0x20) == 32) {
        i = j + CodedOutputStream.computeMessageSize(6, this.requestInfo_);
      }
      j = i;
      if ((this.bitField0_ & 0x40) == 64) {
        j = i + CodedOutputStream.computeMessageSize(7, this.responseInfo_);
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final int getServerIp()
    {
      return this.serverIp_;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final long getUserId()
    {
      return this.userId_;
    }
    
    public final boolean hasClientIp()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasCode()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasCostTime()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasRequestInfo()
    {
      return (this.bitField0_ & 0x20) == 32;
    }
    
    public final boolean hasResponseInfo()
    {
      return (this.bitField0_ & 0x40) == 64;
    }
    
    public final boolean hasServerIp()
    {
      return (this.bitField0_ & 0x10) == 16;
    }
    
    public final boolean hasUserId()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(HttpReportRequest.class, Builder.class);
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
      if (!hasUserId())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasCode())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasCostTime())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasClientIp())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasServerIp())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasRequestInfo())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!getRequestInfo().isInitialized())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if ((hasResponseInfo()) && (!getResponseInfo().isInitialized()))
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
        paramCodedOutputStream.writeUInt64(1, this.userId_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeInt32(2, this.code_);
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt64(3, this.costTime_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeInt32(4, this.clientIp_);
      }
      if ((this.bitField0_ & 0x10) == 16) {
        paramCodedOutputStream.writeInt32(5, this.serverIp_);
      }
      if ((this.bitField0_ & 0x20) == 32) {
        paramCodedOutputStream.writeMessage(6, this.requestInfo_);
      }
      if ((this.bitField0_ & 0x40) == 64) {
        paramCodedOutputStream.writeMessage(7, this.responseInfo_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements HttpTransfer.HttpReportRequestOrBuilder
    {
      private int bitField0_;
      private int clientIp_;
      private int code_;
      private long costTime_;
      private SingleFieldBuilder<HttpTransfer.RequestInfo, HttpTransfer.RequestInfo.Builder, HttpTransfer.RequestInfoOrBuilder> requestInfoBuilder_;
      private HttpTransfer.RequestInfo requestInfo_ = HttpTransfer.RequestInfo.getDefaultInstance();
      private SingleFieldBuilder<HttpTransfer.ResponseInfo, HttpTransfer.ResponseInfo.Builder, HttpTransfer.ResponseInfoOrBuilder> responseInfoBuilder_;
      private HttpTransfer.ResponseInfo responseInfo_ = HttpTransfer.ResponseInfo.getDefaultInstance();
      private int serverIp_;
      private long userId_;
      
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
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportRequest_descriptor;
      }
      
      private SingleFieldBuilder<HttpTransfer.RequestInfo, HttpTransfer.RequestInfo.Builder, HttpTransfer.RequestInfoOrBuilder> getRequestInfoFieldBuilder()
      {
        if (this.requestInfoBuilder_ == null)
        {
          this.requestInfoBuilder_ = new SingleFieldBuilder(getRequestInfo(), getParentForChildren(), isClean());
          this.requestInfo_ = null;
        }
        return this.requestInfoBuilder_;
      }
      
      private SingleFieldBuilder<HttpTransfer.ResponseInfo, HttpTransfer.ResponseInfo.Builder, HttpTransfer.ResponseInfoOrBuilder> getResponseInfoFieldBuilder()
      {
        if (this.responseInfoBuilder_ == null)
        {
          this.responseInfoBuilder_ = new SingleFieldBuilder(getResponseInfo(), getParentForChildren(), isClean());
          this.responseInfo_ = null;
        }
        return this.responseInfoBuilder_;
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (HttpTransfer.HttpReportRequest.alwaysUseFieldBuilders)
        {
          getRequestInfoFieldBuilder();
          getResponseInfoFieldBuilder();
        }
      }
      
      public final HttpTransfer.HttpReportRequest build()
      {
        HttpTransfer.HttpReportRequest localHttpReportRequest = buildPartial();
        if (!localHttpReportRequest.isInitialized()) {
          throw newUninitializedMessageException(localHttpReportRequest);
        }
        return localHttpReportRequest;
      }
      
      public final HttpTransfer.HttpReportRequest buildPartial()
      {
        int j = 1;
        HttpTransfer.HttpReportRequest localHttpReportRequest = new HttpTransfer.HttpReportRequest(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          HttpTransfer.HttpReportRequest.access$4502(localHttpReportRequest, this.userId_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          HttpTransfer.HttpReportRequest.access$4602(localHttpReportRequest, this.code_);
          j = i;
          if ((k & 0x4) == 4) {
            j = i | 0x4;
          }
          HttpTransfer.HttpReportRequest.access$4702(localHttpReportRequest, this.costTime_);
          i = j;
          if ((k & 0x8) == 8) {
            i = j | 0x8;
          }
          HttpTransfer.HttpReportRequest.access$4802(localHttpReportRequest, this.clientIp_);
          j = i;
          if ((k & 0x10) == 16) {
            j = i | 0x10;
          }
          HttpTransfer.HttpReportRequest.access$4902(localHttpReportRequest, this.serverIp_);
          if ((k & 0x20) == 32) {}
          for (i = j | 0x20;; i = j)
          {
            if (this.requestInfoBuilder_ == null)
            {
              HttpTransfer.HttpReportRequest.access$5002(localHttpReportRequest, this.requestInfo_);
              j = i;
              if ((k & 0x40) == 64) {
                j = i | 0x40;
              }
              if (this.responseInfoBuilder_ != null) {
                break label230;
              }
              HttpTransfer.HttpReportRequest.access$5102(localHttpReportRequest, this.responseInfo_);
            }
            for (;;)
            {
              HttpTransfer.HttpReportRequest.access$5202(localHttpReportRequest, j);
              onBuilt();
              return localHttpReportRequest;
              HttpTransfer.HttpReportRequest.access$5002(localHttpReportRequest, (HttpTransfer.RequestInfo)this.requestInfoBuilder_.build());
              break;
              label230:
              HttpTransfer.HttpReportRequest.access$5102(localHttpReportRequest, (HttpTransfer.ResponseInfo)this.responseInfoBuilder_.build());
            }
          }
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.userId_ = 0L;
        this.bitField0_ &= 0xFFFFFFFE;
        this.code_ = 0;
        this.bitField0_ &= 0xFFFFFFFD;
        this.costTime_ = 0L;
        this.bitField0_ &= 0xFFFFFFFB;
        this.clientIp_ = 0;
        this.bitField0_ &= 0xFFFFFFF7;
        this.serverIp_ = 0;
        this.bitField0_ &= 0xFFFFFFEF;
        if (this.requestInfoBuilder_ == null)
        {
          this.requestInfo_ = HttpTransfer.RequestInfo.getDefaultInstance();
          this.bitField0_ &= 0xFFFFFFDF;
          if (this.responseInfoBuilder_ != null) {
            break label148;
          }
          this.responseInfo_ = HttpTransfer.ResponseInfo.getDefaultInstance();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFBF;
          return this;
          this.requestInfoBuilder_.clear();
          break;
          label148:
          this.responseInfoBuilder_.clear();
        }
      }
      
      public final Builder clearClientIp()
      {
        this.bitField0_ &= 0xFFFFFFF7;
        this.clientIp_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearCode()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.code_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearCostTime()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.costTime_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clearRequestInfo()
      {
        if (this.requestInfoBuilder_ == null)
        {
          this.requestInfo_ = HttpTransfer.RequestInfo.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFDF;
          return this;
          this.requestInfoBuilder_.clear();
        }
      }
      
      public final Builder clearResponseInfo()
      {
        if (this.responseInfoBuilder_ == null)
        {
          this.responseInfo_ = HttpTransfer.ResponseInfo.getDefaultInstance();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ &= 0xFFFFFFBF;
          return this;
          this.responseInfoBuilder_.clear();
        }
      }
      
      public final Builder clearServerIp()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.serverIp_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearUserId()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.userId_ = 0L;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getClientIp()
      {
        return this.clientIp_;
      }
      
      public final int getCode()
      {
        return this.code_;
      }
      
      public final long getCostTime()
      {
        return this.costTime_;
      }
      
      public final HttpTransfer.HttpReportRequest getDefaultInstanceForType()
      {
        return HttpTransfer.HttpReportRequest.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportRequest_descriptor;
      }
      
      public final HttpTransfer.RequestInfo getRequestInfo()
      {
        if (this.requestInfoBuilder_ == null) {
          return this.requestInfo_;
        }
        return (HttpTransfer.RequestInfo)this.requestInfoBuilder_.getMessage();
      }
      
      public final HttpTransfer.RequestInfo.Builder getRequestInfoBuilder()
      {
        this.bitField0_ |= 0x20;
        onChanged();
        return (HttpTransfer.RequestInfo.Builder)getRequestInfoFieldBuilder().getBuilder();
      }
      
      public final HttpTransfer.RequestInfoOrBuilder getRequestInfoOrBuilder()
      {
        if (this.requestInfoBuilder_ != null) {
          return (HttpTransfer.RequestInfoOrBuilder)this.requestInfoBuilder_.getMessageOrBuilder();
        }
        return this.requestInfo_;
      }
      
      public final HttpTransfer.ResponseInfo getResponseInfo()
      {
        if (this.responseInfoBuilder_ == null) {
          return this.responseInfo_;
        }
        return (HttpTransfer.ResponseInfo)this.responseInfoBuilder_.getMessage();
      }
      
      public final HttpTransfer.ResponseInfo.Builder getResponseInfoBuilder()
      {
        this.bitField0_ |= 0x40;
        onChanged();
        return (HttpTransfer.ResponseInfo.Builder)getResponseInfoFieldBuilder().getBuilder();
      }
      
      public final HttpTransfer.ResponseInfoOrBuilder getResponseInfoOrBuilder()
      {
        if (this.responseInfoBuilder_ != null) {
          return (HttpTransfer.ResponseInfoOrBuilder)this.responseInfoBuilder_.getMessageOrBuilder();
        }
        return this.responseInfo_;
      }
      
      public final int getServerIp()
      {
        return this.serverIp_;
      }
      
      public final long getUserId()
      {
        return this.userId_;
      }
      
      public final boolean hasClientIp()
      {
        return (this.bitField0_ & 0x8) == 8;
      }
      
      public final boolean hasCode()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      public final boolean hasCostTime()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasRequestInfo()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasResponseInfo()
      {
        return (this.bitField0_ & 0x40) == 64;
      }
      
      public final boolean hasServerIp()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasUserId()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(HttpTransfer.HttpReportRequest.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasUserId()) {}
        while ((!hasCode()) || (!hasCostTime()) || (!hasClientIp()) || (!hasServerIp()) || (!hasRequestInfo()) || (!getRequestInfo().isInitialized()) || ((hasResponseInfo()) && (!getResponseInfo().isInitialized()))) {
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
        //   2: getstatic 296	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 302 3 0
        //   12: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 199	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 305	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 199	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$HttpReportRequest$Builder;
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
        if ((paramMessage instanceof HttpTransfer.HttpReportRequest)) {
          return mergeFrom((HttpTransfer.HttpReportRequest)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(HttpTransfer.HttpReportRequest paramHttpReportRequest)
      {
        if (paramHttpReportRequest == HttpTransfer.HttpReportRequest.getDefaultInstance()) {
          return this;
        }
        if (paramHttpReportRequest.hasUserId()) {
          setUserId(paramHttpReportRequest.getUserId());
        }
        if (paramHttpReportRequest.hasCode()) {
          setCode(paramHttpReportRequest.getCode());
        }
        if (paramHttpReportRequest.hasCostTime()) {
          setCostTime(paramHttpReportRequest.getCostTime());
        }
        if (paramHttpReportRequest.hasClientIp()) {
          setClientIp(paramHttpReportRequest.getClientIp());
        }
        if (paramHttpReportRequest.hasServerIp()) {
          setServerIp(paramHttpReportRequest.getServerIp());
        }
        if (paramHttpReportRequest.hasRequestInfo()) {
          mergeRequestInfo(paramHttpReportRequest.getRequestInfo());
        }
        if (paramHttpReportRequest.hasResponseInfo()) {
          mergeResponseInfo(paramHttpReportRequest.getResponseInfo());
        }
        mergeUnknownFields(paramHttpReportRequest.getUnknownFields());
        return this;
      }
      
      public final Builder mergeRequestInfo(HttpTransfer.RequestInfo paramRequestInfo)
      {
        if (this.requestInfoBuilder_ == null) {
          if (((this.bitField0_ & 0x20) == 32) && (this.requestInfo_ != HttpTransfer.RequestInfo.getDefaultInstance()))
          {
            this.requestInfo_ = HttpTransfer.RequestInfo.newBuilder(this.requestInfo_).mergeFrom(paramRequestInfo).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x20;
          return this;
          this.requestInfo_ = paramRequestInfo;
          break;
          this.requestInfoBuilder_.mergeFrom(paramRequestInfo);
        }
      }
      
      public final Builder mergeResponseInfo(HttpTransfer.ResponseInfo paramResponseInfo)
      {
        if (this.responseInfoBuilder_ == null) {
          if (((this.bitField0_ & 0x40) == 64) && (this.responseInfo_ != HttpTransfer.ResponseInfo.getDefaultInstance()))
          {
            this.responseInfo_ = HttpTransfer.ResponseInfo.newBuilder(this.responseInfo_).mergeFrom(paramResponseInfo).buildPartial();
            onChanged();
          }
        }
        for (;;)
        {
          this.bitField0_ |= 0x40;
          return this;
          this.responseInfo_ = paramResponseInfo;
          break;
          this.responseInfoBuilder_.mergeFrom(paramResponseInfo);
        }
      }
      
      public final Builder setClientIp(int paramInt)
      {
        this.bitField0_ |= 0x8;
        this.clientIp_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setCode(int paramInt)
      {
        this.bitField0_ |= 0x2;
        this.code_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setCostTime(long paramLong)
      {
        this.bitField0_ |= 0x4;
        this.costTime_ = paramLong;
        onChanged();
        return this;
      }
      
      public final Builder setRequestInfo(HttpTransfer.RequestInfo.Builder paramBuilder)
      {
        if (this.requestInfoBuilder_ == null)
        {
          this.requestInfo_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x20;
          return this;
          this.requestInfoBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setRequestInfo(HttpTransfer.RequestInfo paramRequestInfo)
      {
        if (this.requestInfoBuilder_ == null)
        {
          if (paramRequestInfo == null) {
            throw new NullPointerException();
          }
          this.requestInfo_ = paramRequestInfo;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x20;
          return this;
          this.requestInfoBuilder_.setMessage(paramRequestInfo);
        }
      }
      
      public final Builder setResponseInfo(HttpTransfer.ResponseInfo.Builder paramBuilder)
      {
        if (this.responseInfoBuilder_ == null)
        {
          this.responseInfo_ = paramBuilder.build();
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x40;
          return this;
          this.responseInfoBuilder_.setMessage(paramBuilder.build());
        }
      }
      
      public final Builder setResponseInfo(HttpTransfer.ResponseInfo paramResponseInfo)
      {
        if (this.responseInfoBuilder_ == null)
        {
          if (paramResponseInfo == null) {
            throw new NullPointerException();
          }
          this.responseInfo_ = paramResponseInfo;
          onChanged();
        }
        for (;;)
        {
          this.bitField0_ |= 0x40;
          return this;
          this.responseInfoBuilder_.setMessage(paramResponseInfo);
        }
      }
      
      public final Builder setServerIp(int paramInt)
      {
        this.bitField0_ |= 0x10;
        this.serverIp_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setUserId(long paramLong)
      {
        this.bitField0_ |= 0x1;
        this.userId_ = paramLong;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface HttpReportRequestOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getClientIp();
    
    public abstract int getCode();
    
    public abstract long getCostTime();
    
    public abstract HttpTransfer.RequestInfo getRequestInfo();
    
    public abstract HttpTransfer.RequestInfoOrBuilder getRequestInfoOrBuilder();
    
    public abstract HttpTransfer.ResponseInfo getResponseInfo();
    
    public abstract HttpTransfer.ResponseInfoOrBuilder getResponseInfoOrBuilder();
    
    public abstract int getServerIp();
    
    public abstract long getUserId();
    
    public abstract boolean hasClientIp();
    
    public abstract boolean hasCode();
    
    public abstract boolean hasCostTime();
    
    public abstract boolean hasRequestInfo();
    
    public abstract boolean hasResponseInfo();
    
    public abstract boolean hasServerIp();
    
    public abstract boolean hasUserId();
  }
  
  public static final class HttpReportResponse
    extends GeneratedMessage
    implements HttpTransfer.HttpReportResponseOrBuilder
  {
    public static final int CODE_FIELD_NUMBER = 1;
    public static Parser<HttpReportResponse> PARSER = new HttpTransfer.HttpReportResponse.1();
    private static final HttpReportResponse defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private int code_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      HttpReportResponse localHttpReportResponse = new HttpReportResponse(true);
      defaultInstance = localHttpReportResponse;
      localHttpReportResponse.initFields();
    }
    
    /* Error */
    private HttpReportResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 57	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 59	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 48	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:initFields	()V
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
      //   71: invokevirtual 75	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   74: ifne -49 -> 25
      //   77: iconst_1
      //   78: istore_3
      //   79: goto -54 -> 25
      //   82: aload_0
      //   83: aload_0
      //   84: getfield 77	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:bitField0_	I
      //   87: iconst_1
      //   88: ior
      //   89: putfield 77	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:bitField0_	I
      //   92: aload_0
      //   93: aload_1
      //   94: invokevirtual 80	com/google/protobuf/CodedInputStream:readInt32	()I
      //   97: putfield 82	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:code_	I
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
      //   117: putfield 94	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   120: aload_0
      //   121: invokevirtual 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:makeExtensionsImmutable	()V
      //   124: aload_1
      //   125: athrow
      //   126: aload_0
      //   127: aload 5
      //   129: invokevirtual 92	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   132: putfield 94	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   135: aload_0
      //   136: invokevirtual 97	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:makeExtensionsImmutable	()V
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
      //   0	165	0	this	HttpReportResponse
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
    
    private HttpReportResponse(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private HttpReportResponse(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static HttpReportResponse getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportResponse_descriptor;
    }
    
    private void initFields()
    {
      this.code_ = 0;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$5600();
    }
    
    public static Builder newBuilder(HttpReportResponse paramHttpReportResponse)
    {
      return newBuilder().mergeFrom(paramHttpReportResponse);
    }
    
    public static HttpReportResponse parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (HttpReportResponse)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static HttpReportResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (HttpReportResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static HttpReportResponse parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (HttpReportResponse)PARSER.parseFrom(paramByteString);
    }
    
    public static HttpReportResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (HttpReportResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static HttpReportResponse parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (HttpReportResponse)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static HttpReportResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (HttpReportResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static HttpReportResponse parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (HttpReportResponse)PARSER.parseFrom(paramInputStream);
    }
    
    public static HttpReportResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (HttpReportResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static HttpReportResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (HttpReportResponse)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static HttpReportResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (HttpReportResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final int getCode()
    {
      return this.code_;
    }
    
    public final HttpReportResponse getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final Parser<HttpReportResponse> getParserForType()
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
        i = CodedOutputStream.computeInt32Size(1, this.code_) + 0;
      }
      i += getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final boolean hasCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(HttpReportResponse.class, Builder.class);
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
      if (!hasCode())
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
        paramCodedOutputStream.writeInt32(1, this.code_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements HttpTransfer.HttpReportResponseOrBuilder
    {
      private int bitField0_;
      private int code_;
      
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
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportResponse_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final HttpTransfer.HttpReportResponse build()
      {
        HttpTransfer.HttpReportResponse localHttpReportResponse = buildPartial();
        if (!localHttpReportResponse.isInitialized()) {
          throw newUninitializedMessageException(localHttpReportResponse);
        }
        return localHttpReportResponse;
      }
      
      public final HttpTransfer.HttpReportResponse buildPartial()
      {
        int i = 1;
        HttpTransfer.HttpReportResponse localHttpReportResponse = new HttpTransfer.HttpReportResponse(this, null);
        if ((this.bitField0_ & 0x1) == 1) {}
        for (;;)
        {
          HttpTransfer.HttpReportResponse.access$6002(localHttpReportResponse, this.code_);
          HttpTransfer.HttpReportResponse.access$6102(localHttpReportResponse, i);
          onBuilt();
          return localHttpReportResponse;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.code_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        return this;
      }
      
      public final Builder clearCode()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.code_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final int getCode()
      {
        return this.code_;
      }
      
      public final HttpTransfer.HttpReportResponse getDefaultInstanceForType()
      {
        return HttpTransfer.HttpReportResponse.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportResponse_descriptor;
      }
      
      public final boolean hasCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_HttpReportResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(HttpTransfer.HttpReportResponse.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        return hasCode();
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 145	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 151 3 0
        //   12: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 98	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 154	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 98	com/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$HttpReportResponse$Builder;
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
        if ((paramMessage instanceof HttpTransfer.HttpReportResponse)) {
          return mergeFrom((HttpTransfer.HttpReportResponse)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(HttpTransfer.HttpReportResponse paramHttpReportResponse)
      {
        if (paramHttpReportResponse == HttpTransfer.HttpReportResponse.getDefaultInstance()) {
          return this;
        }
        if (paramHttpReportResponse.hasCode()) {
          setCode(paramHttpReportResponse.getCode());
        }
        mergeUnknownFields(paramHttpReportResponse.getUnknownFields());
        return this;
      }
      
      public final Builder setCode(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.code_ = paramInt;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface HttpReportResponseOrBuilder
    extends MessageOrBuilder
  {
    public abstract int getCode();
    
    public abstract boolean hasCode();
  }
  
  public static final class NameValuePair
    extends GeneratedMessage
    implements HttpTransfer.NameValuePairOrBuilder
  {
    public static final int NAME_FIELD_NUMBER = 1;
    public static Parser<NameValuePair> PARSER = new HttpTransfer.NameValuePair.1();
    public static final int VALUE_FIELD_NUMBER = 2;
    private static final NameValuePair defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object name_;
    private final UnknownFieldSet unknownFields;
    private Object value_;
    
    static
    {
      NameValuePair localNameValuePair = new NameValuePair(true);
      defaultInstance = localNameValuePair;
      localNameValuePair.initFields();
    }
    
    /* Error */
    private NameValuePair(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 59	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 61	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 63	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 52	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:initFields	()V
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
      //   79: invokevirtual 79	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   82: ifne -57 -> 25
      //   85: iconst_1
      //   86: istore_3
      //   87: goto -62 -> 25
      //   90: aload_1
      //   91: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   94: astore 6
      //   96: aload_0
      //   97: aload_0
      //   98: getfield 85	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:bitField0_	I
      //   101: iconst_1
      //   102: ior
      //   103: putfield 85	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:bitField0_	I
      //   106: aload_0
      //   107: aload 6
      //   109: putfield 87	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:name_	Ljava/lang/Object;
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
      //   129: putfield 99	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   132: aload_0
      //   133: invokevirtual 102	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:makeExtensionsImmutable	()V
      //   136: aload_1
      //   137: athrow
      //   138: aload_1
      //   139: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   142: astore 6
      //   144: aload_0
      //   145: aload_0
      //   146: getfield 85	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:bitField0_	I
      //   149: iconst_2
      //   150: ior
      //   151: putfield 85	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:bitField0_	I
      //   154: aload_0
      //   155: aload 6
      //   157: putfield 104	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:value_	Ljava/lang/Object;
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
      //   186: putfield 99	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   189: aload_0
      //   190: invokevirtual 102	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:makeExtensionsImmutable	()V
      //   193: return
      //   194: goto -122 -> 72
      //   197: iconst_1
      //   198: istore_3
      //   199: goto -174 -> 25
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	202	0	this	NameValuePair
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
    
    private NameValuePair(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private NameValuePair(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static NameValuePair getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_NameValuePair_descriptor;
    }
    
    private void initFields()
    {
      this.name_ = "";
      this.value_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$1900();
    }
    
    public static Builder newBuilder(NameValuePair paramNameValuePair)
    {
      return newBuilder().mergeFrom(paramNameValuePair);
    }
    
    public static NameValuePair parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NameValuePair)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static NameValuePair parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NameValuePair)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NameValuePair parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (NameValuePair)PARSER.parseFrom(paramByteString);
    }
    
    public static NameValuePair parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NameValuePair)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static NameValuePair parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (NameValuePair)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static NameValuePair parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NameValuePair)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static NameValuePair parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NameValuePair)PARSER.parseFrom(paramInputStream);
    }
    
    public static NameValuePair parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NameValuePair)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static NameValuePair parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (NameValuePair)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static NameValuePair parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NameValuePair)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final NameValuePair getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final String getName()
    {
      Object localObject = this.name_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.name_ = str;
      }
      return str;
    }
    
    public final ByteString getNameBytes()
    {
      Object localObject = this.name_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.name_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final Parser<NameValuePair> getParserForType()
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
        i = CodedOutputStream.computeBytesSize(1, getNameBytes()) + 0;
      }
      int j = i;
      if ((this.bitField0_ & 0x2) == 2) {
        j = i + CodedOutputStream.computeBytesSize(2, getValueBytes());
      }
      i = j + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i;
      return i;
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final String getValue()
    {
      Object localObject = this.value_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.value_ = str;
      }
      return str;
    }
    
    public final ByteString getValueBytes()
    {
      Object localObject = this.value_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.value_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final boolean hasName()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasValue()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_NameValuePair_fieldAccessorTable.ensureFieldAccessorsInitialized(NameValuePair.class, Builder.class);
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
      if (!hasName())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasValue())
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
        paramCodedOutputStream.writeBytes(1, getNameBytes());
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getValueBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements HttpTransfer.NameValuePairOrBuilder
    {
      private int bitField0_;
      private Object name_ = "";
      private Object value_ = "";
      
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
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_NameValuePair_descriptor;
      }
      
      private void maybeForceBuilderInitialization() {}
      
      public final HttpTransfer.NameValuePair build()
      {
        HttpTransfer.NameValuePair localNameValuePair = buildPartial();
        if (!localNameValuePair.isInitialized()) {
          throw newUninitializedMessageException(localNameValuePair);
        }
        return localNameValuePair;
      }
      
      public final HttpTransfer.NameValuePair buildPartial()
      {
        int i = 1;
        HttpTransfer.NameValuePair localNameValuePair = new HttpTransfer.NameValuePair(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          HttpTransfer.NameValuePair.access$2302(localNameValuePair, this.name_);
          int j = i;
          if ((k & 0x2) == 2) {
            j = i | 0x2;
          }
          HttpTransfer.NameValuePair.access$2402(localNameValuePair, this.value_);
          HttpTransfer.NameValuePair.access$2502(localNameValuePair, j);
          onBuilt();
          return localNameValuePair;
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.name_ = "";
        this.bitField0_ &= 0xFFFFFFFE;
        this.value_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        return this;
      }
      
      public final Builder clearName()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.name_ = HttpTransfer.NameValuePair.getDefaultInstance().getName();
        onChanged();
        return this;
      }
      
      public final Builder clearValue()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.value_ = HttpTransfer.NameValuePair.getDefaultInstance().getValue();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final HttpTransfer.NameValuePair getDefaultInstanceForType()
      {
        return HttpTransfer.NameValuePair.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_NameValuePair_descriptor;
      }
      
      public final String getName()
      {
        Object localObject = this.name_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.name_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getNameBytes()
      {
        Object localObject = this.name_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.name_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final String getValue()
      {
        Object localObject = this.value_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.value_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getValueBytes()
      {
        Object localObject = this.value_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.value_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasName()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasValue()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_NameValuePair_fieldAccessorTable.ensureFieldAccessorsInitialized(HttpTransfer.NameValuePair.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasName()) {}
        while (!hasValue()) {
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
        //   2: getstatic 181	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 187 3 0
        //   12: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 119	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 190	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 119	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;
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
        if ((paramMessage instanceof HttpTransfer.NameValuePair)) {
          return mergeFrom((HttpTransfer.NameValuePair)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (paramNameValuePair == HttpTransfer.NameValuePair.getDefaultInstance()) {
          return this;
        }
        if (paramNameValuePair.hasName())
        {
          this.bitField0_ |= 0x1;
          this.name_ = paramNameValuePair.name_;
          onChanged();
        }
        if (paramNameValuePair.hasValue())
        {
          this.bitField0_ |= 0x2;
          this.value_ = paramNameValuePair.value_;
          onChanged();
        }
        mergeUnknownFields(paramNameValuePair.getUnknownFields());
        return this;
      }
      
      public final Builder setName(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.name_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setNameBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x1;
        this.name_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setValue(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.value_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setValueBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.value_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface NameValuePairOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getName();
    
    public abstract ByteString getNameBytes();
    
    public abstract String getValue();
    
    public abstract ByteString getValueBytes();
    
    public abstract boolean hasName();
    
    public abstract boolean hasValue();
  }
  
  public static final class RequestInfo
    extends GeneratedMessage
    implements HttpTransfer.RequestInfoOrBuilder
  {
    public static final int BYTEARRAYENTITY_FIELD_NUMBER = 6;
    public static final int HEADERS_FIELD_NUMBER = 3;
    public static final int METHOD_FIELD_NUMBER = 1;
    public static final int PARAMS_FIELD_NUMBER = 4;
    public static Parser<RequestInfo> PARSER = new HttpTransfer.RequestInfo.1();
    public static final int PROTOCOL_FIELD_NUMBER = 5;
    public static final int URL_FIELD_NUMBER = 2;
    private static final RequestInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private ByteString byteArrayEntity_;
    private List<HttpTransfer.NameValuePair> headers_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int method_;
    private List<HttpTransfer.NameValuePair> params_;
    private int protocol_;
    private final UnknownFieldSet unknownFields;
    private Object url_;
    
    static
    {
      RequestInfo localRequestInfo = new RequestInfo(true);
      defaultInstance = localRequestInfo;
      localRequestInfo.initFields();
    }
    
    /* Error */
    private RequestInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 74	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 76	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 78	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 67	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:initFields	()V
      //   18: invokestatic 84	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 9
      //   23: iconst_0
      //   24: istore 8
      //   26: iconst_0
      //   27: istore_3
      //   28: iload 8
      //   30: ifne +517 -> 547
      //   33: iload_3
      //   34: istore 6
      //   36: iload_3
      //   37: istore 4
      //   39: iload_3
      //   40: istore 7
      //   42: aload_1
      //   43: invokevirtual 90	com/google/protobuf/CodedInputStream:readTag	()I
      //   46: istore 5
      //   48: iload 5
      //   50: lookupswitch	default:+549->599, 0:+552->602, 8:+94->144, 18:+200->250, 26:+273->323, 34:+344->394, 40:+418->468, 50:+457->507
      //   116: iload_3
      //   117: istore 6
      //   119: iload_3
      //   120: istore 4
      //   122: iload_3
      //   123: istore 7
      //   125: aload_0
      //   126: aload_1
      //   127: aload 9
      //   129: aload_2
      //   130: iload 5
      //   132: invokevirtual 94	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   135: ifne -107 -> 28
      //   138: iconst_1
      //   139: istore 8
      //   141: goto -113 -> 28
      //   144: iload_3
      //   145: istore 6
      //   147: iload_3
      //   148: istore 4
      //   150: iload_3
      //   151: istore 7
      //   153: aload_0
      //   154: aload_0
      //   155: getfield 96	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:bitField0_	I
      //   158: iconst_1
      //   159: ior
      //   160: putfield 96	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:bitField0_	I
      //   163: iload_3
      //   164: istore 6
      //   166: iload_3
      //   167: istore 4
      //   169: iload_3
      //   170: istore 7
      //   172: aload_0
      //   173: aload_1
      //   174: invokevirtual 99	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   177: putfield 101	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:method_	I
      //   180: goto -152 -> 28
      //   183: astore_1
      //   184: iload 6
      //   186: istore 4
      //   188: aload_1
      //   189: aload_0
      //   190: invokevirtual 105	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   193: athrow
      //   194: astore_1
      //   195: iload 4
      //   197: iconst_4
      //   198: iand
      //   199: iconst_4
      //   200: if_icmpne +14 -> 214
      //   203: aload_0
      //   204: aload_0
      //   205: getfield 107	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:headers_	Ljava/util/List;
      //   208: invokestatic 113	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   211: putfield 107	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:headers_	Ljava/util/List;
      //   214: iload 4
      //   216: bipush 8
      //   218: iand
      //   219: bipush 8
      //   221: if_icmpne +14 -> 235
      //   224: aload_0
      //   225: aload_0
      //   226: getfield 115	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:params_	Ljava/util/List;
      //   229: invokestatic 113	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   232: putfield 115	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:params_	Ljava/util/List;
      //   235: aload_0
      //   236: aload 9
      //   238: invokevirtual 121	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   241: putfield 123	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   244: aload_0
      //   245: invokevirtual 126	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:makeExtensionsImmutable	()V
      //   248: aload_1
      //   249: athrow
      //   250: iload_3
      //   251: istore 6
      //   253: iload_3
      //   254: istore 4
      //   256: iload_3
      //   257: istore 7
      //   259: aload_1
      //   260: invokevirtual 130	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   263: astore 10
      //   265: iload_3
      //   266: istore 6
      //   268: iload_3
      //   269: istore 4
      //   271: iload_3
      //   272: istore 7
      //   274: aload_0
      //   275: aload_0
      //   276: getfield 96	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:bitField0_	I
      //   279: iconst_2
      //   280: ior
      //   281: putfield 96	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:bitField0_	I
      //   284: iload_3
      //   285: istore 6
      //   287: iload_3
      //   288: istore 4
      //   290: iload_3
      //   291: istore 7
      //   293: aload_0
      //   294: aload 10
      //   296: putfield 132	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:url_	Ljava/lang/Object;
      //   299: goto -271 -> 28
      //   302: astore_1
      //   303: iload 7
      //   305: istore 4
      //   307: new 71	com/google/protobuf/InvalidProtocolBufferException
      //   310: dup
      //   311: aload_1
      //   312: invokevirtual 136	java/io/IOException:getMessage	()Ljava/lang/String;
      //   315: invokespecial 139	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   318: aload_0
      //   319: invokevirtual 105	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   322: athrow
      //   323: iload_3
      //   324: istore 5
      //   326: iload_3
      //   327: iconst_4
      //   328: iand
      //   329: iconst_4
      //   330: if_icmpeq +28 -> 358
      //   333: iload_3
      //   334: istore 6
      //   336: iload_3
      //   337: istore 4
      //   339: iload_3
      //   340: istore 7
      //   342: aload_0
      //   343: new 141	java/util/ArrayList
      //   346: dup
      //   347: invokespecial 142	java/util/ArrayList:<init>	()V
      //   350: putfield 107	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:headers_	Ljava/util/List;
      //   353: iload_3
      //   354: iconst_4
      //   355: ior
      //   356: istore 5
      //   358: iload 5
      //   360: istore 6
      //   362: iload 5
      //   364: istore 4
      //   366: iload 5
      //   368: istore 7
      //   370: aload_0
      //   371: getfield 107	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:headers_	Ljava/util/List;
      //   374: aload_1
      //   375: getstatic 145	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:PARSER	Lcom/google/protobuf/Parser;
      //   378: aload_2
      //   379: invokevirtual 149	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   382: invokeinterface 155 2 0
      //   387: pop
      //   388: iload 5
      //   390: istore_3
      //   391: goto -363 -> 28
      //   394: iload_3
      //   395: istore 5
      //   397: iload_3
      //   398: bipush 8
      //   400: iand
      //   401: bipush 8
      //   403: if_icmpeq +29 -> 432
      //   406: iload_3
      //   407: istore 6
      //   409: iload_3
      //   410: istore 4
      //   412: iload_3
      //   413: istore 7
      //   415: aload_0
      //   416: new 141	java/util/ArrayList
      //   419: dup
      //   420: invokespecial 142	java/util/ArrayList:<init>	()V
      //   423: putfield 115	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:params_	Ljava/util/List;
      //   426: iload_3
      //   427: bipush 8
      //   429: ior
      //   430: istore 5
      //   432: iload 5
      //   434: istore 6
      //   436: iload 5
      //   438: istore 4
      //   440: iload 5
      //   442: istore 7
      //   444: aload_0
      //   445: getfield 115	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:params_	Ljava/util/List;
      //   448: aload_1
      //   449: getstatic 145	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:PARSER	Lcom/google/protobuf/Parser;
      //   452: aload_2
      //   453: invokevirtual 149	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   456: invokeinterface 155 2 0
      //   461: pop
      //   462: iload 5
      //   464: istore_3
      //   465: goto -437 -> 28
      //   468: iload_3
      //   469: istore 6
      //   471: iload_3
      //   472: istore 4
      //   474: iload_3
      //   475: istore 7
      //   477: aload_0
      //   478: aload_0
      //   479: getfield 96	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:bitField0_	I
      //   482: iconst_4
      //   483: ior
      //   484: putfield 96	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:bitField0_	I
      //   487: iload_3
      //   488: istore 6
      //   490: iload_3
      //   491: istore 4
      //   493: iload_3
      //   494: istore 7
      //   496: aload_0
      //   497: aload_1
      //   498: invokevirtual 99	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   501: putfield 157	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:protocol_	I
      //   504: goto -476 -> 28
      //   507: iload_3
      //   508: istore 6
      //   510: iload_3
      //   511: istore 4
      //   513: iload_3
      //   514: istore 7
      //   516: aload_0
      //   517: aload_0
      //   518: getfield 96	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:bitField0_	I
      //   521: bipush 8
      //   523: ior
      //   524: putfield 96	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:bitField0_	I
      //   527: iload_3
      //   528: istore 6
      //   530: iload_3
      //   531: istore 4
      //   533: iload_3
      //   534: istore 7
      //   536: aload_0
      //   537: aload_1
      //   538: invokevirtual 130	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   541: putfield 159	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:byteArrayEntity_	Lcom/google/protobuf/ByteString;
      //   544: goto -516 -> 28
      //   547: iload_3
      //   548: iconst_4
      //   549: iand
      //   550: iconst_4
      //   551: if_icmpne +14 -> 565
      //   554: aload_0
      //   555: aload_0
      //   556: getfield 107	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:headers_	Ljava/util/List;
      //   559: invokestatic 113	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   562: putfield 107	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:headers_	Ljava/util/List;
      //   565: iload_3
      //   566: bipush 8
      //   568: iand
      //   569: bipush 8
      //   571: if_icmpne +14 -> 585
      //   574: aload_0
      //   575: aload_0
      //   576: getfield 115	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:params_	Ljava/util/List;
      //   579: invokestatic 113	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   582: putfield 115	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:params_	Ljava/util/List;
      //   585: aload_0
      //   586: aload 9
      //   588: invokevirtual 121	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   591: putfield 123	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   594: aload_0
      //   595: invokevirtual 126	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:makeExtensionsImmutable	()V
      //   598: return
      //   599: goto -483 -> 116
      //   602: iconst_1
      //   603: istore 8
      //   605: goto -577 -> 28
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	608	0	this	RequestInfo
      //   0	608	1	paramCodedInputStream	CodedInputStream
      //   0	608	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   27	542	3	i	int
      //   37	495	4	j	int
      //   46	417	5	k	int
      //   34	495	6	m	int
      //   40	495	7	n	int
      //   24	580	8	i1	int
      //   21	566	9	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   263	32	10	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   42	48	183	com/google/protobuf/InvalidProtocolBufferException
      //   125	138	183	com/google/protobuf/InvalidProtocolBufferException
      //   153	163	183	com/google/protobuf/InvalidProtocolBufferException
      //   172	180	183	com/google/protobuf/InvalidProtocolBufferException
      //   259	265	183	com/google/protobuf/InvalidProtocolBufferException
      //   274	284	183	com/google/protobuf/InvalidProtocolBufferException
      //   293	299	183	com/google/protobuf/InvalidProtocolBufferException
      //   342	353	183	com/google/protobuf/InvalidProtocolBufferException
      //   370	388	183	com/google/protobuf/InvalidProtocolBufferException
      //   415	426	183	com/google/protobuf/InvalidProtocolBufferException
      //   444	462	183	com/google/protobuf/InvalidProtocolBufferException
      //   477	487	183	com/google/protobuf/InvalidProtocolBufferException
      //   496	504	183	com/google/protobuf/InvalidProtocolBufferException
      //   516	527	183	com/google/protobuf/InvalidProtocolBufferException
      //   536	544	183	com/google/protobuf/InvalidProtocolBufferException
      //   42	48	194	finally
      //   125	138	194	finally
      //   153	163	194	finally
      //   172	180	194	finally
      //   188	194	194	finally
      //   259	265	194	finally
      //   274	284	194	finally
      //   293	299	194	finally
      //   307	323	194	finally
      //   342	353	194	finally
      //   370	388	194	finally
      //   415	426	194	finally
      //   444	462	194	finally
      //   477	487	194	finally
      //   496	504	194	finally
      //   516	527	194	finally
      //   536	544	194	finally
      //   42	48	302	java/io/IOException
      //   125	138	302	java/io/IOException
      //   153	163	302	java/io/IOException
      //   172	180	302	java/io/IOException
      //   259	265	302	java/io/IOException
      //   274	284	302	java/io/IOException
      //   293	299	302	java/io/IOException
      //   342	353	302	java/io/IOException
      //   370	388	302	java/io/IOException
      //   415	426	302	java/io/IOException
      //   444	462	302	java/io/IOException
      //   477	487	302	java/io/IOException
      //   496	504	302	java/io/IOException
      //   516	527	302	java/io/IOException
      //   536	544	302	java/io/IOException
    }
    
    private RequestInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private RequestInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static RequestInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_RequestInfo_descriptor;
    }
    
    private void initFields()
    {
      this.method_ = 0;
      this.url_ = "";
      this.headers_ = Collections.emptyList();
      this.params_ = Collections.emptyList();
      this.protocol_ = 0;
      this.byteArrayEntity_ = ByteString.EMPTY;
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$300();
    }
    
    public static Builder newBuilder(RequestInfo paramRequestInfo)
    {
      return newBuilder().mergeFrom(paramRequestInfo);
    }
    
    public static RequestInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RequestInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static RequestInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RequestInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RequestInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (RequestInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static RequestInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RequestInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static RequestInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (RequestInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static RequestInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RequestInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static RequestInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (RequestInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static RequestInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (RequestInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static RequestInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (RequestInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static RequestInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (RequestInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final ByteString getByteArrayEntity()
    {
      return this.byteArrayEntity_;
    }
    
    public final RequestInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final HttpTransfer.NameValuePair getHeaders(int paramInt)
    {
      return (HttpTransfer.NameValuePair)this.headers_.get(paramInt);
    }
    
    public final int getHeadersCount()
    {
      return this.headers_.size();
    }
    
    public final List<HttpTransfer.NameValuePair> getHeadersList()
    {
      return this.headers_;
    }
    
    public final HttpTransfer.NameValuePairOrBuilder getHeadersOrBuilder(int paramInt)
    {
      return (HttpTransfer.NameValuePairOrBuilder)this.headers_.get(paramInt);
    }
    
    public final List<? extends HttpTransfer.NameValuePairOrBuilder> getHeadersOrBuilderList()
    {
      return this.headers_;
    }
    
    public final int getMethod()
    {
      return this.method_;
    }
    
    public final HttpTransfer.NameValuePair getParams(int paramInt)
    {
      return (HttpTransfer.NameValuePair)this.params_.get(paramInt);
    }
    
    public final int getParamsCount()
    {
      return this.params_.size();
    }
    
    public final List<HttpTransfer.NameValuePair> getParamsList()
    {
      return this.params_;
    }
    
    public final HttpTransfer.NameValuePairOrBuilder getParamsOrBuilder(int paramInt)
    {
      return (HttpTransfer.NameValuePairOrBuilder)this.params_.get(paramInt);
    }
    
    public final List<? extends HttpTransfer.NameValuePairOrBuilder> getParamsOrBuilderList()
    {
      return this.params_;
    }
    
    public final Parser<RequestInfo> getParserForType()
    {
      return PARSER;
    }
    
    public final int getProtocol()
    {
      return this.protocol_;
    }
    
    public final int getSerializedSize()
    {
      int n = 0;
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      if ((this.bitField0_ & 0x1) == 1) {}
      for (int j = CodedOutputStream.computeUInt32Size(1, this.method_) + 0;; j = 0)
      {
        i = j;
        if ((this.bitField0_ & 0x2) == 2) {
          i = j + CodedOutputStream.computeBytesSize(2, getUrlBytes());
        }
        int k = 0;
        int m;
        for (;;)
        {
          m = n;
          j = i;
          if (k >= this.headers_.size()) {
            break;
          }
          i += CodedOutputStream.computeMessageSize(3, (MessageLite)this.headers_.get(k));
          k += 1;
        }
        while (m < this.params_.size())
        {
          j += CodedOutputStream.computeMessageSize(4, (MessageLite)this.params_.get(m));
          m += 1;
        }
        i = j;
        if ((this.bitField0_ & 0x4) == 4) {
          i = j + CodedOutputStream.computeUInt32Size(5, this.protocol_);
        }
        j = i;
        if ((this.bitField0_ & 0x8) == 8) {
          j = i + CodedOutputStream.computeBytesSize(6, this.byteArrayEntity_);
        }
        i = getUnknownFields().getSerializedSize() + j;
        this.memoizedSerializedSize = i;
        return i;
      }
    }
    
    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }
    
    public final String getUrl()
    {
      Object localObject = this.url_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.url_ = str;
      }
      return str;
    }
    
    public final ByteString getUrlBytes()
    {
      Object localObject = this.url_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.url_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final boolean hasByteArrayEntity()
    {
      return (this.bitField0_ & 0x8) == 8;
    }
    
    public final boolean hasMethod()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    public final boolean hasProtocol()
    {
      return (this.bitField0_ & 0x4) == 4;
    }
    
    public final boolean hasUrl()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_RequestInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(RequestInfo.class, Builder.class);
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
      if (!hasMethod())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasUrl())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      i = 0;
      while (i < getHeadersCount())
      {
        if (!getHeaders(i).isInitialized())
        {
          this.memoizedIsInitialized = 0;
          return false;
        }
        i += 1;
      }
      i = 0;
      while (i < getParamsCount())
      {
        if (!getParams(i).isInitialized())
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
      int k = 0;
      getSerializedSize();
      if ((this.bitField0_ & 0x1) == 1) {
        paramCodedOutputStream.writeUInt32(1, this.method_);
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(2, getUrlBytes());
      }
      int i = 0;
      int j;
      for (;;)
      {
        j = k;
        if (i >= this.headers_.size()) {
          break;
        }
        paramCodedOutputStream.writeMessage(3, (MessageLite)this.headers_.get(i));
        i += 1;
      }
      while (j < this.params_.size())
      {
        paramCodedOutputStream.writeMessage(4, (MessageLite)this.params_.get(j));
        j += 1;
      }
      if ((this.bitField0_ & 0x4) == 4) {
        paramCodedOutputStream.writeUInt32(5, this.protocol_);
      }
      if ((this.bitField0_ & 0x8) == 8) {
        paramCodedOutputStream.writeBytes(6, this.byteArrayEntity_);
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements HttpTransfer.RequestInfoOrBuilder
    {
      private int bitField0_;
      private ByteString byteArrayEntity_ = ByteString.EMPTY;
      private RepeatedFieldBuilder<HttpTransfer.NameValuePair, HttpTransfer.NameValuePair.Builder, HttpTransfer.NameValuePairOrBuilder> headersBuilder_;
      private List<HttpTransfer.NameValuePair> headers_ = Collections.emptyList();
      private int method_;
      private RepeatedFieldBuilder<HttpTransfer.NameValuePair, HttpTransfer.NameValuePair.Builder, HttpTransfer.NameValuePairOrBuilder> paramsBuilder_;
      private List<HttpTransfer.NameValuePair> params_ = Collections.emptyList();
      private int protocol_;
      private Object url_ = "";
      
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
      
      private void ensureHeadersIsMutable()
      {
        if ((this.bitField0_ & 0x4) != 4)
        {
          this.headers_ = new ArrayList(this.headers_);
          this.bitField0_ |= 0x4;
        }
      }
      
      private void ensureParamsIsMutable()
      {
        if ((this.bitField0_ & 0x8) != 8)
        {
          this.params_ = new ArrayList(this.params_);
          this.bitField0_ |= 0x8;
        }
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_RequestInfo_descriptor;
      }
      
      private RepeatedFieldBuilder<HttpTransfer.NameValuePair, HttpTransfer.NameValuePair.Builder, HttpTransfer.NameValuePairOrBuilder> getHeadersFieldBuilder()
      {
        List localList;
        if (this.headersBuilder_ == null)
        {
          localList = this.headers_;
          if ((this.bitField0_ & 0x4) != 4) {
            break label55;
          }
        }
        label55:
        for (boolean bool = true;; bool = false)
        {
          this.headersBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
          this.headers_ = null;
          return this.headersBuilder_;
        }
      }
      
      private RepeatedFieldBuilder<HttpTransfer.NameValuePair, HttpTransfer.NameValuePair.Builder, HttpTransfer.NameValuePairOrBuilder> getParamsFieldBuilder()
      {
        List localList;
        if (this.paramsBuilder_ == null)
        {
          localList = this.params_;
          if ((this.bitField0_ & 0x8) != 8) {
            break label57;
          }
        }
        label57:
        for (boolean bool = true;; bool = false)
        {
          this.paramsBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
          this.params_ = null;
          return this.paramsBuilder_;
        }
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (HttpTransfer.RequestInfo.alwaysUseFieldBuilders)
        {
          getHeadersFieldBuilder();
          getParamsFieldBuilder();
        }
      }
      
      public final Builder addAllHeaders(Iterable<? extends HttpTransfer.NameValuePair> paramIterable)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          AbstractMessageLite.Builder.addAll(paramIterable, this.headers_);
          onChanged();
          return this;
        }
        this.headersBuilder_.addAllMessages(paramIterable);
        return this;
      }
      
      public final Builder addAllParams(Iterable<? extends HttpTransfer.NameValuePair> paramIterable)
      {
        if (this.paramsBuilder_ == null)
        {
          ensureParamsIsMutable();
          AbstractMessageLite.Builder.addAll(paramIterable, this.params_);
          onChanged();
          return this;
        }
        this.paramsBuilder_.addAllMessages(paramIterable);
        return this;
      }
      
      public final Builder addHeaders(int paramInt, HttpTransfer.NameValuePair.Builder paramBuilder)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          this.headers_.add(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.headersBuilder_.addMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder addHeaders(int paramInt, HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (this.headersBuilder_ == null)
        {
          if (paramNameValuePair == null) {
            throw new NullPointerException();
          }
          ensureHeadersIsMutable();
          this.headers_.add(paramInt, paramNameValuePair);
          onChanged();
          return this;
        }
        this.headersBuilder_.addMessage(paramInt, paramNameValuePair);
        return this;
      }
      
      public final Builder addHeaders(HttpTransfer.NameValuePair.Builder paramBuilder)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          this.headers_.add(paramBuilder.build());
          onChanged();
          return this;
        }
        this.headersBuilder_.addMessage(paramBuilder.build());
        return this;
      }
      
      public final Builder addHeaders(HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (this.headersBuilder_ == null)
        {
          if (paramNameValuePair == null) {
            throw new NullPointerException();
          }
          ensureHeadersIsMutable();
          this.headers_.add(paramNameValuePair);
          onChanged();
          return this;
        }
        this.headersBuilder_.addMessage(paramNameValuePair);
        return this;
      }
      
      public final HttpTransfer.NameValuePair.Builder addHeadersBuilder()
      {
        return (HttpTransfer.NameValuePair.Builder)getHeadersFieldBuilder().addBuilder(HttpTransfer.NameValuePair.getDefaultInstance());
      }
      
      public final HttpTransfer.NameValuePair.Builder addHeadersBuilder(int paramInt)
      {
        return (HttpTransfer.NameValuePair.Builder)getHeadersFieldBuilder().addBuilder(paramInt, HttpTransfer.NameValuePair.getDefaultInstance());
      }
      
      public final Builder addParams(int paramInt, HttpTransfer.NameValuePair.Builder paramBuilder)
      {
        if (this.paramsBuilder_ == null)
        {
          ensureParamsIsMutable();
          this.params_.add(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.paramsBuilder_.addMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder addParams(int paramInt, HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (this.paramsBuilder_ == null)
        {
          if (paramNameValuePair == null) {
            throw new NullPointerException();
          }
          ensureParamsIsMutable();
          this.params_.add(paramInt, paramNameValuePair);
          onChanged();
          return this;
        }
        this.paramsBuilder_.addMessage(paramInt, paramNameValuePair);
        return this;
      }
      
      public final Builder addParams(HttpTransfer.NameValuePair.Builder paramBuilder)
      {
        if (this.paramsBuilder_ == null)
        {
          ensureParamsIsMutable();
          this.params_.add(paramBuilder.build());
          onChanged();
          return this;
        }
        this.paramsBuilder_.addMessage(paramBuilder.build());
        return this;
      }
      
      public final Builder addParams(HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (this.paramsBuilder_ == null)
        {
          if (paramNameValuePair == null) {
            throw new NullPointerException();
          }
          ensureParamsIsMutable();
          this.params_.add(paramNameValuePair);
          onChanged();
          return this;
        }
        this.paramsBuilder_.addMessage(paramNameValuePair);
        return this;
      }
      
      public final HttpTransfer.NameValuePair.Builder addParamsBuilder()
      {
        return (HttpTransfer.NameValuePair.Builder)getParamsFieldBuilder().addBuilder(HttpTransfer.NameValuePair.getDefaultInstance());
      }
      
      public final HttpTransfer.NameValuePair.Builder addParamsBuilder(int paramInt)
      {
        return (HttpTransfer.NameValuePair.Builder)getParamsFieldBuilder().addBuilder(paramInt, HttpTransfer.NameValuePair.getDefaultInstance());
      }
      
      public final HttpTransfer.RequestInfo build()
      {
        HttpTransfer.RequestInfo localRequestInfo = buildPartial();
        if (!localRequestInfo.isInitialized()) {
          throw newUninitializedMessageException(localRequestInfo);
        }
        return localRequestInfo;
      }
      
      public final HttpTransfer.RequestInfo buildPartial()
      {
        int j = 1;
        HttpTransfer.RequestInfo localRequestInfo = new HttpTransfer.RequestInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          HttpTransfer.RequestInfo.access$702(localRequestInfo, this.method_);
          int i = j;
          if ((k & 0x2) == 2) {
            i = j | 0x2;
          }
          HttpTransfer.RequestInfo.access$802(localRequestInfo, this.url_);
          if (this.headersBuilder_ == null)
          {
            if ((this.bitField0_ & 0x4) == 4)
            {
              this.headers_ = Collections.unmodifiableList(this.headers_);
              this.bitField0_ &= 0xFFFFFFFB;
            }
            HttpTransfer.RequestInfo.access$902(localRequestInfo, this.headers_);
            if (this.paramsBuilder_ != null) {
              break label239;
            }
            if ((this.bitField0_ & 0x8) == 8)
            {
              this.params_ = Collections.unmodifiableList(this.params_);
              this.bitField0_ &= 0xFFFFFFF7;
            }
            HttpTransfer.RequestInfo.access$1002(localRequestInfo, this.params_);
          }
          for (;;)
          {
            j = i;
            if ((k & 0x10) == 16) {
              j = i | 0x4;
            }
            HttpTransfer.RequestInfo.access$1102(localRequestInfo, this.protocol_);
            i = j;
            if ((k & 0x20) == 32) {
              i = j | 0x8;
            }
            HttpTransfer.RequestInfo.access$1202(localRequestInfo, this.byteArrayEntity_);
            HttpTransfer.RequestInfo.access$1302(localRequestInfo, i);
            onBuilt();
            return localRequestInfo;
            HttpTransfer.RequestInfo.access$902(localRequestInfo, this.headersBuilder_.build());
            break;
            label239:
            HttpTransfer.RequestInfo.access$1002(localRequestInfo, this.paramsBuilder_.build());
          }
          j = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.method_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        this.url_ = "";
        this.bitField0_ &= 0xFFFFFFFD;
        if (this.headersBuilder_ == null)
        {
          this.headers_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFB;
          if (this.paramsBuilder_ != null) {
            break label134;
          }
          this.params_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFF7;
        }
        for (;;)
        {
          this.protocol_ = 0;
          this.bitField0_ &= 0xFFFFFFEF;
          this.byteArrayEntity_ = ByteString.EMPTY;
          this.bitField0_ &= 0xFFFFFFDF;
          return this;
          this.headersBuilder_.clear();
          break;
          label134:
          this.paramsBuilder_.clear();
        }
      }
      
      public final Builder clearByteArrayEntity()
      {
        this.bitField0_ &= 0xFFFFFFDF;
        this.byteArrayEntity_ = HttpTransfer.RequestInfo.getDefaultInstance().getByteArrayEntity();
        onChanged();
        return this;
      }
      
      public final Builder clearHeaders()
      {
        if (this.headersBuilder_ == null)
        {
          this.headers_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFB;
          onChanged();
          return this;
        }
        this.headersBuilder_.clear();
        return this;
      }
      
      public final Builder clearMethod()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.method_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearParams()
      {
        if (this.paramsBuilder_ == null)
        {
          this.params_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFF7;
          onChanged();
          return this;
        }
        this.paramsBuilder_.clear();
        return this;
      }
      
      public final Builder clearProtocol()
      {
        this.bitField0_ &= 0xFFFFFFEF;
        this.protocol_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearUrl()
      {
        this.bitField0_ &= 0xFFFFFFFD;
        this.url_ = HttpTransfer.RequestInfo.getDefaultInstance().getUrl();
        onChanged();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final ByteString getByteArrayEntity()
      {
        return this.byteArrayEntity_;
      }
      
      public final HttpTransfer.RequestInfo getDefaultInstanceForType()
      {
        return HttpTransfer.RequestInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_RequestInfo_descriptor;
      }
      
      public final HttpTransfer.NameValuePair getHeaders(int paramInt)
      {
        if (this.headersBuilder_ == null) {
          return (HttpTransfer.NameValuePair)this.headers_.get(paramInt);
        }
        return (HttpTransfer.NameValuePair)this.headersBuilder_.getMessage(paramInt);
      }
      
      public final HttpTransfer.NameValuePair.Builder getHeadersBuilder(int paramInt)
      {
        return (HttpTransfer.NameValuePair.Builder)getHeadersFieldBuilder().getBuilder(paramInt);
      }
      
      public final List<HttpTransfer.NameValuePair.Builder> getHeadersBuilderList()
      {
        return getHeadersFieldBuilder().getBuilderList();
      }
      
      public final int getHeadersCount()
      {
        if (this.headersBuilder_ == null) {
          return this.headers_.size();
        }
        return this.headersBuilder_.getCount();
      }
      
      public final List<HttpTransfer.NameValuePair> getHeadersList()
      {
        if (this.headersBuilder_ == null) {
          return Collections.unmodifiableList(this.headers_);
        }
        return this.headersBuilder_.getMessageList();
      }
      
      public final HttpTransfer.NameValuePairOrBuilder getHeadersOrBuilder(int paramInt)
      {
        if (this.headersBuilder_ == null) {
          return (HttpTransfer.NameValuePairOrBuilder)this.headers_.get(paramInt);
        }
        return (HttpTransfer.NameValuePairOrBuilder)this.headersBuilder_.getMessageOrBuilder(paramInt);
      }
      
      public final List<? extends HttpTransfer.NameValuePairOrBuilder> getHeadersOrBuilderList()
      {
        if (this.headersBuilder_ != null) {
          return this.headersBuilder_.getMessageOrBuilderList();
        }
        return Collections.unmodifiableList(this.headers_);
      }
      
      public final int getMethod()
      {
        return this.method_;
      }
      
      public final HttpTransfer.NameValuePair getParams(int paramInt)
      {
        if (this.paramsBuilder_ == null) {
          return (HttpTransfer.NameValuePair)this.params_.get(paramInt);
        }
        return (HttpTransfer.NameValuePair)this.paramsBuilder_.getMessage(paramInt);
      }
      
      public final HttpTransfer.NameValuePair.Builder getParamsBuilder(int paramInt)
      {
        return (HttpTransfer.NameValuePair.Builder)getParamsFieldBuilder().getBuilder(paramInt);
      }
      
      public final List<HttpTransfer.NameValuePair.Builder> getParamsBuilderList()
      {
        return getParamsFieldBuilder().getBuilderList();
      }
      
      public final int getParamsCount()
      {
        if (this.paramsBuilder_ == null) {
          return this.params_.size();
        }
        return this.paramsBuilder_.getCount();
      }
      
      public final List<HttpTransfer.NameValuePair> getParamsList()
      {
        if (this.paramsBuilder_ == null) {
          return Collections.unmodifiableList(this.params_);
        }
        return this.paramsBuilder_.getMessageList();
      }
      
      public final HttpTransfer.NameValuePairOrBuilder getParamsOrBuilder(int paramInt)
      {
        if (this.paramsBuilder_ == null) {
          return (HttpTransfer.NameValuePairOrBuilder)this.params_.get(paramInt);
        }
        return (HttpTransfer.NameValuePairOrBuilder)this.paramsBuilder_.getMessageOrBuilder(paramInt);
      }
      
      public final List<? extends HttpTransfer.NameValuePairOrBuilder> getParamsOrBuilderList()
      {
        if (this.paramsBuilder_ != null) {
          return this.paramsBuilder_.getMessageOrBuilderList();
        }
        return Collections.unmodifiableList(this.params_);
      }
      
      public final int getProtocol()
      {
        return this.protocol_;
      }
      
      public final String getUrl()
      {
        Object localObject = this.url_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.url_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getUrlBytes()
      {
        Object localObject = this.url_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.url_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final boolean hasByteArrayEntity()
      {
        return (this.bitField0_ & 0x20) == 32;
      }
      
      public final boolean hasMethod()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      public final boolean hasProtocol()
      {
        return (this.bitField0_ & 0x10) == 16;
      }
      
      public final boolean hasUrl()
      {
        return (this.bitField0_ & 0x2) == 2;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_RequestInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(HttpTransfer.RequestInfo.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasMethod()) {}
        while (!hasUrl()) {
          return false;
        }
        int i = 0;
        for (;;)
        {
          if (i >= getHeadersCount()) {
            break label44;
          }
          if (!getHeaders(i).isInitialized()) {
            break;
          }
          i += 1;
        }
        label44:
        i = 0;
        for (;;)
        {
          if (i >= getParamsCount()) {
            break label72;
          }
          if (!getParams(i).isInitialized()) {
            break;
          }
          i += 1;
        }
        label72:
        return true;
      }
      
      /* Error */
      public final Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: getstatic 395	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 401 3 0
        //   12: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 271	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 404	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 271	com/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
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
        if ((paramMessage instanceof HttpTransfer.RequestInfo)) {
          return mergeFrom((HttpTransfer.RequestInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(HttpTransfer.RequestInfo paramRequestInfo)
      {
        Object localObject2 = null;
        if (paramRequestInfo == HttpTransfer.RequestInfo.getDefaultInstance()) {
          return this;
        }
        if (paramRequestInfo.hasMethod()) {
          setMethod(paramRequestInfo.getMethod());
        }
        if (paramRequestInfo.hasUrl())
        {
          this.bitField0_ |= 0x2;
          this.url_ = paramRequestInfo.url_;
          onChanged();
        }
        if (this.headersBuilder_ == null) {
          if (!paramRequestInfo.headers_.isEmpty())
          {
            if (this.headers_.isEmpty())
            {
              this.headers_ = paramRequestInfo.headers_;
              this.bitField0_ &= 0xFFFFFFFB;
              onChanged();
            }
          }
          else
          {
            label110:
            if (this.paramsBuilder_ != null) {
              break label341;
            }
            if (!paramRequestInfo.params_.isEmpty())
            {
              if (!this.params_.isEmpty()) {
                break label320;
              }
              this.params_ = paramRequestInfo.params_;
              this.bitField0_ &= 0xFFFFFFF7;
              label160:
              onChanged();
            }
          }
        }
        for (;;)
        {
          if (paramRequestInfo.hasProtocol()) {
            setProtocol(paramRequestInfo.getProtocol());
          }
          if (paramRequestInfo.hasByteArrayEntity()) {
            setByteArrayEntity(paramRequestInfo.getByteArrayEntity());
          }
          mergeUnknownFields(paramRequestInfo.getUnknownFields());
          return this;
          ensureHeadersIsMutable();
          this.headers_.addAll(paramRequestInfo.headers_);
          break;
          if (paramRequestInfo.headers_.isEmpty()) {
            break label110;
          }
          Object localObject1;
          if (this.headersBuilder_.isEmpty())
          {
            this.headersBuilder_.dispose();
            this.headersBuilder_ = null;
            this.headers_ = paramRequestInfo.headers_;
            this.bitField0_ &= 0xFFFFFFFB;
            if (HttpTransfer.RequestInfo.alwaysUseFieldBuilders) {}
            for (localObject1 = getHeadersFieldBuilder();; localObject1 = null)
            {
              this.headersBuilder_ = ((RepeatedFieldBuilder)localObject1);
              break;
            }
          }
          this.headersBuilder_.addAllMessages(paramRequestInfo.headers_);
          break label110;
          label320:
          ensureParamsIsMutable();
          this.params_.addAll(paramRequestInfo.params_);
          break label160;
          label341:
          if (!paramRequestInfo.params_.isEmpty()) {
            if (this.paramsBuilder_.isEmpty())
            {
              this.paramsBuilder_.dispose();
              this.paramsBuilder_ = null;
              this.params_ = paramRequestInfo.params_;
              this.bitField0_ &= 0xFFFFFFF7;
              localObject1 = localObject2;
              if (HttpTransfer.RequestInfo.alwaysUseFieldBuilders) {
                localObject1 = getParamsFieldBuilder();
              }
              this.paramsBuilder_ = ((RepeatedFieldBuilder)localObject1);
            }
            else
            {
              this.paramsBuilder_.addAllMessages(paramRequestInfo.params_);
            }
          }
        }
      }
      
      public final Builder removeHeaders(int paramInt)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          this.headers_.remove(paramInt);
          onChanged();
          return this;
        }
        this.headersBuilder_.remove(paramInt);
        return this;
      }
      
      public final Builder removeParams(int paramInt)
      {
        if (this.paramsBuilder_ == null)
        {
          ensureParamsIsMutable();
          this.params_.remove(paramInt);
          onChanged();
          return this;
        }
        this.paramsBuilder_.remove(paramInt);
        return this;
      }
      
      public final Builder setByteArrayEntity(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x20;
        this.byteArrayEntity_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setHeaders(int paramInt, HttpTransfer.NameValuePair.Builder paramBuilder)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          this.headers_.set(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.headersBuilder_.setMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder setHeaders(int paramInt, HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (this.headersBuilder_ == null)
        {
          if (paramNameValuePair == null) {
            throw new NullPointerException();
          }
          ensureHeadersIsMutable();
          this.headers_.set(paramInt, paramNameValuePair);
          onChanged();
          return this;
        }
        this.headersBuilder_.setMessage(paramInt, paramNameValuePair);
        return this;
      }
      
      public final Builder setMethod(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.method_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setParams(int paramInt, HttpTransfer.NameValuePair.Builder paramBuilder)
      {
        if (this.paramsBuilder_ == null)
        {
          ensureParamsIsMutable();
          this.params_.set(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.paramsBuilder_.setMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder setParams(int paramInt, HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (this.paramsBuilder_ == null)
        {
          if (paramNameValuePair == null) {
            throw new NullPointerException();
          }
          ensureParamsIsMutable();
          this.params_.set(paramInt, paramNameValuePair);
          onChanged();
          return this;
        }
        this.paramsBuilder_.setMessage(paramInt, paramNameValuePair);
        return this;
      }
      
      public final Builder setProtocol(int paramInt)
      {
        this.bitField0_ |= 0x10;
        this.protocol_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setUrl(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.url_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setUrlBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x2;
        this.url_ = paramByteString;
        onChanged();
        return this;
      }
    }
  }
  
  public static abstract interface RequestInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract ByteString getByteArrayEntity();
    
    public abstract HttpTransfer.NameValuePair getHeaders(int paramInt);
    
    public abstract int getHeadersCount();
    
    public abstract List<HttpTransfer.NameValuePair> getHeadersList();
    
    public abstract HttpTransfer.NameValuePairOrBuilder getHeadersOrBuilder(int paramInt);
    
    public abstract List<? extends HttpTransfer.NameValuePairOrBuilder> getHeadersOrBuilderList();
    
    public abstract int getMethod();
    
    public abstract HttpTransfer.NameValuePair getParams(int paramInt);
    
    public abstract int getParamsCount();
    
    public abstract List<HttpTransfer.NameValuePair> getParamsList();
    
    public abstract HttpTransfer.NameValuePairOrBuilder getParamsOrBuilder(int paramInt);
    
    public abstract List<? extends HttpTransfer.NameValuePairOrBuilder> getParamsOrBuilderList();
    
    public abstract int getProtocol();
    
    public abstract String getUrl();
    
    public abstract ByteString getUrlBytes();
    
    public abstract boolean hasByteArrayEntity();
    
    public abstract boolean hasMethod();
    
    public abstract boolean hasProtocol();
    
    public abstract boolean hasUrl();
  }
  
  public static final class ResponseInfo
    extends GeneratedMessage
    implements HttpTransfer.ResponseInfoOrBuilder
  {
    public static final int BODY_FIELD_NUMBER = 3;
    public static final int CODE_FIELD_NUMBER = 1;
    public static final int HEADERS_FIELD_NUMBER = 2;
    public static Parser<ResponseInfo> PARSER = new HttpTransfer.ResponseInfo.1();
    private static final ResponseInfo defaultInstance;
    private static final long serialVersionUID = 0L;
    private int bitField0_;
    private Object body_;
    private int code_;
    private List<HttpTransfer.NameValuePair> headers_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    
    static
    {
      ResponseInfo localResponseInfo = new ResponseInfo(true);
      defaultInstance = localResponseInfo;
      localResponseInfo.initFields();
    }
    
    /* Error */
    private ResponseInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 64	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 66	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 68	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 57	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:initFields	()V
      //   18: invokestatic 74	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore 9
      //   23: iconst_0
      //   24: istore 6
      //   26: iconst_0
      //   27: istore_3
      //   28: iload 6
      //   30: ifne +319 -> 349
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
      //   50: lookupswitch	default:+331->381, 0:+334->384, 8:+70->120, 18:+155->205, 26:+247->297
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
      //   108: invokevirtual 84	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
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
      //   131: getfield 86	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:bitField0_	I
      //   134: iconst_1
      //   135: ior
      //   136: putfield 86	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:bitField0_	I
      //   139: iload_3
      //   140: istore 7
      //   142: iload_3
      //   143: istore 5
      //   145: iload_3
      //   146: istore 8
      //   148: aload_0
      //   149: aload_1
      //   150: invokevirtual 89	com/google/protobuf/CodedInputStream:readInt32	()I
      //   153: putfield 91	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:code_	I
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
      //   173: iconst_2
      //   174: iand
      //   175: iconst_2
      //   176: if_icmpne +14 -> 190
      //   179: aload_0
      //   180: aload_0
      //   181: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:headers_	Ljava/util/List;
      //   184: invokestatic 103	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   187: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:headers_	Ljava/util/List;
      //   190: aload_0
      //   191: aload 9
      //   193: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   196: putfield 111	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   199: aload_0
      //   200: invokevirtual 114	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:makeExtensionsImmutable	()V
      //   203: aload_1
      //   204: athrow
      //   205: iload_3
      //   206: istore 4
      //   208: iload_3
      //   209: iconst_2
      //   210: iand
      //   211: iconst_2
      //   212: if_icmpeq +28 -> 240
      //   215: iload_3
      //   216: istore 7
      //   218: iload_3
      //   219: istore 5
      //   221: iload_3
      //   222: istore 8
      //   224: aload_0
      //   225: new 116	java/util/ArrayList
      //   228: dup
      //   229: invokespecial 117	java/util/ArrayList:<init>	()V
      //   232: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:headers_	Ljava/util/List;
      //   235: iload_3
      //   236: iconst_2
      //   237: ior
      //   238: istore 4
      //   240: iload 4
      //   242: istore 7
      //   244: iload 4
      //   246: istore 5
      //   248: iload 4
      //   250: istore 8
      //   252: aload_0
      //   253: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:headers_	Ljava/util/List;
      //   256: aload_1
      //   257: getstatic 120	com/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair:PARSER	Lcom/google/protobuf/Parser;
      //   260: aload_2
      //   261: invokevirtual 124	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   264: invokeinterface 130 2 0
      //   269: pop
      //   270: iload 4
      //   272: istore_3
      //   273: goto -245 -> 28
      //   276: astore_1
      //   277: iload 8
      //   279: istore 5
      //   281: new 61	com/google/protobuf/InvalidProtocolBufferException
      //   284: dup
      //   285: aload_1
      //   286: invokevirtual 134	java/io/IOException:getMessage	()Ljava/lang/String;
      //   289: invokespecial 137	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   292: aload_0
      //   293: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   296: athrow
      //   297: iload_3
      //   298: istore 7
      //   300: iload_3
      //   301: istore 5
      //   303: iload_3
      //   304: istore 8
      //   306: aload_1
      //   307: invokevirtual 141	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   310: astore 10
      //   312: iload_3
      //   313: istore 7
      //   315: iload_3
      //   316: istore 5
      //   318: iload_3
      //   319: istore 8
      //   321: aload_0
      //   322: aload_0
      //   323: getfield 86	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:bitField0_	I
      //   326: iconst_2
      //   327: ior
      //   328: putfield 86	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:bitField0_	I
      //   331: iload_3
      //   332: istore 7
      //   334: iload_3
      //   335: istore 5
      //   337: iload_3
      //   338: istore 8
      //   340: aload_0
      //   341: aload 10
      //   343: putfield 143	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:body_	Ljava/lang/Object;
      //   346: goto -318 -> 28
      //   349: iload_3
      //   350: iconst_2
      //   351: iand
      //   352: iconst_2
      //   353: if_icmpne +14 -> 367
      //   356: aload_0
      //   357: aload_0
      //   358: getfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:headers_	Ljava/util/List;
      //   361: invokestatic 103	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   364: putfield 97	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:headers_	Ljava/util/List;
      //   367: aload_0
      //   368: aload 9
      //   370: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   373: putfield 111	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   376: aload_0
      //   377: invokevirtual 114	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:makeExtensionsImmutable	()V
      //   380: return
      //   381: goto -289 -> 92
      //   384: iconst_1
      //   385: istore 6
      //   387: goto -359 -> 28
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	390	0	this	ResponseInfo
      //   0	390	1	paramCodedInputStream	CodedInputStream
      //   0	390	2	paramExtensionRegistryLite	ExtensionRegistryLite
      //   27	325	3	i	int
      //   46	225	4	j	int
      //   37	299	5	k	int
      //   24	362	6	m	int
      //   34	299	7	n	int
      //   40	299	8	i1	int
      //   21	348	9	localBuilder	com.google.protobuf.UnknownFieldSet.Builder
      //   310	32	10	localByteString	ByteString
      // Exception table:
      //   from	to	target	type
      //   42	48	159	com/google/protobuf/InvalidProtocolBufferException
      //   101	114	159	com/google/protobuf/InvalidProtocolBufferException
      //   129	139	159	com/google/protobuf/InvalidProtocolBufferException
      //   148	156	159	com/google/protobuf/InvalidProtocolBufferException
      //   224	235	159	com/google/protobuf/InvalidProtocolBufferException
      //   252	270	159	com/google/protobuf/InvalidProtocolBufferException
      //   306	312	159	com/google/protobuf/InvalidProtocolBufferException
      //   321	331	159	com/google/protobuf/InvalidProtocolBufferException
      //   340	346	159	com/google/protobuf/InvalidProtocolBufferException
      //   42	48	170	finally
      //   101	114	170	finally
      //   129	139	170	finally
      //   148	156	170	finally
      //   164	170	170	finally
      //   224	235	170	finally
      //   252	270	170	finally
      //   281	297	170	finally
      //   306	312	170	finally
      //   321	331	170	finally
      //   340	346	170	finally
      //   42	48	276	java/io/IOException
      //   101	114	276	java/io/IOException
      //   129	139	276	java/io/IOException
      //   148	156	276	java/io/IOException
      //   224	235	276	java/io/IOException
      //   252	270	276	java/io/IOException
      //   306	312	276	java/io/IOException
      //   321	331	276	java/io/IOException
      //   340	346	276	java/io/IOException
    }
    
    private ResponseInfo(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }
    
    private ResponseInfo(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }
    
    public static ResponseInfo getDefaultInstance()
    {
      return defaultInstance;
    }
    
    public static final Descriptors.Descriptor getDescriptor()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_descriptor;
    }
    
    private void initFields()
    {
      this.code_ = 0;
      this.headers_ = Collections.emptyList();
      this.body_ = "";
    }
    
    public static Builder newBuilder()
    {
      return Builder.access$2900();
    }
    
    public static Builder newBuilder(ResponseInfo paramResponseInfo)
    {
      return newBuilder().mergeFrom(paramResponseInfo);
    }
    
    public static ResponseInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ResponseInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }
    
    public static ResponseInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ResponseInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static ResponseInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (ResponseInfo)PARSER.parseFrom(paramByteString);
    }
    
    public static ResponseInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ResponseInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }
    
    public static ResponseInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (ResponseInfo)PARSER.parseFrom(paramCodedInputStream);
    }
    
    public static ResponseInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ResponseInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }
    
    public static ResponseInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ResponseInfo)PARSER.parseFrom(paramInputStream);
    }
    
    public static ResponseInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ResponseInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }
    
    public static ResponseInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (ResponseInfo)PARSER.parseFrom(paramArrayOfByte);
    }
    
    public static ResponseInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ResponseInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }
    
    public final String getBody()
    {
      Object localObject = this.body_;
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      localObject = (ByteString)localObject;
      String str = ((ByteString)localObject).toStringUtf8();
      if (((ByteString)localObject).isValidUtf8()) {
        this.body_ = str;
      }
      return str;
    }
    
    public final ByteString getBodyBytes()
    {
      Object localObject = this.body_;
      if ((localObject instanceof String))
      {
        localObject = ByteString.copyFromUtf8((String)localObject);
        this.body_ = localObject;
        return (ByteString)localObject;
      }
      return (ByteString)localObject;
    }
    
    public final int getCode()
    {
      return this.code_;
    }
    
    public final ResponseInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }
    
    public final HttpTransfer.NameValuePair getHeaders(int paramInt)
    {
      return (HttpTransfer.NameValuePair)this.headers_.get(paramInt);
    }
    
    public final int getHeadersCount()
    {
      return this.headers_.size();
    }
    
    public final List<HttpTransfer.NameValuePair> getHeadersList()
    {
      return this.headers_;
    }
    
    public final HttpTransfer.NameValuePairOrBuilder getHeadersOrBuilder(int paramInt)
    {
      return (HttpTransfer.NameValuePairOrBuilder)this.headers_.get(paramInt);
    }
    
    public final List<? extends HttpTransfer.NameValuePairOrBuilder> getHeadersOrBuilderList()
    {
      return this.headers_;
    }
    
    public final Parser<ResponseInfo> getParserForType()
    {
      return PARSER;
    }
    
    public final int getSerializedSize()
    {
      int j = 0;
      int i = this.memoizedSerializedSize;
      if (i != -1) {
        return i;
      }
      if ((this.bitField0_ & 0x1) == 1) {
        i = CodedOutputStream.computeInt32Size(1, this.code_) + 0;
      }
      for (;;)
      {
        if (j < this.headers_.size())
        {
          int k = CodedOutputStream.computeMessageSize(2, (MessageLite)this.headers_.get(j));
          j += 1;
          i = k + i;
        }
        else
        {
          j = i;
          if ((this.bitField0_ & 0x2) == 2) {
            j = i + CodedOutputStream.computeBytesSize(3, getBodyBytes());
          }
          i = getUnknownFields().getSerializedSize() + j;
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
    
    public final boolean hasBody()
    {
      return (this.bitField0_ & 0x2) == 2;
    }
    
    public final boolean hasCode()
    {
      return (this.bitField0_ & 0x1) == 1;
    }
    
    protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(ResponseInfo.class, Builder.class);
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
      if (!hasCode())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      i = 0;
      while (i < getHeadersCount())
      {
        if (!getHeaders(i).isInitialized())
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
        paramCodedOutputStream.writeInt32(1, this.code_);
      }
      int i = 0;
      while (i < this.headers_.size())
      {
        paramCodedOutputStream.writeMessage(2, (MessageLite)this.headers_.get(i));
        i += 1;
      }
      if ((this.bitField0_ & 0x2) == 2) {
        paramCodedOutputStream.writeBytes(3, getBodyBytes());
      }
      getUnknownFields().writeTo(paramCodedOutputStream);
    }
    
    public static final class Builder
      extends GeneratedMessage.Builder<Builder>
      implements HttpTransfer.ResponseInfoOrBuilder
    {
      private int bitField0_;
      private Object body_ = "";
      private int code_;
      private RepeatedFieldBuilder<HttpTransfer.NameValuePair, HttpTransfer.NameValuePair.Builder, HttpTransfer.NameValuePairOrBuilder> headersBuilder_;
      private List<HttpTransfer.NameValuePair> headers_ = Collections.emptyList();
      
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
      
      private void ensureHeadersIsMutable()
      {
        if ((this.bitField0_ & 0x2) != 2)
        {
          this.headers_ = new ArrayList(this.headers_);
          this.bitField0_ |= 0x2;
        }
      }
      
      public static final Descriptors.Descriptor getDescriptor()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_descriptor;
      }
      
      private RepeatedFieldBuilder<HttpTransfer.NameValuePair, HttpTransfer.NameValuePair.Builder, HttpTransfer.NameValuePairOrBuilder> getHeadersFieldBuilder()
      {
        List localList;
        if (this.headersBuilder_ == null)
        {
          localList = this.headers_;
          if ((this.bitField0_ & 0x2) != 2) {
            break label55;
          }
        }
        label55:
        for (boolean bool = true;; bool = false)
        {
          this.headersBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
          this.headers_ = null;
          return this.headersBuilder_;
        }
      }
      
      private void maybeForceBuilderInitialization()
      {
        if (HttpTransfer.ResponseInfo.alwaysUseFieldBuilders) {
          getHeadersFieldBuilder();
        }
      }
      
      public final Builder addAllHeaders(Iterable<? extends HttpTransfer.NameValuePair> paramIterable)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          AbstractMessageLite.Builder.addAll(paramIterable, this.headers_);
          onChanged();
          return this;
        }
        this.headersBuilder_.addAllMessages(paramIterable);
        return this;
      }
      
      public final Builder addHeaders(int paramInt, HttpTransfer.NameValuePair.Builder paramBuilder)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          this.headers_.add(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.headersBuilder_.addMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder addHeaders(int paramInt, HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (this.headersBuilder_ == null)
        {
          if (paramNameValuePair == null) {
            throw new NullPointerException();
          }
          ensureHeadersIsMutable();
          this.headers_.add(paramInt, paramNameValuePair);
          onChanged();
          return this;
        }
        this.headersBuilder_.addMessage(paramInt, paramNameValuePair);
        return this;
      }
      
      public final Builder addHeaders(HttpTransfer.NameValuePair.Builder paramBuilder)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          this.headers_.add(paramBuilder.build());
          onChanged();
          return this;
        }
        this.headersBuilder_.addMessage(paramBuilder.build());
        return this;
      }
      
      public final Builder addHeaders(HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (this.headersBuilder_ == null)
        {
          if (paramNameValuePair == null) {
            throw new NullPointerException();
          }
          ensureHeadersIsMutable();
          this.headers_.add(paramNameValuePair);
          onChanged();
          return this;
        }
        this.headersBuilder_.addMessage(paramNameValuePair);
        return this;
      }
      
      public final HttpTransfer.NameValuePair.Builder addHeadersBuilder()
      {
        return (HttpTransfer.NameValuePair.Builder)getHeadersFieldBuilder().addBuilder(HttpTransfer.NameValuePair.getDefaultInstance());
      }
      
      public final HttpTransfer.NameValuePair.Builder addHeadersBuilder(int paramInt)
      {
        return (HttpTransfer.NameValuePair.Builder)getHeadersFieldBuilder().addBuilder(paramInt, HttpTransfer.NameValuePair.getDefaultInstance());
      }
      
      public final HttpTransfer.ResponseInfo build()
      {
        HttpTransfer.ResponseInfo localResponseInfo = buildPartial();
        if (!localResponseInfo.isInitialized()) {
          throw newUninitializedMessageException(localResponseInfo);
        }
        return localResponseInfo;
      }
      
      public final HttpTransfer.ResponseInfo buildPartial()
      {
        int i = 1;
        HttpTransfer.ResponseInfo localResponseInfo = new HttpTransfer.ResponseInfo(this, null);
        int k = this.bitField0_;
        if ((k & 0x1) == 1) {}
        for (;;)
        {
          HttpTransfer.ResponseInfo.access$3302(localResponseInfo, this.code_);
          if (this.headersBuilder_ == null)
          {
            if ((this.bitField0_ & 0x2) == 2)
            {
              this.headers_ = Collections.unmodifiableList(this.headers_);
              this.bitField0_ &= 0xFFFFFFFD;
            }
            HttpTransfer.ResponseInfo.access$3402(localResponseInfo, this.headers_);
          }
          for (;;)
          {
            int j = i;
            if ((k & 0x4) == 4) {
              j = i | 0x2;
            }
            HttpTransfer.ResponseInfo.access$3502(localResponseInfo, this.body_);
            HttpTransfer.ResponseInfo.access$3602(localResponseInfo, j);
            onBuilt();
            return localResponseInfo;
            HttpTransfer.ResponseInfo.access$3402(localResponseInfo, this.headersBuilder_.build());
          }
          i = 0;
        }
      }
      
      public final Builder clear()
      {
        super.clear();
        this.code_ = 0;
        this.bitField0_ &= 0xFFFFFFFE;
        if (this.headersBuilder_ == null)
        {
          this.headers_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFD;
        }
        for (;;)
        {
          this.body_ = "";
          this.bitField0_ &= 0xFFFFFFFB;
          return this;
          this.headersBuilder_.clear();
        }
      }
      
      public final Builder clearBody()
      {
        this.bitField0_ &= 0xFFFFFFFB;
        this.body_ = HttpTransfer.ResponseInfo.getDefaultInstance().getBody();
        onChanged();
        return this;
      }
      
      public final Builder clearCode()
      {
        this.bitField0_ &= 0xFFFFFFFE;
        this.code_ = 0;
        onChanged();
        return this;
      }
      
      public final Builder clearHeaders()
      {
        if (this.headersBuilder_ == null)
        {
          this.headers_ = Collections.emptyList();
          this.bitField0_ &= 0xFFFFFFFD;
          onChanged();
          return this;
        }
        this.headersBuilder_.clear();
        return this;
      }
      
      public final Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }
      
      public final String getBody()
      {
        Object localObject = this.body_;
        if (!(localObject instanceof String))
        {
          localObject = (ByteString)localObject;
          String str = ((ByteString)localObject).toStringUtf8();
          if (((ByteString)localObject).isValidUtf8()) {
            this.body_ = str;
          }
          return str;
        }
        return (String)localObject;
      }
      
      public final ByteString getBodyBytes()
      {
        Object localObject = this.body_;
        if ((localObject instanceof String))
        {
          localObject = ByteString.copyFromUtf8((String)localObject);
          this.body_ = localObject;
          return (ByteString)localObject;
        }
        return (ByteString)localObject;
      }
      
      public final int getCode()
      {
        return this.code_;
      }
      
      public final HttpTransfer.ResponseInfo getDefaultInstanceForType()
      {
        return HttpTransfer.ResponseInfo.getDefaultInstance();
      }
      
      public final Descriptors.Descriptor getDescriptorForType()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_descriptor;
      }
      
      public final HttpTransfer.NameValuePair getHeaders(int paramInt)
      {
        if (this.headersBuilder_ == null) {
          return (HttpTransfer.NameValuePair)this.headers_.get(paramInt);
        }
        return (HttpTransfer.NameValuePair)this.headersBuilder_.getMessage(paramInt);
      }
      
      public final HttpTransfer.NameValuePair.Builder getHeadersBuilder(int paramInt)
      {
        return (HttpTransfer.NameValuePair.Builder)getHeadersFieldBuilder().getBuilder(paramInt);
      }
      
      public final List<HttpTransfer.NameValuePair.Builder> getHeadersBuilderList()
      {
        return getHeadersFieldBuilder().getBuilderList();
      }
      
      public final int getHeadersCount()
      {
        if (this.headersBuilder_ == null) {
          return this.headers_.size();
        }
        return this.headersBuilder_.getCount();
      }
      
      public final List<HttpTransfer.NameValuePair> getHeadersList()
      {
        if (this.headersBuilder_ == null) {
          return Collections.unmodifiableList(this.headers_);
        }
        return this.headersBuilder_.getMessageList();
      }
      
      public final HttpTransfer.NameValuePairOrBuilder getHeadersOrBuilder(int paramInt)
      {
        if (this.headersBuilder_ == null) {
          return (HttpTransfer.NameValuePairOrBuilder)this.headers_.get(paramInt);
        }
        return (HttpTransfer.NameValuePairOrBuilder)this.headersBuilder_.getMessageOrBuilder(paramInt);
      }
      
      public final List<? extends HttpTransfer.NameValuePairOrBuilder> getHeadersOrBuilderList()
      {
        if (this.headersBuilder_ != null) {
          return this.headersBuilder_.getMessageOrBuilderList();
        }
        return Collections.unmodifiableList(this.headers_);
      }
      
      public final boolean hasBody()
      {
        return (this.bitField0_ & 0x4) == 4;
      }
      
      public final boolean hasCode()
      {
        return (this.bitField0_ & 0x1) == 1;
      }
      
      protected final GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return HttpTransfer.internal_static_com_xiaomi_hy_dj_pb_ResponseInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(HttpTransfer.ResponseInfo.class, Builder.class);
      }
      
      public final boolean isInitialized()
      {
        if (!hasCode()) {
          return false;
        }
        int i = 0;
        for (;;)
        {
          if (i >= getHeadersCount()) {
            break label37;
          }
          if (!getHeaders(i).isInitialized()) {
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
        //   2: getstatic 338	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo:PARSER	Lcom/google/protobuf/Parser;
        //   5: aload_1
        //   6: aload_2
        //   7: invokeinterface 344 3 0
        //   12: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo
        //   15: astore_1
        //   16: aload_1
        //   17: ifnull +9 -> 26
        //   20: aload_0
        //   21: aload_1
        //   22: invokevirtual 227	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo$Builder;
        //   25: pop
        //   26: aload_0
        //   27: areturn
        //   28: astore_1
        //   29: aload_1
        //   30: invokevirtual 347	com/google/protobuf/InvalidProtocolBufferException:getUnfinishedMessage	()Lcom/google/protobuf/MessageLite;
        //   33: checkcast 9	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo
        //   36: astore_2
        //   37: aload_1
        //   38: athrow
        //   39: astore_1
        //   40: aload_2
        //   41: ifnull +9 -> 50
        //   44: aload_0
        //   45: aload_2
        //   46: invokevirtual 227	com/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo$Builder:mergeFrom	(Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo$Builder;
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
        if ((paramMessage instanceof HttpTransfer.ResponseInfo)) {
          return mergeFrom((HttpTransfer.ResponseInfo)paramMessage);
        }
        super.mergeFrom(paramMessage);
        return this;
      }
      
      public final Builder mergeFrom(HttpTransfer.ResponseInfo paramResponseInfo)
      {
        RepeatedFieldBuilder localRepeatedFieldBuilder = null;
        if (paramResponseInfo == HttpTransfer.ResponseInfo.getDefaultInstance()) {
          return this;
        }
        if (paramResponseInfo.hasCode()) {
          setCode(paramResponseInfo.getCode());
        }
        if (this.headersBuilder_ == null) {
          if (!paramResponseInfo.headers_.isEmpty())
          {
            if (!this.headers_.isEmpty()) {
              break label121;
            }
            this.headers_ = paramResponseInfo.headers_;
            this.bitField0_ &= 0xFFFFFFFD;
            onChanged();
          }
        }
        for (;;)
        {
          if (paramResponseInfo.hasBody())
          {
            this.bitField0_ |= 0x4;
            this.body_ = paramResponseInfo.body_;
            onChanged();
          }
          mergeUnknownFields(paramResponseInfo.getUnknownFields());
          return this;
          label121:
          ensureHeadersIsMutable();
          this.headers_.addAll(paramResponseInfo.headers_);
          break;
          if (!paramResponseInfo.headers_.isEmpty()) {
            if (this.headersBuilder_.isEmpty())
            {
              this.headersBuilder_.dispose();
              this.headersBuilder_ = null;
              this.headers_ = paramResponseInfo.headers_;
              this.bitField0_ &= 0xFFFFFFFD;
              if (HttpTransfer.ResponseInfo.alwaysUseFieldBuilders) {
                localRepeatedFieldBuilder = getHeadersFieldBuilder();
              }
              this.headersBuilder_ = localRepeatedFieldBuilder;
            }
            else
            {
              this.headersBuilder_.addAllMessages(paramResponseInfo.headers_);
            }
          }
        }
      }
      
      public final Builder removeHeaders(int paramInt)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          this.headers_.remove(paramInt);
          onChanged();
          return this;
        }
        this.headersBuilder_.remove(paramInt);
        return this;
      }
      
      public final Builder setBody(String paramString)
      {
        if (paramString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.body_ = paramString;
        onChanged();
        return this;
      }
      
      public final Builder setBodyBytes(ByteString paramByteString)
      {
        if (paramByteString == null) {
          throw new NullPointerException();
        }
        this.bitField0_ |= 0x4;
        this.body_ = paramByteString;
        onChanged();
        return this;
      }
      
      public final Builder setCode(int paramInt)
      {
        this.bitField0_ |= 0x1;
        this.code_ = paramInt;
        onChanged();
        return this;
      }
      
      public final Builder setHeaders(int paramInt, HttpTransfer.NameValuePair.Builder paramBuilder)
      {
        if (this.headersBuilder_ == null)
        {
          ensureHeadersIsMutable();
          this.headers_.set(paramInt, paramBuilder.build());
          onChanged();
          return this;
        }
        this.headersBuilder_.setMessage(paramInt, paramBuilder.build());
        return this;
      }
      
      public final Builder setHeaders(int paramInt, HttpTransfer.NameValuePair paramNameValuePair)
      {
        if (this.headersBuilder_ == null)
        {
          if (paramNameValuePair == null) {
            throw new NullPointerException();
          }
          ensureHeadersIsMutable();
          this.headers_.set(paramInt, paramNameValuePair);
          onChanged();
          return this;
        }
        this.headersBuilder_.setMessage(paramInt, paramNameValuePair);
        return this;
      }
    }
  }
  
  public static abstract interface ResponseInfoOrBuilder
    extends MessageOrBuilder
  {
    public abstract String getBody();
    
    public abstract ByteString getBodyBytes();
    
    public abstract int getCode();
    
    public abstract HttpTransfer.NameValuePair getHeaders(int paramInt);
    
    public abstract int getHeadersCount();
    
    public abstract List<HttpTransfer.NameValuePair> getHeadersList();
    
    public abstract HttpTransfer.NameValuePairOrBuilder getHeadersOrBuilder(int paramInt);
    
    public abstract List<? extends HttpTransfer.NameValuePairOrBuilder> getHeadersOrBuilderList();
    
    public abstract boolean hasBody();
    
    public abstract boolean hasCode();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pb\HttpTransfer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */