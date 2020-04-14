.class final Lcom/xiaomi/android/support/v7/widget/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Lcom/xiaomi/android/support/v7/widget/b$a;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/b$a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 4

    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/b$a;->a()V

    iget-object p0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    return-void
.end method

.method final a(IZ)V
    .locals 10

    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/b$a;->a()V

    iget-object p0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    and-long/2addr v4, v2

    iget-wide v6, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    const-wide/16 v8, -0x1

    xor-long/2addr v2, v8

    and-long/2addr v2, v6

    const/4 v1, 0x1

    shl-long/2addr v2, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b$a;->a(I)V

    :goto_2
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    if-eqz v1, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/b$a;->a()V

    iget-object p0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    const/4 p1, 0x0

    move p2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b$a;->b(I)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method final b(I)V
    .locals 6

    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    :cond_1
    return-void
.end method

.method final c(I)Z
    .locals 4

    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/b$a;->a()V

    iget-object p0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final d(I)Z
    .locals 14

    const-wide/16 v12, 0x1

    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/b$a;->a()V

    iget-object p0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    :cond_0
    shl-long v4, v12, p1

    iget-wide v6, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget-wide v6, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    xor-long v8, v4, v10

    and-long/2addr v6, v8

    iput-wide v6, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    sub-long/2addr v4, v12

    iget-wide v6, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    and-long/2addr v6, v4

    iget-wide v8, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    xor-long/2addr v4, v10

    and-long/2addr v4, v8

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v2}, Lcom/xiaomi/android/support/v7/widget/b$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/b$a;->a(I)V

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v2}, Lcom/xiaomi/android/support/v7/widget/b$a;->d(I)Z

    :cond_2
    return v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method final e(I)I
    .locals 6

    const/16 v1, 0x40

    const-wide/16 v4, 0x1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/b$a;->e(I)I

    move-result v0

    iget-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
