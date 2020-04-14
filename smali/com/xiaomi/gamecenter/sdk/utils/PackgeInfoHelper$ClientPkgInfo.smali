.class public Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper$ClientPkgInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientPkgInfo"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:I

.field final synthetic f:Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper$ClientPkgInfo;->f:Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_NOACCOUNT:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper$ClientPkgInfo;->e:I

    return-void
.end method
