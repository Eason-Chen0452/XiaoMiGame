.class final Lcom/xiaomi/gamecenter/sdk/entry/Image$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/entry/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/d;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/gamecenter/sdk/entry/d;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/Image$a;I)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;->a:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/entry/Image$a;)Landroid/support/v4/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/Image$a;->a:Landroid/support/v4/util/LruCache;

    return-object v0
.end method
