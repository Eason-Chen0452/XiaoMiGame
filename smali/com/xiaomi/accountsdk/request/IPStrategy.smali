.class public Lcom/xiaomi/accountsdk/request/IPStrategy;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/accountsdk/request/c;

.field private static b:Lcom/xiaomi/accountsdk/request/c;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/request/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/c;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->a:Lcom/xiaomi/accountsdk/request/c;

    new-instance v0, Lcom/xiaomi/accountsdk/request/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/c;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->b:Lcom/xiaomi/accountsdk/request/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "183.84.5.8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "42.62.94.239"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->c:Ljava/util/Map;

    const-string v2, "c.id.mi.com"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
