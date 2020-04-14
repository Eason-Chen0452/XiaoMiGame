.class public interface abstract Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
.end method

.method public abstract unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;
        }
    .end annotation
.end method
