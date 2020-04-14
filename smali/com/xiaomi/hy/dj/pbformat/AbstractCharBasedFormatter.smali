.class public abstract Lcom/xiaomi/hy/dj/pbformat/AbstractCharBasedFormatter;
.super Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public merge(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/xiaomi/hy/dj/pbformat/AbstractCharBasedFormatter;->merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public abstract merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/AbstractCharBasedFormatter;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public print(Lcom/google/protobuf/Message;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/hy/dj/pbformat/AbstractCharBasedFormatter;->print(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public abstract print(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public print(Lcom/google/protobuf/UnknownFieldSet;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/hy/dj/pbformat/AbstractCharBasedFormatter;->print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public abstract print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
