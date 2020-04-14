.class public interface abstract Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfoOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getByteArrayEntity()Lcom/google/protobuf/ByteString;
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

.method public abstract getMethod()I
.end method

.method public abstract getParams(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;
.end method

.method public abstract getParamsCount()I
.end method

.method public abstract getParamsList()Ljava/util/List;
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

.method public abstract getParamsOrBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;
.end method

.method public abstract getParamsOrBuilderList()Ljava/util/List;
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

.method public abstract getProtocol()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasByteArrayEntity()Z
.end method

.method public abstract hasMethod()Z
.end method

.method public abstract hasProtocol()Z
.end method

.method public abstract hasUrl()Z
.end method
