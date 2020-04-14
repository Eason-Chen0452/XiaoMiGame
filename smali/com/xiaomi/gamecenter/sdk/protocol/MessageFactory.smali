.class public final Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;
    .locals 7

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetLoginAppAccount;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetLoginAppAccount;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetLoginAppAccount;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;-><init>(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/RoleData;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp;
    .locals 6

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSubmitRoleData;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSubmitRoleData;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/RoleData;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSubmitRoleData;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkCheckSdkVersion;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkCheckSdkVersion;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkCheckSdkVersion;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSdkInitReq;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSdkInitReq;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSdkInitReq;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;
    .locals 9

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSetUserInfoToGameCenter;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSetUserInfoToGameCenter;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSetUserInfoToGameCenter;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetSplashScreen;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetSplashScreen;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetSplashScreen;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static b(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;
    .locals 7

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetServiceTokenReq;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetServiceTokenReq;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetServiceTokenReq;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
