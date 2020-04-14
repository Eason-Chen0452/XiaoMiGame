.class public Lcom/xiaomi/accountsdk/account/RegionConfig;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/RegionConfig;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/RegionConfig;->a:Landroid/content/Context;

    sget-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "region_config_staging"

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/RegionConfig;->b:Landroid/content/SharedPreferences;

    return-void

    :cond_0
    const-string v0, "region_config"

    goto :goto_0
.end method
