.class public interface abstract Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfoOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getBody()Ljava/lang/String;
.end method

.method public abstract getBodyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCode()I
.end method

.method public abstract getHeaders(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;
.end method

.method public abstract getHeadersCount()I
.end method

.method public abstract getHeadersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeadersOrBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;
.end method

.method public abstract getHeadersOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasBody()Z
.end method

.method public abstract hasCode()Z
.end method
