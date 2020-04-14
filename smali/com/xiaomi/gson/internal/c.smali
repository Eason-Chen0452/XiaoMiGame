.class final Lcom/xiaomi/gson/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gson/internal/ah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/gson/internal/ah",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gson/o;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/xiaomi/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;Lcom/xiaomi/gson/o;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gson/internal/c;->c:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/xiaomi/gson/internal/c;->a:Lcom/xiaomi/gson/o;

    iput-object p3, p0, Lcom/xiaomi/gson/internal/c;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/c;->a:Lcom/xiaomi/gson/o;

    invoke-interface {v0}, Lcom/xiaomi/gson/o;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
