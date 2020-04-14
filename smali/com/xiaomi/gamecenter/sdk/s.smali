.class final Lcom/xiaomi/gamecenter/sdk/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnLoginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/s;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$2000(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V

    return-void
.end method
