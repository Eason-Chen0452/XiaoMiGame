.class public final Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->b:Landroid/accounts/Account;

    return-void
.end method
