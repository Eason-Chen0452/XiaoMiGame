.class public abstract Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter$ParseException;
    }
.end annotation


# instance fields
.field private defaultCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public getDefaultCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public merge(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->merge(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public merge(Ljava/io/InputStream;Lcom/google/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->merge(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public abstract merge(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public merge(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->merge(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public print(Lcom/google/protobuf/Message;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->print(Lcom/google/protobuf/Message;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public abstract print(Lcom/google/protobuf/Message;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public print(Lcom/google/protobuf/UnknownFieldSet;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->print(Lcom/google/protobuf/UnknownFieldSet;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public abstract print(Lcom/google/protobuf/UnknownFieldSet;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public printToString(Lcom/google/protobuf/Message;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->print(Lcom/google/protobuf/Message;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->print(Lcom/google/protobuf/UnknownFieldSet;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDefaultCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pbformat/ProtobufFormatter;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method
