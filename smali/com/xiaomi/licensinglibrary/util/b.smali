.class final Lcom/xiaomi/licensinglibrary/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/licensinglibrary/util/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/util/a;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/util/b;->c:Lcom/xiaomi/licensinglibrary/util/a;

    iput-object p2, p0, Lcom/xiaomi/licensinglibrary/util/b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/licensinglibrary/util/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    new-instance v2, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-direct {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setProductCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpOrderId(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCount(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/util/b;->a:Landroid/app/Activity;

    new-instance v3, Lcom/xiaomi/licensinglibrary/util/c;

    invoke-direct {v3, p0}, Lcom/xiaomi/licensinglibrary/util/c;-><init>(Lcom/xiaomi/licensinglibrary/util/b;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miUniPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
