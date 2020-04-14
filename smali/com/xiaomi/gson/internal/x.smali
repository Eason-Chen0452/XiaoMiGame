.class final Lcom/xiaomi/gson/internal/x;
.super Lcom/xiaomi/gson/internal/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/internal/LinkedHashTreeMap",
        "<TK;TV;>.com/xiaomi/gson/internal/y<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gson/internal/w;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/w;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gson/internal/x;->a:Lcom/xiaomi/gson/internal/w;

    iget-object v0, p1, Lcom/xiaomi/gson/internal/w;->a:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, v0}, Lcom/xiaomi/gson/internal/y;-><init>(Lcom/xiaomi/gson/internal/LinkedHashTreeMap;)V

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

    invoke-virtual {p0}, Lcom/xiaomi/gson/internal/x;->a()Lcom/xiaomi/gson/internal/z;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/gson/internal/z;->f:Ljava/lang/Object;

    return-object v0
.end method
