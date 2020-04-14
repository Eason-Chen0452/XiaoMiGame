.class final Lorg/xiaomi/gamecenter/milink/msg/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->valueOf(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    move-result-object v0

    return-object v0
.end method
