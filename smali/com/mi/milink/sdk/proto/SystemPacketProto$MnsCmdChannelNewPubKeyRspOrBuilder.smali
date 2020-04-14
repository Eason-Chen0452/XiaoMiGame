.class public interface abstract Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRspOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/SystemPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MnsCmdChannelNewPubKeyRspOrBuilder"
.end annotation


# virtual methods
.method public abstract getPubInfo(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
.end method

.method public abstract getPubInfoCount()I
.end method

.method public abstract getPubInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPubInfoOrBuilder(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;
.end method

.method public abstract getPubInfoOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method
