.class public final Lcom/xiaomi/passport/utils/AsyncTestMarker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/utils/AsyncTestMarker$b;,
        Lcom/xiaomi/passport/utils/AsyncTestMarker$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/passport/utils/AsyncTestMarker$a;

.field private static volatile b:Lcom/xiaomi/passport/utils/AsyncTestMarker$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/utils/AsyncTestMarker$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/utils/AsyncTestMarker$b;-><init>(B)V

    sput-object v0, Lcom/xiaomi/passport/utils/AsyncTestMarker;->a:Lcom/xiaomi/passport/utils/AsyncTestMarker$a;

    sput-object v0, Lcom/xiaomi/passport/utils/AsyncTestMarker;->b:Lcom/xiaomi/passport/utils/AsyncTestMarker$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
