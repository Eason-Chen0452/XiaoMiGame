.class final Lcom/xiaomi/gson/internal/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/gson/internal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/xiaomi/gson/internal/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/gson/internal/t;->a:Lcom/xiaomi/gson/internal/z;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, v1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v0, v1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iget-object v0, v1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    move-object v3, v2

    :goto_1
    if-eqz v0, :cond_1

    iput-object v3, v0, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iget-object v2, v0, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    move-object v3, v0

    move-object v0, v2

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/xiaomi/gson/internal/t;->a:Lcom/xiaomi/gson/internal/z;

    move-object v0, v1

    goto :goto_0
.end method

.method final a(Lcom/xiaomi/gson/internal/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_0

    iput-object v0, v1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iget-object p1, v1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    move-object v0, v1

    move-object v1, p1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/gson/internal/t;->a:Lcom/xiaomi/gson/internal/z;

    return-void
.end method
