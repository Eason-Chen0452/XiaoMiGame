.class public interface abstract Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/SystemPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PublicKeyInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getKeyId()I
.end method

.method public abstract getPublicKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract getSignatureBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasKeyId()Z
.end method

.method public abstract hasPublicKey()Z
.end method

.method public abstract hasSignature()Z
.end method
