.class public abstract Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface$a;-><init>(B)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->a:Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
