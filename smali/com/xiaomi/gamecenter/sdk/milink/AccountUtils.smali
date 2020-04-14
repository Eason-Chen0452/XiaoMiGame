.class public final Lcom/xiaomi/gamecenter/sdk/milink/AccountUtils;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:I

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/gamecenter/sdk/milink/AccountUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/milink/AccountUtils;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/gamecenter/sdk/milink/AccountUtils;->a:Z

    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/gamecenter/sdk/milink/AccountUtils;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 8

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkLoginForThirdAccount;

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkLoginForThirdAccount;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkLoginForThirdAccount;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method
