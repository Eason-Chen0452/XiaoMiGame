.class abstract Lcom/xiaomi/gamecenter/sdk/protocol/MiMessageRequest;
.super Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/protocol/b;Lcom/xiaomi/gamecenter/sdk/protocol/MessageMethod;Z)V
    .locals 4

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest;-><init>(Lcom/xiaomi/gamecenter/sdk/protocol/b;Lcom/xiaomi/gamecenter/sdk/protocol/MessageMethod;)V

    if-nez p4, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->g:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/utils/MD5;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/protocol/MiMessageRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/protocol/MiMessageRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
