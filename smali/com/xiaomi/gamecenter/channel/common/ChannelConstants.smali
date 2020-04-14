.class public Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;
.super Ljava/lang/Object;


# static fields
.field public static final CHANNEL_BLOCK_ID:I = 0x4d494859

.field public static final CONTENT_CHARSET:Ljava/lang/String; = "UTF-8"

.field static final SHORT_LENGTH:I = 0x2

.field static final UNINT64_LENGTH:I = 0x8

.field static final V1_MAGIC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x21t
        0x4dt
        0x49t
        0x48t
        0x59t
        0x21t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
