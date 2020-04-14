.class final Lcom/xiaomi/gson/internal/ae;
.super Lcom/xiaomi/gson/internal/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/internal/LinkedTreeMap",
        "<TK;TV;>.com/xiaomi/gson/internal/af<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gson/internal/ad;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/ad;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gson/internal/ae;->a:Lcom/xiaomi/gson/internal/ad;

    iget-object v0, p1, Lcom/xiaomi/gson/internal/ad;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lcom/xiaomi/gson/internal/af;-><init>(Lcom/xiaomi/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/gson/internal/ae;->a()Lcom/xiaomi/gson/internal/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/gson/internal/ag;->f:Ljava/lang/Object;

    return-object v0
.end method
