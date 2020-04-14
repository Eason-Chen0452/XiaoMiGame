.class public Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;
.super Ljava/lang/Object;


# instance fields
.field private final apkSigningBlockOffset:J

.field private final centralDirOffset:J

.field private final eocd:Ljava/nio/ByteBuffer;

.field private final eocdOffset:J

.field private final signatureBlock:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;->apkSigningBlockOffset:J

    iput-wide p4, p0, Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;->centralDirOffset:J

    iput-wide p6, p0, Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;->eocdOffset:J

    iput-object p8, p0, Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    return-void
.end method
