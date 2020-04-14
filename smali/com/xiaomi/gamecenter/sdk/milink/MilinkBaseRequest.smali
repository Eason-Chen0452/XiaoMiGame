.class public abstract Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/google/protobuf/GeneratedMessage;

.field protected b:Lcom/google/protobuf/GeneratedMessage;

.field protected c:Landroid/content/Context;

.field protected d:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

.field protected e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->e:I

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->d:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    return-void
.end method

.method private b()Lcom/google/protobuf/GeneratedMessage;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->a:Lcom/google/protobuf/GeneratedMessage;

    if-nez v1, :cond_1

    sget-boolean v1, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "request is null"

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    move-result-object v1

    new-instance v4, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v4}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->a:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessage;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    sget-boolean v5, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "milink request :("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->a:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->sendDataByChannel(Lcom/mi/milink/sdk/aidl/PacketData;)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->c:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/wali/basetool/utils/SystemConfig;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    sub-long v2, v6, v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v5

    const/16 v6, 0x1d5e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_1
    :try_start_1
    invoke-virtual {v4}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->a([B)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->b:Lcom/google/protobuf/GeneratedMessage;

    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "milink response :("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->b:Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->b:Lcom/google/protobuf/GeneratedMessage;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "response code========>\uff1a"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->e:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->e:I

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_5

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->e:I

    if-nez v0, :cond_7

    :cond_5
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v4, 0x1d60

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->b:Lcom/google/protobuf/GeneratedMessage;

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    :try_start_3
    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_7
    :try_start_4
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v4, 0x1d61

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v4, 0x1d5f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V

    goto :goto_3

    :cond_9
    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "requestCommand:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-----response is null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v4, 0x1d62

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x203
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/GeneratedMessage;
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->b()Lcom/google/protobuf/GeneratedMessage;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->b:Lcom/google/protobuf/GeneratedMessage;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "responseCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;->b:Lcom/google/protobuf/GeneratedMessage;

    return-object v0
.end method

.method public abstract a([B)Lcom/google/protobuf/GeneratedMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method
