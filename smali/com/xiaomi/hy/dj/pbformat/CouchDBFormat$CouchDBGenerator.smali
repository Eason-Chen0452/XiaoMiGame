.class public Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;
.super Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CouchDBGenerator"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-super {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "rev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_rev"

    invoke-super {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
