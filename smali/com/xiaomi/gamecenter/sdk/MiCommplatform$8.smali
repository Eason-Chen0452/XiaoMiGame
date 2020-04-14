.class Lcom/xiaomi/gamecenter/sdk/MiCommplatform$8;
.super Lcom/xiaomi/gamecenter/sdk/IServiceCallback$Stub;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform$8;->this$0:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
