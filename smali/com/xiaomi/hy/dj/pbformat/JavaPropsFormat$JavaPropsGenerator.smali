.class final Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaPropsGenerator"
.end annotation


# instance fields
.field private atStartOfLine:Z

.field private final indent:Ljava/lang/StringBuilder;

.field private output:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->atStartOfLine:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->indent:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->output:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private write(Ljava/lang/CharSequence;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->atStartOfLine:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->atStartOfLine:Z

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->output:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->indent:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->output:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method


# virtual methods
.method public final indent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->indent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->indent:Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final outdent(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->indent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Outdent() without matching Indent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->indent:Ljava/lang/StringBuilder;

    sub-int v1, v0, v1

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final print(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->write(Ljava/lang/CharSequence;I)V

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->atStartOfLine:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    sub-int v0, v3, v0

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->write(Ljava/lang/CharSequence;I)V

    return-void
.end method
