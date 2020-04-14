.class public Lcom/xiaomi/gamecenter/sdk/utils/CdnDomainUrl;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const-string v0, "jpeg"

    :goto_0
    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/CdnDomainUrl;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "webp"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
