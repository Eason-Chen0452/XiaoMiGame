.class final Lorg/xiaomi/gamecenter/milink/msg/am;
.super Lcom/google/protobuf/AbstractParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/ah;)V

    return-object v0
.end method
