.class public final Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;
.super Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composition"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
