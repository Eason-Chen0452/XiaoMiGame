.class final Lcom/xiaomi/gson/internal/m;
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
.field final synthetic a:Lcom/xiaomi/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gson/internal/m;->a:Lcom/xiaomi/gson/internal/ConstructorConstructor;

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

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
