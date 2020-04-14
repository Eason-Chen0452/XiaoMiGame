.class public Lcom/xiaomi/gamecenter/sdk/utils/DisplayUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/DisplayUtils;->a:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/DisplayUtils;->a:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/DisplayUtils;->a:Landroid/util/DisplayMetrics;

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/DisplayUtils;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method
