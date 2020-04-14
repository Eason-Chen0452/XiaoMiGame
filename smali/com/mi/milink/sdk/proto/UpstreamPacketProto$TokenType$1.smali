.class final Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenType$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenType;",
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
.method public final bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenType$1;->findValueByNumber(I)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenType;

    move-result-object v0

    return-object v0
.end method

.method public final findValueByNumber(I)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenType;
    .locals 1

    invoke-static {p1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenType;->valueOf(I)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenType;

    move-result-object v0

    return-object v0
.end method
