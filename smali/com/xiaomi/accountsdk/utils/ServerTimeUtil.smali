.class public Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;,
        Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;

.field private static final b:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;

    return-object v0
.end method

.method public static a(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
